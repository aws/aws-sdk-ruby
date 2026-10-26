# frozen_string_literal: true

# This is generated code!

module Aws::CodeStarconnections
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codestarconnections#AccountId", name: "AccountId", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[0-9]{12}$"})
    AmazonResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codestarconnections#AmazonResourceName", name: "AmazonResourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn:aws(-[\\w]+)*:.+:.+:[0-9]{12}:.+$"})
    BlockerStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codestarconnections#BlockerStatus", name: "BlockerStatus")
    BlockerType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codestarconnections#BlockerType", name: "BlockerType")
    BranchName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codestarconnections#BranchName", name: "BranchName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^.*$"})
    ConcurrentModificationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#ConcurrentModificationException", name: "ConcurrentModificationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConditionalCheckFailedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#ConditionalCheckFailedException", name: "ConditionalCheckFailedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    Connection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#Connection", name: "Connection")
    ConnectionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codestarconnections#ConnectionArn", name: "ConnectionArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^arn:aws(-[\\w]+)*:.+:.+:[0-9]{12}:.+$"})
    ConnectionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codestarconnections#ConnectionList", name: "ConnectionList")
    ConnectionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codestarconnections#ConnectionName", name: "ConnectionName", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    ConnectionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codestarconnections#ConnectionStatus", name: "ConnectionStatus")
    CreateConnectionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#CreateConnectionInput", name: "CreateConnectionInput")
    CreateConnectionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#CreateConnectionOutput", name: "CreateConnectionOutput")
    CreateHostInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#CreateHostInput", name: "CreateHostInput")
    CreateHostOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#CreateHostOutput", name: "CreateHostOutput")
    CreateRepositoryLinkInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#CreateRepositoryLinkInput", name: "CreateRepositoryLinkInput")
    CreateRepositoryLinkOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#CreateRepositoryLinkOutput", name: "CreateRepositoryLinkOutput")
    CreateSyncConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#CreateSyncConfigurationInput", name: "CreateSyncConfigurationInput")
    CreateSyncConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#CreateSyncConfigurationOutput", name: "CreateSyncConfigurationOutput")
    CreatedReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codestarconnections#CreatedReason", name: "CreatedReason")
    DeleteConnectionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#DeleteConnectionInput", name: "DeleteConnectionInput")
    DeleteConnectionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#DeleteConnectionOutput", name: "DeleteConnectionOutput")
    DeleteHostInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#DeleteHostInput", name: "DeleteHostInput")
    DeleteHostOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#DeleteHostOutput", name: "DeleteHostOutput")
    DeleteRepositoryLinkInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#DeleteRepositoryLinkInput", name: "DeleteRepositoryLinkInput")
    DeleteRepositoryLinkOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#DeleteRepositoryLinkOutput", name: "DeleteRepositoryLinkOutput")
    DeleteSyncConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#DeleteSyncConfigurationInput", name: "DeleteSyncConfigurationInput")
    DeleteSyncConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#DeleteSyncConfigurationOutput", name: "DeleteSyncConfigurationOutput")
    DeploymentFilePath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codestarconnections#DeploymentFilePath", name: "DeploymentFilePath")
    Directory = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codestarconnections#Directory", name: "Directory")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codestarconnections#ErrorMessage", name: "ErrorMessage", traits: {"smithy.api#length" => {"min" => 0, "max" => 600}})
    Event = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codestarconnections#Event", name: "Event")
    ExternalId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codestarconnections#ExternalId", name: "ExternalId")
    GetConnectionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#GetConnectionInput", name: "GetConnectionInput")
    GetConnectionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#GetConnectionOutput", name: "GetConnectionOutput")
    GetHostInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#GetHostInput", name: "GetHostInput")
    GetHostOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#GetHostOutput", name: "GetHostOutput")
    GetRepositoryLinkInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#GetRepositoryLinkInput", name: "GetRepositoryLinkInput")
    GetRepositoryLinkOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#GetRepositoryLinkOutput", name: "GetRepositoryLinkOutput")
    GetRepositorySyncStatusInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#GetRepositorySyncStatusInput", name: "GetRepositorySyncStatusInput")
    GetRepositorySyncStatusOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#GetRepositorySyncStatusOutput", name: "GetRepositorySyncStatusOutput")
    GetResourceSyncStatusInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#GetResourceSyncStatusInput", name: "GetResourceSyncStatusInput")
    GetResourceSyncStatusOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#GetResourceSyncStatusOutput", name: "GetResourceSyncStatusOutput")
    GetSyncBlockerSummaryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#GetSyncBlockerSummaryInput", name: "GetSyncBlockerSummaryInput")
    GetSyncBlockerSummaryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#GetSyncBlockerSummaryOutput", name: "GetSyncBlockerSummaryOutput")
    GetSyncConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#GetSyncConfigurationInput", name: "GetSyncConfigurationInput")
    GetSyncConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#GetSyncConfigurationOutput", name: "GetSyncConfigurationOutput")
    Host = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#Host", name: "Host")
    HostArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codestarconnections#HostArn", name: "HostArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^arn:aws(-[\\w]+)*:codestar-connections:.+:[0-9]{12}:host\\/.+$"})
    HostList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codestarconnections#HostList", name: "HostList")
    HostName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codestarconnections#HostName", name: "HostName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => ".*"})
    HostStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codestarconnections#HostStatus", name: "HostStatus", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => ".*"})
    HostStatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codestarconnections#HostStatusMessage", name: "HostStatusMessage")
    IamRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codestarconnections#IamRoleArn", name: "IamRoleArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^arn:aws(-[\\w]+)*:iam::\\d{12}:role/[a-zA-Z_0-9+=,.@\\-_/]+$"})
    Id = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codestarconnections#Id", name: "Id", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    InvalidInputException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#InvalidInputException", name: "InvalidInputException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    KmsKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codestarconnections#KmsKeyArn", name: "KmsKeyArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^arn:aws(-[\\w]+)*:kms:[a-z\\-0-9]+:\\d{12}:key/[a-zA-Z0-9\\-]+$"})
    LatestSyncBlockerList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codestarconnections#LatestSyncBlockerList", name: "LatestSyncBlockerList")
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    ListConnectionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#ListConnectionsInput", name: "ListConnectionsInput")
    ListConnectionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#ListConnectionsOutput", name: "ListConnectionsOutput")
    ListHostsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#ListHostsInput", name: "ListHostsInput")
    ListHostsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#ListHostsOutput", name: "ListHostsOutput")
    ListRepositoryLinksInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#ListRepositoryLinksInput", name: "ListRepositoryLinksInput")
    ListRepositoryLinksOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#ListRepositoryLinksOutput", name: "ListRepositoryLinksOutput")
    ListRepositorySyncDefinitionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#ListRepositorySyncDefinitionsInput", name: "ListRepositorySyncDefinitionsInput")
    ListRepositorySyncDefinitionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#ListRepositorySyncDefinitionsOutput", name: "ListRepositorySyncDefinitionsOutput")
    ListSyncConfigurationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#ListSyncConfigurationsInput", name: "ListSyncConfigurationsInput")
    ListSyncConfigurationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#ListSyncConfigurationsOutput", name: "ListSyncConfigurationsOutput")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#ListTagsForResourceInput", name: "ListTagsForResourceInput")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codestarconnections#MaxResults", name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 100}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codestarconnections#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^.*$"})
    OwnerId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codestarconnections#OwnerId", name: "OwnerId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^.*$"})
    Parent = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codestarconnections#Parent", name: "Parent")
    ProviderType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codestarconnections#ProviderType", name: "ProviderType")
    PublishDeploymentStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codestarconnections#PublishDeploymentStatus", name: "PublishDeploymentStatus")
    RepositoryLinkArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codestarconnections#RepositoryLinkArn", name: "RepositoryLinkArn", traits: {"smithy.api#pattern" => "^arn:aws(?:-[a-z]+)*:codestar-connections:[a-z\\-0-9]+:\\d{12}:repository-link\\/[a-zA-Z0-9\\-:/]+$"})
    RepositoryLinkId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codestarconnections#RepositoryLinkId", name: "RepositoryLinkId", traits: {"smithy.api#pattern" => "^[0-9a-fA-F]{8}\\b-[0-9a-fA-F]{4}\\b-[0-9a-fA-F]{4}\\b-[0-9a-fA-F]{4}\\b-[0-9a-fA-F]{12}$"})
    RepositoryLinkInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#RepositoryLinkInfo", name: "RepositoryLinkInfo")
    RepositoryLinkList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codestarconnections#RepositoryLinkList", name: "RepositoryLinkList")
    RepositoryName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codestarconnections#RepositoryName", name: "RepositoryName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^.*$"})
    RepositorySyncAttempt = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#RepositorySyncAttempt", name: "RepositorySyncAttempt")
    RepositorySyncDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#RepositorySyncDefinition", name: "RepositorySyncDefinition")
    RepositorySyncDefinitionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codestarconnections#RepositorySyncDefinitionList", name: "RepositorySyncDefinitionList")
    RepositorySyncEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#RepositorySyncEvent", name: "RepositorySyncEvent")
    RepositorySyncEventList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codestarconnections#RepositorySyncEventList", name: "RepositorySyncEventList")
    RepositorySyncStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codestarconnections#RepositorySyncStatus", name: "RepositorySyncStatus")
    ResolvedReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codestarconnections#ResolvedReason", name: "ResolvedReason", traits: {"smithy.api#length" => {"min" => 1, "max" => 250}})
    ResourceAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#ResourceAlreadyExistsException", name: "ResourceAlreadyExistsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codestarconnections#ResourceName", name: "ResourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[0-9A-Za-z]+[0-9A-Za-z_\\\\-]*$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceSyncAttempt = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#ResourceSyncAttempt", name: "ResourceSyncAttempt")
    ResourceSyncEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#ResourceSyncEvent", name: "ResourceSyncEvent")
    ResourceSyncEventList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codestarconnections#ResourceSyncEventList", name: "ResourceSyncEventList")
    ResourceSyncStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codestarconnections#ResourceSyncStatus", name: "ResourceSyncStatus")
    ResourceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#ResourceUnavailableException", name: "ResourceUnavailableException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    RetryLatestCommitFailedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#RetryLatestCommitFailedException", name: "RetryLatestCommitFailedException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    Revision = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#Revision", name: "Revision")
    SHA = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codestarconnections#SHA", name: "SHA", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    SecurityGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codestarconnections#SecurityGroupId", name: "SecurityGroupId", traits: {"smithy.api#length" => {"min" => 11, "max" => 20}, "smithy.api#pattern" => "^sg-\\w{8}(\\w{9})?$"})
    SecurityGroupIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codestarconnections#SecurityGroupIds", name: "SecurityGroupIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    SharpNextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codestarconnections#SharpNextToken", name: "SharpNextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^.*$"})
    SubnetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codestarconnections#SubnetId", name: "SubnetId", traits: {"smithy.api#length" => {"min" => 15, "max" => 24}, "smithy.api#pattern" => "^subnet-\\w{8}(\\w{9})?$"})
    SubnetIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codestarconnections#SubnetIds", name: "SubnetIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    SyncBlocker = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#SyncBlocker", name: "SyncBlocker")
    SyncBlockerContext = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#SyncBlockerContext", name: "SyncBlockerContext")
    SyncBlockerContextKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codestarconnections#SyncBlockerContextKey", name: "SyncBlockerContextKey")
    SyncBlockerContextList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codestarconnections#SyncBlockerContextList", name: "SyncBlockerContextList")
    SyncBlockerContextValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codestarconnections#SyncBlockerContextValue", name: "SyncBlockerContextValue")
    SyncBlockerDoesNotExistException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#SyncBlockerDoesNotExistException", name: "SyncBlockerDoesNotExistException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SyncBlockerSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#SyncBlockerSummary", name: "SyncBlockerSummary")
    SyncConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#SyncConfiguration", name: "SyncConfiguration")
    SyncConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codestarconnections#SyncConfigurationList", name: "SyncConfigurationList")
    SyncConfigurationStillExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#SyncConfigurationStillExistsException", name: "SyncConfigurationStillExistsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    SyncConfigurationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codestarconnections#SyncConfigurationType", name: "SyncConfigurationType")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codestarconnections#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => ".*"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codestarconnections#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codestarconnections#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#TagResourceInput", name: "TagResourceInput")
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#TagResourceOutput", name: "TagResourceOutput")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codestarconnections#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => ".*"})
    Target = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codestarconnections#Target", name: "Target")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.codestarconnections#Timestamp", name: "Timestamp")
    TlsCertificate = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codestarconnections#TlsCertificate", name: "TlsCertificate", traits: {"smithy.api#length" => {"min" => 1, "max" => 16384}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    TriggerResourceUpdateOn = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codestarconnections#TriggerResourceUpdateOn", name: "TriggerResourceUpdateOn")
    Type = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codestarconnections#Type", name: "Type")
    UnsupportedOperationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#UnsupportedOperationException", name: "UnsupportedOperationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UnsupportedProviderTypeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#UnsupportedProviderTypeException", name: "UnsupportedProviderTypeException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#UntagResourceInput", name: "UntagResourceInput")
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#UntagResourceOutput", name: "UntagResourceOutput")
    UpdateHostInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#UpdateHostInput", name: "UpdateHostInput")
    UpdateHostOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#UpdateHostOutput", name: "UpdateHostOutput")
    UpdateOutOfSyncException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#UpdateOutOfSyncException", name: "UpdateOutOfSyncException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    UpdateRepositoryLinkInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#UpdateRepositoryLinkInput", name: "UpdateRepositoryLinkInput")
    UpdateRepositoryLinkOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#UpdateRepositoryLinkOutput", name: "UpdateRepositoryLinkOutput")
    UpdateSyncBlockerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#UpdateSyncBlockerInput", name: "UpdateSyncBlockerInput")
    UpdateSyncBlockerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#UpdateSyncBlockerOutput", name: "UpdateSyncBlockerOutput")
    UpdateSyncConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#UpdateSyncConfigurationInput", name: "UpdateSyncConfigurationInput")
    UpdateSyncConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#UpdateSyncConfigurationOutput", name: "UpdateSyncConfigurationOutput")
    Url = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codestarconnections#Url", name: "Url", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => ".*"})
    VpcConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codestarconnections#VpcConfiguration", name: "VpcConfiguration")
    VpcId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codestarconnections#VpcId", name: "VpcId", traits: {"smithy.api#length" => {"min" => 12, "max" => 21}, "smithy.api#pattern" => "^vpc-\\w{8}(\\w{9})?$"})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    AccessDeniedException.type = Types::AccessDeniedException
    BlockerStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    BlockerStatus.add_member(:resolved, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOLVED", traits: {"smithy.api#enumValue" => "RESOLVED"}))
    BlockerType.add_member(:automated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTOMATED", traits: {"smithy.api#enumValue" => "AUTOMATED"}))
    ConcurrentModificationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ConcurrentModificationException.type = Types::ConcurrentModificationException
    ConditionalCheckFailedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ConditionalCheckFailedException.type = Types::ConditionalCheckFailedException
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ConflictException.type = Types::ConflictException
    Connection.add_member(:connection_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionName, name: "ConnectionName"))
    Connection.add_member(:connection_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionArn, name: "ConnectionArn"))
    Connection.add_member(:provider_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderType, name: "ProviderType"))
    Connection.add_member(:owner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "OwnerAccountId"))
    Connection.add_member(:connection_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionStatus, name: "ConnectionStatus"))
    Connection.add_member(:host_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: HostArn, name: "HostArn"))
    Connection.type = Types::Connection
    ConnectionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Connection, name: "member"))
    ConnectionStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    ConnectionStatus.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    ConnectionStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    CreateConnectionInput.add_member(:provider_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderType, name: "ProviderType"))
    CreateConnectionInput.add_member(:connection_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionName, name: "ConnectionName", traits: {"smithy.api#required" => {}}))
    CreateConnectionInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateConnectionInput.add_member(:host_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: HostArn, name: "HostArn"))
    CreateConnectionInput.type = Types::CreateConnectionInput
    CreateConnectionOutput.add_member(:connection_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionArn, name: "ConnectionArn", traits: {"smithy.api#required" => {}}))
    CreateConnectionOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateConnectionOutput.type = Types::CreateConnectionOutput
    CreateHostInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: HostName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateHostInput.add_member(:provider_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderType, name: "ProviderType", traits: {"smithy.api#required" => {}}))
    CreateHostInput.add_member(:provider_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "ProviderEndpoint", traits: {"smithy.api#required" => {}}))
    CreateHostInput.add_member(:vpc_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfiguration, name: "VpcConfiguration"))
    CreateHostInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateHostInput.type = Types::CreateHostInput
    CreateHostOutput.add_member(:host_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: HostArn, name: "HostArn"))
    CreateHostOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateHostOutput.type = Types::CreateHostOutput
    CreateRepositoryLinkInput.add_member(:connection_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionArn, name: "ConnectionArn", traits: {"smithy.api#required" => {}}))
    CreateRepositoryLinkInput.add_member(:owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OwnerId, name: "OwnerId", traits: {"smithy.api#required" => {}}))
    CreateRepositoryLinkInput.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "RepositoryName", traits: {"smithy.api#required" => {}}))
    CreateRepositoryLinkInput.add_member(:encryption_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "EncryptionKeyArn"))
    CreateRepositoryLinkInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateRepositoryLinkInput.type = Types::CreateRepositoryLinkInput
    CreateRepositoryLinkOutput.add_member(:repository_link_info, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryLinkInfo, name: "RepositoryLinkInfo", traits: {"smithy.api#required" => {}}))
    CreateRepositoryLinkOutput.type = Types::CreateRepositoryLinkOutput
    CreateSyncConfigurationInput.add_member(:branch, ::Smithy::Schema::Shapes::MemberShape.new(target: BranchName, name: "Branch", traits: {"smithy.api#required" => {}}))
    CreateSyncConfigurationInput.add_member(:config_file, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentFilePath, name: "ConfigFile", traits: {"smithy.api#required" => {}}))
    CreateSyncConfigurationInput.add_member(:repository_link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryLinkId, name: "RepositoryLinkId", traits: {"smithy.api#required" => {}}))
    CreateSyncConfigurationInput.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ResourceName", traits: {"smithy.api#required" => {}}))
    CreateSyncConfigurationInput.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "RoleArn", traits: {"smithy.api#required" => {}}))
    CreateSyncConfigurationInput.add_member(:sync_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncConfigurationType, name: "SyncType", traits: {"smithy.api#required" => {}}))
    CreateSyncConfigurationInput.add_member(:publish_deployment_status, ::Smithy::Schema::Shapes::MemberShape.new(target: PublishDeploymentStatus, name: "PublishDeploymentStatus"))
    CreateSyncConfigurationInput.add_member(:trigger_resource_update_on, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerResourceUpdateOn, name: "TriggerResourceUpdateOn"))
    CreateSyncConfigurationInput.type = Types::CreateSyncConfigurationInput
    CreateSyncConfigurationOutput.add_member(:sync_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncConfiguration, name: "SyncConfiguration", traits: {"smithy.api#required" => {}}))
    CreateSyncConfigurationOutput.type = Types::CreateSyncConfigurationOutput
    DeleteConnectionInput.add_member(:connection_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionArn, name: "ConnectionArn", traits: {"smithy.api#required" => {}}))
    DeleteConnectionInput.type = Types::DeleteConnectionInput
    DeleteConnectionOutput.type = Types::DeleteConnectionOutput
    DeleteHostInput.add_member(:host_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: HostArn, name: "HostArn", traits: {"smithy.api#required" => {}}))
    DeleteHostInput.type = Types::DeleteHostInput
    DeleteHostOutput.type = Types::DeleteHostOutput
    DeleteRepositoryLinkInput.add_member(:repository_link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryLinkId, name: "RepositoryLinkId", traits: {"smithy.api#required" => {}}))
    DeleteRepositoryLinkInput.type = Types::DeleteRepositoryLinkInput
    DeleteRepositoryLinkOutput.type = Types::DeleteRepositoryLinkOutput
    DeleteSyncConfigurationInput.add_member(:sync_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncConfigurationType, name: "SyncType", traits: {"smithy.api#required" => {}}))
    DeleteSyncConfigurationInput.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ResourceName", traits: {"smithy.api#required" => {}}))
    DeleteSyncConfigurationInput.type = Types::DeleteSyncConfigurationInput
    DeleteSyncConfigurationOutput.type = Types::DeleteSyncConfigurationOutput
    GetConnectionInput.add_member(:connection_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionArn, name: "ConnectionArn", traits: {"smithy.api#required" => {}}))
    GetConnectionInput.type = Types::GetConnectionInput
    GetConnectionOutput.add_member(:connection, ::Smithy::Schema::Shapes::MemberShape.new(target: Connection, name: "Connection"))
    GetConnectionOutput.type = Types::GetConnectionOutput
    GetHostInput.add_member(:host_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: HostArn, name: "HostArn", traits: {"smithy.api#required" => {}}))
    GetHostInput.type = Types::GetHostInput
    GetHostOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: HostName, name: "Name"))
    GetHostOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: HostStatus, name: "Status"))
    GetHostOutput.add_member(:provider_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderType, name: "ProviderType"))
    GetHostOutput.add_member(:provider_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "ProviderEndpoint"))
    GetHostOutput.add_member(:vpc_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfiguration, name: "VpcConfiguration"))
    GetHostOutput.type = Types::GetHostOutput
    GetRepositoryLinkInput.add_member(:repository_link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryLinkId, name: "RepositoryLinkId", traits: {"smithy.api#required" => {}}))
    GetRepositoryLinkInput.type = Types::GetRepositoryLinkInput
    GetRepositoryLinkOutput.add_member(:repository_link_info, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryLinkInfo, name: "RepositoryLinkInfo", traits: {"smithy.api#required" => {}}))
    GetRepositoryLinkOutput.type = Types::GetRepositoryLinkOutput
    GetRepositorySyncStatusInput.add_member(:branch, ::Smithy::Schema::Shapes::MemberShape.new(target: BranchName, name: "Branch", traits: {"smithy.api#required" => {}}))
    GetRepositorySyncStatusInput.add_member(:repository_link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryLinkId, name: "RepositoryLinkId", traits: {"smithy.api#required" => {}}))
    GetRepositorySyncStatusInput.add_member(:sync_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncConfigurationType, name: "SyncType", traits: {"smithy.api#required" => {}}))
    GetRepositorySyncStatusInput.type = Types::GetRepositorySyncStatusInput
    GetRepositorySyncStatusOutput.add_member(:latest_sync, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositorySyncAttempt, name: "LatestSync", traits: {"smithy.api#required" => {}}))
    GetRepositorySyncStatusOutput.type = Types::GetRepositorySyncStatusOutput
    GetResourceSyncStatusInput.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ResourceName", traits: {"smithy.api#required" => {}}))
    GetResourceSyncStatusInput.add_member(:sync_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncConfigurationType, name: "SyncType", traits: {"smithy.api#required" => {}}))
    GetResourceSyncStatusInput.type = Types::GetResourceSyncStatusInput
    GetResourceSyncStatusOutput.add_member(:desired_state, ::Smithy::Schema::Shapes::MemberShape.new(target: Revision, name: "DesiredState"))
    GetResourceSyncStatusOutput.add_member(:latest_successful_sync, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSyncAttempt, name: "LatestSuccessfulSync"))
    GetResourceSyncStatusOutput.add_member(:latest_sync, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSyncAttempt, name: "LatestSync", traits: {"smithy.api#required" => {}}))
    GetResourceSyncStatusOutput.type = Types::GetResourceSyncStatusOutput
    GetSyncBlockerSummaryInput.add_member(:sync_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncConfigurationType, name: "SyncType", traits: {"smithy.api#required" => {}}))
    GetSyncBlockerSummaryInput.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ResourceName", traits: {"smithy.api#required" => {}}))
    GetSyncBlockerSummaryInput.type = Types::GetSyncBlockerSummaryInput
    GetSyncBlockerSummaryOutput.add_member(:sync_blocker_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncBlockerSummary, name: "SyncBlockerSummary", traits: {"smithy.api#required" => {}}))
    GetSyncBlockerSummaryOutput.type = Types::GetSyncBlockerSummaryOutput
    GetSyncConfigurationInput.add_member(:sync_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncConfigurationType, name: "SyncType", traits: {"smithy.api#required" => {}}))
    GetSyncConfigurationInput.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ResourceName", traits: {"smithy.api#required" => {}}))
    GetSyncConfigurationInput.type = Types::GetSyncConfigurationInput
    GetSyncConfigurationOutput.add_member(:sync_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncConfiguration, name: "SyncConfiguration", traits: {"smithy.api#required" => {}}))
    GetSyncConfigurationOutput.type = Types::GetSyncConfigurationOutput
    Host.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: HostName, name: "Name"))
    Host.add_member(:host_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: HostArn, name: "HostArn"))
    Host.add_member(:provider_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderType, name: "ProviderType"))
    Host.add_member(:provider_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "ProviderEndpoint"))
    Host.add_member(:vpc_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfiguration, name: "VpcConfiguration"))
    Host.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: HostStatus, name: "Status"))
    Host.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: HostStatusMessage, name: "StatusMessage"))
    Host.type = Types::Host
    HostList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Host, name: "member"))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InternalServerException.type = Types::InternalServerException
    InvalidInputException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InvalidInputException.type = Types::InvalidInputException
    LatestSyncBlockerList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncBlocker, name: "member"))
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    LimitExceededException.type = Types::LimitExceededException
    ListConnectionsInput.add_member(:provider_type_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderType, name: "ProviderTypeFilter"))
    ListConnectionsInput.add_member(:host_arn_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: HostArn, name: "HostArnFilter"))
    ListConnectionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => 0}))
    ListConnectionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListConnectionsInput.type = Types::ListConnectionsInput
    ListConnectionsOutput.add_member(:connections, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionList, name: "Connections"))
    ListConnectionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListConnectionsOutput.type = Types::ListConnectionsOutput
    ListHostsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => 0}))
    ListHostsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListHostsInput.type = Types::ListHostsInput
    ListHostsOutput.add_member(:hosts, ::Smithy::Schema::Shapes::MemberShape.new(target: HostList, name: "Hosts"))
    ListHostsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListHostsOutput.type = Types::ListHostsOutput
    ListRepositoryLinksInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => 0}))
    ListRepositoryLinksInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SharpNextToken, name: "NextToken"))
    ListRepositoryLinksInput.type = Types::ListRepositoryLinksInput
    ListRepositoryLinksOutput.add_member(:repository_links, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryLinkList, name: "RepositoryLinks", traits: {"smithy.api#required" => {}}))
    ListRepositoryLinksOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SharpNextToken, name: "NextToken"))
    ListRepositoryLinksOutput.type = Types::ListRepositoryLinksOutput
    ListRepositorySyncDefinitionsInput.add_member(:repository_link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryLinkId, name: "RepositoryLinkId", traits: {"smithy.api#required" => {}}))
    ListRepositorySyncDefinitionsInput.add_member(:sync_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncConfigurationType, name: "SyncType", traits: {"smithy.api#required" => {}}))
    ListRepositorySyncDefinitionsInput.type = Types::ListRepositorySyncDefinitionsInput
    ListRepositorySyncDefinitionsOutput.add_member(:repository_sync_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositorySyncDefinitionList, name: "RepositorySyncDefinitions", traits: {"smithy.api#required" => {}}))
    ListRepositorySyncDefinitionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SharpNextToken, name: "NextToken"))
    ListRepositorySyncDefinitionsOutput.type = Types::ListRepositorySyncDefinitionsOutput
    ListSyncConfigurationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => 0}))
    ListSyncConfigurationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SharpNextToken, name: "NextToken"))
    ListSyncConfigurationsInput.add_member(:repository_link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryLinkId, name: "RepositoryLinkId", traits: {"smithy.api#required" => {}}))
    ListSyncConfigurationsInput.add_member(:sync_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncConfigurationType, name: "SyncType", traits: {"smithy.api#required" => {}}))
    ListSyncConfigurationsInput.type = Types::ListSyncConfigurationsInput
    ListSyncConfigurationsOutput.add_member(:sync_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncConfigurationList, name: "SyncConfigurations", traits: {"smithy.api#required" => {}}))
    ListSyncConfigurationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SharpNextToken, name: "NextToken"))
    ListSyncConfigurationsOutput.type = Types::ListSyncConfigurationsOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ProviderType.add_member(:bitbucket, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BITBUCKET", traits: {"smithy.api#enumValue" => "Bitbucket"}))
    ProviderType.add_member(:github, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GITHUB", traits: {"smithy.api#enumValue" => "GitHub"}))
    ProviderType.add_member(:github_enterprise_server, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GITHUB_ENTERPRISE_SERVER", traits: {"smithy.api#enumValue" => "GitHubEnterpriseServer"}))
    ProviderType.add_member(:gitlab, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GITLAB", traits: {"smithy.api#enumValue" => "GitLab"}))
    ProviderType.add_member(:gitlab_self_managed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GITLAB_SELF_MANAGED", traits: {"smithy.api#enumValue" => "GitLabSelfManaged"}))
    PublishDeploymentStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    PublishDeploymentStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    RepositoryLinkInfo.add_member(:connection_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionArn, name: "ConnectionArn", traits: {"smithy.api#required" => {}}))
    RepositoryLinkInfo.add_member(:encryption_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "EncryptionKeyArn"))
    RepositoryLinkInfo.add_member(:owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OwnerId, name: "OwnerId", traits: {"smithy.api#required" => {}}))
    RepositoryLinkInfo.add_member(:provider_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderType, name: "ProviderType", traits: {"smithy.api#required" => {}}))
    RepositoryLinkInfo.add_member(:repository_link_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryLinkArn, name: "RepositoryLinkArn", traits: {"smithy.api#required" => {}}))
    RepositoryLinkInfo.add_member(:repository_link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryLinkId, name: "RepositoryLinkId", traits: {"smithy.api#required" => {}}))
    RepositoryLinkInfo.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "RepositoryName", traits: {"smithy.api#required" => {}}))
    RepositoryLinkInfo.type = Types::RepositoryLinkInfo
    RepositoryLinkList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryLinkInfo, name: "member"))
    RepositorySyncAttempt.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartedAt", traits: {"smithy.api#required" => {}}))
    RepositorySyncAttempt.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositorySyncStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    RepositorySyncAttempt.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositorySyncEventList, name: "Events", traits: {"smithy.api#required" => {}}))
    RepositorySyncAttempt.type = Types::RepositorySyncAttempt
    RepositorySyncDefinition.add_member(:branch, ::Smithy::Schema::Shapes::MemberShape.new(target: BranchName, name: "Branch", traits: {"smithy.api#required" => {}}))
    RepositorySyncDefinition.add_member(:directory, ::Smithy::Schema::Shapes::MemberShape.new(target: Directory, name: "Directory", traits: {"smithy.api#required" => {}}))
    RepositorySyncDefinition.add_member(:parent, ::Smithy::Schema::Shapes::MemberShape.new(target: Parent, name: "Parent", traits: {"smithy.api#required" => {}}))
    RepositorySyncDefinition.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: Target, name: "Target", traits: {"smithy.api#required" => {}}))
    RepositorySyncDefinition.type = Types::RepositorySyncDefinition
    RepositorySyncDefinitionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositorySyncDefinition, name: "member"))
    RepositorySyncEvent.add_member(:event, ::Smithy::Schema::Shapes::MemberShape.new(target: Event, name: "Event", traits: {"smithy.api#required" => {}}))
    RepositorySyncEvent.add_member(:external_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalId, name: "ExternalId"))
    RepositorySyncEvent.add_member(:time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "Time", traits: {"smithy.api#required" => {}}))
    RepositorySyncEvent.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: Type, name: "Type", traits: {"smithy.api#required" => {}}))
    RepositorySyncEvent.type = Types::RepositorySyncEvent
    RepositorySyncEventList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositorySyncEvent, name: "member"))
    RepositorySyncStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    RepositorySyncStatus.add_member(:initiated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INITIATED", traits: {"smithy.api#enumValue" => "INITIATED"}))
    RepositorySyncStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    RepositorySyncStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    RepositorySyncStatus.add_member(:queued, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUEUED", traits: {"smithy.api#enumValue" => "QUEUED"}))
    ResourceAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ResourceAlreadyExistsException.type = Types::ResourceAlreadyExistsException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceSyncAttempt.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSyncEventList, name: "Events", traits: {"smithy.api#required" => {}}))
    ResourceSyncAttempt.add_member(:initial_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: Revision, name: "InitialRevision", traits: {"smithy.api#required" => {}}))
    ResourceSyncAttempt.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartedAt", traits: {"smithy.api#required" => {}}))
    ResourceSyncAttempt.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSyncStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    ResourceSyncAttempt.add_member(:target_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: Revision, name: "TargetRevision", traits: {"smithy.api#required" => {}}))
    ResourceSyncAttempt.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: Target, name: "Target", traits: {"smithy.api#required" => {}}))
    ResourceSyncAttempt.type = Types::ResourceSyncAttempt
    ResourceSyncEvent.add_member(:event, ::Smithy::Schema::Shapes::MemberShape.new(target: Event, name: "Event", traits: {"smithy.api#required" => {}}))
    ResourceSyncEvent.add_member(:external_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalId, name: "ExternalId"))
    ResourceSyncEvent.add_member(:time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "Time", traits: {"smithy.api#required" => {}}))
    ResourceSyncEvent.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: Type, name: "Type", traits: {"smithy.api#required" => {}}))
    ResourceSyncEvent.type = Types::ResourceSyncEvent
    ResourceSyncEventList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSyncEvent, name: "member"))
    ResourceSyncStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ResourceSyncStatus.add_member(:initiated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INITIATED", traits: {"smithy.api#enumValue" => "INITIATED"}))
    ResourceSyncStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ResourceSyncStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    ResourceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ResourceUnavailableException.type = Types::ResourceUnavailableException
    RetryLatestCommitFailedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    RetryLatestCommitFailedException.type = Types::RetryLatestCommitFailedException
    Revision.add_member(:branch, ::Smithy::Schema::Shapes::MemberShape.new(target: BranchName, name: "Branch", traits: {"smithy.api#required" => {}}))
    Revision.add_member(:directory, ::Smithy::Schema::Shapes::MemberShape.new(target: Directory, name: "Directory", traits: {"smithy.api#required" => {}}))
    Revision.add_member(:owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OwnerId, name: "OwnerId", traits: {"smithy.api#required" => {}}))
    Revision.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "RepositoryName", traits: {"smithy.api#required" => {}}))
    Revision.add_member(:provider_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderType, name: "ProviderType", traits: {"smithy.api#required" => {}}))
    Revision.add_member(:sha, ::Smithy::Schema::Shapes::MemberShape.new(target: SHA, name: "Sha", traits: {"smithy.api#required" => {}}))
    Revision.type = Types::Revision
    SecurityGroupIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupId, name: "member"))
    SubnetIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetId, name: "member"))
    SyncBlocker.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id", traits: {"smithy.api#required" => {}}))
    SyncBlocker.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockerType, name: "Type", traits: {"smithy.api#required" => {}}))
    SyncBlocker.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockerStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    SyncBlocker.add_member(:created_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedReason, name: "CreatedReason", traits: {"smithy.api#required" => {}}))
    SyncBlocker.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    SyncBlocker.add_member(:contexts, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncBlockerContextList, name: "Contexts"))
    SyncBlocker.add_member(:resolved_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolvedReason, name: "ResolvedReason"))
    SyncBlocker.add_member(:resolved_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ResolvedAt"))
    SyncBlocker.type = Types::SyncBlocker
    SyncBlockerContext.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncBlockerContextKey, name: "Key", traits: {"smithy.api#required" => {}}))
    SyncBlockerContext.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncBlockerContextValue, name: "Value", traits: {"smithy.api#required" => {}}))
    SyncBlockerContext.type = Types::SyncBlockerContext
    SyncBlockerContextList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncBlockerContext, name: "member"))
    SyncBlockerDoesNotExistException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    SyncBlockerDoesNotExistException.type = Types::SyncBlockerDoesNotExistException
    SyncBlockerSummary.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ResourceName", traits: {"smithy.api#required" => {}}))
    SyncBlockerSummary.add_member(:parent_resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ParentResourceName"))
    SyncBlockerSummary.add_member(:latest_blockers, ::Smithy::Schema::Shapes::MemberShape.new(target: LatestSyncBlockerList, name: "LatestBlockers"))
    SyncBlockerSummary.type = Types::SyncBlockerSummary
    SyncConfiguration.add_member(:branch, ::Smithy::Schema::Shapes::MemberShape.new(target: BranchName, name: "Branch", traits: {"smithy.api#required" => {}}))
    SyncConfiguration.add_member(:config_file, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentFilePath, name: "ConfigFile"))
    SyncConfiguration.add_member(:owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OwnerId, name: "OwnerId", traits: {"smithy.api#required" => {}}))
    SyncConfiguration.add_member(:provider_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderType, name: "ProviderType", traits: {"smithy.api#required" => {}}))
    SyncConfiguration.add_member(:repository_link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryLinkId, name: "RepositoryLinkId", traits: {"smithy.api#required" => {}}))
    SyncConfiguration.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "RepositoryName", traits: {"smithy.api#required" => {}}))
    SyncConfiguration.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ResourceName", traits: {"smithy.api#required" => {}}))
    SyncConfiguration.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "RoleArn", traits: {"smithy.api#required" => {}}))
    SyncConfiguration.add_member(:sync_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncConfigurationType, name: "SyncType", traits: {"smithy.api#required" => {}}))
    SyncConfiguration.add_member(:publish_deployment_status, ::Smithy::Schema::Shapes::MemberShape.new(target: PublishDeploymentStatus, name: "PublishDeploymentStatus"))
    SyncConfiguration.add_member(:trigger_resource_update_on, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerResourceUpdateOn, name: "TriggerResourceUpdateOn"))
    SyncConfiguration.type = Types::SyncConfiguration
    SyncConfigurationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncConfiguration, name: "member"))
    SyncConfigurationStillExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    SyncConfigurationStillExistsException.type = Types::SyncConfigurationStillExistsException
    SyncConfigurationType.add_member(:cfn_stack_sync, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CFN_STACK_SYNC", traits: {"smithy.api#enumValue" => "CFN_STACK_SYNC"}))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ThrottlingException.type = Types::ThrottlingException
    TriggerResourceUpdateOn.add_member(:any_change, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ANY_CHANGE", traits: {"smithy.api#enumValue" => "ANY_CHANGE"}))
    TriggerResourceUpdateOn.add_member(:file_change, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FILE_CHANGE", traits: {"smithy.api#enumValue" => "FILE_CHANGE"}))
    UnsupportedOperationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    UnsupportedOperationException.type = Types::UnsupportedOperationException
    UnsupportedProviderTypeException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    UnsupportedProviderTypeException.type = Types::UnsupportedProviderTypeException
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateHostInput.add_member(:host_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: HostArn, name: "HostArn", traits: {"smithy.api#required" => {}}))
    UpdateHostInput.add_member(:provider_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "ProviderEndpoint"))
    UpdateHostInput.add_member(:vpc_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfiguration, name: "VpcConfiguration"))
    UpdateHostInput.type = Types::UpdateHostInput
    UpdateHostOutput.type = Types::UpdateHostOutput
    UpdateOutOfSyncException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    UpdateOutOfSyncException.type = Types::UpdateOutOfSyncException
    UpdateRepositoryLinkInput.add_member(:connection_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionArn, name: "ConnectionArn"))
    UpdateRepositoryLinkInput.add_member(:encryption_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "EncryptionKeyArn"))
    UpdateRepositoryLinkInput.add_member(:repository_link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryLinkId, name: "RepositoryLinkId", traits: {"smithy.api#required" => {}}))
    UpdateRepositoryLinkInput.type = Types::UpdateRepositoryLinkInput
    UpdateRepositoryLinkOutput.add_member(:repository_link_info, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryLinkInfo, name: "RepositoryLinkInfo", traits: {"smithy.api#required" => {}}))
    UpdateRepositoryLinkOutput.type = Types::UpdateRepositoryLinkOutput
    UpdateSyncBlockerInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id", traits: {"smithy.api#required" => {}}))
    UpdateSyncBlockerInput.add_member(:sync_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncConfigurationType, name: "SyncType", traits: {"smithy.api#required" => {}}))
    UpdateSyncBlockerInput.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ResourceName", traits: {"smithy.api#required" => {}}))
    UpdateSyncBlockerInput.add_member(:resolved_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolvedReason, name: "ResolvedReason", traits: {"smithy.api#required" => {}}))
    UpdateSyncBlockerInput.type = Types::UpdateSyncBlockerInput
    UpdateSyncBlockerOutput.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ResourceName", traits: {"smithy.api#required" => {}}))
    UpdateSyncBlockerOutput.add_member(:parent_resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ParentResourceName"))
    UpdateSyncBlockerOutput.add_member(:sync_blocker, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncBlocker, name: "SyncBlocker", traits: {"smithy.api#required" => {}}))
    UpdateSyncBlockerOutput.type = Types::UpdateSyncBlockerOutput
    UpdateSyncConfigurationInput.add_member(:branch, ::Smithy::Schema::Shapes::MemberShape.new(target: BranchName, name: "Branch"))
    UpdateSyncConfigurationInput.add_member(:config_file, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentFilePath, name: "ConfigFile"))
    UpdateSyncConfigurationInput.add_member(:repository_link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryLinkId, name: "RepositoryLinkId"))
    UpdateSyncConfigurationInput.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ResourceName", traits: {"smithy.api#required" => {}}))
    UpdateSyncConfigurationInput.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "RoleArn"))
    UpdateSyncConfigurationInput.add_member(:sync_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncConfigurationType, name: "SyncType", traits: {"smithy.api#required" => {}}))
    UpdateSyncConfigurationInput.add_member(:publish_deployment_status, ::Smithy::Schema::Shapes::MemberShape.new(target: PublishDeploymentStatus, name: "PublishDeploymentStatus"))
    UpdateSyncConfigurationInput.add_member(:trigger_resource_update_on, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerResourceUpdateOn, name: "TriggerResourceUpdateOn"))
    UpdateSyncConfigurationInput.type = Types::UpdateSyncConfigurationInput
    UpdateSyncConfigurationOutput.add_member(:sync_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SyncConfiguration, name: "SyncConfiguration", traits: {"smithy.api#required" => {}}))
    UpdateSyncConfigurationOutput.type = Types::UpdateSyncConfigurationOutput
    VpcConfiguration.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "VpcId", traits: {"smithy.api#required" => {}}))
    VpcConfiguration.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIds, name: "SubnetIds", traits: {"smithy.api#required" => {}}))
    VpcConfiguration.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIds, name: "SecurityGroupIds", traits: {"smithy.api#required" => {}}))
    VpcConfiguration.add_member(:tls_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: TlsCertificate, name: "TlsCertificate"))
    VpcConfiguration.type = Types::VpcConfiguration

    CodeStarConnections20191201 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.codestarconnections#CodeStar_connections_20191201"
      service.name = "CodeStarConnections20191201"
      service.version = "2019-12-01"
      service.traits = {"aws.api#service" => {"sdkId" => "CodeStar connections", "arnNamespace" => "codestar-connections", "cloudFormationName" => "CodeStarconnections", "cloudTrailEventSource" => "codestarconnections.amazonaws.com", "endpointPrefix" => "codestar-connections"}, "aws.auth#sigv4" => {"name" => "codestar-connections"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "AWS CodeStar connections", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://codestar-connections-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://codestar-connections-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://codestar-connections.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://codestar-connections.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:create_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarconnections#CreateConnection"
        operation.name = "CreateConnection"
        operation.input = CreateConnectionInput
        operation.output = CreateConnectionOutput
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ResourceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:create_host, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarconnections#CreateHost"
        operation.name = "CreateHost"
        operation.input = CreateHostInput
        operation.output = CreateHostOutput
        operation.errors << LimitExceededException
        operation.traits = {}
      end)
      service.add_operation(:create_repository_link, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarconnections#CreateRepositoryLink"
        operation.name = "CreateRepositoryLink"
        operation.input = CreateRepositoryLinkInput
        operation.output = CreateRepositoryLinkOutput
        operation.errors << AccessDeniedException
        operation.errors << ConcurrentModificationException
        operation.errors << InternalServerException
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:create_sync_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarconnections#CreateSyncConfiguration"
        operation.name = "CreateSyncConfiguration"
        operation.input = CreateSyncConfigurationInput
        operation.output = CreateSyncConfigurationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConcurrentModificationException
        operation.errors << InternalServerException
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:delete_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarconnections#DeleteConnection"
        operation.name = "DeleteConnection"
        operation.input = DeleteConnectionInput
        operation.output = DeleteConnectionOutput
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_host, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarconnections#DeleteHost"
        operation.name = "DeleteHost"
        operation.input = DeleteHostInput
        operation.output = DeleteHostOutput
        operation.errors << ResourceNotFoundException
        operation.errors << ResourceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:delete_repository_link, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarconnections#DeleteRepositoryLink"
        operation.name = "DeleteRepositoryLink"
        operation.input = DeleteRepositoryLinkInput
        operation.output = DeleteRepositoryLinkOutput
        operation.errors << AccessDeniedException
        operation.errors << ConcurrentModificationException
        operation.errors << InternalServerException
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.errors << SyncConfigurationStillExistsException
        operation.errors << ThrottlingException
        operation.errors << UnsupportedProviderTypeException
        operation.traits = {}
      end)
      service.add_operation(:delete_sync_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarconnections#DeleteSyncConfiguration"
        operation.name = "DeleteSyncConfiguration"
        operation.input = DeleteSyncConfigurationInput
        operation.output = DeleteSyncConfigurationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConcurrentModificationException
        operation.errors << InternalServerException
        operation.errors << InvalidInputException
        operation.errors << LimitExceededException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:get_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarconnections#GetConnection"
        operation.name = "GetConnection"
        operation.input = GetConnectionInput
        operation.output = GetConnectionOutput
        operation.errors << ResourceNotFoundException
        operation.errors << ResourceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:get_host, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarconnections#GetHost"
        operation.name = "GetHost"
        operation.input = GetHostInput
        operation.output = GetHostOutput
        operation.errors << ResourceNotFoundException
        operation.errors << ResourceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:get_repository_link, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarconnections#GetRepositoryLink"
        operation.name = "GetRepositoryLink"
        operation.input = GetRepositoryLinkInput
        operation.output = GetRepositoryLinkOutput
        operation.errors << AccessDeniedException
        operation.errors << ConcurrentModificationException
        operation.errors << InternalServerException
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:get_repository_sync_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarconnections#GetRepositorySyncStatus"
        operation.name = "GetRepositorySyncStatus"
        operation.input = GetRepositorySyncStatusInput
        operation.output = GetRepositorySyncStatusOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:get_resource_sync_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarconnections#GetResourceSyncStatus"
        operation.name = "GetResourceSyncStatus"
        operation.input = GetResourceSyncStatusInput
        operation.output = GetResourceSyncStatusOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:get_sync_blocker_summary, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarconnections#GetSyncBlockerSummary"
        operation.name = "GetSyncBlockerSummary"
        operation.input = GetSyncBlockerSummaryInput
        operation.output = GetSyncBlockerSummaryOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:get_sync_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarconnections#GetSyncConfiguration"
        operation.name = "GetSyncConfiguration"
        operation.input = GetSyncConfigurationInput
        operation.output = GetSyncConfigurationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:list_connections, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarconnections#ListConnections"
        operation.name = "ListConnections"
        operation.input = ListConnectionsInput
        operation.output = ListConnectionsOutput
        operation.errors << ResourceNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::ListConnections.new
      end)
      service.add_operation(:list_hosts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarconnections#ListHosts"
        operation.name = "ListHosts"
        operation.input = ListHostsInput
        operation.output = ListHostsOutput
        operation.traits = {}
        operation[:paginator] = Paginators::ListHosts.new
      end)
      service.add_operation(:list_repository_links, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarconnections#ListRepositoryLinks"
        operation.name = "ListRepositoryLinks"
        operation.input = ListRepositoryLinksInput
        operation.output = ListRepositoryLinksOutput
        operation.errors << AccessDeniedException
        operation.errors << ConcurrentModificationException
        operation.errors << InternalServerException
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
        operation[:paginator] = Paginators::ListRepositoryLinks.new
      end)
      service.add_operation(:list_repository_sync_definitions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarconnections#ListRepositorySyncDefinitions"
        operation.name = "ListRepositorySyncDefinitions"
        operation.input = ListRepositorySyncDefinitionsInput
        operation.output = ListRepositorySyncDefinitionsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:list_sync_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarconnections#ListSyncConfigurations"
        operation.name = "ListSyncConfigurations"
        operation.input = ListSyncConfigurationsInput
        operation.output = ListSyncConfigurationsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {}
        operation[:paginator] = Paginators::ListSyncConfigurations.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarconnections#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceInput
        operation.output = ListTagsForResourceOutput
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarconnections#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceInput
        operation.output = TagResourceOutput
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarconnections#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceInput
        operation.output = UntagResourceOutput
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:update_host, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarconnections#UpdateHost"
        operation.name = "UpdateHost"
        operation.input = UpdateHostInput
        operation.output = UpdateHostOutput
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ResourceUnavailableException
        operation.errors << UnsupportedOperationException
        operation.traits = {}
      end)
      service.add_operation(:update_repository_link, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarconnections#UpdateRepositoryLink"
        operation.name = "UpdateRepositoryLink"
        operation.input = UpdateRepositoryLinkInput
        operation.output = UpdateRepositoryLinkOutput
        operation.errors << AccessDeniedException
        operation.errors << ConditionalCheckFailedException
        operation.errors << InternalServerException
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UpdateOutOfSyncException
        operation.traits = {}
      end)
      service.add_operation(:update_sync_blocker, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarconnections#UpdateSyncBlocker"
        operation.name = "UpdateSyncBlocker"
        operation.input = UpdateSyncBlockerInput
        operation.output = UpdateSyncBlockerOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.errors << RetryLatestCommitFailedException
        operation.errors << SyncBlockerDoesNotExistException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:update_sync_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarconnections#UpdateSyncConfiguration"
        operation.name = "UpdateSyncConfiguration"
        operation.input = UpdateSyncConfigurationInput
        operation.output = UpdateSyncConfigurationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConcurrentModificationException
        operation.errors << InternalServerException
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << UpdateOutOfSyncException
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
