# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::CodeStarconnections
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AmazonResourceName = Shapes::StringShape.new(name: 'AmazonResourceName')
    BlockerStatus = Shapes::StringShape.new(name: 'BlockerStatus')
    BlockerType = Shapes::StringShape.new(name: 'BlockerType')
    BranchName = Shapes::StringShape.new(name: 'BranchName')
    ConcurrentModificationException = Shapes::StructureShape.new(name: 'ConcurrentModificationException')
    ConditionalCheckFailedException = Shapes::StructureShape.new(name: 'ConditionalCheckFailedException')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    Connection = Shapes::StructureShape.new(name: 'Connection')
    ConnectionArn = Shapes::StringShape.new(name: 'ConnectionArn')
    ConnectionList = Shapes::ListShape.new(name: 'ConnectionList')
    ConnectionName = Shapes::StringShape.new(name: 'ConnectionName')
    ConnectionStatus = Shapes::StringShape.new(name: 'ConnectionStatus')
    CreateConnectionInput = Shapes::StructureShape.new(name: 'CreateConnectionInput')
    CreateConnectionOutput = Shapes::StructureShape.new(name: 'CreateConnectionOutput')
    CreateHostInput = Shapes::StructureShape.new(name: 'CreateHostInput')
    CreateHostOutput = Shapes::StructureShape.new(name: 'CreateHostOutput')
    CreateRepositoryLinkInput = Shapes::StructureShape.new(name: 'CreateRepositoryLinkInput')
    CreateRepositoryLinkOutput = Shapes::StructureShape.new(name: 'CreateRepositoryLinkOutput')
    CreateSyncConfigurationInput = Shapes::StructureShape.new(name: 'CreateSyncConfigurationInput')
    CreateSyncConfigurationOutput = Shapes::StructureShape.new(name: 'CreateSyncConfigurationOutput')
    CreatedReason = Shapes::StringShape.new(name: 'CreatedReason')
    DeleteConnectionInput = Shapes::StructureShape.new(name: 'DeleteConnectionInput')
    DeleteConnectionOutput = Shapes::StructureShape.new(name: 'DeleteConnectionOutput')
    DeleteHostInput = Shapes::StructureShape.new(name: 'DeleteHostInput')
    DeleteHostOutput = Shapes::StructureShape.new(name: 'DeleteHostOutput')
    DeleteRepositoryLinkInput = Shapes::StructureShape.new(name: 'DeleteRepositoryLinkInput')
    DeleteRepositoryLinkOutput = Shapes::StructureShape.new(name: 'DeleteRepositoryLinkOutput')
    DeleteSyncConfigurationInput = Shapes::StructureShape.new(name: 'DeleteSyncConfigurationInput')
    DeleteSyncConfigurationOutput = Shapes::StructureShape.new(name: 'DeleteSyncConfigurationOutput')
    DeploymentFilePath = Shapes::StringShape.new(name: 'DeploymentFilePath')
    Directory = Shapes::StringShape.new(name: 'Directory')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    Event = Shapes::StringShape.new(name: 'Event')
    ExternalId = Shapes::StringShape.new(name: 'ExternalId')
    GetConnectionInput = Shapes::StructureShape.new(name: 'GetConnectionInput')
    GetConnectionOutput = Shapes::StructureShape.new(name: 'GetConnectionOutput')
    GetHostInput = Shapes::StructureShape.new(name: 'GetHostInput')
    GetHostOutput = Shapes::StructureShape.new(name: 'GetHostOutput')
    GetRepositoryLinkInput = Shapes::StructureShape.new(name: 'GetRepositoryLinkInput')
    GetRepositoryLinkOutput = Shapes::StructureShape.new(name: 'GetRepositoryLinkOutput')
    GetRepositorySyncStatusInput = Shapes::StructureShape.new(name: 'GetRepositorySyncStatusInput')
    GetRepositorySyncStatusOutput = Shapes::StructureShape.new(name: 'GetRepositorySyncStatusOutput')
    GetResourceSyncStatusInput = Shapes::StructureShape.new(name: 'GetResourceSyncStatusInput')
    GetResourceSyncStatusOutput = Shapes::StructureShape.new(name: 'GetResourceSyncStatusOutput')
    GetSyncBlockerSummaryInput = Shapes::StructureShape.new(name: 'GetSyncBlockerSummaryInput')
    GetSyncBlockerSummaryOutput = Shapes::StructureShape.new(name: 'GetSyncBlockerSummaryOutput')
    GetSyncConfigurationInput = Shapes::StructureShape.new(name: 'GetSyncConfigurationInput')
    GetSyncConfigurationOutput = Shapes::StructureShape.new(name: 'GetSyncConfigurationOutput')
    Host = Shapes::StructureShape.new(name: 'Host')
    HostArn = Shapes::StringShape.new(name: 'HostArn')
    HostList = Shapes::ListShape.new(name: 'HostList')
    HostName = Shapes::StringShape.new(name: 'HostName')
    HostStatus = Shapes::StringShape.new(name: 'HostStatus')
    HostStatusMessage = Shapes::StringShape.new(name: 'HostStatusMessage')
    IamRoleArn = Shapes::StringShape.new(name: 'IamRoleArn')
    Id = Shapes::StringShape.new(name: 'Id')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvalidInputException = Shapes::StructureShape.new(name: 'InvalidInputException')
    KmsKeyArn = Shapes::StringShape.new(name: 'KmsKeyArn')
    LatestSyncBlockerList = Shapes::ListShape.new(name: 'LatestSyncBlockerList')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListConnectionsInput = Shapes::StructureShape.new(name: 'ListConnectionsInput')
    ListConnectionsOutput = Shapes::StructureShape.new(name: 'ListConnectionsOutput')
    ListHostsInput = Shapes::StructureShape.new(name: 'ListHostsInput')
    ListHostsOutput = Shapes::StructureShape.new(name: 'ListHostsOutput')
    ListRepositoryLinksInput = Shapes::StructureShape.new(name: 'ListRepositoryLinksInput')
    ListRepositoryLinksOutput = Shapes::StructureShape.new(name: 'ListRepositoryLinksOutput')
    ListRepositorySyncDefinitionsInput = Shapes::StructureShape.new(name: 'ListRepositorySyncDefinitionsInput')
    ListRepositorySyncDefinitionsOutput = Shapes::StructureShape.new(name: 'ListRepositorySyncDefinitionsOutput')
    ListSyncConfigurationsInput = Shapes::StructureShape.new(name: 'ListSyncConfigurationsInput')
    ListSyncConfigurationsOutput = Shapes::StructureShape.new(name: 'ListSyncConfigurationsOutput')
    ListTagsForResourceInput = Shapes::StructureShape.new(name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Shapes::StructureShape.new(name: 'ListTagsForResourceOutput')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    OwnerId = Shapes::StringShape.new(name: 'OwnerId')
    Parent = Shapes::StringShape.new(name: 'Parent')
    ProviderType = Shapes::StringShape.new(name: 'ProviderType')
    PublishDeploymentStatus = Shapes::StringShape.new(name: 'PublishDeploymentStatus')
    RepositoryLinkArn = Shapes::StringShape.new(name: 'RepositoryLinkArn')
    RepositoryLinkId = Shapes::StringShape.new(name: 'RepositoryLinkId')
    RepositoryLinkInfo = Shapes::StructureShape.new(name: 'RepositoryLinkInfo')
    RepositoryLinkList = Shapes::ListShape.new(name: 'RepositoryLinkList')
    RepositoryName = Shapes::StringShape.new(name: 'RepositoryName')
    RepositorySyncAttempt = Shapes::StructureShape.new(name: 'RepositorySyncAttempt')
    RepositorySyncDefinition = Shapes::StructureShape.new(name: 'RepositorySyncDefinition')
    RepositorySyncDefinitionList = Shapes::ListShape.new(name: 'RepositorySyncDefinitionList')
    RepositorySyncEvent = Shapes::StructureShape.new(name: 'RepositorySyncEvent')
    RepositorySyncEventList = Shapes::ListShape.new(name: 'RepositorySyncEventList')
    RepositorySyncStatus = Shapes::StringShape.new(name: 'RepositorySyncStatus')
    ResolvedReason = Shapes::StringShape.new(name: 'ResolvedReason')
    ResourceAlreadyExistsException = Shapes::StructureShape.new(name: 'ResourceAlreadyExistsException')
    ResourceName = Shapes::StringShape.new(name: 'ResourceName')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceSyncAttempt = Shapes::StructureShape.new(name: 'ResourceSyncAttempt')
    ResourceSyncEvent = Shapes::StructureShape.new(name: 'ResourceSyncEvent')
    ResourceSyncEventList = Shapes::ListShape.new(name: 'ResourceSyncEventList')
    ResourceSyncStatus = Shapes::StringShape.new(name: 'ResourceSyncStatus')
    ResourceUnavailableException = Shapes::StructureShape.new(name: 'ResourceUnavailableException')
    RetryLatestCommitFailedException = Shapes::StructureShape.new(name: 'RetryLatestCommitFailedException')
    Revision = Shapes::StructureShape.new(name: 'Revision')
    SHA = Shapes::StringShape.new(name: 'SHA')
    SecurityGroupId = Shapes::StringShape.new(name: 'SecurityGroupId')
    SecurityGroupIds = Shapes::ListShape.new(name: 'SecurityGroupIds')
    SharpNextToken = Shapes::StringShape.new(name: 'SharpNextToken')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    SubnetIds = Shapes::ListShape.new(name: 'SubnetIds')
    SyncBlocker = Shapes::StructureShape.new(name: 'SyncBlocker')
    SyncBlockerContext = Shapes::StructureShape.new(name: 'SyncBlockerContext')
    SyncBlockerContextKey = Shapes::StringShape.new(name: 'SyncBlockerContextKey')
    SyncBlockerContextList = Shapes::ListShape.new(name: 'SyncBlockerContextList')
    SyncBlockerContextValue = Shapes::StringShape.new(name: 'SyncBlockerContextValue')
    SyncBlockerDoesNotExistException = Shapes::StructureShape.new(name: 'SyncBlockerDoesNotExistException')
    SyncBlockerSummary = Shapes::StructureShape.new(name: 'SyncBlockerSummary')
    SyncConfiguration = Shapes::StructureShape.new(name: 'SyncConfiguration')
    SyncConfigurationList = Shapes::ListShape.new(name: 'SyncConfigurationList')
    SyncConfigurationStillExistsException = Shapes::StructureShape.new(name: 'SyncConfigurationStillExistsException')
    SyncConfigurationType = Shapes::StringShape.new(name: 'SyncConfigurationType')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceInput = Shapes::StructureShape.new(name: 'TagResourceInput')
    TagResourceOutput = Shapes::StructureShape.new(name: 'TagResourceOutput')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Target = Shapes::StringShape.new(name: 'Target')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TlsCertificate = Shapes::StringShape.new(name: 'TlsCertificate')
    TriggerResourceUpdateOn = Shapes::StringShape.new(name: 'TriggerResourceUpdateOn')
    Type = Shapes::StringShape.new(name: 'Type')
    UnsupportedOperationException = Shapes::StructureShape.new(name: 'UnsupportedOperationException')
    UnsupportedProviderTypeException = Shapes::StructureShape.new(name: 'UnsupportedProviderTypeException')
    UntagResourceInput = Shapes::StructureShape.new(name: 'UntagResourceInput')
    UntagResourceOutput = Shapes::StructureShape.new(name: 'UntagResourceOutput')
    UpdateHostInput = Shapes::StructureShape.new(name: 'UpdateHostInput')
    UpdateHostOutput = Shapes::StructureShape.new(name: 'UpdateHostOutput')
    UpdateOutOfSyncException = Shapes::StructureShape.new(name: 'UpdateOutOfSyncException')
    UpdateRepositoryLinkInput = Shapes::StructureShape.new(name: 'UpdateRepositoryLinkInput')
    UpdateRepositoryLinkOutput = Shapes::StructureShape.new(name: 'UpdateRepositoryLinkOutput')
    UpdateSyncBlockerInput = Shapes::StructureShape.new(name: 'UpdateSyncBlockerInput')
    UpdateSyncBlockerOutput = Shapes::StructureShape.new(name: 'UpdateSyncBlockerOutput')
    UpdateSyncConfigurationInput = Shapes::StructureShape.new(name: 'UpdateSyncConfigurationInput')
    UpdateSyncConfigurationOutput = Shapes::StructureShape.new(name: 'UpdateSyncConfigurationOutput')
    Url = Shapes::StringShape.new(name: 'Url')
    VpcConfiguration = Shapes::StructureShape.new(name: 'VpcConfiguration')
    VpcId = Shapes::StringShape.new(name: 'VpcId')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ConcurrentModificationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ConcurrentModificationException.struct_class = Types::ConcurrentModificationException

    ConditionalCheckFailedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ConditionalCheckFailedException.struct_class = Types::ConditionalCheckFailedException

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    Connection.add_member(:connection_name, Shapes::ShapeRef.new(shape: ConnectionName, location_name: "ConnectionName"))
    Connection.add_member(:connection_arn, Shapes::ShapeRef.new(shape: ConnectionArn, location_name: "ConnectionArn"))
    Connection.add_member(:provider_type, Shapes::ShapeRef.new(shape: ProviderType, location_name: "ProviderType"))
    Connection.add_member(:owner_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "OwnerAccountId"))
    Connection.add_member(:connection_status, Shapes::ShapeRef.new(shape: ConnectionStatus, location_name: "ConnectionStatus"))
    Connection.add_member(:host_arn, Shapes::ShapeRef.new(shape: HostArn, location_name: "HostArn"))
    Connection.struct_class = Types::Connection

    ConnectionList.member = Shapes::ShapeRef.new(shape: Connection)

    CreateConnectionInput.add_member(:provider_type, Shapes::ShapeRef.new(shape: ProviderType, location_name: "ProviderType"))
    CreateConnectionInput.add_member(:connection_name, Shapes::ShapeRef.new(shape: ConnectionName, required: true, location_name: "ConnectionName"))
    CreateConnectionInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateConnectionInput.add_member(:host_arn, Shapes::ShapeRef.new(shape: HostArn, location_name: "HostArn"))
    CreateConnectionInput.struct_class = Types::CreateConnectionInput

    CreateConnectionOutput.add_member(:connection_arn, Shapes::ShapeRef.new(shape: ConnectionArn, required: true, location_name: "ConnectionArn"))
    CreateConnectionOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateConnectionOutput.struct_class = Types::CreateConnectionOutput

    CreateHostInput.add_member(:name, Shapes::ShapeRef.new(shape: HostName, required: true, location_name: "Name"))
    CreateHostInput.add_member(:provider_type, Shapes::ShapeRef.new(shape: ProviderType, required: true, location_name: "ProviderType"))
    CreateHostInput.add_member(:provider_endpoint, Shapes::ShapeRef.new(shape: Url, required: true, location_name: "ProviderEndpoint"))
    CreateHostInput.add_member(:vpc_configuration, Shapes::ShapeRef.new(shape: VpcConfiguration, location_name: "VpcConfiguration"))
    CreateHostInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateHostInput.struct_class = Types::CreateHostInput

    CreateHostOutput.add_member(:host_arn, Shapes::ShapeRef.new(shape: HostArn, location_name: "HostArn"))
    CreateHostOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateHostOutput.struct_class = Types::CreateHostOutput

    CreateRepositoryLinkInput.add_member(:connection_arn, Shapes::ShapeRef.new(shape: ConnectionArn, required: true, location_name: "ConnectionArn"))
    CreateRepositoryLinkInput.add_member(:owner_id, Shapes::ShapeRef.new(shape: OwnerId, required: true, location_name: "OwnerId"))
    CreateRepositoryLinkInput.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "RepositoryName"))
    CreateRepositoryLinkInput.add_member(:encryption_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "EncryptionKeyArn"))
    CreateRepositoryLinkInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateRepositoryLinkInput.struct_class = Types::CreateRepositoryLinkInput

    CreateRepositoryLinkOutput.add_member(:repository_link_info, Shapes::ShapeRef.new(shape: RepositoryLinkInfo, required: true, location_name: "RepositoryLinkInfo"))
    CreateRepositoryLinkOutput.struct_class = Types::CreateRepositoryLinkOutput

    CreateSyncConfigurationInput.add_member(:branch, Shapes::ShapeRef.new(shape: BranchName, required: true, location_name: "Branch"))
    CreateSyncConfigurationInput.add_member(:config_file, Shapes::ShapeRef.new(shape: DeploymentFilePath, required: true, location_name: "ConfigFile"))
    CreateSyncConfigurationInput.add_member(:repository_link_id, Shapes::ShapeRef.new(shape: RepositoryLinkId, required: true, location_name: "RepositoryLinkId"))
    CreateSyncConfigurationInput.add_member(:resource_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "ResourceName"))
    CreateSyncConfigurationInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "RoleArn"))
    CreateSyncConfigurationInput.add_member(:sync_type, Shapes::ShapeRef.new(shape: SyncConfigurationType, required: true, location_name: "SyncType"))
    CreateSyncConfigurationInput.add_member(:publish_deployment_status, Shapes::ShapeRef.new(shape: PublishDeploymentStatus, location_name: "PublishDeploymentStatus"))
    CreateSyncConfigurationInput.add_member(:trigger_resource_update_on, Shapes::ShapeRef.new(shape: TriggerResourceUpdateOn, location_name: "TriggerResourceUpdateOn"))
    CreateSyncConfigurationInput.struct_class = Types::CreateSyncConfigurationInput

    CreateSyncConfigurationOutput.add_member(:sync_configuration, Shapes::ShapeRef.new(shape: SyncConfiguration, required: true, location_name: "SyncConfiguration"))
    CreateSyncConfigurationOutput.struct_class = Types::CreateSyncConfigurationOutput

    DeleteConnectionInput.add_member(:connection_arn, Shapes::ShapeRef.new(shape: ConnectionArn, required: true, location_name: "ConnectionArn"))
    DeleteConnectionInput.struct_class = Types::DeleteConnectionInput

    DeleteConnectionOutput.struct_class = Types::DeleteConnectionOutput

    DeleteHostInput.add_member(:host_arn, Shapes::ShapeRef.new(shape: HostArn, required: true, location_name: "HostArn"))
    DeleteHostInput.struct_class = Types::DeleteHostInput

    DeleteHostOutput.struct_class = Types::DeleteHostOutput

    DeleteRepositoryLinkInput.add_member(:repository_link_id, Shapes::ShapeRef.new(shape: RepositoryLinkId, required: true, location_name: "RepositoryLinkId"))
    DeleteRepositoryLinkInput.struct_class = Types::DeleteRepositoryLinkInput

    DeleteRepositoryLinkOutput.struct_class = Types::DeleteRepositoryLinkOutput

    DeleteSyncConfigurationInput.add_member(:sync_type, Shapes::ShapeRef.new(shape: SyncConfigurationType, required: true, location_name: "SyncType"))
    DeleteSyncConfigurationInput.add_member(:resource_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "ResourceName"))
    DeleteSyncConfigurationInput.struct_class = Types::DeleteSyncConfigurationInput

    DeleteSyncConfigurationOutput.struct_class = Types::DeleteSyncConfigurationOutput

    GetConnectionInput.add_member(:connection_arn, Shapes::ShapeRef.new(shape: ConnectionArn, required: true, location_name: "ConnectionArn"))
    GetConnectionInput.struct_class = Types::GetConnectionInput

    GetConnectionOutput.add_member(:connection, Shapes::ShapeRef.new(shape: Connection, location_name: "Connection"))
    GetConnectionOutput.struct_class = Types::GetConnectionOutput

    GetHostInput.add_member(:host_arn, Shapes::ShapeRef.new(shape: HostArn, required: true, location_name: "HostArn"))
    GetHostInput.struct_class = Types::GetHostInput

    GetHostOutput.add_member(:name, Shapes::ShapeRef.new(shape: HostName, location_name: "Name"))
    GetHostOutput.add_member(:status, Shapes::ShapeRef.new(shape: HostStatus, location_name: "Status"))
    GetHostOutput.add_member(:provider_type, Shapes::ShapeRef.new(shape: ProviderType, location_name: "ProviderType"))
    GetHostOutput.add_member(:provider_endpoint, Shapes::ShapeRef.new(shape: Url, location_name: "ProviderEndpoint"))
    GetHostOutput.add_member(:vpc_configuration, Shapes::ShapeRef.new(shape: VpcConfiguration, location_name: "VpcConfiguration"))
    GetHostOutput.struct_class = Types::GetHostOutput

    GetRepositoryLinkInput.add_member(:repository_link_id, Shapes::ShapeRef.new(shape: RepositoryLinkId, required: true, location_name: "RepositoryLinkId"))
    GetRepositoryLinkInput.struct_class = Types::GetRepositoryLinkInput

    GetRepositoryLinkOutput.add_member(:repository_link_info, Shapes::ShapeRef.new(shape: RepositoryLinkInfo, required: true, location_name: "RepositoryLinkInfo"))
    GetRepositoryLinkOutput.struct_class = Types::GetRepositoryLinkOutput

    GetRepositorySyncStatusInput.add_member(:branch, Shapes::ShapeRef.new(shape: BranchName, required: true, location_name: "Branch"))
    GetRepositorySyncStatusInput.add_member(:repository_link_id, Shapes::ShapeRef.new(shape: RepositoryLinkId, required: true, location_name: "RepositoryLinkId"))
    GetRepositorySyncStatusInput.add_member(:sync_type, Shapes::ShapeRef.new(shape: SyncConfigurationType, required: true, location_name: "SyncType"))
    GetRepositorySyncStatusInput.struct_class = Types::GetRepositorySyncStatusInput

    GetRepositorySyncStatusOutput.add_member(:latest_sync, Shapes::ShapeRef.new(shape: RepositorySyncAttempt, required: true, location_name: "LatestSync"))
    GetRepositorySyncStatusOutput.struct_class = Types::GetRepositorySyncStatusOutput

    GetResourceSyncStatusInput.add_member(:resource_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "ResourceName"))
    GetResourceSyncStatusInput.add_member(:sync_type, Shapes::ShapeRef.new(shape: SyncConfigurationType, required: true, location_name: "SyncType"))
    GetResourceSyncStatusInput.struct_class = Types::GetResourceSyncStatusInput

    GetResourceSyncStatusOutput.add_member(:desired_state, Shapes::ShapeRef.new(shape: Revision, location_name: "DesiredState"))
    GetResourceSyncStatusOutput.add_member(:latest_successful_sync, Shapes::ShapeRef.new(shape: ResourceSyncAttempt, location_name: "LatestSuccessfulSync"))
    GetResourceSyncStatusOutput.add_member(:latest_sync, Shapes::ShapeRef.new(shape: ResourceSyncAttempt, required: true, location_name: "LatestSync"))
    GetResourceSyncStatusOutput.struct_class = Types::GetResourceSyncStatusOutput

    GetSyncBlockerSummaryInput.add_member(:sync_type, Shapes::ShapeRef.new(shape: SyncConfigurationType, required: true, location_name: "SyncType"))
    GetSyncBlockerSummaryInput.add_member(:resource_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "ResourceName"))
    GetSyncBlockerSummaryInput.struct_class = Types::GetSyncBlockerSummaryInput

    GetSyncBlockerSummaryOutput.add_member(:sync_blocker_summary, Shapes::ShapeRef.new(shape: SyncBlockerSummary, required: true, location_name: "SyncBlockerSummary"))
    GetSyncBlockerSummaryOutput.struct_class = Types::GetSyncBlockerSummaryOutput

    GetSyncConfigurationInput.add_member(:sync_type, Shapes::ShapeRef.new(shape: SyncConfigurationType, required: true, location_name: "SyncType"))
    GetSyncConfigurationInput.add_member(:resource_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "ResourceName"))
    GetSyncConfigurationInput.struct_class = Types::GetSyncConfigurationInput

    GetSyncConfigurationOutput.add_member(:sync_configuration, Shapes::ShapeRef.new(shape: SyncConfiguration, required: true, location_name: "SyncConfiguration"))
    GetSyncConfigurationOutput.struct_class = Types::GetSyncConfigurationOutput

    Host.add_member(:name, Shapes::ShapeRef.new(shape: HostName, location_name: "Name"))
    Host.add_member(:host_arn, Shapes::ShapeRef.new(shape: HostArn, location_name: "HostArn"))
    Host.add_member(:provider_type, Shapes::ShapeRef.new(shape: ProviderType, location_name: "ProviderType"))
    Host.add_member(:provider_endpoint, Shapes::ShapeRef.new(shape: Url, location_name: "ProviderEndpoint"))
    Host.add_member(:vpc_configuration, Shapes::ShapeRef.new(shape: VpcConfiguration, location_name: "VpcConfiguration"))
    Host.add_member(:status, Shapes::ShapeRef.new(shape: HostStatus, location_name: "Status"))
    Host.add_member(:status_message, Shapes::ShapeRef.new(shape: HostStatusMessage, location_name: "StatusMessage"))
    Host.struct_class = Types::Host

    HostList.member = Shapes::ShapeRef.new(shape: Host)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    InvalidInputException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidInputException.struct_class = Types::InvalidInputException

    LatestSyncBlockerList.member = Shapes::ShapeRef.new(shape: SyncBlocker)

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListConnectionsInput.add_member(:provider_type_filter, Shapes::ShapeRef.new(shape: ProviderType, location_name: "ProviderTypeFilter"))
    ListConnectionsInput.add_member(:host_arn_filter, Shapes::ShapeRef.new(shape: HostArn, location_name: "HostArnFilter"))
    ListConnectionsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListConnectionsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListConnectionsInput.struct_class = Types::ListConnectionsInput

    ListConnectionsOutput.add_member(:connections, Shapes::ShapeRef.new(shape: ConnectionList, location_name: "Connections"))
    ListConnectionsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListConnectionsOutput.struct_class = Types::ListConnectionsOutput

    ListHostsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListHostsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListHostsInput.struct_class = Types::ListHostsInput

    ListHostsOutput.add_member(:hosts, Shapes::ShapeRef.new(shape: HostList, location_name: "Hosts"))
    ListHostsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListHostsOutput.struct_class = Types::ListHostsOutput

    ListRepositoryLinksInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListRepositoryLinksInput.add_member(:next_token, Shapes::ShapeRef.new(shape: SharpNextToken, location_name: "NextToken"))
    ListRepositoryLinksInput.struct_class = Types::ListRepositoryLinksInput

    ListRepositoryLinksOutput.add_member(:repository_links, Shapes::ShapeRef.new(shape: RepositoryLinkList, required: true, location_name: "RepositoryLinks"))
    ListRepositoryLinksOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: SharpNextToken, location_name: "NextToken"))
    ListRepositoryLinksOutput.struct_class = Types::ListRepositoryLinksOutput

    ListRepositorySyncDefinitionsInput.add_member(:repository_link_id, Shapes::ShapeRef.new(shape: RepositoryLinkId, required: true, location_name: "RepositoryLinkId"))
    ListRepositorySyncDefinitionsInput.add_member(:sync_type, Shapes::ShapeRef.new(shape: SyncConfigurationType, required: true, location_name: "SyncType"))
    ListRepositorySyncDefinitionsInput.struct_class = Types::ListRepositorySyncDefinitionsInput

    ListRepositorySyncDefinitionsOutput.add_member(:repository_sync_definitions, Shapes::ShapeRef.new(shape: RepositorySyncDefinitionList, required: true, location_name: "RepositorySyncDefinitions"))
    ListRepositorySyncDefinitionsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: SharpNextToken, location_name: "NextToken"))
    ListRepositorySyncDefinitionsOutput.struct_class = Types::ListRepositorySyncDefinitionsOutput

    ListSyncConfigurationsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListSyncConfigurationsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: SharpNextToken, location_name: "NextToken"))
    ListSyncConfigurationsInput.add_member(:repository_link_id, Shapes::ShapeRef.new(shape: RepositoryLinkId, required: true, location_name: "RepositoryLinkId"))
    ListSyncConfigurationsInput.add_member(:sync_type, Shapes::ShapeRef.new(shape: SyncConfigurationType, required: true, location_name: "SyncType"))
    ListSyncConfigurationsInput.struct_class = Types::ListSyncConfigurationsInput

    ListSyncConfigurationsOutput.add_member(:sync_configurations, Shapes::ShapeRef.new(shape: SyncConfigurationList, required: true, location_name: "SyncConfigurations"))
    ListSyncConfigurationsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: SharpNextToken, location_name: "NextToken"))
    ListSyncConfigurationsOutput.struct_class = Types::ListSyncConfigurationsOutput

    ListTagsForResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceArn"))
    ListTagsForResourceInput.struct_class = Types::ListTagsForResourceInput

    ListTagsForResourceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceOutput.struct_class = Types::ListTagsForResourceOutput

    RepositoryLinkInfo.add_member(:connection_arn, Shapes::ShapeRef.new(shape: ConnectionArn, required: true, location_name: "ConnectionArn"))
    RepositoryLinkInfo.add_member(:encryption_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "EncryptionKeyArn"))
    RepositoryLinkInfo.add_member(:owner_id, Shapes::ShapeRef.new(shape: OwnerId, required: true, location_name: "OwnerId"))
    RepositoryLinkInfo.add_member(:provider_type, Shapes::ShapeRef.new(shape: ProviderType, required: true, location_name: "ProviderType"))
    RepositoryLinkInfo.add_member(:repository_link_arn, Shapes::ShapeRef.new(shape: RepositoryLinkArn, required: true, location_name: "RepositoryLinkArn"))
    RepositoryLinkInfo.add_member(:repository_link_id, Shapes::ShapeRef.new(shape: RepositoryLinkId, required: true, location_name: "RepositoryLinkId"))
    RepositoryLinkInfo.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "RepositoryName"))
    RepositoryLinkInfo.struct_class = Types::RepositoryLinkInfo

    RepositoryLinkList.member = Shapes::ShapeRef.new(shape: RepositoryLinkInfo)

    RepositorySyncAttempt.add_member(:started_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "StartedAt"))
    RepositorySyncAttempt.add_member(:status, Shapes::ShapeRef.new(shape: RepositorySyncStatus, required: true, location_name: "Status"))
    RepositorySyncAttempt.add_member(:events, Shapes::ShapeRef.new(shape: RepositorySyncEventList, required: true, location_name: "Events"))
    RepositorySyncAttempt.struct_class = Types::RepositorySyncAttempt

    RepositorySyncDefinition.add_member(:branch, Shapes::ShapeRef.new(shape: BranchName, required: true, location_name: "Branch"))
    RepositorySyncDefinition.add_member(:directory, Shapes::ShapeRef.new(shape: Directory, required: true, location_name: "Directory"))
    RepositorySyncDefinition.add_member(:parent, Shapes::ShapeRef.new(shape: Parent, required: true, location_name: "Parent"))
    RepositorySyncDefinition.add_member(:target, Shapes::ShapeRef.new(shape: Target, required: true, location_name: "Target"))
    RepositorySyncDefinition.struct_class = Types::RepositorySyncDefinition

    RepositorySyncDefinitionList.member = Shapes::ShapeRef.new(shape: RepositorySyncDefinition)

    RepositorySyncEvent.add_member(:event, Shapes::ShapeRef.new(shape: Event, required: true, location_name: "Event"))
    RepositorySyncEvent.add_member(:external_id, Shapes::ShapeRef.new(shape: ExternalId, location_name: "ExternalId"))
    RepositorySyncEvent.add_member(:time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "Time"))
    RepositorySyncEvent.add_member(:type, Shapes::ShapeRef.new(shape: Type, required: true, location_name: "Type"))
    RepositorySyncEvent.struct_class = Types::RepositorySyncEvent

    RepositorySyncEventList.member = Shapes::ShapeRef.new(shape: RepositorySyncEvent)

    ResourceAlreadyExistsException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceAlreadyExistsException.struct_class = Types::ResourceAlreadyExistsException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceSyncAttempt.add_member(:events, Shapes::ShapeRef.new(shape: ResourceSyncEventList, required: true, location_name: "Events"))
    ResourceSyncAttempt.add_member(:initial_revision, Shapes::ShapeRef.new(shape: Revision, required: true, location_name: "InitialRevision"))
    ResourceSyncAttempt.add_member(:started_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "StartedAt"))
    ResourceSyncAttempt.add_member(:status, Shapes::ShapeRef.new(shape: ResourceSyncStatus, required: true, location_name: "Status"))
    ResourceSyncAttempt.add_member(:target_revision, Shapes::ShapeRef.new(shape: Revision, required: true, location_name: "TargetRevision"))
    ResourceSyncAttempt.add_member(:target, Shapes::ShapeRef.new(shape: Target, required: true, location_name: "Target"))
    ResourceSyncAttempt.struct_class = Types::ResourceSyncAttempt

    ResourceSyncEvent.add_member(:event, Shapes::ShapeRef.new(shape: Event, required: true, location_name: "Event"))
    ResourceSyncEvent.add_member(:external_id, Shapes::ShapeRef.new(shape: ExternalId, location_name: "ExternalId"))
    ResourceSyncEvent.add_member(:time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "Time"))
    ResourceSyncEvent.add_member(:type, Shapes::ShapeRef.new(shape: Type, required: true, location_name: "Type"))
    ResourceSyncEvent.struct_class = Types::ResourceSyncEvent

    ResourceSyncEventList.member = Shapes::ShapeRef.new(shape: ResourceSyncEvent)

    ResourceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceUnavailableException.struct_class = Types::ResourceUnavailableException

    RetryLatestCommitFailedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    RetryLatestCommitFailedException.struct_class = Types::RetryLatestCommitFailedException

    Revision.add_member(:branch, Shapes::ShapeRef.new(shape: BranchName, required: true, location_name: "Branch"))
    Revision.add_member(:directory, Shapes::ShapeRef.new(shape: Directory, required: true, location_name: "Directory"))
    Revision.add_member(:owner_id, Shapes::ShapeRef.new(shape: OwnerId, required: true, location_name: "OwnerId"))
    Revision.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "RepositoryName"))
    Revision.add_member(:provider_type, Shapes::ShapeRef.new(shape: ProviderType, required: true, location_name: "ProviderType"))
    Revision.add_member(:sha, Shapes::ShapeRef.new(shape: SHA, required: true, location_name: "Sha"))
    Revision.struct_class = Types::Revision

    SecurityGroupIds.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

    SubnetIds.member = Shapes::ShapeRef.new(shape: SubnetId)

    SyncBlocker.add_member(:id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "Id"))
    SyncBlocker.add_member(:type, Shapes::ShapeRef.new(shape: BlockerType, required: true, location_name: "Type"))
    SyncBlocker.add_member(:status, Shapes::ShapeRef.new(shape: BlockerStatus, required: true, location_name: "Status"))
    SyncBlocker.add_member(:created_reason, Shapes::ShapeRef.new(shape: CreatedReason, required: true, location_name: "CreatedReason"))
    SyncBlocker.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedAt"))
    SyncBlocker.add_member(:contexts, Shapes::ShapeRef.new(shape: SyncBlockerContextList, location_name: "Contexts"))
    SyncBlocker.add_member(:resolved_reason, Shapes::ShapeRef.new(shape: ResolvedReason, location_name: "ResolvedReason"))
    SyncBlocker.add_member(:resolved_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ResolvedAt"))
    SyncBlocker.struct_class = Types::SyncBlocker

    SyncBlockerContext.add_member(:key, Shapes::ShapeRef.new(shape: SyncBlockerContextKey, required: true, location_name: "Key"))
    SyncBlockerContext.add_member(:value, Shapes::ShapeRef.new(shape: SyncBlockerContextValue, required: true, location_name: "Value"))
    SyncBlockerContext.struct_class = Types::SyncBlockerContext

    SyncBlockerContextList.member = Shapes::ShapeRef.new(shape: SyncBlockerContext)

    SyncBlockerDoesNotExistException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    SyncBlockerDoesNotExistException.struct_class = Types::SyncBlockerDoesNotExistException

    SyncBlockerSummary.add_member(:resource_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "ResourceName"))
    SyncBlockerSummary.add_member(:parent_resource_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "ParentResourceName"))
    SyncBlockerSummary.add_member(:latest_blockers, Shapes::ShapeRef.new(shape: LatestSyncBlockerList, location_name: "LatestBlockers"))
    SyncBlockerSummary.struct_class = Types::SyncBlockerSummary

    SyncConfiguration.add_member(:branch, Shapes::ShapeRef.new(shape: BranchName, required: true, location_name: "Branch"))
    SyncConfiguration.add_member(:config_file, Shapes::ShapeRef.new(shape: DeploymentFilePath, location_name: "ConfigFile"))
    SyncConfiguration.add_member(:owner_id, Shapes::ShapeRef.new(shape: OwnerId, required: true, location_name: "OwnerId"))
    SyncConfiguration.add_member(:provider_type, Shapes::ShapeRef.new(shape: ProviderType, required: true, location_name: "ProviderType"))
    SyncConfiguration.add_member(:repository_link_id, Shapes::ShapeRef.new(shape: RepositoryLinkId, required: true, location_name: "RepositoryLinkId"))
    SyncConfiguration.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "RepositoryName"))
    SyncConfiguration.add_member(:resource_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "ResourceName"))
    SyncConfiguration.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "RoleArn"))
    SyncConfiguration.add_member(:sync_type, Shapes::ShapeRef.new(shape: SyncConfigurationType, required: true, location_name: "SyncType"))
    SyncConfiguration.add_member(:publish_deployment_status, Shapes::ShapeRef.new(shape: PublishDeploymentStatus, location_name: "PublishDeploymentStatus"))
    SyncConfiguration.add_member(:trigger_resource_update_on, Shapes::ShapeRef.new(shape: TriggerResourceUpdateOn, location_name: "TriggerResourceUpdateOn"))
    SyncConfiguration.struct_class = Types::SyncConfiguration

    SyncConfigurationList.member = Shapes::ShapeRef.new(shape: SyncConfiguration)

    SyncConfigurationStillExistsException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    SyncConfigurationStillExistsException.struct_class = Types::SyncConfigurationStillExistsException

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceArn"))
    TagResourceInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceInput.struct_class = Types::TagResourceInput

    TagResourceOutput.struct_class = Types::TagResourceOutput

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UnsupportedOperationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    UnsupportedOperationException.struct_class = Types::UnsupportedOperationException

    UnsupportedProviderTypeException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    UnsupportedProviderTypeException.struct_class = Types::UnsupportedProviderTypeException

    UntagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceArn"))
    UntagResourceInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceInput.struct_class = Types::UntagResourceInput

    UntagResourceOutput.struct_class = Types::UntagResourceOutput

    UpdateHostInput.add_member(:host_arn, Shapes::ShapeRef.new(shape: HostArn, required: true, location_name: "HostArn"))
    UpdateHostInput.add_member(:provider_endpoint, Shapes::ShapeRef.new(shape: Url, location_name: "ProviderEndpoint"))
    UpdateHostInput.add_member(:vpc_configuration, Shapes::ShapeRef.new(shape: VpcConfiguration, location_name: "VpcConfiguration"))
    UpdateHostInput.struct_class = Types::UpdateHostInput

    UpdateHostOutput.struct_class = Types::UpdateHostOutput

    UpdateOutOfSyncException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    UpdateOutOfSyncException.struct_class = Types::UpdateOutOfSyncException

    UpdateRepositoryLinkInput.add_member(:connection_arn, Shapes::ShapeRef.new(shape: ConnectionArn, location_name: "ConnectionArn"))
    UpdateRepositoryLinkInput.add_member(:encryption_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "EncryptionKeyArn"))
    UpdateRepositoryLinkInput.add_member(:repository_link_id, Shapes::ShapeRef.new(shape: RepositoryLinkId, required: true, location_name: "RepositoryLinkId"))
    UpdateRepositoryLinkInput.struct_class = Types::UpdateRepositoryLinkInput

    UpdateRepositoryLinkOutput.add_member(:repository_link_info, Shapes::ShapeRef.new(shape: RepositoryLinkInfo, required: true, location_name: "RepositoryLinkInfo"))
    UpdateRepositoryLinkOutput.struct_class = Types::UpdateRepositoryLinkOutput

    UpdateSyncBlockerInput.add_member(:id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "Id"))
    UpdateSyncBlockerInput.add_member(:sync_type, Shapes::ShapeRef.new(shape: SyncConfigurationType, required: true, location_name: "SyncType"))
    UpdateSyncBlockerInput.add_member(:resource_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "ResourceName"))
    UpdateSyncBlockerInput.add_member(:resolved_reason, Shapes::ShapeRef.new(shape: ResolvedReason, required: true, location_name: "ResolvedReason"))
    UpdateSyncBlockerInput.struct_class = Types::UpdateSyncBlockerInput

    UpdateSyncBlockerOutput.add_member(:resource_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "ResourceName"))
    UpdateSyncBlockerOutput.add_member(:parent_resource_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "ParentResourceName"))
    UpdateSyncBlockerOutput.add_member(:sync_blocker, Shapes::ShapeRef.new(shape: SyncBlocker, required: true, location_name: "SyncBlocker"))
    UpdateSyncBlockerOutput.struct_class = Types::UpdateSyncBlockerOutput

    UpdateSyncConfigurationInput.add_member(:branch, Shapes::ShapeRef.new(shape: BranchName, location_name: "Branch"))
    UpdateSyncConfigurationInput.add_member(:config_file, Shapes::ShapeRef.new(shape: DeploymentFilePath, location_name: "ConfigFile"))
    UpdateSyncConfigurationInput.add_member(:repository_link_id, Shapes::ShapeRef.new(shape: RepositoryLinkId, location_name: "RepositoryLinkId"))
    UpdateSyncConfigurationInput.add_member(:resource_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "ResourceName"))
    UpdateSyncConfigurationInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "RoleArn"))
    UpdateSyncConfigurationInput.add_member(:sync_type, Shapes::ShapeRef.new(shape: SyncConfigurationType, required: true, location_name: "SyncType"))
    UpdateSyncConfigurationInput.add_member(:publish_deployment_status, Shapes::ShapeRef.new(shape: PublishDeploymentStatus, location_name: "PublishDeploymentStatus"))
    UpdateSyncConfigurationInput.add_member(:trigger_resource_update_on, Shapes::ShapeRef.new(shape: TriggerResourceUpdateOn, location_name: "TriggerResourceUpdateOn"))
    UpdateSyncConfigurationInput.struct_class = Types::UpdateSyncConfigurationInput

    UpdateSyncConfigurationOutput.add_member(:sync_configuration, Shapes::ShapeRef.new(shape: SyncConfiguration, required: true, location_name: "SyncConfiguration"))
    UpdateSyncConfigurationOutput.struct_class = Types::UpdateSyncConfigurationOutput

    VpcConfiguration.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, required: true, location_name: "VpcId"))
    VpcConfiguration.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIds, required: true, location_name: "SubnetIds"))
    VpcConfiguration.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIds, required: true, location_name: "SecurityGroupIds"))
    VpcConfiguration.add_member(:tls_certificate, Shapes::ShapeRef.new(shape: TlsCertificate, location_name: "TlsCertificate"))
    VpcConfiguration.struct_class = Types::VpcConfiguration


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2019-12-01"

      api.metadata = {
        "apiVersion" => "2019-12-01",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "codestar-connections",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "protocols" => ["json"],
        "serviceFullName" => "AWS CodeStar connections",
        "serviceId" => "CodeStar connections",
        "signatureVersion" => "v4",
        "signingName" => "codestar-connections",
        "targetPrefix" => "com.amazonaws.codestar.connections.CodeStar_connections_20191201",
        "uid" => "codestar-connections-2019-12-01",
      }

      api.add_operation(:create_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateConnection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateConnectionInput)
        o.output = Shapes::ShapeRef.new(shape: CreateConnectionOutput)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
      end)

      api.add_operation(:create_host, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateHost"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateHostInput)
        o.output = Shapes::ShapeRef.new(shape: CreateHostOutput)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:create_repository_link, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRepositoryLink"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateRepositoryLinkInput)
        o.output = Shapes::ShapeRef.new(shape: CreateRepositoryLinkOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_sync_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSyncConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateSyncConfigurationInput)
        o.output = Shapes::ShapeRef.new(shape: CreateSyncConfigurationOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConnection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteConnectionInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteConnectionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_host, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteHost"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteHostInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteHostOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
      end)

      api.add_operation(:delete_repository_link, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRepositoryLink"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteRepositoryLinkInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteRepositoryLinkOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: SyncConfigurationStillExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedProviderTypeException)
      end)

      api.add_operation(:delete_sync_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSyncConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteSyncConfigurationInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteSyncConfigurationOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConnection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetConnectionInput)
        o.output = Shapes::ShapeRef.new(shape: GetConnectionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
      end)

      api.add_operation(:get_host, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetHost"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetHostInput)
        o.output = Shapes::ShapeRef.new(shape: GetHostOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
      end)

      api.add_operation(:get_repository_link, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRepositoryLink"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetRepositoryLinkInput)
        o.output = Shapes::ShapeRef.new(shape: GetRepositoryLinkOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_repository_sync_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRepositorySyncStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetRepositorySyncStatusInput)
        o.output = Shapes::ShapeRef.new(shape: GetRepositorySyncStatusOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_resource_sync_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResourceSyncStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetResourceSyncStatusInput)
        o.output = Shapes::ShapeRef.new(shape: GetResourceSyncStatusOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_sync_blocker_summary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSyncBlockerSummary"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetSyncBlockerSummaryInput)
        o.output = Shapes::ShapeRef.new(shape: GetSyncBlockerSummaryOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_sync_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSyncConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetSyncConfigurationInput)
        o.output = Shapes::ShapeRef.new(shape: GetSyncConfigurationOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_connections, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListConnections"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListConnectionsInput)
        o.output = Shapes::ShapeRef.new(shape: ListConnectionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_hosts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListHosts"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListHostsInput)
        o.output = Shapes::ShapeRef.new(shape: ListHostsOutput)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_repository_links, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRepositoryLinks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListRepositoryLinksInput)
        o.output = Shapes::ShapeRef.new(shape: ListRepositoryLinksOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_repository_sync_definitions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRepositorySyncDefinitions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListRepositorySyncDefinitionsInput)
        o.output = Shapes::ShapeRef.new(shape: ListRepositorySyncDefinitionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_sync_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSyncConfigurations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListSyncConfigurationsInput)
        o.output = Shapes::ShapeRef.new(shape: ListSyncConfigurationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: TagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_host, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateHost"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateHostInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateHostOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
      end)

      api.add_operation(:update_repository_link, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRepositoryLink"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateRepositoryLinkInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateRepositoryLinkOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConditionalCheckFailedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UpdateOutOfSyncException)
      end)

      api.add_operation(:update_sync_blocker, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSyncBlocker"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateSyncBlockerInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateSyncBlockerOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: RetryLatestCommitFailedException)
        o.errors << Shapes::ShapeRef.new(shape: SyncBlockerDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_sync_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSyncConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateSyncConfigurationInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateSyncConfigurationOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UpdateOutOfSyncException)
      end)
    end

  end
end
