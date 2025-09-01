# frozen_string_literal: true

# This is generated code!

module Aws::CodeStarconnections
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codestarconnections#AccountId', name: 'AccountId', traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[0-9]{12}$"})
    AmazonResourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codestarconnections#AmazonResourceName', name: 'AmazonResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn:aws(-[\\w]+)*:.+:.+:[0-9]{12}:.+$"})
    BlockerStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codestarconnections#BlockerStatus', name: 'BlockerStatus')
    BlockerType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codestarconnections#BlockerType', name: 'BlockerType')
    BranchName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codestarconnections#BranchName', name: 'BranchName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^.*$"})
    ConcurrentModificationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#ConcurrentModificationException', name: 'ConcurrentModificationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConditionalCheckFailedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#ConditionalCheckFailedException', name: 'ConditionalCheckFailedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    Connection = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#Connection', name: 'Connection')
    ConnectionArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codestarconnections#ConnectionArn', name: 'ConnectionArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^arn:aws(-[\\w]+)*:.+:.+:[0-9]{12}:.+$"})
    ConnectionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codestarconnections#ConnectionList', name: 'ConnectionList')
    ConnectionName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codestarconnections#ConnectionName', name: 'ConnectionName', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    ConnectionStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codestarconnections#ConnectionStatus', name: 'ConnectionStatus')
    CreateConnectionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#CreateConnectionInput', name: 'CreateConnectionInput')
    CreateConnectionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#CreateConnectionOutput', name: 'CreateConnectionOutput')
    CreateHostInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#CreateHostInput', name: 'CreateHostInput')
    CreateHostOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#CreateHostOutput', name: 'CreateHostOutput')
    CreateRepositoryLinkInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#CreateRepositoryLinkInput', name: 'CreateRepositoryLinkInput')
    CreateRepositoryLinkOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#CreateRepositoryLinkOutput', name: 'CreateRepositoryLinkOutput')
    CreateSyncConfigurationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#CreateSyncConfigurationInput', name: 'CreateSyncConfigurationInput')
    CreateSyncConfigurationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#CreateSyncConfigurationOutput', name: 'CreateSyncConfigurationOutput')
    CreatedReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codestarconnections#CreatedReason', name: 'CreatedReason')
    DeleteConnectionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#DeleteConnectionInput', name: 'DeleteConnectionInput')
    DeleteConnectionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#DeleteConnectionOutput', name: 'DeleteConnectionOutput')
    DeleteHostInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#DeleteHostInput', name: 'DeleteHostInput')
    DeleteHostOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#DeleteHostOutput', name: 'DeleteHostOutput')
    DeleteRepositoryLinkInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#DeleteRepositoryLinkInput', name: 'DeleteRepositoryLinkInput')
    DeleteRepositoryLinkOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#DeleteRepositoryLinkOutput', name: 'DeleteRepositoryLinkOutput')
    DeleteSyncConfigurationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#DeleteSyncConfigurationInput', name: 'DeleteSyncConfigurationInput')
    DeleteSyncConfigurationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#DeleteSyncConfigurationOutput', name: 'DeleteSyncConfigurationOutput')
    DeploymentFilePath = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codestarconnections#DeploymentFilePath', name: 'DeploymentFilePath')
    Directory = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codestarconnections#Directory', name: 'Directory')
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codestarconnections#ErrorMessage', name: 'ErrorMessage', traits: {"smithy.api#length" => {"min" => 0, "max" => 600}})
    Event = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codestarconnections#Event', name: 'Event')
    ExternalId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codestarconnections#ExternalId', name: 'ExternalId')
    GetConnectionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#GetConnectionInput', name: 'GetConnectionInput')
    GetConnectionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#GetConnectionOutput', name: 'GetConnectionOutput')
    GetHostInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#GetHostInput', name: 'GetHostInput')
    GetHostOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#GetHostOutput', name: 'GetHostOutput')
    GetRepositoryLinkInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#GetRepositoryLinkInput', name: 'GetRepositoryLinkInput')
    GetRepositoryLinkOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#GetRepositoryLinkOutput', name: 'GetRepositoryLinkOutput')
    GetRepositorySyncStatusInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#GetRepositorySyncStatusInput', name: 'GetRepositorySyncStatusInput')
    GetRepositorySyncStatusOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#GetRepositorySyncStatusOutput', name: 'GetRepositorySyncStatusOutput')
    GetResourceSyncStatusInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#GetResourceSyncStatusInput', name: 'GetResourceSyncStatusInput')
    GetResourceSyncStatusOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#GetResourceSyncStatusOutput', name: 'GetResourceSyncStatusOutput')
    GetSyncBlockerSummaryInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#GetSyncBlockerSummaryInput', name: 'GetSyncBlockerSummaryInput')
    GetSyncBlockerSummaryOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#GetSyncBlockerSummaryOutput', name: 'GetSyncBlockerSummaryOutput')
    GetSyncConfigurationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#GetSyncConfigurationInput', name: 'GetSyncConfigurationInput')
    GetSyncConfigurationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#GetSyncConfigurationOutput', name: 'GetSyncConfigurationOutput')
    Host = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#Host', name: 'Host')
    HostArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codestarconnections#HostArn', name: 'HostArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^arn:aws(-[\\w]+)*:codestar-connections:.+:[0-9]{12}:host\\/.+$"})
    HostList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codestarconnections#HostList', name: 'HostList')
    HostName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codestarconnections#HostName', name: 'HostName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => ".*"})
    HostStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codestarconnections#HostStatus', name: 'HostStatus', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => ".*"})
    HostStatusMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codestarconnections#HostStatusMessage', name: 'HostStatusMessage')
    IamRoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codestarconnections#IamRoleArn', name: 'IamRoleArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^arn:aws(-[\\w]+)*:iam::\\d{12}:role/[a-zA-Z_0-9+=,.@\\-_/]+$"})
    Id = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codestarconnections#Id', name: 'Id', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    InvalidInputException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#InvalidInputException', name: 'InvalidInputException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    KmsKeyArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codestarconnections#KmsKeyArn', name: 'KmsKeyArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^arn:aws(-[\\w]+)*:kms:[a-z\\-0-9]+:\\d{12}:key/[a-zA-Z0-9\\-]+$"})
    LatestSyncBlockerList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codestarconnections#LatestSyncBlockerList', name: 'LatestSyncBlockerList')
    LimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    ListConnectionsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#ListConnectionsInput', name: 'ListConnectionsInput')
    ListConnectionsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#ListConnectionsOutput', name: 'ListConnectionsOutput')
    ListHostsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#ListHostsInput', name: 'ListHostsInput')
    ListHostsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#ListHostsOutput', name: 'ListHostsOutput')
    ListRepositoryLinksInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#ListRepositoryLinksInput', name: 'ListRepositoryLinksInput')
    ListRepositoryLinksOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#ListRepositoryLinksOutput', name: 'ListRepositoryLinksOutput')
    ListRepositorySyncDefinitionsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#ListRepositorySyncDefinitionsInput', name: 'ListRepositorySyncDefinitionsInput')
    ListRepositorySyncDefinitionsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#ListRepositorySyncDefinitionsOutput', name: 'ListRepositorySyncDefinitionsOutput')
    ListSyncConfigurationsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#ListSyncConfigurationsInput', name: 'ListSyncConfigurationsInput')
    ListSyncConfigurationsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#ListSyncConfigurationsOutput', name: 'ListSyncConfigurationsOutput')
    ListTagsForResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.codestarconnections#MaxResults', name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 100}})
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codestarconnections#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^.*$"})
    OwnerId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codestarconnections#OwnerId', name: 'OwnerId', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^.*$"})
    Parent = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codestarconnections#Parent', name: 'Parent')
    ProviderType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codestarconnections#ProviderType', name: 'ProviderType')
    PublishDeploymentStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codestarconnections#PublishDeploymentStatus', name: 'PublishDeploymentStatus')
    RepositoryLinkArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codestarconnections#RepositoryLinkArn', name: 'RepositoryLinkArn', traits: {"smithy.api#pattern" => "^arn:aws(?:-[a-z]+)*:codestar-connections:[a-z\\-0-9]+:\\d{12}:repository-link\\/[a-zA-Z0-9\\-:/]+$"})
    RepositoryLinkId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codestarconnections#RepositoryLinkId', name: 'RepositoryLinkId', traits: {"smithy.api#pattern" => "^[0-9a-fA-F]{8}\\b-[0-9a-fA-F]{4}\\b-[0-9a-fA-F]{4}\\b-[0-9a-fA-F]{4}\\b-[0-9a-fA-F]{12}$"})
    RepositoryLinkInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#RepositoryLinkInfo', name: 'RepositoryLinkInfo')
    RepositoryLinkList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codestarconnections#RepositoryLinkList', name: 'RepositoryLinkList')
    RepositoryName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codestarconnections#RepositoryName', name: 'RepositoryName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^.*$"})
    RepositorySyncAttempt = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#RepositorySyncAttempt', name: 'RepositorySyncAttempt')
    RepositorySyncDefinition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#RepositorySyncDefinition', name: 'RepositorySyncDefinition')
    RepositorySyncDefinitionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codestarconnections#RepositorySyncDefinitionList', name: 'RepositorySyncDefinitionList')
    RepositorySyncEvent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#RepositorySyncEvent', name: 'RepositorySyncEvent')
    RepositorySyncEventList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codestarconnections#RepositorySyncEventList', name: 'RepositorySyncEventList')
    RepositorySyncStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codestarconnections#RepositorySyncStatus', name: 'RepositorySyncStatus')
    ResolvedReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codestarconnections#ResolvedReason', name: 'ResolvedReason', traits: {"smithy.api#length" => {"min" => 1, "max" => 250}})
    ResourceAlreadyExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#ResourceAlreadyExistsException', name: 'ResourceAlreadyExistsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codestarconnections#ResourceName', name: 'ResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[0-9A-Za-z]+[0-9A-Za-z_\\\\-]*$"})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceSyncAttempt = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#ResourceSyncAttempt', name: 'ResourceSyncAttempt')
    ResourceSyncEvent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#ResourceSyncEvent', name: 'ResourceSyncEvent')
    ResourceSyncEventList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codestarconnections#ResourceSyncEventList', name: 'ResourceSyncEventList')
    ResourceSyncStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codestarconnections#ResourceSyncStatus', name: 'ResourceSyncStatus')
    ResourceUnavailableException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#ResourceUnavailableException', name: 'ResourceUnavailableException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    RetryLatestCommitFailedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#RetryLatestCommitFailedException', name: 'RetryLatestCommitFailedException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    Revision = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#Revision', name: 'Revision')
    SHA = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codestarconnections#SHA', name: 'SHA', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    SecurityGroupId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codestarconnections#SecurityGroupId', name: 'SecurityGroupId', traits: {"smithy.api#length" => {"min" => 11, "max" => 20}, "smithy.api#pattern" => "^sg-\\w{8}(\\w{9})?$"})
    SecurityGroupIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codestarconnections#SecurityGroupIds', name: 'SecurityGroupIds', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    SharpNextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codestarconnections#SharpNextToken', name: 'SharpNextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^.*$"})
    SubnetId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codestarconnections#SubnetId', name: 'SubnetId', traits: {"smithy.api#length" => {"min" => 15, "max" => 24}, "smithy.api#pattern" => "^subnet-\\w{8}(\\w{9})?$"})
    SubnetIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codestarconnections#SubnetIds', name: 'SubnetIds', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    SyncBlocker = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#SyncBlocker', name: 'SyncBlocker')
    SyncBlockerContext = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#SyncBlockerContext', name: 'SyncBlockerContext')
    SyncBlockerContextKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codestarconnections#SyncBlockerContextKey', name: 'SyncBlockerContextKey')
    SyncBlockerContextList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codestarconnections#SyncBlockerContextList', name: 'SyncBlockerContextList')
    SyncBlockerContextValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codestarconnections#SyncBlockerContextValue', name: 'SyncBlockerContextValue')
    SyncBlockerDoesNotExistException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#SyncBlockerDoesNotExistException', name: 'SyncBlockerDoesNotExistException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SyncBlockerSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#SyncBlockerSummary', name: 'SyncBlockerSummary')
    SyncConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#SyncConfiguration', name: 'SyncConfiguration')
    SyncConfigurationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codestarconnections#SyncConfigurationList', name: 'SyncConfigurationList')
    SyncConfigurationStillExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#SyncConfigurationStillExistsException', name: 'SyncConfigurationStillExistsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    SyncConfigurationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codestarconnections#SyncConfigurationType', name: 'SyncConfigurationType')
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codestarconnections#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => ".*"})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codestarconnections#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codestarconnections#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#TagResourceInput', name: 'TagResourceInput')
    TagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#TagResourceOutput', name: 'TagResourceOutput')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codestarconnections#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => ".*"})
    Target = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codestarconnections#Target', name: 'Target')
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.codestarconnections#Timestamp', name: 'Timestamp')
    TlsCertificate = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codestarconnections#TlsCertificate', name: 'TlsCertificate', traits: {"smithy.api#length" => {"min" => 1, "max" => 16384}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    TriggerResourceUpdateOn = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codestarconnections#TriggerResourceUpdateOn', name: 'TriggerResourceUpdateOn')
    Type = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codestarconnections#Type', name: 'Type')
    UnsupportedOperationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#UnsupportedOperationException', name: 'UnsupportedOperationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UnsupportedProviderTypeException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#UnsupportedProviderTypeException', name: 'UnsupportedProviderTypeException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UntagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#UntagResourceInput', name: 'UntagResourceInput')
    UntagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#UntagResourceOutput', name: 'UntagResourceOutput')
    UpdateHostInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#UpdateHostInput', name: 'UpdateHostInput')
    UpdateHostOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#UpdateHostOutput', name: 'UpdateHostOutput')
    UpdateOutOfSyncException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#UpdateOutOfSyncException', name: 'UpdateOutOfSyncException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    UpdateRepositoryLinkInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#UpdateRepositoryLinkInput', name: 'UpdateRepositoryLinkInput')
    UpdateRepositoryLinkOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#UpdateRepositoryLinkOutput', name: 'UpdateRepositoryLinkOutput')
    UpdateSyncBlockerInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#UpdateSyncBlockerInput', name: 'UpdateSyncBlockerInput')
    UpdateSyncBlockerOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#UpdateSyncBlockerOutput', name: 'UpdateSyncBlockerOutput')
    UpdateSyncConfigurationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#UpdateSyncConfigurationInput', name: 'UpdateSyncConfigurationInput')
    UpdateSyncConfigurationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#UpdateSyncConfigurationOutput', name: 'UpdateSyncConfigurationOutput')
    Url = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codestarconnections#Url', name: 'Url', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => ".*"})
    VpcConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codestarconnections#VpcConfiguration', name: 'VpcConfiguration')
    VpcId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codestarconnections#VpcId', name: 'VpcId', traits: {"smithy.api#length" => {"min" => 12, "max" => 21}, "smithy.api#pattern" => "^vpc-\\w{8}(\\w{9})?$"})

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    AccessDeniedException.type = Types::AccessDeniedException
    BlockerStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    BlockerStatus.add_member(:resolved, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOLVED', traits: {"smithy.api#enumValue" => "RESOLVED"}))
    BlockerType.add_member(:automated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTOMATED', traits: {"smithy.api#enumValue" => "AUTOMATED"}))
    ConcurrentModificationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ConcurrentModificationException.type = Types::ConcurrentModificationException
    ConditionalCheckFailedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ConditionalCheckFailedException.type = Types::ConditionalCheckFailedException
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ConflictException.type = Types::ConflictException
    Connection.add_member(:connection_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionName, location_name: 'ConnectionName', traits: {"smithy.api#documentation" => "<p>The name of the connection. Connection names must be unique in an Amazon Web Services account.</p>"}))
    Connection.add_member(:connection_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionArn, location_name: 'ConnectionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the connection. The ARN is used as the connection\n      reference when the connection is shared between Amazon Web Services.</p>\n         <note>\n            <p>The ARN is never reused if the connection is deleted.</p>\n         </note>"}))
    Connection.add_member(:provider_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderType, location_name: 'ProviderType', traits: {"smithy.api#documentation" => "<p>The name of the external provider where your third-party code repository is\n      configured.</p>"}))
    Connection.add_member(:owner_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'OwnerAccountId', traits: {"smithy.api#documentation" => "<p>The identifier of the external provider where your third-party code repository is configured.\n      For Bitbucket, this is the account ID of the owner of the Bitbucket repository.</p>"}))
    Connection.add_member(:connection_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionStatus, location_name: 'ConnectionStatus', traits: {"smithy.api#documentation" => "<p>The current status of the connection. </p>"}))
    Connection.add_member(:host_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: HostArn, location_name: 'HostArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the host associated with the connection.</p>"}))
    Connection.type = Types::Connection
    ConnectionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Connection)
    ConnectionStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    ConnectionStatus.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    ConnectionStatus.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    CreateConnectionInput.add_member(:provider_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderType, location_name: 'ProviderType', traits: {"smithy.api#documentation" => "<p>The name of the external provider where your third-party code repository is\n      configured.</p>"}))
    CreateConnectionInput.add_member(:connection_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionName, location_name: 'ConnectionName', traits: {"smithy.api#documentation" => "<p>The name of the connection to be created.</p>", "smithy.api#required" => {}}))
    CreateConnectionInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The key-value pair to use when tagging the resource.</p>"}))
    CreateConnectionInput.add_member(:host_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: HostArn, location_name: 'HostArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the host associated with the connection to be created.</p>"}))
    CreateConnectionInput.type = Types::CreateConnectionInput
    CreateConnectionOutput.add_member(:connection_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionArn, location_name: 'ConnectionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the connection to be created. The ARN is used as the\n      connection reference when the connection is shared between Amazon Web Services services.</p>\n         <note>\n            <p>The ARN is never reused if the connection is deleted.</p>\n         </note>", "smithy.api#required" => {}}))
    CreateConnectionOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Specifies the tags applied to the resource.</p>"}))
    CreateConnectionOutput.type = Types::CreateConnectionOutput
    CreateHostInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: HostName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the host to be created.</p>", "smithy.api#required" => {}}))
    CreateHostInput.add_member(:provider_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderType, location_name: 'ProviderType', traits: {"smithy.api#documentation" => "<p>The name of the installed provider to be associated with your connection. The host\n      resource represents the infrastructure where your provider type is installed. The valid\n      provider type is GitHub Enterprise Server.</p>", "smithy.api#required" => {}}))
    CreateHostInput.add_member(:provider_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'ProviderEndpoint', traits: {"smithy.api#documentation" => "<p>The endpoint of the infrastructure to be represented by the host after it is\n      created.</p>", "smithy.api#required" => {}}))
    CreateHostInput.add_member(:vpc_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfiguration, location_name: 'VpcConfiguration', traits: {"smithy.api#documentation" => "<p>The VPC configuration to be provisioned for the host. A VPC must be configured and the\n      infrastructure to be represented by the host must already be connected to the VPC.</p>"}))
    CreateHostInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Tags for the host to be created.</p>"}))
    CreateHostInput.type = Types::CreateHostInput
    CreateHostOutput.add_member(:host_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: HostArn, location_name: 'HostArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the host to be created.</p>"}))
    CreateHostOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Tags for the created host.</p>"}))
    CreateHostOutput.type = Types::CreateHostOutput
    CreateRepositoryLinkInput.add_member(:connection_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionArn, location_name: 'ConnectionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the connection to be associated with the repository link.</p>", "smithy.api#required" => {}}))
    CreateRepositoryLinkInput.add_member(:owner_id, Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerId, location_name: 'OwnerId', traits: {"smithy.api#documentation" => "<p>The owner ID for the repository associated with a specific sync configuration, such as\n      the owner ID in GitHub.</p>", "smithy.api#required" => {}}))
    CreateRepositoryLinkInput.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'RepositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository to be associated with the repository link.</p>", "smithy.api#required" => {}}))
    CreateRepositoryLinkInput.add_member(:encryption_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'EncryptionKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) encryption key for the repository to be associated with the repository link.</p>"}))
    CreateRepositoryLinkInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags for the repository to be associated with the repository link.</p>"}))
    CreateRepositoryLinkInput.type = Types::CreateRepositoryLinkInput
    CreateRepositoryLinkOutput.add_member(:repository_link_info, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryLinkInfo, location_name: 'RepositoryLinkInfo', traits: {"smithy.api#documentation" => "<p>The returned information about the created repository link.</p>", "smithy.api#required" => {}}))
    CreateRepositoryLinkOutput.type = Types::CreateRepositoryLinkOutput
    CreateSyncConfigurationInput.add_member(:branch, Smithy::Schema::Shapes::ShapeRef.new(shape: BranchName, location_name: 'Branch', traits: {"smithy.api#documentation" => "<p>The branch in the repository from which changes will be synced.</p>", "smithy.api#required" => {}}))
    CreateSyncConfigurationInput.add_member(:config_file, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentFilePath, location_name: 'ConfigFile', traits: {"smithy.api#documentation" => "<p>The file name of the configuration file that manages syncing between the connection and the repository. This configuration file is stored in the repository.</p>", "smithy.api#required" => {}}))
    CreateSyncConfigurationInput.add_member(:repository_link_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryLinkId, location_name: 'RepositoryLinkId', traits: {"smithy.api#documentation" => "<p>The ID of the repository link created for the connection. A repository link allows Git\n      sync to monitor and sync changes to files in a specified Git repository.</p>", "smithy.api#required" => {}}))
    CreateSyncConfigurationInput.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'ResourceName', traits: {"smithy.api#documentation" => "<p>The name of the Amazon Web Services resource (for example, a CloudFormation stack in the\n      case of CFN_STACK_SYNC) that will be synchronized from the linked repository.</p>", "smithy.api#required" => {}}))
    CreateSyncConfigurationInput.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM role that grants permission for Amazon Web Services to use Git sync to\n      update a given Amazon Web Services resource on your behalf.</p>", "smithy.api#required" => {}}))
    CreateSyncConfigurationInput.add_member(:sync_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SyncConfigurationType, location_name: 'SyncType', traits: {"smithy.api#documentation" => "<p>The type of sync configuration.</p>", "smithy.api#required" => {}}))
    CreateSyncConfigurationInput.add_member(:publish_deployment_status, Smithy::Schema::Shapes::ShapeRef.new(shape: PublishDeploymentStatus, location_name: 'PublishDeploymentStatus', traits: {"smithy.api#documentation" => "<p>Whether to enable or disable publishing of deployment status to source providers.</p>"}))
    CreateSyncConfigurationInput.add_member(:trigger_resource_update_on, Smithy::Schema::Shapes::ShapeRef.new(shape: TriggerResourceUpdateOn, location_name: 'TriggerResourceUpdateOn', traits: {"smithy.api#documentation" => "<p>When to trigger Git sync to begin the stack update.</p>"}))
    CreateSyncConfigurationInput.type = Types::CreateSyncConfigurationInput
    CreateSyncConfigurationOutput.add_member(:sync_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SyncConfiguration, location_name: 'SyncConfiguration', traits: {"smithy.api#documentation" => "<p>The created sync configuration for the connection. A sync configuration allows Amazon Web Services to sync content from a Git repository to update a specified Amazon Web Services\n      resource. </p>", "smithy.api#required" => {}}))
    CreateSyncConfigurationOutput.type = Types::CreateSyncConfigurationOutput
    DeleteConnectionInput.add_member(:connection_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionArn, location_name: 'ConnectionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the connection to be deleted.</p>\n         <note>\n            <p>The ARN is never reused if the connection is deleted.</p>\n         </note>", "smithy.api#required" => {}}))
    DeleteConnectionInput.type = Types::DeleteConnectionInput
    DeleteConnectionOutput.type = Types::DeleteConnectionOutput
    DeleteHostInput.add_member(:host_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: HostArn, location_name: 'HostArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the host to be deleted.</p>", "smithy.api#required" => {}}))
    DeleteHostInput.type = Types::DeleteHostInput
    DeleteHostOutput.type = Types::DeleteHostOutput
    DeleteRepositoryLinkInput.add_member(:repository_link_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryLinkId, location_name: 'RepositoryLinkId', traits: {"smithy.api#documentation" => "<p>The ID of the repository link to be deleted.</p>", "smithy.api#required" => {}}))
    DeleteRepositoryLinkInput.type = Types::DeleteRepositoryLinkInput
    DeleteRepositoryLinkOutput.type = Types::DeleteRepositoryLinkOutput
    DeleteSyncConfigurationInput.add_member(:sync_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SyncConfigurationType, location_name: 'SyncType', traits: {"smithy.api#documentation" => "<p>The type of sync configuration to be deleted.</p>", "smithy.api#required" => {}}))
    DeleteSyncConfigurationInput.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'ResourceName', traits: {"smithy.api#documentation" => "<p>The name of the Amazon Web Services resource associated with the sync configuration to be\n      deleted.</p>", "smithy.api#required" => {}}))
    DeleteSyncConfigurationInput.type = Types::DeleteSyncConfigurationInput
    DeleteSyncConfigurationOutput.type = Types::DeleteSyncConfigurationOutput
    GetConnectionInput.add_member(:connection_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionArn, location_name: 'ConnectionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of a connection.</p>", "smithy.api#required" => {}}))
    GetConnectionInput.type = Types::GetConnectionInput
    GetConnectionOutput.add_member(:connection, Smithy::Schema::Shapes::ShapeRef.new(shape: Connection, location_name: 'Connection', traits: {"smithy.api#documentation" => "<p>The connection details, such as status, owner, and provider type.</p>"}))
    GetConnectionOutput.type = Types::GetConnectionOutput
    GetHostInput.add_member(:host_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: HostArn, location_name: 'HostArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the requested host.</p>", "smithy.api#required" => {}}))
    GetHostInput.type = Types::GetHostInput
    GetHostOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: HostName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the requested host.</p>"}))
    GetHostOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: HostStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the requested host.</p>"}))
    GetHostOutput.add_member(:provider_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderType, location_name: 'ProviderType', traits: {"smithy.api#documentation" => "<p>The provider type of the requested host, such as GitHub Enterprise Server.</p>"}))
    GetHostOutput.add_member(:provider_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'ProviderEndpoint', traits: {"smithy.api#documentation" => "<p>The endpoint of the infrastructure represented by the requested host.</p>"}))
    GetHostOutput.add_member(:vpc_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfiguration, location_name: 'VpcConfiguration', traits: {"smithy.api#documentation" => "<p>The VPC configuration of the requested host.</p>"}))
    GetHostOutput.type = Types::GetHostOutput
    GetRepositoryLinkInput.add_member(:repository_link_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryLinkId, location_name: 'RepositoryLinkId', traits: {"smithy.api#documentation" => "<p>The ID of the repository link to get.</p>", "smithy.api#required" => {}}))
    GetRepositoryLinkInput.type = Types::GetRepositoryLinkInput
    GetRepositoryLinkOutput.add_member(:repository_link_info, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryLinkInfo, location_name: 'RepositoryLinkInfo', traits: {"smithy.api#documentation" => "<p>The information returned for a specified repository link.</p>", "smithy.api#required" => {}}))
    GetRepositoryLinkOutput.type = Types::GetRepositoryLinkOutput
    GetRepositorySyncStatusInput.add_member(:branch, Smithy::Schema::Shapes::ShapeRef.new(shape: BranchName, location_name: 'Branch', traits: {"smithy.api#documentation" => "<p>The branch of the repository link for the requested repository sync status.</p>", "smithy.api#required" => {}}))
    GetRepositorySyncStatusInput.add_member(:repository_link_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryLinkId, location_name: 'RepositoryLinkId', traits: {"smithy.api#documentation" => "<p>The repository link ID for the requested repository sync status.</p>", "smithy.api#required" => {}}))
    GetRepositorySyncStatusInput.add_member(:sync_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SyncConfigurationType, location_name: 'SyncType', traits: {"smithy.api#documentation" => "<p>The sync type of the requested sync status.</p>", "smithy.api#required" => {}}))
    GetRepositorySyncStatusInput.type = Types::GetRepositorySyncStatusInput
    GetRepositorySyncStatusOutput.add_member(:latest_sync, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositorySyncAttempt, location_name: 'LatestSync', traits: {"smithy.api#documentation" => "<p>The status of the latest sync returned for a specified repository and branch.</p>", "smithy.api#required" => {}}))
    GetRepositorySyncStatusOutput.type = Types::GetRepositorySyncStatusOutput
    GetResourceSyncStatusInput.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'ResourceName', traits: {"smithy.api#documentation" => "<p>The name of the Amazon Web Services resource for the sync status with the Git\n      repository.</p>", "smithy.api#required" => {}}))
    GetResourceSyncStatusInput.add_member(:sync_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SyncConfigurationType, location_name: 'SyncType', traits: {"smithy.api#documentation" => "<p>The sync type for the sync status with the Git repository.</p>", "smithy.api#required" => {}}))
    GetResourceSyncStatusInput.type = Types::GetResourceSyncStatusInput
    GetResourceSyncStatusOutput.add_member(:desired_state, Smithy::Schema::Shapes::ShapeRef.new(shape: Revision, location_name: 'DesiredState', traits: {"smithy.api#documentation" => "<p>The desired state of the Amazon Web Services resource for the sync status with the Git\n      repository.</p>"}))
    GetResourceSyncStatusOutput.add_member(:latest_successful_sync, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceSyncAttempt, location_name: 'LatestSuccessfulSync', traits: {"smithy.api#documentation" => "<p>The latest successful sync for the sync status with the Git repository.</p>"}))
    GetResourceSyncStatusOutput.add_member(:latest_sync, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceSyncAttempt, location_name: 'LatestSync', traits: {"smithy.api#documentation" => "<p>The latest sync for the sync status with the Git repository, whether successful or not.</p>", "smithy.api#required" => {}}))
    GetResourceSyncStatusOutput.type = Types::GetResourceSyncStatusOutput
    GetSyncBlockerSummaryInput.add_member(:sync_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SyncConfigurationType, location_name: 'SyncType', traits: {"smithy.api#documentation" => "<p>The sync type for the sync blocker summary.</p>", "smithy.api#required" => {}}))
    GetSyncBlockerSummaryInput.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'ResourceName', traits: {"smithy.api#documentation" => "<p>The name of the Amazon Web Services resource currently blocked from automatically being synced from a Git repository.</p>", "smithy.api#required" => {}}))
    GetSyncBlockerSummaryInput.type = Types::GetSyncBlockerSummaryInput
    GetSyncBlockerSummaryOutput.add_member(:sync_blocker_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: SyncBlockerSummary, location_name: 'SyncBlockerSummary', traits: {"smithy.api#documentation" => "<p>The list of sync blockers for a specified resource.</p>", "smithy.api#required" => {}}))
    GetSyncBlockerSummaryOutput.type = Types::GetSyncBlockerSummaryOutput
    GetSyncConfigurationInput.add_member(:sync_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SyncConfigurationType, location_name: 'SyncType', traits: {"smithy.api#documentation" => "<p>The sync type for the sync configuration for which you want to retrieve information.</p>", "smithy.api#required" => {}}))
    GetSyncConfigurationInput.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'ResourceName', traits: {"smithy.api#documentation" => "<p>The name of the Amazon Web Services resource for the sync configuration for which you\n      want to retrieve information.</p>", "smithy.api#required" => {}}))
    GetSyncConfigurationInput.type = Types::GetSyncConfigurationInput
    GetSyncConfigurationOutput.add_member(:sync_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SyncConfiguration, location_name: 'SyncConfiguration', traits: {"smithy.api#documentation" => "<p>The details about the sync configuration for which you want to retrieve information.</p>", "smithy.api#required" => {}}))
    GetSyncConfigurationOutput.type = Types::GetSyncConfigurationOutput
    Host.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: HostName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the host.</p>"}))
    Host.add_member(:host_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: HostArn, location_name: 'HostArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the host.</p>"}))
    Host.add_member(:provider_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderType, location_name: 'ProviderType', traits: {"smithy.api#documentation" => "<p>The name of the installed provider to be associated with your connection. The host\n      resource represents the infrastructure where your provider type is installed. The valid\n      provider type is GitHub Enterprise Server.</p>"}))
    Host.add_member(:provider_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'ProviderEndpoint', traits: {"smithy.api#documentation" => "<p>The endpoint of the infrastructure where your provider type is installed.</p>"}))
    Host.add_member(:vpc_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfiguration, location_name: 'VpcConfiguration', traits: {"smithy.api#documentation" => "<p>The VPC configuration provisioned for the host.</p>"}))
    Host.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: HostStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the host, such as PENDING, AVAILABLE, VPC_CONFIG_DELETING, VPC_CONFIG_INITIALIZING, and VPC_CONFIG_FAILED_INITIALIZATION.</p>"}))
    Host.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: HostStatusMessage, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>The status description for the host.</p>"}))
    Host.type = Types::Host
    HostList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Host)
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InternalServerException.type = Types::InternalServerException
    InvalidInputException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InvalidInputException.type = Types::InvalidInputException
    LatestSyncBlockerList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SyncBlocker)
    LimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    LimitExceededException.type = Types::LimitExceededException
    ListConnectionsInput.add_member(:provider_type_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderType, location_name: 'ProviderTypeFilter', traits: {"smithy.api#documentation" => "<p>Filters the list of connections to those associated with a specified provider, such as\n      Bitbucket.</p>"}))
    ListConnectionsInput.add_member(:host_arn_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: HostArn, location_name: 'HostArnFilter', traits: {"smithy.api#documentation" => "<p>Filters the list of connections to those associated with a specified host.</p>"}))
    ListConnectionsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of results to return in a single call. To retrieve the remaining\n      results, make another call with the returned <code>nextToken</code> value.</p>"}))
    ListConnectionsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token that was returned from the previous <code>ListConnections</code> call, which\n      can be used to return the next set of connections in the list.</p>"}))
    ListConnectionsInput.type = Types::ListConnectionsInput
    ListConnectionsOutput.add_member(:connections, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionList, location_name: 'Connections', traits: {"smithy.api#documentation" => "<p>A list of connections and the details for each connection, such as status, owner, and\n      provider type.</p>"}))
    ListConnectionsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token that can be used in the next <code>ListConnections</code> call. To view all\n      items in the list, continue to call this operation with each subsequent token until no more\n      <code>nextToken</code> values are returned.</p>"}))
    ListConnectionsOutput.type = Types::ListConnectionsOutput
    ListHostsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of results to return in a single call. To retrieve the remaining\n      results, make another call with the returned <code>nextToken</code> value.</p>"}))
    ListHostsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token that was returned from the previous <code>ListHosts</code> call, which can be\n      used to return the next set of hosts in the list.</p>"}))
    ListHostsInput.type = Types::ListHostsInput
    ListHostsOutput.add_member(:hosts, Smithy::Schema::Shapes::ShapeRef.new(shape: HostList, location_name: 'Hosts', traits: {"smithy.api#documentation" => "<p>A list of hosts and the details for each host, such as status, endpoint, and provider\n      type.</p>"}))
    ListHostsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token that can be used in the next <code>ListHosts</code> call. To view all items in the\n      list, continue to call this operation with each subsequent token until no more\n      <code>nextToken</code> values are returned.</p>"}))
    ListHostsOutput.type = Types::ListHostsOutput
    ListRepositoryLinksInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>\nA non-zero, non-negative integer used to limit the number of returned results.</p>"}))
    ListRepositoryLinksInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: SharpNextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>\nAn enumeration token that, when provided in a request, returns the next batch of the results.</p>"}))
    ListRepositoryLinksInput.type = Types::ListRepositoryLinksInput
    ListRepositoryLinksOutput.add_member(:repository_links, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryLinkList, location_name: 'RepositoryLinks', traits: {"smithy.api#documentation" => "<p>Lists the repository links called by the list repository links operation.</p>", "smithy.api#required" => {}}))
    ListRepositoryLinksOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: SharpNextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An enumeration token that allows the operation to batch the results of the operation. </p>"}))
    ListRepositoryLinksOutput.type = Types::ListRepositoryLinksOutput
    ListRepositorySyncDefinitionsInput.add_member(:repository_link_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryLinkId, location_name: 'RepositoryLinkId', traits: {"smithy.api#documentation" => "<p>The ID of the repository link for the sync definition for which you want to retrieve information.</p>", "smithy.api#required" => {}}))
    ListRepositorySyncDefinitionsInput.add_member(:sync_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SyncConfigurationType, location_name: 'SyncType', traits: {"smithy.api#documentation" => "<p>The sync type of the repository link for the the sync definition for which you want to retrieve information.</p>", "smithy.api#required" => {}}))
    ListRepositorySyncDefinitionsInput.type = Types::ListRepositorySyncDefinitionsInput
    ListRepositorySyncDefinitionsOutput.add_member(:repository_sync_definitions, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositorySyncDefinitionList, location_name: 'RepositorySyncDefinitions', traits: {"smithy.api#documentation" => "<p>The list of repository sync definitions returned by the request. A\n        <code>RepositorySyncDefinition</code> is a mapping from a repository branch to all the\n        Amazon Web Services resources that are being synced from that branch.</p>", "smithy.api#required" => {}}))
    ListRepositorySyncDefinitionsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: SharpNextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An enumeration token that, when provided in a request, returns the next batch of the\n      results.</p>"}))
    ListRepositorySyncDefinitionsOutput.type = Types::ListRepositorySyncDefinitionsOutput
    ListSyncConfigurationsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>A non-zero, non-negative integer used to limit the number of returned results.</p>"}))
    ListSyncConfigurationsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: SharpNextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An enumeration token that allows the operation to batch the results of the operation.</p>"}))
    ListSyncConfigurationsInput.add_member(:repository_link_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryLinkId, location_name: 'RepositoryLinkId', traits: {"smithy.api#documentation" => "<p>The ID of the repository link for the requested list of sync configurations.</p>", "smithy.api#required" => {}}))
    ListSyncConfigurationsInput.add_member(:sync_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SyncConfigurationType, location_name: 'SyncType', traits: {"smithy.api#documentation" => "<p>The sync type for the requested list of sync configurations.</p>", "smithy.api#required" => {}}))
    ListSyncConfigurationsInput.type = Types::ListSyncConfigurationsInput
    ListSyncConfigurationsOutput.add_member(:sync_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: SyncConfigurationList, location_name: 'SyncConfigurations', traits: {"smithy.api#documentation" => "<p>The list of repository sync definitions returned by the request.</p>", "smithy.api#required" => {}}))
    ListSyncConfigurationsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: SharpNextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An enumeration token that allows the operation to batch the next results of the operation.</p>"}))
    ListSyncConfigurationsOutput.type = Types::ListSyncConfigurationsOutput
    ListTagsForResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource for which you want to get information about tags, if any.</p>", "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of tag key and value pairs associated with the specified resource.</p>"}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ProviderType.add_member(:bitbucket, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BITBUCKET', traits: {"smithy.api#enumValue" => "Bitbucket"}))
    ProviderType.add_member(:github, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GITHUB', traits: {"smithy.api#enumValue" => "GitHub"}))
    ProviderType.add_member(:github_enterprise_server, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GITHUB_ENTERPRISE_SERVER', traits: {"smithy.api#enumValue" => "GitHubEnterpriseServer"}))
    ProviderType.add_member(:gitlab, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GITLAB', traits: {"smithy.api#enumValue" => "GitLab"}))
    ProviderType.add_member(:gitlab_self_managed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GITLAB_SELF_MANAGED', traits: {"smithy.api#enumValue" => "GitLabSelfManaged"}))
    PublishDeploymentStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    PublishDeploymentStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    RepositoryLinkInfo.add_member(:connection_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionArn, location_name: 'ConnectionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the connection associated with the repository link.</p>", "smithy.api#required" => {}}))
    RepositoryLinkInfo.add_member(:encryption_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'EncryptionKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the encryption key for the repository associated with the repository link.</p>"}))
    RepositoryLinkInfo.add_member(:owner_id, Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerId, location_name: 'OwnerId', traits: {"smithy.api#documentation" => "<p>The owner ID for the repository associated with the repository link, such as the owner\n      ID in GitHub.</p>", "smithy.api#required" => {}}))
    RepositoryLinkInfo.add_member(:provider_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderType, location_name: 'ProviderType', traits: {"smithy.api#documentation" => "<p>The provider type for the connection, such as GitHub, associated with the repository link.</p>", "smithy.api#required" => {}}))
    RepositoryLinkInfo.add_member(:repository_link_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryLinkArn, location_name: 'RepositoryLinkArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the repository link.</p>", "smithy.api#required" => {}}))
    RepositoryLinkInfo.add_member(:repository_link_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryLinkId, location_name: 'RepositoryLinkId', traits: {"smithy.api#documentation" => "<p>The ID of the repository link.</p>", "smithy.api#required" => {}}))
    RepositoryLinkInfo.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'RepositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository associated with the repository link.</p>", "smithy.api#required" => {}}))
    RepositoryLinkInfo.type = Types::RepositoryLinkInfo
    RepositoryLinkList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryLinkInfo)
    RepositorySyncAttempt.add_member(:started_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartedAt', traits: {"smithy.api#documentation" => "<p>The start time of a specific sync attempt.</p>", "smithy.api#required" => {}}))
    RepositorySyncAttempt.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositorySyncStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of a specific sync attempt. The following are valid statuses:</p>\n         <ul>\n            <li>\n               <p>INITIATED - A repository sync attempt has been created and will begin soon.</p>\n            </li>\n            <li>\n               <p>IN_PROGRESS - A repository sync attempt has started and work is being done to\n          reconcile the branch.</p>\n            </li>\n            <li>\n               <p>SUCCEEDED - The repository sync attempt has completed successfully.</p>\n            </li>\n            <li>\n               <p>FAILED - The repository sync attempt has failed.</p>\n            </li>\n            <li>\n               <p>QUEUED - The repository sync attempt didn't execute and was queued.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    RepositorySyncAttempt.add_member(:events, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositorySyncEventList, location_name: 'Events', traits: {"smithy.api#documentation" => "<p>The events associated with a specific sync attempt.</p>", "smithy.api#required" => {}}))
    RepositorySyncAttempt.type = Types::RepositorySyncAttempt
    RepositorySyncDefinition.add_member(:branch, Smithy::Schema::Shapes::ShapeRef.new(shape: BranchName, location_name: 'Branch', traits: {"smithy.api#documentation" => "<p>The branch specified for a repository sync definition.</p>", "smithy.api#required" => {}}))
    RepositorySyncDefinition.add_member(:directory, Smithy::Schema::Shapes::ShapeRef.new(shape: Directory, location_name: 'Directory', traits: {"smithy.api#documentation" => "<p>The configuration file for a repository sync definition. This value comes from creating\n      or updating the <code>config-file</code> field of a <code>sync-configuration</code>.</p>", "smithy.api#required" => {}}))
    RepositorySyncDefinition.add_member(:parent, Smithy::Schema::Shapes::ShapeRef.new(shape: Parent, location_name: 'Parent', traits: {"smithy.api#documentation" => "<p>The parent resource specified for a repository sync definition.</p>", "smithy.api#required" => {}}))
    RepositorySyncDefinition.add_member(:target, Smithy::Schema::Shapes::ShapeRef.new(shape: Target, location_name: 'Target', traits: {"smithy.api#documentation" => "<p>The target resource specified for a repository sync definition. In some cases, such as CFN_STACK_SYNC, the parent and target resource are the same.</p>", "smithy.api#required" => {}}))
    RepositorySyncDefinition.type = Types::RepositorySyncDefinition
    RepositorySyncDefinitionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RepositorySyncDefinition)
    RepositorySyncEvent.add_member(:event, Smithy::Schema::Shapes::ShapeRef.new(shape: Event, location_name: 'Event', traits: {"smithy.api#documentation" => "<p>A description of a repository sync event.</p>", "smithy.api#required" => {}}))
    RepositorySyncEvent.add_member(:external_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalId, location_name: 'ExternalId', traits: {"smithy.api#documentation" => "<p>The ID for a repository sync event.</p>"}))
    RepositorySyncEvent.add_member(:time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'Time', traits: {"smithy.api#documentation" => "<p>The time that a repository sync event occurred.</p>", "smithy.api#required" => {}}))
    RepositorySyncEvent.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: Type, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The event type for a repository sync event.</p>", "smithy.api#required" => {}}))
    RepositorySyncEvent.type = Types::RepositorySyncEvent
    RepositorySyncEventList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RepositorySyncEvent)
    RepositorySyncStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    RepositorySyncStatus.add_member(:initiated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INITIATED', traits: {"smithy.api#enumValue" => "INITIATED"}))
    RepositorySyncStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    RepositorySyncStatus.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    RepositorySyncStatus.add_member(:queued, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QUEUED', traits: {"smithy.api#enumValue" => "QUEUED"}))
    ResourceAlreadyExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ResourceAlreadyExistsException.type = Types::ResourceAlreadyExistsException
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceSyncAttempt.add_member(:events, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceSyncEventList, location_name: 'Events', traits: {"smithy.api#documentation" => "<p>The events related to a resource sync attempt.</p>", "smithy.api#required" => {}}))
    ResourceSyncAttempt.add_member(:initial_revision, Smithy::Schema::Shapes::ShapeRef.new(shape: Revision, location_name: 'InitialRevision', traits: {"smithy.api#documentation" => "<p>The current state of the resource as defined in the resource's <code>config-file</code>\n      in the linked repository.</p>", "smithy.api#required" => {}}))
    ResourceSyncAttempt.add_member(:started_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartedAt', traits: {"smithy.api#documentation" => "<p>The start time for a resource sync attempt.</p>", "smithy.api#required" => {}}))
    ResourceSyncAttempt.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceSyncStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status for a resource sync attempt. The follow are valid statuses:</p>\n         <ul>\n            <li>\n               <p>SYNC-INITIATED - A resource sync attempt has been created and will begin soon.</p>\n            </li>\n            <li>\n               <p>SYNCING - Syncing has started and work is being done to reconcile state.</p>\n            </li>\n            <li>\n               <p>SYNCED - Syncing has completed successfully.</p>\n            </li>\n            <li>\n               <p>SYNC_FAILED - A resource sync attempt has failed.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    ResourceSyncAttempt.add_member(:target_revision, Smithy::Schema::Shapes::ShapeRef.new(shape: Revision, location_name: 'TargetRevision', traits: {"smithy.api#documentation" => "<p>The desired state of the resource as defined in the resource's <code>config-file</code>\n      in the linked repository. Git sync attempts to update the resource to this state.</p>", "smithy.api#required" => {}}))
    ResourceSyncAttempt.add_member(:target, Smithy::Schema::Shapes::ShapeRef.new(shape: Target, location_name: 'Target', traits: {"smithy.api#documentation" => "<p>The name of the Amazon Web Services resource that is attempted to be synchronized.</p>", "smithy.api#required" => {}}))
    ResourceSyncAttempt.type = Types::ResourceSyncAttempt
    ResourceSyncEvent.add_member(:event, Smithy::Schema::Shapes::ShapeRef.new(shape: Event, location_name: 'Event', traits: {"smithy.api#documentation" => "<p>The event for a resource sync event.</p>", "smithy.api#required" => {}}))
    ResourceSyncEvent.add_member(:external_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalId, location_name: 'ExternalId', traits: {"smithy.api#documentation" => "<p>The ID for a resource sync event.</p>"}))
    ResourceSyncEvent.add_member(:time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'Time', traits: {"smithy.api#documentation" => "<p>The time that a resource sync event occurred.</p>", "smithy.api#required" => {}}))
    ResourceSyncEvent.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: Type, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of resource sync event.</p>", "smithy.api#required" => {}}))
    ResourceSyncEvent.type = Types::ResourceSyncEvent
    ResourceSyncEventList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceSyncEvent)
    ResourceSyncStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ResourceSyncStatus.add_member(:initiated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INITIATED', traits: {"smithy.api#enumValue" => "INITIATED"}))
    ResourceSyncStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ResourceSyncStatus.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    ResourceUnavailableException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ResourceUnavailableException.type = Types::ResourceUnavailableException
    RetryLatestCommitFailedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    RetryLatestCommitFailedException.type = Types::RetryLatestCommitFailedException
    Revision.add_member(:branch, Smithy::Schema::Shapes::ShapeRef.new(shape: BranchName, location_name: 'Branch', traits: {"smithy.api#documentation" => "<p>The branch name for a specific revision.</p>", "smithy.api#required" => {}}))
    Revision.add_member(:directory, Smithy::Schema::Shapes::ShapeRef.new(shape: Directory, location_name: 'Directory', traits: {"smithy.api#documentation" => "<p>The directory, if any, for a specific revision.</p>", "smithy.api#required" => {}}))
    Revision.add_member(:owner_id, Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerId, location_name: 'OwnerId', traits: {"smithy.api#documentation" => "<p>The owner ID for a specific revision, such as the GitHub owner ID for a GitHub repository.</p>", "smithy.api#required" => {}}))
    Revision.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'RepositoryName', traits: {"smithy.api#documentation" => "<p>The repository name for a specific revision.</p>", "smithy.api#required" => {}}))
    Revision.add_member(:provider_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderType, location_name: 'ProviderType', traits: {"smithy.api#documentation" => "<p>The provider type for a revision, such as GitHub.</p>", "smithy.api#required" => {}}))
    Revision.add_member(:sha, Smithy::Schema::Shapes::ShapeRef.new(shape: SHA, location_name: 'Sha', traits: {"smithy.api#documentation" => "<p>The SHA, such as the commit ID, for a specific revision.</p>", "smithy.api#required" => {}}))
    Revision.type = Types::Revision
    SecurityGroupIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupId)
    SubnetIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId)
    SyncBlocker.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID for a specific sync blocker.</p>", "smithy.api#required" => {}}))
    SyncBlocker.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockerType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The sync blocker type.</p>", "smithy.api#required" => {}}))
    SyncBlocker.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockerStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status for a specific sync blocker.</p>", "smithy.api#required" => {}}))
    SyncBlocker.add_member(:created_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedReason, location_name: 'CreatedReason', traits: {"smithy.api#documentation" => "<p>The provided reason for a specific sync blocker.</p>", "smithy.api#required" => {}}))
    SyncBlocker.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The creation time for a specific sync blocker.</p>", "smithy.api#required" => {}}))
    SyncBlocker.add_member(:contexts, Smithy::Schema::Shapes::ShapeRef.new(shape: SyncBlockerContextList, location_name: 'Contexts', traits: {"smithy.api#documentation" => "<p>The contexts for a specific sync blocker.</p>"}))
    SyncBlocker.add_member(:resolved_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolvedReason, location_name: 'ResolvedReason', traits: {"smithy.api#documentation" => "<p>The resolved reason for a specific sync blocker.</p>"}))
    SyncBlocker.add_member(:resolved_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ResolvedAt', traits: {"smithy.api#documentation" => "<p>The time that a specific sync blocker was resolved.</p>"}))
    SyncBlocker.type = Types::SyncBlocker
    SyncBlockerContext.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: SyncBlockerContextKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The key provided for a context key-value pair for a specific sync blocker.</p>", "smithy.api#required" => {}}))
    SyncBlockerContext.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: SyncBlockerContextValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value provided for a context key-value pair for a specific sync blocker.</p>", "smithy.api#required" => {}}))
    SyncBlockerContext.type = Types::SyncBlockerContext
    SyncBlockerContextList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SyncBlockerContext)
    SyncBlockerDoesNotExistException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    SyncBlockerDoesNotExistException.type = Types::SyncBlockerDoesNotExistException
    SyncBlockerSummary.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'ResourceName', traits: {"smithy.api#documentation" => "<p>The resource name for sync blocker summary.</p>", "smithy.api#required" => {}}))
    SyncBlockerSummary.add_member(:parent_resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'ParentResourceName', traits: {"smithy.api#documentation" => "<p>The parent resource name for a sync blocker summary.</p>"}))
    SyncBlockerSummary.add_member(:latest_blockers, Smithy::Schema::Shapes::ShapeRef.new(shape: LatestSyncBlockerList, location_name: 'LatestBlockers', traits: {"smithy.api#documentation" => "<p>The latest events for a sync blocker summary.</p>"}))
    SyncBlockerSummary.type = Types::SyncBlockerSummary
    SyncConfiguration.add_member(:branch, Smithy::Schema::Shapes::ShapeRef.new(shape: BranchName, location_name: 'Branch', traits: {"smithy.api#documentation" => "<p>The branch associated with a specific sync configuration.</p>", "smithy.api#required" => {}}))
    SyncConfiguration.add_member(:config_file, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentFilePath, location_name: 'ConfigFile', traits: {"smithy.api#documentation" => "<p>The file path to the configuration file associated with a specific sync configuration. The path should point to an actual file in the sync configurations linked repository.</p>"}))
    SyncConfiguration.add_member(:owner_id, Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerId, location_name: 'OwnerId', traits: {"smithy.api#documentation" => "<p>The owner ID for the repository associated with a specific sync configuration, such as\n      the owner ID in GitHub.</p>", "smithy.api#required" => {}}))
    SyncConfiguration.add_member(:provider_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ProviderType, location_name: 'ProviderType', traits: {"smithy.api#documentation" => "<p>The connection provider type associated with a specific sync configuration, such as\n      GitHub.</p>", "smithy.api#required" => {}}))
    SyncConfiguration.add_member(:repository_link_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryLinkId, location_name: 'RepositoryLinkId', traits: {"smithy.api#documentation" => "<p>The ID of the repository link associated with a specific sync configuration.</p>", "smithy.api#required" => {}}))
    SyncConfiguration.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'RepositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository associated with a specific sync configuration.</p>", "smithy.api#required" => {}}))
    SyncConfiguration.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'ResourceName', traits: {"smithy.api#documentation" => "<p>The name of the connection resource associated with a specific sync configuration.</p>", "smithy.api#required" => {}}))
    SyncConfiguration.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role associated with a specific sync configuration.</p>", "smithy.api#required" => {}}))
    SyncConfiguration.add_member(:sync_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SyncConfigurationType, location_name: 'SyncType', traits: {"smithy.api#documentation" => "<p>The type of sync for a specific sync configuration.</p>", "smithy.api#required" => {}}))
    SyncConfiguration.add_member(:publish_deployment_status, Smithy::Schema::Shapes::ShapeRef.new(shape: PublishDeploymentStatus, location_name: 'PublishDeploymentStatus', traits: {"smithy.api#documentation" => "<p>Whether to enable or disable publishing of deployment status to source providers.</p>"}))
    SyncConfiguration.add_member(:trigger_resource_update_on, Smithy::Schema::Shapes::ShapeRef.new(shape: TriggerResourceUpdateOn, location_name: 'TriggerResourceUpdateOn', traits: {"smithy.api#documentation" => "<p>When to trigger Git sync to begin the stack update.</p>"}))
    SyncConfiguration.type = Types::SyncConfiguration
    SyncConfigurationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SyncConfiguration)
    SyncConfigurationStillExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    SyncConfigurationStillExistsException.type = Types::SyncConfigurationStillExistsException
    SyncConfigurationType.add_member(:cfn_stack_sync, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CFN_STACK_SYNC', traits: {"smithy.api#enumValue" => "CFN_STACK_SYNC"}))
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The tag's key.</p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The tag's value.</p>", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource to which you want to add or update tags.</p>", "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags you want to modify or add to the resource.</p>", "smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ThrottlingException.type = Types::ThrottlingException
    TriggerResourceUpdateOn.add_member(:any_change, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ANY_CHANGE', traits: {"smithy.api#enumValue" => "ANY_CHANGE"}))
    TriggerResourceUpdateOn.add_member(:file_change, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FILE_CHANGE', traits: {"smithy.api#enumValue" => "FILE_CHANGE"}))
    UnsupportedOperationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    UnsupportedOperationException.type = Types::UnsupportedOperationException
    UnsupportedProviderTypeException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    UnsupportedProviderTypeException.type = Types::UnsupportedProviderTypeException
    UntagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource to remove tags from.</p>", "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>The list of keys for the tags to be removed from the resource.</p>", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateHostInput.add_member(:host_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: HostArn, location_name: 'HostArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the host to be updated.</p>", "smithy.api#required" => {}}))
    UpdateHostInput.add_member(:provider_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: 'ProviderEndpoint', traits: {"smithy.api#documentation" => "<p>The URL or endpoint of the host to be updated.</p>"}))
    UpdateHostInput.add_member(:vpc_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfiguration, location_name: 'VpcConfiguration', traits: {"smithy.api#documentation" => "<p>The VPC configuration of the host to be updated. A VPC must be configured and the\n      infrastructure to be represented by the host must already be connected to the VPC.</p>"}))
    UpdateHostInput.type = Types::UpdateHostInput
    UpdateHostOutput.type = Types::UpdateHostOutput
    UpdateOutOfSyncException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    UpdateOutOfSyncException.type = Types::UpdateOutOfSyncException
    UpdateRepositoryLinkInput.add_member(:connection_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionArn, location_name: 'ConnectionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the connection for the repository link to be updated. The updated connection ARN must have the same providerType (such as GitHub) as the original connection ARN for the repo link.</p>"}))
    UpdateRepositoryLinkInput.add_member(:encryption_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'EncryptionKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the encryption key for the repository link to be updated.</p>"}))
    UpdateRepositoryLinkInput.add_member(:repository_link_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryLinkId, location_name: 'RepositoryLinkId', traits: {"smithy.api#documentation" => "<p>The ID of the repository link to be updated.</p>", "smithy.api#required" => {}}))
    UpdateRepositoryLinkInput.type = Types::UpdateRepositoryLinkInput
    UpdateRepositoryLinkOutput.add_member(:repository_link_info, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryLinkInfo, location_name: 'RepositoryLinkInfo', traits: {"smithy.api#documentation" => "<p>Information about the repository link to be updated.</p>", "smithy.api#required" => {}}))
    UpdateRepositoryLinkOutput.type = Types::UpdateRepositoryLinkOutput
    UpdateSyncBlockerInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the sync blocker to be updated.</p>", "smithy.api#required" => {}}))
    UpdateSyncBlockerInput.add_member(:sync_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SyncConfigurationType, location_name: 'SyncType', traits: {"smithy.api#documentation" => "<p>The sync type of the sync blocker to be updated.</p>", "smithy.api#required" => {}}))
    UpdateSyncBlockerInput.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'ResourceName', traits: {"smithy.api#documentation" => "<p>The name of the resource for the sync blocker to be updated.</p>", "smithy.api#required" => {}}))
    UpdateSyncBlockerInput.add_member(:resolved_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ResolvedReason, location_name: 'ResolvedReason', traits: {"smithy.api#documentation" => "<p>The reason for resolving the sync blocker.</p>", "smithy.api#required" => {}}))
    UpdateSyncBlockerInput.type = Types::UpdateSyncBlockerInput
    UpdateSyncBlockerOutput.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'ResourceName', traits: {"smithy.api#documentation" => "<p>The resource name for the sync blocker.</p>", "smithy.api#required" => {}}))
    UpdateSyncBlockerOutput.add_member(:parent_resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'ParentResourceName', traits: {"smithy.api#documentation" => "<p>The parent resource name for the sync blocker.</p>"}))
    UpdateSyncBlockerOutput.add_member(:sync_blocker, Smithy::Schema::Shapes::ShapeRef.new(shape: SyncBlocker, location_name: 'SyncBlocker', traits: {"smithy.api#documentation" => "<p>Information about the sync blocker to be updated.</p>", "smithy.api#required" => {}}))
    UpdateSyncBlockerOutput.type = Types::UpdateSyncBlockerOutput
    UpdateSyncConfigurationInput.add_member(:branch, Smithy::Schema::Shapes::ShapeRef.new(shape: BranchName, location_name: 'Branch', traits: {"smithy.api#documentation" => "<p>The branch for the sync configuration to be updated.</p>"}))
    UpdateSyncConfigurationInput.add_member(:config_file, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentFilePath, location_name: 'ConfigFile', traits: {"smithy.api#documentation" => "<p>The configuration file for the sync configuration to be updated.</p>"}))
    UpdateSyncConfigurationInput.add_member(:repository_link_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryLinkId, location_name: 'RepositoryLinkId', traits: {"smithy.api#documentation" => "<p>The ID of the repository link for the sync configuration to be updated.</p>"}))
    UpdateSyncConfigurationInput.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'ResourceName', traits: {"smithy.api#documentation" => "<p>The name of the Amazon Web Services resource for the sync configuration to be\n      updated.</p>", "smithy.api#required" => {}}))
    UpdateSyncConfigurationInput.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM role for the sync configuration to be updated.</p>"}))
    UpdateSyncConfigurationInput.add_member(:sync_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SyncConfigurationType, location_name: 'SyncType', traits: {"smithy.api#documentation" => "<p>The sync type for the sync configuration to be updated.</p>", "smithy.api#required" => {}}))
    UpdateSyncConfigurationInput.add_member(:publish_deployment_status, Smithy::Schema::Shapes::ShapeRef.new(shape: PublishDeploymentStatus, location_name: 'PublishDeploymentStatus', traits: {"smithy.api#documentation" => "<p>Whether to enable or disable publishing of deployment status to source providers.</p>"}))
    UpdateSyncConfigurationInput.add_member(:trigger_resource_update_on, Smithy::Schema::Shapes::ShapeRef.new(shape: TriggerResourceUpdateOn, location_name: 'TriggerResourceUpdateOn', traits: {"smithy.api#documentation" => "<p>When to trigger Git sync to begin the stack update.</p>"}))
    UpdateSyncConfigurationInput.type = Types::UpdateSyncConfigurationInput
    UpdateSyncConfigurationOutput.add_member(:sync_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SyncConfiguration, location_name: 'SyncConfiguration', traits: {"smithy.api#documentation" => "<p>The information returned for the sync configuration to be updated.</p>", "smithy.api#required" => {}}))
    UpdateSyncConfigurationOutput.type = Types::UpdateSyncConfigurationOutput
    VpcConfiguration.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'VpcId', traits: {"smithy.api#documentation" => "<p>The ID of the Amazon VPC connected to the infrastructure where your provider type is\n      installed.</p>", "smithy.api#required" => {}}))
    VpcConfiguration.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIds, location_name: 'SubnetIds', traits: {"smithy.api#documentation" => "<p>The ID of the subnet or subnets associated with the Amazon VPC connected to the\n      infrastructure where your provider type is installed.</p>", "smithy.api#required" => {}}))
    VpcConfiguration.add_member(:security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: 'SecurityGroupIds', traits: {"smithy.api#documentation" => "<p>The ID of the security group or security groups associated with the Amazon VPC connected\n      to the infrastructure where your provider type is installed.</p>", "smithy.api#required" => {}}))
    VpcConfiguration.add_member(:tls_certificate, Smithy::Schema::Shapes::ShapeRef.new(shape: TlsCertificate, location_name: 'TlsCertificate', traits: {"smithy.api#documentation" => "<p>The value of the Transport Layer Security (TLS) certificate associated with the infrastructure where your provider type is installed.</p>"}))
    VpcConfiguration.type = Types::VpcConfiguration

    CodeStarConnections20191201 = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.codestarconnections#CodeStar_connections_20191201"
      service.name = "CodeStarConnections20191201"
      service.version = "2019-12-01"
      service.traits = {"aws.api#service" => {"sdkId" => "CodeStar connections", "arnNamespace" => "codestar-connections", "cloudFormationName" => "CodeStarconnections", "cloudTrailEventSource" => "codestarconnections.amazonaws.com", "endpointPrefix" => "codestar-connections"}, "aws.auth#sigv4" => {"name" => "codestar-connections"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "AWS CodeStar connections"}
      service.add_operation(:create_connection, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarconnections#CreateConnection"
        operation.name = "CreateConnection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConnectionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConnectionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:create_host, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarconnections#CreateHost"
        operation.name = "CreateHost"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateHostInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateHostOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {}
      end)
      service.add_operation(:create_repository_link, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarconnections#CreateRepositoryLink"
        operation.name = "CreateRepositoryLink"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRepositoryLinkInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRepositoryLinkOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:create_sync_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarconnections#CreateSyncConfiguration"
        operation.name = "CreateSyncConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSyncConfigurationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSyncConfigurationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:delete_connection, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarconnections#DeleteConnection"
        operation.name = "DeleteConnection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConnectionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConnectionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_host, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarconnections#DeleteHost"
        operation.name = "DeleteHost"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteHostInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteHostOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:delete_repository_link, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarconnections#DeleteRepositoryLink"
        operation.name = "DeleteRepositoryLink"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRepositoryLinkInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRepositoryLinkOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SyncConfigurationStillExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedProviderTypeException)
        operation.traits = {}
      end)
      service.add_operation(:delete_sync_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarconnections#DeleteSyncConfiguration"
        operation.name = "DeleteSyncConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSyncConfigurationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSyncConfigurationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:get_connection, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarconnections#GetConnection"
        operation.name = "GetConnection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetConnectionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetConnectionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:get_host, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarconnections#GetHost"
        operation.name = "GetHost"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetHostInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetHostOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:get_repository_link, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarconnections#GetRepositoryLink"
        operation.name = "GetRepositoryLink"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRepositoryLinkInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRepositoryLinkOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:get_repository_sync_status, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarconnections#GetRepositorySyncStatus"
        operation.name = "GetRepositorySyncStatus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRepositorySyncStatusInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRepositorySyncStatusOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:get_resource_sync_status, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarconnections#GetResourceSyncStatus"
        operation.name = "GetResourceSyncStatus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourceSyncStatusInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourceSyncStatusOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:get_sync_blocker_summary, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarconnections#GetSyncBlockerSummary"
        operation.name = "GetSyncBlockerSummary"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSyncBlockerSummaryInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSyncBlockerSummaryOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:get_sync_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarconnections#GetSyncConfiguration"
        operation.name = "GetSyncConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSyncConfigurationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSyncConfigurationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:list_connections, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarconnections#ListConnections"
        operation.name = "ListConnections"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListConnectionsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListConnectionsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListConnections.new
      end)
      service.add_operation(:list_hosts, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarconnections#ListHosts"
        operation.name = "ListHosts"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListHostsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListHostsOutput)
        operation.traits = {}
        operation[:paginator] = Paginators::ListHosts.new
      end)
      service.add_operation(:list_repository_links, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarconnections#ListRepositoryLinks"
        operation.name = "ListRepositoryLinks"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRepositoryLinksInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRepositoryLinksOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListRepositoryLinks.new
      end)
      service.add_operation(:list_repository_sync_definitions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarconnections#ListRepositorySyncDefinitions"
        operation.name = "ListRepositorySyncDefinitions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRepositorySyncDefinitionsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRepositorySyncDefinitionsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:list_sync_configurations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarconnections#ListSyncConfigurations"
        operation.name = "ListSyncConfigurations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSyncConfigurationsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSyncConfigurationsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListSyncConfigurations.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarconnections#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarconnections#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarconnections#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_host, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarconnections#UpdateHost"
        operation.name = "UpdateHost"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateHostInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateHostOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        operation.traits = {}
      end)
      service.add_operation(:update_repository_link, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarconnections#UpdateRepositoryLink"
        operation.name = "UpdateRepositoryLink"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRepositoryLinkInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRepositoryLinkOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionalCheckFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateOutOfSyncException)
        operation.traits = {}
      end)
      service.add_operation(:update_sync_blocker, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarconnections#UpdateSyncBlocker"
        operation.name = "UpdateSyncBlocker"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSyncBlockerInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSyncBlockerOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RetryLatestCommitFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SyncBlockerDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:update_sync_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codestarconnections#UpdateSyncConfiguration"
        operation.name = "UpdateSyncConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSyncConfigurationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSyncConfigurationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateOutOfSyncException)
        operation.traits = {}
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
