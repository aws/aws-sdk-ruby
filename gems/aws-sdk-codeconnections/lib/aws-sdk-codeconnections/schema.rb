# frozen_string_literal: true

# This is generated code!

module Aws::CodeConnections
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeconnections#AccountId", name: "AccountId", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[0-9]{12}$"})
    AmazonResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeconnections#AmazonResourceName", name: "AmazonResourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn:aws(-[\\w]+)*:.+:.+:[0-9]{12}:.+$"})
    BlockerStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codeconnections#BlockerStatus", name: "BlockerStatus")
    BlockerType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codeconnections#BlockerType", name: "BlockerType")
    BranchName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeconnections#BranchName", name: "BranchName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^.*$"})
    ConcurrentModificationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#ConcurrentModificationException", name: "ConcurrentModificationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConditionalCheckFailedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#ConditionalCheckFailedException", name: "ConditionalCheckFailedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    Connection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#Connection", name: "Connection")
    ConnectionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeconnections#ConnectionArn", name: "ConnectionArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^arn:aws(-[\\w]+)*:.+:.+:[0-9]{12}:.+$"})
    ConnectionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codeconnections#ConnectionList", name: "ConnectionList")
    ConnectionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeconnections#ConnectionName", name: "ConnectionName", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    ConnectionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codeconnections#ConnectionStatus", name: "ConnectionStatus")
    CreateConnectionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#CreateConnectionInput", name: "CreateConnectionInput")
    CreateConnectionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#CreateConnectionOutput", name: "CreateConnectionOutput")
    CreateHostInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#CreateHostInput", name: "CreateHostInput")
    CreateHostOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#CreateHostOutput", name: "CreateHostOutput")
    CreateRepositoryLinkInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#CreateRepositoryLinkInput", name: "CreateRepositoryLinkInput")
    CreateRepositoryLinkOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#CreateRepositoryLinkOutput", name: "CreateRepositoryLinkOutput")
    CreateSyncConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#CreateSyncConfigurationInput", name: "CreateSyncConfigurationInput")
    CreateSyncConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#CreateSyncConfigurationOutput", name: "CreateSyncConfigurationOutput")
    CreatedReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeconnections#CreatedReason", name: "CreatedReason")
    DeleteConnectionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#DeleteConnectionInput", name: "DeleteConnectionInput")
    DeleteConnectionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#DeleteConnectionOutput", name: "DeleteConnectionOutput")
    DeleteHostInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#DeleteHostInput", name: "DeleteHostInput")
    DeleteHostOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#DeleteHostOutput", name: "DeleteHostOutput")
    DeleteRepositoryLinkInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#DeleteRepositoryLinkInput", name: "DeleteRepositoryLinkInput")
    DeleteRepositoryLinkOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#DeleteRepositoryLinkOutput", name: "DeleteRepositoryLinkOutput")
    DeleteSyncConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#DeleteSyncConfigurationInput", name: "DeleteSyncConfigurationInput")
    DeleteSyncConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#DeleteSyncConfigurationOutput", name: "DeleteSyncConfigurationOutput")
    DeploymentFilePath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeconnections#DeploymentFilePath", name: "DeploymentFilePath")
    Directory = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeconnections#Directory", name: "Directory")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeconnections#ErrorMessage", name: "ErrorMessage", traits: {"smithy.api#length" => {"min" => 0, "max" => 600}})
    Event = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeconnections#Event", name: "Event")
    ExternalId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeconnections#ExternalId", name: "ExternalId")
    GetConnectionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#GetConnectionInput", name: "GetConnectionInput")
    GetConnectionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#GetConnectionOutput", name: "GetConnectionOutput")
    GetHostInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#GetHostInput", name: "GetHostInput")
    GetHostOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#GetHostOutput", name: "GetHostOutput")
    GetRepositoryLinkInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#GetRepositoryLinkInput", name: "GetRepositoryLinkInput")
    GetRepositoryLinkOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#GetRepositoryLinkOutput", name: "GetRepositoryLinkOutput")
    GetRepositorySyncStatusInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#GetRepositorySyncStatusInput", name: "GetRepositorySyncStatusInput")
    GetRepositorySyncStatusOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#GetRepositorySyncStatusOutput", name: "GetRepositorySyncStatusOutput")
    GetResourceSyncStatusInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#GetResourceSyncStatusInput", name: "GetResourceSyncStatusInput")
    GetResourceSyncStatusOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#GetResourceSyncStatusOutput", name: "GetResourceSyncStatusOutput")
    GetSyncBlockerSummaryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#GetSyncBlockerSummaryInput", name: "GetSyncBlockerSummaryInput")
    GetSyncBlockerSummaryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#GetSyncBlockerSummaryOutput", name: "GetSyncBlockerSummaryOutput")
    GetSyncConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#GetSyncConfigurationInput", name: "GetSyncConfigurationInput")
    GetSyncConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#GetSyncConfigurationOutput", name: "GetSyncConfigurationOutput")
    Host = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#Host", name: "Host")
    HostArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeconnections#HostArn", name: "HostArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^arn:aws(-[\\w]+)*:(codestar-connections|codeconnections):.+:[0-9]{12}:host\\/.+$"})
    HostList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codeconnections#HostList", name: "HostList")
    HostName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeconnections#HostName", name: "HostName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => ".*"})
    HostStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeconnections#HostStatus", name: "HostStatus", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => ".*"})
    HostStatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeconnections#HostStatusMessage", name: "HostStatusMessage")
    IamRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeconnections#IamRoleArn", name: "IamRoleArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^arn:aws(-[\\w]+)*:iam::\\d{12}:role/[a-zA-Z_0-9+=,.@\\-_/]+$"})
    Id = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeconnections#Id", name: "Id", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    InvalidInputException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#InvalidInputException", name: "InvalidInputException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    KmsKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeconnections#KmsKeyArn", name: "KmsKeyArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^arn:aws(-[\\w]+)*:kms:[a-z\\-0-9]+:\\d{12}:key/[a-zA-Z0-9\\-]+$"})
    LatestSyncBlockerList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codeconnections#LatestSyncBlockerList", name: "LatestSyncBlockerList")
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    ListConnectionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#ListConnectionsInput", name: "ListConnectionsInput")
    ListConnectionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#ListConnectionsOutput", name: "ListConnectionsOutput")
    ListHostsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#ListHostsInput", name: "ListHostsInput")
    ListHostsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#ListHostsOutput", name: "ListHostsOutput")
    ListRepositoryLinksInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#ListRepositoryLinksInput", name: "ListRepositoryLinksInput")
    ListRepositoryLinksOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#ListRepositoryLinksOutput", name: "ListRepositoryLinksOutput")
    ListRepositorySyncDefinitionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#ListRepositorySyncDefinitionsInput", name: "ListRepositorySyncDefinitionsInput")
    ListRepositorySyncDefinitionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#ListRepositorySyncDefinitionsOutput", name: "ListRepositorySyncDefinitionsOutput")
    ListSyncConfigurationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#ListSyncConfigurationsInput", name: "ListSyncConfigurationsInput")
    ListSyncConfigurationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#ListSyncConfigurationsOutput", name: "ListSyncConfigurationsOutput")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#ListTagsForResourceInput", name: "ListTagsForResourceInput")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codeconnections#MaxResults", name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 100}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeconnections#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^.*$"})
    OwnerId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeconnections#OwnerId", name: "OwnerId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^.*$"})
    Parent = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeconnections#Parent", name: "Parent")
    ProviderType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codeconnections#ProviderType", name: "ProviderType")
    PublishDeploymentStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codeconnections#PublishDeploymentStatus", name: "PublishDeploymentStatus")
    PullRequestComment = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codeconnections#PullRequestComment", name: "PullRequestComment")
    RepositoryLinkArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeconnections#RepositoryLinkArn", name: "RepositoryLinkArn", traits: {"smithy.api#pattern" => "^arn:aws(?:-[a-z]+)*:(codestar-connections|codeconnections):[a-z\\-0-9]+:\\d{12}:repository-link\\/[a-zA-Z0-9\\-:/]+$"})
    RepositoryLinkId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeconnections#RepositoryLinkId", name: "RepositoryLinkId", traits: {"smithy.api#pattern" => "^[0-9a-fA-F]{8}\\b-[0-9a-fA-F]{4}\\b-[0-9a-fA-F]{4}\\b-[0-9a-fA-F]{4}\\b-[0-9a-fA-F]{12}$"})
    RepositoryLinkInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#RepositoryLinkInfo", name: "RepositoryLinkInfo")
    RepositoryLinkList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codeconnections#RepositoryLinkList", name: "RepositoryLinkList")
    RepositoryName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeconnections#RepositoryName", name: "RepositoryName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^.*$"})
    RepositorySyncAttempt = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#RepositorySyncAttempt", name: "RepositorySyncAttempt")
    RepositorySyncDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#RepositorySyncDefinition", name: "RepositorySyncDefinition")
    RepositorySyncDefinitionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codeconnections#RepositorySyncDefinitionList", name: "RepositorySyncDefinitionList")
    RepositorySyncEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#RepositorySyncEvent", name: "RepositorySyncEvent")
    RepositorySyncEventList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codeconnections#RepositorySyncEventList", name: "RepositorySyncEventList")
    RepositorySyncStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codeconnections#RepositorySyncStatus", name: "RepositorySyncStatus")
    ResolvedReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeconnections#ResolvedReason", name: "ResolvedReason", traits: {"smithy.api#length" => {"min" => 1, "max" => 250}})
    ResourceAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#ResourceAlreadyExistsException", name: "ResourceAlreadyExistsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeconnections#ResourceName", name: "ResourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[0-9A-Za-z]+[0-9A-Za-z_\\\\-]*$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceSyncAttempt = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#ResourceSyncAttempt", name: "ResourceSyncAttempt")
    ResourceSyncEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#ResourceSyncEvent", name: "ResourceSyncEvent")
    ResourceSyncEventList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codeconnections#ResourceSyncEventList", name: "ResourceSyncEventList")
    ResourceSyncStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codeconnections#ResourceSyncStatus", name: "ResourceSyncStatus")
    ResourceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#ResourceUnavailableException", name: "ResourceUnavailableException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    RetryLatestCommitFailedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#RetryLatestCommitFailedException", name: "RetryLatestCommitFailedException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    Revision = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#Revision", name: "Revision")
    SHA = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeconnections#SHA", name: "SHA", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    SecurityGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeconnections#SecurityGroupId", name: "SecurityGroupId", traits: {"smithy.api#length" => {"min" => 11, "max" => 20}, "smithy.api#pattern" => "^sg-\\w{8}(\\w{9})?$"})
    SecurityGroupIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codeconnections#SecurityGroupIds", name: "SecurityGroupIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    SharpNextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeconnections#SharpNextToken", name: "SharpNextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^.*$"})
    SubnetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeconnections#SubnetId", name: "SubnetId", traits: {"smithy.api#length" => {"min" => 15, "max" => 24}, "smithy.api#pattern" => "^subnet-\\w{8}(\\w{9})?$"})
    SubnetIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codeconnections#SubnetIds", name: "SubnetIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    SyncBlocker = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#SyncBlocker", name: "SyncBlocker")
    SyncBlockerContext = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#SyncBlockerContext", name: "SyncBlockerContext")
    SyncBlockerContextKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeconnections#SyncBlockerContextKey", name: "SyncBlockerContextKey")
    SyncBlockerContextList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codeconnections#SyncBlockerContextList", name: "SyncBlockerContextList")
    SyncBlockerContextValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeconnections#SyncBlockerContextValue", name: "SyncBlockerContextValue")
    SyncBlockerDoesNotExistException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#SyncBlockerDoesNotExistException", name: "SyncBlockerDoesNotExistException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SyncBlockerSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#SyncBlockerSummary", name: "SyncBlockerSummary")
    SyncConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#SyncConfiguration", name: "SyncConfiguration")
    SyncConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codeconnections#SyncConfigurationList", name: "SyncConfigurationList")
    SyncConfigurationStillExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#SyncConfigurationStillExistsException", name: "SyncConfigurationStillExistsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    SyncConfigurationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codeconnections#SyncConfigurationType", name: "SyncConfigurationType")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeconnections#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => ".*"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codeconnections#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codeconnections#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#TagResourceInput", name: "TagResourceInput")
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#TagResourceOutput", name: "TagResourceOutput")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeconnections#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => ".*"})
    Target = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeconnections#Target", name: "Target")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.codeconnections#Timestamp", name: "Timestamp")
    TlsCertificate = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeconnections#TlsCertificate", name: "TlsCertificate", traits: {"smithy.api#length" => {"min" => 1, "max" => 16384}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    TriggerResourceUpdateOn = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codeconnections#TriggerResourceUpdateOn", name: "TriggerResourceUpdateOn")
    Type = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeconnections#Type", name: "Type")
    UnsupportedOperationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#UnsupportedOperationException", name: "UnsupportedOperationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UnsupportedProviderTypeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#UnsupportedProviderTypeException", name: "UnsupportedProviderTypeException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#UntagResourceInput", name: "UntagResourceInput")
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#UntagResourceOutput", name: "UntagResourceOutput")
    UpdateHostInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#UpdateHostInput", name: "UpdateHostInput")
    UpdateHostOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#UpdateHostOutput", name: "UpdateHostOutput")
    UpdateOutOfSyncException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#UpdateOutOfSyncException", name: "UpdateOutOfSyncException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    UpdateRepositoryLinkInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#UpdateRepositoryLinkInput", name: "UpdateRepositoryLinkInput")
    UpdateRepositoryLinkOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#UpdateRepositoryLinkOutput", name: "UpdateRepositoryLinkOutput")
    UpdateSyncBlockerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#UpdateSyncBlockerInput", name: "UpdateSyncBlockerInput")
    UpdateSyncBlockerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#UpdateSyncBlockerOutput", name: "UpdateSyncBlockerOutput")
    UpdateSyncConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#UpdateSyncConfigurationInput", name: "UpdateSyncConfigurationInput")
    UpdateSyncConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#UpdateSyncConfigurationOutput", name: "UpdateSyncConfigurationOutput")
    Url = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeconnections#Url", name: "Url", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => ".*"})
    VpcConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeconnections#VpcConfiguration", name: "VpcConfiguration")
    VpcId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeconnections#VpcId", name: "VpcId", traits: {"smithy.api#length" => {"min" => 12, "max" => 21}, "smithy.api#pattern" => "^vpc-\\w{8}(\\w{9})?$"})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    AccessDeniedException.type = Types::AccessDeniedException
    BlockerStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    BlockerStatus.add_member(:resolved, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RESOLVED", traits: {"smithy.api#enumValue" => "RESOLVED"}))
    BlockerType.add_member(:automated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AUTOMATED", traits: {"smithy.api#enumValue" => "AUTOMATED"}))
    ConcurrentModificationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ConcurrentModificationException.type = Types::ConcurrentModificationException
    ConditionalCheckFailedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ConditionalCheckFailedException.type = Types::ConditionalCheckFailedException
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ConflictException.type = Types::ConflictException
    Connection.add_member(:connection_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionName, location_name: "ConnectionName"))
    Connection.add_member(:connection_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionArn, location_name: "ConnectionArn"))
    Connection.add_member(:provider_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderType, location_name: "ProviderType"))
    Connection.add_member(:owner_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "OwnerAccountId"))
    Connection.add_member(:connection_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionStatus, location_name: "ConnectionStatus"))
    Connection.add_member(:host_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostArn, location_name: "HostArn"))
    Connection.type = Types::Connection
    ConnectionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Connection)
    ConnectionStatus.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    ConnectionStatus.add_member(:available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    ConnectionStatus.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    CreateConnectionInput.add_member(:provider_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderType, location_name: "ProviderType"))
    CreateConnectionInput.add_member(:connection_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionName, location_name: "ConnectionName", traits: {"smithy.api#required" => {}}))
    CreateConnectionInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateConnectionInput.add_member(:host_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostArn, location_name: "HostArn"))
    CreateConnectionInput.type = Types::CreateConnectionInput
    CreateConnectionOutput.add_member(:connection_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionArn, location_name: "ConnectionArn", traits: {"smithy.api#required" => {}}))
    CreateConnectionOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateConnectionOutput.type = Types::CreateConnectionOutput
    CreateHostInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreateHostInput.add_member(:provider_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderType, location_name: "ProviderType", traits: {"smithy.api#required" => {}}))
    CreateHostInput.add_member(:provider_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: "ProviderEndpoint", traits: {"smithy.api#required" => {}}))
    CreateHostInput.add_member(:vpc_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfiguration, location_name: "VpcConfiguration"))
    CreateHostInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateHostInput.type = Types::CreateHostInput
    CreateHostOutput.add_member(:host_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostArn, location_name: "HostArn"))
    CreateHostOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateHostOutput.type = Types::CreateHostOutput
    CreateRepositoryLinkInput.add_member(:connection_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionArn, location_name: "ConnectionArn", traits: {"smithy.api#required" => {}}))
    CreateRepositoryLinkInput.add_member(:owner_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerId, location_name: "OwnerId", traits: {"smithy.api#required" => {}}))
    CreateRepositoryLinkInput.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "RepositoryName", traits: {"smithy.api#required" => {}}))
    CreateRepositoryLinkInput.add_member(:encryption_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "EncryptionKeyArn"))
    CreateRepositoryLinkInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateRepositoryLinkInput.type = Types::CreateRepositoryLinkInput
    CreateRepositoryLinkOutput.add_member(:repository_link_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryLinkInfo, location_name: "RepositoryLinkInfo", traits: {"smithy.api#required" => {}}))
    CreateRepositoryLinkOutput.type = Types::CreateRepositoryLinkOutput
    CreateSyncConfigurationInput.add_member(:branch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BranchName, location_name: "Branch", traits: {"smithy.api#required" => {}}))
    CreateSyncConfigurationInput.add_member(:config_file, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentFilePath, location_name: "ConfigFile", traits: {"smithy.api#required" => {}}))
    CreateSyncConfigurationInput.add_member(:repository_link_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryLinkId, location_name: "RepositoryLinkId", traits: {"smithy.api#required" => {}}))
    CreateSyncConfigurationInput.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "ResourceName", traits: {"smithy.api#required" => {}}))
    CreateSyncConfigurationInput.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "RoleArn", traits: {"smithy.api#required" => {}}))
    CreateSyncConfigurationInput.add_member(:sync_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncConfigurationType, location_name: "SyncType", traits: {"smithy.api#required" => {}}))
    CreateSyncConfigurationInput.add_member(:publish_deployment_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PublishDeploymentStatus, location_name: "PublishDeploymentStatus"))
    CreateSyncConfigurationInput.add_member(:trigger_resource_update_on, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TriggerResourceUpdateOn, location_name: "TriggerResourceUpdateOn"))
    CreateSyncConfigurationInput.add_member(:pull_request_comment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestComment, location_name: "PullRequestComment"))
    CreateSyncConfigurationInput.type = Types::CreateSyncConfigurationInput
    CreateSyncConfigurationOutput.add_member(:sync_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncConfiguration, location_name: "SyncConfiguration", traits: {"smithy.api#required" => {}}))
    CreateSyncConfigurationOutput.type = Types::CreateSyncConfigurationOutput
    DeleteConnectionInput.add_member(:connection_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionArn, location_name: "ConnectionArn", traits: {"smithy.api#required" => {}}))
    DeleteConnectionInput.type = Types::DeleteConnectionInput
    DeleteConnectionOutput.type = Types::DeleteConnectionOutput
    DeleteHostInput.add_member(:host_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostArn, location_name: "HostArn", traits: {"smithy.api#required" => {}}))
    DeleteHostInput.type = Types::DeleteHostInput
    DeleteHostOutput.type = Types::DeleteHostOutput
    DeleteRepositoryLinkInput.add_member(:repository_link_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryLinkId, location_name: "RepositoryLinkId", traits: {"smithy.api#required" => {}}))
    DeleteRepositoryLinkInput.type = Types::DeleteRepositoryLinkInput
    DeleteRepositoryLinkOutput.type = Types::DeleteRepositoryLinkOutput
    DeleteSyncConfigurationInput.add_member(:sync_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncConfigurationType, location_name: "SyncType", traits: {"smithy.api#required" => {}}))
    DeleteSyncConfigurationInput.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "ResourceName", traits: {"smithy.api#required" => {}}))
    DeleteSyncConfigurationInput.type = Types::DeleteSyncConfigurationInput
    DeleteSyncConfigurationOutput.type = Types::DeleteSyncConfigurationOutput
    GetConnectionInput.add_member(:connection_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionArn, location_name: "ConnectionArn", traits: {"smithy.api#required" => {}}))
    GetConnectionInput.type = Types::GetConnectionInput
    GetConnectionOutput.add_member(:connection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Connection, location_name: "Connection"))
    GetConnectionOutput.type = Types::GetConnectionOutput
    GetHostInput.add_member(:host_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostArn, location_name: "HostArn", traits: {"smithy.api#required" => {}}))
    GetHostInput.type = Types::GetHostInput
    GetHostOutput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostName, location_name: "Name"))
    GetHostOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostStatus, location_name: "Status"))
    GetHostOutput.add_member(:provider_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderType, location_name: "ProviderType"))
    GetHostOutput.add_member(:provider_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: "ProviderEndpoint"))
    GetHostOutput.add_member(:vpc_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfiguration, location_name: "VpcConfiguration"))
    GetHostOutput.type = Types::GetHostOutput
    GetRepositoryLinkInput.add_member(:repository_link_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryLinkId, location_name: "RepositoryLinkId", traits: {"smithy.api#required" => {}}))
    GetRepositoryLinkInput.type = Types::GetRepositoryLinkInput
    GetRepositoryLinkOutput.add_member(:repository_link_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryLinkInfo, location_name: "RepositoryLinkInfo", traits: {"smithy.api#required" => {}}))
    GetRepositoryLinkOutput.type = Types::GetRepositoryLinkOutput
    GetRepositorySyncStatusInput.add_member(:branch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BranchName, location_name: "Branch", traits: {"smithy.api#required" => {}}))
    GetRepositorySyncStatusInput.add_member(:repository_link_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryLinkId, location_name: "RepositoryLinkId", traits: {"smithy.api#required" => {}}))
    GetRepositorySyncStatusInput.add_member(:sync_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncConfigurationType, location_name: "SyncType", traits: {"smithy.api#required" => {}}))
    GetRepositorySyncStatusInput.type = Types::GetRepositorySyncStatusInput
    GetRepositorySyncStatusOutput.add_member(:latest_sync, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositorySyncAttempt, location_name: "LatestSync", traits: {"smithy.api#required" => {}}))
    GetRepositorySyncStatusOutput.type = Types::GetRepositorySyncStatusOutput
    GetResourceSyncStatusInput.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "ResourceName", traits: {"smithy.api#required" => {}}))
    GetResourceSyncStatusInput.add_member(:sync_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncConfigurationType, location_name: "SyncType", traits: {"smithy.api#required" => {}}))
    GetResourceSyncStatusInput.type = Types::GetResourceSyncStatusInput
    GetResourceSyncStatusOutput.add_member(:desired_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Revision, location_name: "DesiredState"))
    GetResourceSyncStatusOutput.add_member(:latest_successful_sync, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceSyncAttempt, location_name: "LatestSuccessfulSync"))
    GetResourceSyncStatusOutput.add_member(:latest_sync, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceSyncAttempt, location_name: "LatestSync", traits: {"smithy.api#required" => {}}))
    GetResourceSyncStatusOutput.type = Types::GetResourceSyncStatusOutput
    GetSyncBlockerSummaryInput.add_member(:sync_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncConfigurationType, location_name: "SyncType", traits: {"smithy.api#required" => {}}))
    GetSyncBlockerSummaryInput.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "ResourceName", traits: {"smithy.api#required" => {}}))
    GetSyncBlockerSummaryInput.type = Types::GetSyncBlockerSummaryInput
    GetSyncBlockerSummaryOutput.add_member(:sync_blocker_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncBlockerSummary, location_name: "SyncBlockerSummary", traits: {"smithy.api#required" => {}}))
    GetSyncBlockerSummaryOutput.type = Types::GetSyncBlockerSummaryOutput
    GetSyncConfigurationInput.add_member(:sync_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncConfigurationType, location_name: "SyncType", traits: {"smithy.api#required" => {}}))
    GetSyncConfigurationInput.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "ResourceName", traits: {"smithy.api#required" => {}}))
    GetSyncConfigurationInput.type = Types::GetSyncConfigurationInput
    GetSyncConfigurationOutput.add_member(:sync_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncConfiguration, location_name: "SyncConfiguration", traits: {"smithy.api#required" => {}}))
    GetSyncConfigurationOutput.type = Types::GetSyncConfigurationOutput
    Host.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostName, location_name: "Name"))
    Host.add_member(:host_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostArn, location_name: "HostArn"))
    Host.add_member(:provider_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderType, location_name: "ProviderType"))
    Host.add_member(:provider_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: "ProviderEndpoint"))
    Host.add_member(:vpc_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfiguration, location_name: "VpcConfiguration"))
    Host.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostStatus, location_name: "Status"))
    Host.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostStatusMessage, location_name: "StatusMessage"))
    Host.type = Types::Host
    HostList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Host)
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InternalServerException.type = Types::InternalServerException
    InvalidInputException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidInputException.type = Types::InvalidInputException
    LatestSyncBlockerList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncBlocker)
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    LimitExceededException.type = Types::LimitExceededException
    ListConnectionsInput.add_member(:provider_type_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderType, location_name: "ProviderTypeFilter"))
    ListConnectionsInput.add_member(:host_arn_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostArn, location_name: "HostArnFilter"))
    ListConnectionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", traits: {"smithy.api#default" => 0}))
    ListConnectionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListConnectionsInput.type = Types::ListConnectionsInput
    ListConnectionsOutput.add_member(:connections, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionList, location_name: "Connections"))
    ListConnectionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListConnectionsOutput.type = Types::ListConnectionsOutput
    ListHostsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", traits: {"smithy.api#default" => 0}))
    ListHostsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListHostsInput.type = Types::ListHostsInput
    ListHostsOutput.add_member(:hosts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostList, location_name: "Hosts"))
    ListHostsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListHostsOutput.type = Types::ListHostsOutput
    ListRepositoryLinksInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", traits: {"smithy.api#default" => 0}))
    ListRepositoryLinksInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SharpNextToken, location_name: "NextToken"))
    ListRepositoryLinksInput.type = Types::ListRepositoryLinksInput
    ListRepositoryLinksOutput.add_member(:repository_links, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryLinkList, location_name: "RepositoryLinks", traits: {"smithy.api#required" => {}}))
    ListRepositoryLinksOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SharpNextToken, location_name: "NextToken"))
    ListRepositoryLinksOutput.type = Types::ListRepositoryLinksOutput
    ListRepositorySyncDefinitionsInput.add_member(:repository_link_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryLinkId, location_name: "RepositoryLinkId", traits: {"smithy.api#required" => {}}))
    ListRepositorySyncDefinitionsInput.add_member(:sync_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncConfigurationType, location_name: "SyncType", traits: {"smithy.api#required" => {}}))
    ListRepositorySyncDefinitionsInput.type = Types::ListRepositorySyncDefinitionsInput
    ListRepositorySyncDefinitionsOutput.add_member(:repository_sync_definitions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositorySyncDefinitionList, location_name: "RepositorySyncDefinitions", traits: {"smithy.api#required" => {}}))
    ListRepositorySyncDefinitionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SharpNextToken, location_name: "NextToken"))
    ListRepositorySyncDefinitionsOutput.type = Types::ListRepositorySyncDefinitionsOutput
    ListSyncConfigurationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", traits: {"smithy.api#default" => 0}))
    ListSyncConfigurationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SharpNextToken, location_name: "NextToken"))
    ListSyncConfigurationsInput.add_member(:repository_link_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryLinkId, location_name: "RepositoryLinkId", traits: {"smithy.api#required" => {}}))
    ListSyncConfigurationsInput.add_member(:sync_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncConfigurationType, location_name: "SyncType", traits: {"smithy.api#required" => {}}))
    ListSyncConfigurationsInput.type = Types::ListSyncConfigurationsInput
    ListSyncConfigurationsOutput.add_member(:sync_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncConfigurationList, location_name: "SyncConfigurations", traits: {"smithy.api#required" => {}}))
    ListSyncConfigurationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SharpNextToken, location_name: "NextToken"))
    ListSyncConfigurationsOutput.type = Types::ListSyncConfigurationsOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ProviderType.add_member(:bitbucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BITBUCKET", traits: {"smithy.api#enumValue" => "Bitbucket"}))
    ProviderType.add_member(:github, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GITHUB", traits: {"smithy.api#enumValue" => "GitHub"}))
    ProviderType.add_member(:github_enterprise_server, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GITHUB_ENTERPRISE_SERVER", traits: {"smithy.api#enumValue" => "GitHubEnterpriseServer"}))
    ProviderType.add_member(:gitlab, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GITLAB", traits: {"smithy.api#enumValue" => "GitLab"}))
    ProviderType.add_member(:gitlab_self_managed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GITLAB_SELF_MANAGED", traits: {"smithy.api#enumValue" => "GitLabSelfManaged"}))
    ProviderType.add_member(:azure_dev_ops, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AZURE_DEV_OPS", traits: {"smithy.api#enumValue" => "AzureDevOps"}))
    PublishDeploymentStatus.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    PublishDeploymentStatus.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    PullRequestComment.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    PullRequestComment.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    RepositoryLinkInfo.add_member(:connection_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionArn, location_name: "ConnectionArn", traits: {"smithy.api#required" => {}}))
    RepositoryLinkInfo.add_member(:encryption_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "EncryptionKeyArn"))
    RepositoryLinkInfo.add_member(:owner_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerId, location_name: "OwnerId", traits: {"smithy.api#required" => {}}))
    RepositoryLinkInfo.add_member(:provider_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderType, location_name: "ProviderType", traits: {"smithy.api#required" => {}}))
    RepositoryLinkInfo.add_member(:repository_link_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryLinkArn, location_name: "RepositoryLinkArn", traits: {"smithy.api#required" => {}}))
    RepositoryLinkInfo.add_member(:repository_link_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryLinkId, location_name: "RepositoryLinkId", traits: {"smithy.api#required" => {}}))
    RepositoryLinkInfo.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "RepositoryName", traits: {"smithy.api#required" => {}}))
    RepositoryLinkInfo.type = Types::RepositoryLinkInfo
    RepositoryLinkList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryLinkInfo)
    RepositorySyncAttempt.add_member(:started_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartedAt", traits: {"smithy.api#required" => {}}))
    RepositorySyncAttempt.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositorySyncStatus, location_name: "Status", traits: {"smithy.api#required" => {}}))
    RepositorySyncAttempt.add_member(:events, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositorySyncEventList, location_name: "Events", traits: {"smithy.api#required" => {}}))
    RepositorySyncAttempt.type = Types::RepositorySyncAttempt
    RepositorySyncDefinition.add_member(:branch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BranchName, location_name: "Branch", traits: {"smithy.api#required" => {}}))
    RepositorySyncDefinition.add_member(:directory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Directory, location_name: "Directory", traits: {"smithy.api#required" => {}}))
    RepositorySyncDefinition.add_member(:parent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Parent, location_name: "Parent", traits: {"smithy.api#required" => {}}))
    RepositorySyncDefinition.add_member(:target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Target, location_name: "Target", traits: {"smithy.api#required" => {}}))
    RepositorySyncDefinition.type = Types::RepositorySyncDefinition
    RepositorySyncDefinitionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositorySyncDefinition)
    RepositorySyncEvent.add_member(:event, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Event, location_name: "Event", traits: {"smithy.api#required" => {}}))
    RepositorySyncEvent.add_member(:external_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalId, location_name: "ExternalId"))
    RepositorySyncEvent.add_member(:time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "Time", traits: {"smithy.api#required" => {}}))
    RepositorySyncEvent.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Type, location_name: "Type", traits: {"smithy.api#required" => {}}))
    RepositorySyncEvent.type = Types::RepositorySyncEvent
    RepositorySyncEventList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositorySyncEvent)
    RepositorySyncStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    RepositorySyncStatus.add_member(:initiated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INITIATED", traits: {"smithy.api#enumValue" => "INITIATED"}))
    RepositorySyncStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    RepositorySyncStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    RepositorySyncStatus.add_member(:queued, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "QUEUED", traits: {"smithy.api#enumValue" => "QUEUED"}))
    ResourceAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceAlreadyExistsException.type = Types::ResourceAlreadyExistsException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceSyncAttempt.add_member(:events, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceSyncEventList, location_name: "Events", traits: {"smithy.api#required" => {}}))
    ResourceSyncAttempt.add_member(:initial_revision, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Revision, location_name: "InitialRevision", traits: {"smithy.api#required" => {}}))
    ResourceSyncAttempt.add_member(:started_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartedAt", traits: {"smithy.api#required" => {}}))
    ResourceSyncAttempt.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceSyncStatus, location_name: "Status", traits: {"smithy.api#required" => {}}))
    ResourceSyncAttempt.add_member(:target_revision, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Revision, location_name: "TargetRevision", traits: {"smithy.api#required" => {}}))
    ResourceSyncAttempt.add_member(:target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Target, location_name: "Target", traits: {"smithy.api#required" => {}}))
    ResourceSyncAttempt.type = Types::ResourceSyncAttempt
    ResourceSyncEvent.add_member(:event, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Event, location_name: "Event", traits: {"smithy.api#required" => {}}))
    ResourceSyncEvent.add_member(:external_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalId, location_name: "ExternalId"))
    ResourceSyncEvent.add_member(:time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "Time", traits: {"smithy.api#required" => {}}))
    ResourceSyncEvent.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Type, location_name: "Type", traits: {"smithy.api#required" => {}}))
    ResourceSyncEvent.type = Types::ResourceSyncEvent
    ResourceSyncEventList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceSyncEvent)
    ResourceSyncStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ResourceSyncStatus.add_member(:initiated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INITIATED", traits: {"smithy.api#enumValue" => "INITIATED"}))
    ResourceSyncStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ResourceSyncStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    ResourceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceUnavailableException.type = Types::ResourceUnavailableException
    RetryLatestCommitFailedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    RetryLatestCommitFailedException.type = Types::RetryLatestCommitFailedException
    Revision.add_member(:branch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BranchName, location_name: "Branch", traits: {"smithy.api#required" => {}}))
    Revision.add_member(:directory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Directory, location_name: "Directory", traits: {"smithy.api#required" => {}}))
    Revision.add_member(:owner_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerId, location_name: "OwnerId", traits: {"smithy.api#required" => {}}))
    Revision.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "RepositoryName", traits: {"smithy.api#required" => {}}))
    Revision.add_member(:provider_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderType, location_name: "ProviderType", traits: {"smithy.api#required" => {}}))
    Revision.add_member(:sha, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SHA, location_name: "Sha", traits: {"smithy.api#required" => {}}))
    Revision.type = Types::Revision
    SecurityGroupIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupId)
    SubnetIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId)
    SyncBlocker.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "Id", traits: {"smithy.api#required" => {}}))
    SyncBlocker.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlockerType, location_name: "Type", traits: {"smithy.api#required" => {}}))
    SyncBlocker.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlockerStatus, location_name: "Status", traits: {"smithy.api#required" => {}}))
    SyncBlocker.add_member(:created_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedReason, location_name: "CreatedReason", traits: {"smithy.api#required" => {}}))
    SyncBlocker.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    SyncBlocker.add_member(:contexts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncBlockerContextList, location_name: "Contexts"))
    SyncBlocker.add_member(:resolved_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolvedReason, location_name: "ResolvedReason"))
    SyncBlocker.add_member(:resolved_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "ResolvedAt"))
    SyncBlocker.type = Types::SyncBlocker
    SyncBlockerContext.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncBlockerContextKey, location_name: "Key", traits: {"smithy.api#required" => {}}))
    SyncBlockerContext.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncBlockerContextValue, location_name: "Value", traits: {"smithy.api#required" => {}}))
    SyncBlockerContext.type = Types::SyncBlockerContext
    SyncBlockerContextList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncBlockerContext)
    SyncBlockerDoesNotExistException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    SyncBlockerDoesNotExistException.type = Types::SyncBlockerDoesNotExistException
    SyncBlockerSummary.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "ResourceName", traits: {"smithy.api#required" => {}}))
    SyncBlockerSummary.add_member(:parent_resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "ParentResourceName"))
    SyncBlockerSummary.add_member(:latest_blockers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LatestSyncBlockerList, location_name: "LatestBlockers"))
    SyncBlockerSummary.type = Types::SyncBlockerSummary
    SyncConfiguration.add_member(:branch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BranchName, location_name: "Branch", traits: {"smithy.api#required" => {}}))
    SyncConfiguration.add_member(:config_file, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentFilePath, location_name: "ConfigFile"))
    SyncConfiguration.add_member(:owner_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerId, location_name: "OwnerId", traits: {"smithy.api#required" => {}}))
    SyncConfiguration.add_member(:provider_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderType, location_name: "ProviderType", traits: {"smithy.api#required" => {}}))
    SyncConfiguration.add_member(:repository_link_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryLinkId, location_name: "RepositoryLinkId", traits: {"smithy.api#required" => {}}))
    SyncConfiguration.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: "RepositoryName", traits: {"smithy.api#required" => {}}))
    SyncConfiguration.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "ResourceName", traits: {"smithy.api#required" => {}}))
    SyncConfiguration.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "RoleArn", traits: {"smithy.api#required" => {}}))
    SyncConfiguration.add_member(:sync_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncConfigurationType, location_name: "SyncType", traits: {"smithy.api#required" => {}}))
    SyncConfiguration.add_member(:publish_deployment_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PublishDeploymentStatus, location_name: "PublishDeploymentStatus"))
    SyncConfiguration.add_member(:trigger_resource_update_on, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TriggerResourceUpdateOn, location_name: "TriggerResourceUpdateOn"))
    SyncConfiguration.add_member(:pull_request_comment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestComment, location_name: "PullRequestComment"))
    SyncConfiguration.type = Types::SyncConfiguration
    SyncConfigurationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncConfiguration)
    SyncConfigurationStillExistsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    SyncConfigurationStillExistsException.type = Types::SyncConfigurationStillExistsException
    SyncConfigurationType.add_member(:cfn_stack_sync, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CFN_STACK_SYNC", traits: {"smithy.api#enumValue" => "CFN_STACK_SYNC"}))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ThrottlingException.type = Types::ThrottlingException
    TriggerResourceUpdateOn.add_member(:any_change, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ANY_CHANGE", traits: {"smithy.api#enumValue" => "ANY_CHANGE"}))
    TriggerResourceUpdateOn.add_member(:file_change, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FILE_CHANGE", traits: {"smithy.api#enumValue" => "FILE_CHANGE"}))
    UnsupportedOperationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    UnsupportedOperationException.type = Types::UnsupportedOperationException
    UnsupportedProviderTypeException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    UnsupportedProviderTypeException.type = Types::UnsupportedProviderTypeException
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateHostInput.add_member(:host_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HostArn, location_name: "HostArn", traits: {"smithy.api#required" => {}}))
    UpdateHostInput.add_member(:provider_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: "ProviderEndpoint"))
    UpdateHostInput.add_member(:vpc_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfiguration, location_name: "VpcConfiguration"))
    UpdateHostInput.type = Types::UpdateHostInput
    UpdateHostOutput.type = Types::UpdateHostOutput
    UpdateOutOfSyncException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    UpdateOutOfSyncException.type = Types::UpdateOutOfSyncException
    UpdateRepositoryLinkInput.add_member(:connection_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionArn, location_name: "ConnectionArn"))
    UpdateRepositoryLinkInput.add_member(:encryption_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "EncryptionKeyArn"))
    UpdateRepositoryLinkInput.add_member(:repository_link_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryLinkId, location_name: "RepositoryLinkId", traits: {"smithy.api#required" => {}}))
    UpdateRepositoryLinkInput.type = Types::UpdateRepositoryLinkInput
    UpdateRepositoryLinkOutput.add_member(:repository_link_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryLinkInfo, location_name: "RepositoryLinkInfo", traits: {"smithy.api#required" => {}}))
    UpdateRepositoryLinkOutput.type = Types::UpdateRepositoryLinkOutput
    UpdateSyncBlockerInput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "Id", traits: {"smithy.api#required" => {}}))
    UpdateSyncBlockerInput.add_member(:sync_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncConfigurationType, location_name: "SyncType", traits: {"smithy.api#required" => {}}))
    UpdateSyncBlockerInput.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "ResourceName", traits: {"smithy.api#required" => {}}))
    UpdateSyncBlockerInput.add_member(:resolved_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolvedReason, location_name: "ResolvedReason", traits: {"smithy.api#required" => {}}))
    UpdateSyncBlockerInput.type = Types::UpdateSyncBlockerInput
    UpdateSyncBlockerOutput.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "ResourceName", traits: {"smithy.api#required" => {}}))
    UpdateSyncBlockerOutput.add_member(:parent_resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "ParentResourceName"))
    UpdateSyncBlockerOutput.add_member(:sync_blocker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncBlocker, location_name: "SyncBlocker", traits: {"smithy.api#required" => {}}))
    UpdateSyncBlockerOutput.type = Types::UpdateSyncBlockerOutput
    UpdateSyncConfigurationInput.add_member(:branch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BranchName, location_name: "Branch"))
    UpdateSyncConfigurationInput.add_member(:config_file, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentFilePath, location_name: "ConfigFile"))
    UpdateSyncConfigurationInput.add_member(:repository_link_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryLinkId, location_name: "RepositoryLinkId"))
    UpdateSyncConfigurationInput.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "ResourceName", traits: {"smithy.api#required" => {}}))
    UpdateSyncConfigurationInput.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "RoleArn"))
    UpdateSyncConfigurationInput.add_member(:sync_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncConfigurationType, location_name: "SyncType", traits: {"smithy.api#required" => {}}))
    UpdateSyncConfigurationInput.add_member(:publish_deployment_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PublishDeploymentStatus, location_name: "PublishDeploymentStatus"))
    UpdateSyncConfigurationInput.add_member(:trigger_resource_update_on, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TriggerResourceUpdateOn, location_name: "TriggerResourceUpdateOn"))
    UpdateSyncConfigurationInput.add_member(:pull_request_comment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestComment, location_name: "PullRequestComment"))
    UpdateSyncConfigurationInput.type = Types::UpdateSyncConfigurationInput
    UpdateSyncConfigurationOutput.add_member(:sync_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncConfiguration, location_name: "SyncConfiguration", traits: {"smithy.api#required" => {}}))
    UpdateSyncConfigurationOutput.type = Types::UpdateSyncConfigurationOutput
    VpcConfiguration.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: "VpcId", traits: {"smithy.api#required" => {}}))
    VpcConfiguration.add_member(:subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIds, location_name: "SubnetIds", traits: {"smithy.api#required" => {}}))
    VpcConfiguration.add_member(:security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: "SecurityGroupIds", traits: {"smithy.api#required" => {}}))
    VpcConfiguration.add_member(:tls_certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TlsCertificate, location_name: "TlsCertificate"))
    VpcConfiguration.type = Types::VpcConfiguration

    CodeConnections20231201 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.codeconnections#CodeConnections_20231201"
      service.name = "CodeConnections20231201"
      service.version = "2023-12-01"
      service.traits = {"aws.api#service" => {"sdkId" => "CodeConnections", "arnNamespace" => "codeconnections", "cloudFormationName" => "CodeConnections", "cloudTrailEventSource" => "codeconnections.amazonaws.com", "endpointPrefix" => "codeconnections"}, "aws.auth#sigv4" => {"name" => "codeconnections"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "AWS CodeConnections"}
      service.add_operation(:create_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeconnections#CreateConnection"
        operation.name = "CreateConnection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConnectionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConnectionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:create_host, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeconnections#CreateHost"
        operation.name = "CreateHost"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateHostInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateHostOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {}
      end)
      service.add_operation(:create_repository_link, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeconnections#CreateRepositoryLink"
        operation.name = "CreateRepositoryLink"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRepositoryLinkInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRepositoryLinkOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:create_sync_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeconnections#CreateSyncConfiguration"
        operation.name = "CreateSyncConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSyncConfigurationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSyncConfigurationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:delete_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeconnections#DeleteConnection"
        operation.name = "DeleteConnection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConnectionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConnectionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_host, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeconnections#DeleteHost"
        operation.name = "DeleteHost"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteHostInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteHostOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:delete_repository_link, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeconnections#DeleteRepositoryLink"
        operation.name = "DeleteRepositoryLink"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRepositoryLinkInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRepositoryLinkOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncConfigurationStillExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedProviderTypeException)
        operation.traits = {}
      end)
      service.add_operation(:delete_sync_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeconnections#DeleteSyncConfiguration"
        operation.name = "DeleteSyncConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSyncConfigurationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSyncConfigurationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:get_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeconnections#GetConnection"
        operation.name = "GetConnection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetConnectionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetConnectionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:get_host, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeconnections#GetHost"
        operation.name = "GetHost"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetHostInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetHostOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:get_repository_link, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeconnections#GetRepositoryLink"
        operation.name = "GetRepositoryLink"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRepositoryLinkInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRepositoryLinkOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:get_repository_sync_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeconnections#GetRepositorySyncStatus"
        operation.name = "GetRepositorySyncStatus"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRepositorySyncStatusInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRepositorySyncStatusOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:get_resource_sync_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeconnections#GetResourceSyncStatus"
        operation.name = "GetResourceSyncStatus"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourceSyncStatusInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourceSyncStatusOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:get_sync_blocker_summary, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeconnections#GetSyncBlockerSummary"
        operation.name = "GetSyncBlockerSummary"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSyncBlockerSummaryInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSyncBlockerSummaryOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:get_sync_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeconnections#GetSyncConfiguration"
        operation.name = "GetSyncConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSyncConfigurationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSyncConfigurationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:list_connections, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeconnections#ListConnections"
        operation.name = "ListConnections"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListConnectionsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListConnectionsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListConnections.new
      end)
      service.add_operation(:list_hosts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeconnections#ListHosts"
        operation.name = "ListHosts"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListHostsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListHostsOutput)
        operation.traits = {}
        operation[:paginator] = Paginators::ListHosts.new
      end)
      service.add_operation(:list_repository_links, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeconnections#ListRepositoryLinks"
        operation.name = "ListRepositoryLinks"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRepositoryLinksInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRepositoryLinksOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListRepositoryLinks.new
      end)
      service.add_operation(:list_repository_sync_definitions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeconnections#ListRepositorySyncDefinitions"
        operation.name = "ListRepositorySyncDefinitions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRepositorySyncDefinitionsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRepositorySyncDefinitionsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:list_sync_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeconnections#ListSyncConfigurations"
        operation.name = "ListSyncConfigurations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSyncConfigurationsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSyncConfigurationsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListSyncConfigurations.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeconnections#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeconnections#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeconnections#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_host, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeconnections#UpdateHost"
        operation.name = "UpdateHost"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateHostInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateHostOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:update_repository_link, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeconnections#UpdateRepositoryLink"
        operation.name = "UpdateRepositoryLink"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRepositoryLinkInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRepositoryLinkOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionalCheckFailedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateOutOfSyncException)
        operation.traits = {}
      end)
      service.add_operation(:update_sync_blocker, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeconnections#UpdateSyncBlocker"
        operation.name = "UpdateSyncBlocker"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSyncBlockerInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSyncBlockerOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetryLatestCommitFailedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SyncBlockerDoesNotExistException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:update_sync_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeconnections#UpdateSyncConfiguration"
        operation.name = "UpdateSyncConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSyncConfigurationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSyncConfigurationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateOutOfSyncException)
        operation.traits = {}
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
