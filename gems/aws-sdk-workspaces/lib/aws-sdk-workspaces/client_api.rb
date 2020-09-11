# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::WorkSpaces
  # @api private
  module ClientApi

    include Seahorse::Model

    ARN = Shapes::StringShape.new(name: 'ARN')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccessPropertyValue = Shapes::StringShape.new(name: 'AccessPropertyValue')
    AccountModification = Shapes::StructureShape.new(name: 'AccountModification')
    AccountModificationList = Shapes::ListShape.new(name: 'AccountModificationList')
    Alias = Shapes::StringShape.new(name: 'Alias')
    Application = Shapes::StringShape.new(name: 'Application')
    ApplicationList = Shapes::ListShape.new(name: 'ApplicationList')
    AssociateConnectionAliasRequest = Shapes::StructureShape.new(name: 'AssociateConnectionAliasRequest')
    AssociateConnectionAliasResult = Shapes::StructureShape.new(name: 'AssociateConnectionAliasResult')
    AssociateIpGroupsRequest = Shapes::StructureShape.new(name: 'AssociateIpGroupsRequest')
    AssociateIpGroupsResult = Shapes::StructureShape.new(name: 'AssociateIpGroupsResult')
    AssociationStatus = Shapes::StringShape.new(name: 'AssociationStatus')
    AuthorizeIpRulesRequest = Shapes::StructureShape.new(name: 'AuthorizeIpRulesRequest')
    AuthorizeIpRulesResult = Shapes::StructureShape.new(name: 'AuthorizeIpRulesResult')
    AwsAccount = Shapes::StringShape.new(name: 'AwsAccount')
    BooleanObject = Shapes::BooleanShape.new(name: 'BooleanObject')
    BundleId = Shapes::StringShape.new(name: 'BundleId')
    BundleIdList = Shapes::ListShape.new(name: 'BundleIdList')
    BundleList = Shapes::ListShape.new(name: 'BundleList')
    BundleOwner = Shapes::StringShape.new(name: 'BundleOwner')
    ClientProperties = Shapes::StructureShape.new(name: 'ClientProperties')
    ClientPropertiesList = Shapes::ListShape.new(name: 'ClientPropertiesList')
    ClientPropertiesResult = Shapes::StructureShape.new(name: 'ClientPropertiesResult')
    Compute = Shapes::StringShape.new(name: 'Compute')
    ComputeType = Shapes::StructureShape.new(name: 'ComputeType')
    ComputerName = Shapes::StringShape.new(name: 'ComputerName')
    ConnectionAlias = Shapes::StructureShape.new(name: 'ConnectionAlias')
    ConnectionAliasAssociation = Shapes::StructureShape.new(name: 'ConnectionAliasAssociation')
    ConnectionAliasAssociationList = Shapes::ListShape.new(name: 'ConnectionAliasAssociationList')
    ConnectionAliasId = Shapes::StringShape.new(name: 'ConnectionAliasId')
    ConnectionAliasIdList = Shapes::ListShape.new(name: 'ConnectionAliasIdList')
    ConnectionAliasList = Shapes::ListShape.new(name: 'ConnectionAliasList')
    ConnectionAliasPermission = Shapes::StructureShape.new(name: 'ConnectionAliasPermission')
    ConnectionAliasPermissions = Shapes::ListShape.new(name: 'ConnectionAliasPermissions')
    ConnectionAliasState = Shapes::StringShape.new(name: 'ConnectionAliasState')
    ConnectionIdentifier = Shapes::StringShape.new(name: 'ConnectionIdentifier')
    ConnectionState = Shapes::StringShape.new(name: 'ConnectionState')
    ConnectionString = Shapes::StringShape.new(name: 'ConnectionString')
    CopyWorkspaceImageRequest = Shapes::StructureShape.new(name: 'CopyWorkspaceImageRequest')
    CopyWorkspaceImageResult = Shapes::StructureShape.new(name: 'CopyWorkspaceImageResult')
    CreateConnectionAliasRequest = Shapes::StructureShape.new(name: 'CreateConnectionAliasRequest')
    CreateConnectionAliasResult = Shapes::StructureShape.new(name: 'CreateConnectionAliasResult')
    CreateIpGroupRequest = Shapes::StructureShape.new(name: 'CreateIpGroupRequest')
    CreateIpGroupResult = Shapes::StructureShape.new(name: 'CreateIpGroupResult')
    CreateTagsRequest = Shapes::StructureShape.new(name: 'CreateTagsRequest')
    CreateTagsResult = Shapes::StructureShape.new(name: 'CreateTagsResult')
    CreateWorkspacesRequest = Shapes::StructureShape.new(name: 'CreateWorkspacesRequest')
    CreateWorkspacesResult = Shapes::StructureShape.new(name: 'CreateWorkspacesResult')
    DedicatedTenancyCidrRangeList = Shapes::ListShape.new(name: 'DedicatedTenancyCidrRangeList')
    DedicatedTenancyManagementCidrRange = Shapes::StringShape.new(name: 'DedicatedTenancyManagementCidrRange')
    DedicatedTenancyModificationStateEnum = Shapes::StringShape.new(name: 'DedicatedTenancyModificationStateEnum')
    DedicatedTenancySupportEnum = Shapes::StringShape.new(name: 'DedicatedTenancySupportEnum')
    DedicatedTenancySupportResultEnum = Shapes::StringShape.new(name: 'DedicatedTenancySupportResultEnum')
    DefaultOu = Shapes::StringShape.new(name: 'DefaultOu')
    DefaultWorkspaceCreationProperties = Shapes::StructureShape.new(name: 'DefaultWorkspaceCreationProperties')
    DeleteConnectionAliasRequest = Shapes::StructureShape.new(name: 'DeleteConnectionAliasRequest')
    DeleteConnectionAliasResult = Shapes::StructureShape.new(name: 'DeleteConnectionAliasResult')
    DeleteIpGroupRequest = Shapes::StructureShape.new(name: 'DeleteIpGroupRequest')
    DeleteIpGroupResult = Shapes::StructureShape.new(name: 'DeleteIpGroupResult')
    DeleteTagsRequest = Shapes::StructureShape.new(name: 'DeleteTagsRequest')
    DeleteTagsResult = Shapes::StructureShape.new(name: 'DeleteTagsResult')
    DeleteWorkspaceImageRequest = Shapes::StructureShape.new(name: 'DeleteWorkspaceImageRequest')
    DeleteWorkspaceImageResult = Shapes::StructureShape.new(name: 'DeleteWorkspaceImageResult')
    DeregisterWorkspaceDirectoryRequest = Shapes::StructureShape.new(name: 'DeregisterWorkspaceDirectoryRequest')
    DeregisterWorkspaceDirectoryResult = Shapes::StructureShape.new(name: 'DeregisterWorkspaceDirectoryResult')
    DescribeAccountModificationsRequest = Shapes::StructureShape.new(name: 'DescribeAccountModificationsRequest')
    DescribeAccountModificationsResult = Shapes::StructureShape.new(name: 'DescribeAccountModificationsResult')
    DescribeAccountRequest = Shapes::StructureShape.new(name: 'DescribeAccountRequest')
    DescribeAccountResult = Shapes::StructureShape.new(name: 'DescribeAccountResult')
    DescribeClientPropertiesRequest = Shapes::StructureShape.new(name: 'DescribeClientPropertiesRequest')
    DescribeClientPropertiesResult = Shapes::StructureShape.new(name: 'DescribeClientPropertiesResult')
    DescribeConnectionAliasPermissionsRequest = Shapes::StructureShape.new(name: 'DescribeConnectionAliasPermissionsRequest')
    DescribeConnectionAliasPermissionsResult = Shapes::StructureShape.new(name: 'DescribeConnectionAliasPermissionsResult')
    DescribeConnectionAliasesRequest = Shapes::StructureShape.new(name: 'DescribeConnectionAliasesRequest')
    DescribeConnectionAliasesResult = Shapes::StructureShape.new(name: 'DescribeConnectionAliasesResult')
    DescribeIpGroupsRequest = Shapes::StructureShape.new(name: 'DescribeIpGroupsRequest')
    DescribeIpGroupsResult = Shapes::StructureShape.new(name: 'DescribeIpGroupsResult')
    DescribeTagsRequest = Shapes::StructureShape.new(name: 'DescribeTagsRequest')
    DescribeTagsResult = Shapes::StructureShape.new(name: 'DescribeTagsResult')
    DescribeWorkspaceBundlesRequest = Shapes::StructureShape.new(name: 'DescribeWorkspaceBundlesRequest')
    DescribeWorkspaceBundlesResult = Shapes::StructureShape.new(name: 'DescribeWorkspaceBundlesResult')
    DescribeWorkspaceDirectoriesRequest = Shapes::StructureShape.new(name: 'DescribeWorkspaceDirectoriesRequest')
    DescribeWorkspaceDirectoriesResult = Shapes::StructureShape.new(name: 'DescribeWorkspaceDirectoriesResult')
    DescribeWorkspaceImagePermissionsRequest = Shapes::StructureShape.new(name: 'DescribeWorkspaceImagePermissionsRequest')
    DescribeWorkspaceImagePermissionsResult = Shapes::StructureShape.new(name: 'DescribeWorkspaceImagePermissionsResult')
    DescribeWorkspaceImagesRequest = Shapes::StructureShape.new(name: 'DescribeWorkspaceImagesRequest')
    DescribeWorkspaceImagesResult = Shapes::StructureShape.new(name: 'DescribeWorkspaceImagesResult')
    DescribeWorkspaceSnapshotsRequest = Shapes::StructureShape.new(name: 'DescribeWorkspaceSnapshotsRequest')
    DescribeWorkspaceSnapshotsResult = Shapes::StructureShape.new(name: 'DescribeWorkspaceSnapshotsResult')
    DescribeWorkspacesConnectionStatusRequest = Shapes::StructureShape.new(name: 'DescribeWorkspacesConnectionStatusRequest')
    DescribeWorkspacesConnectionStatusResult = Shapes::StructureShape.new(name: 'DescribeWorkspacesConnectionStatusResult')
    DescribeWorkspacesRequest = Shapes::StructureShape.new(name: 'DescribeWorkspacesRequest')
    DescribeWorkspacesResult = Shapes::StructureShape.new(name: 'DescribeWorkspacesResult')
    Description = Shapes::StringShape.new(name: 'Description')
    DirectoryId = Shapes::StringShape.new(name: 'DirectoryId')
    DirectoryIdList = Shapes::ListShape.new(name: 'DirectoryIdList')
    DirectoryList = Shapes::ListShape.new(name: 'DirectoryList')
    DirectoryName = Shapes::StringShape.new(name: 'DirectoryName')
    DisassociateConnectionAliasRequest = Shapes::StructureShape.new(name: 'DisassociateConnectionAliasRequest')
    DisassociateConnectionAliasResult = Shapes::StructureShape.new(name: 'DisassociateConnectionAliasResult')
    DisassociateIpGroupsRequest = Shapes::StructureShape.new(name: 'DisassociateIpGroupsRequest')
    DisassociateIpGroupsResult = Shapes::StructureShape.new(name: 'DisassociateIpGroupsResult')
    DnsIpAddresses = Shapes::ListShape.new(name: 'DnsIpAddresses')
    Ec2ImageId = Shapes::StringShape.new(name: 'Ec2ImageId')
    ErrorType = Shapes::StringShape.new(name: 'ErrorType')
    ExceptionMessage = Shapes::StringShape.new(name: 'ExceptionMessage')
    FailedCreateWorkspaceRequest = Shapes::StructureShape.new(name: 'FailedCreateWorkspaceRequest')
    FailedCreateWorkspaceRequests = Shapes::ListShape.new(name: 'FailedCreateWorkspaceRequests')
    FailedRebootWorkspaceRequests = Shapes::ListShape.new(name: 'FailedRebootWorkspaceRequests')
    FailedRebuildWorkspaceRequests = Shapes::ListShape.new(name: 'FailedRebuildWorkspaceRequests')
    FailedStartWorkspaceRequests = Shapes::ListShape.new(name: 'FailedStartWorkspaceRequests')
    FailedStopWorkspaceRequests = Shapes::ListShape.new(name: 'FailedStopWorkspaceRequests')
    FailedTerminateWorkspaceRequests = Shapes::ListShape.new(name: 'FailedTerminateWorkspaceRequests')
    FailedWorkspaceChangeRequest = Shapes::StructureShape.new(name: 'FailedWorkspaceChangeRequest')
    ImagePermission = Shapes::StructureShape.new(name: 'ImagePermission')
    ImagePermissions = Shapes::ListShape.new(name: 'ImagePermissions')
    ImageType = Shapes::StringShape.new(name: 'ImageType')
    ImportWorkspaceImageRequest = Shapes::StructureShape.new(name: 'ImportWorkspaceImageRequest')
    ImportWorkspaceImageResult = Shapes::StructureShape.new(name: 'ImportWorkspaceImageResult')
    InvalidParameterValuesException = Shapes::StructureShape.new(name: 'InvalidParameterValuesException')
    InvalidResourceStateException = Shapes::StructureShape.new(name: 'InvalidResourceStateException')
    IpAddress = Shapes::StringShape.new(name: 'IpAddress')
    IpGroupDesc = Shapes::StringShape.new(name: 'IpGroupDesc')
    IpGroupId = Shapes::StringShape.new(name: 'IpGroupId')
    IpGroupIdList = Shapes::ListShape.new(name: 'IpGroupIdList')
    IpGroupName = Shapes::StringShape.new(name: 'IpGroupName')
    IpRevokedRuleList = Shapes::ListShape.new(name: 'IpRevokedRuleList')
    IpRule = Shapes::StringShape.new(name: 'IpRule')
    IpRuleDesc = Shapes::StringShape.new(name: 'IpRuleDesc')
    IpRuleItem = Shapes::StructureShape.new(name: 'IpRuleItem')
    IpRuleList = Shapes::ListShape.new(name: 'IpRuleList')
    Limit = Shapes::IntegerShape.new(name: 'Limit')
    ListAvailableManagementCidrRangesRequest = Shapes::StructureShape.new(name: 'ListAvailableManagementCidrRangesRequest')
    ListAvailableManagementCidrRangesResult = Shapes::StructureShape.new(name: 'ListAvailableManagementCidrRangesResult')
    ManagementCidrRangeConstraint = Shapes::StringShape.new(name: 'ManagementCidrRangeConstraint')
    ManagementCidrRangeMaxResults = Shapes::IntegerShape.new(name: 'ManagementCidrRangeMaxResults')
    MigrateWorkspaceRequest = Shapes::StructureShape.new(name: 'MigrateWorkspaceRequest')
    MigrateWorkspaceResult = Shapes::StructureShape.new(name: 'MigrateWorkspaceResult')
    ModificationResourceEnum = Shapes::StringShape.new(name: 'ModificationResourceEnum')
    ModificationState = Shapes::StructureShape.new(name: 'ModificationState')
    ModificationStateEnum = Shapes::StringShape.new(name: 'ModificationStateEnum')
    ModificationStateList = Shapes::ListShape.new(name: 'ModificationStateList')
    ModifyAccountRequest = Shapes::StructureShape.new(name: 'ModifyAccountRequest')
    ModifyAccountResult = Shapes::StructureShape.new(name: 'ModifyAccountResult')
    ModifyClientPropertiesRequest = Shapes::StructureShape.new(name: 'ModifyClientPropertiesRequest')
    ModifyClientPropertiesResult = Shapes::StructureShape.new(name: 'ModifyClientPropertiesResult')
    ModifySelfservicePermissionsRequest = Shapes::StructureShape.new(name: 'ModifySelfservicePermissionsRequest')
    ModifySelfservicePermissionsResult = Shapes::StructureShape.new(name: 'ModifySelfservicePermissionsResult')
    ModifyWorkspaceAccessPropertiesRequest = Shapes::StructureShape.new(name: 'ModifyWorkspaceAccessPropertiesRequest')
    ModifyWorkspaceAccessPropertiesResult = Shapes::StructureShape.new(name: 'ModifyWorkspaceAccessPropertiesResult')
    ModifyWorkspaceCreationPropertiesRequest = Shapes::StructureShape.new(name: 'ModifyWorkspaceCreationPropertiesRequest')
    ModifyWorkspaceCreationPropertiesResult = Shapes::StructureShape.new(name: 'ModifyWorkspaceCreationPropertiesResult')
    ModifyWorkspacePropertiesRequest = Shapes::StructureShape.new(name: 'ModifyWorkspacePropertiesRequest')
    ModifyWorkspacePropertiesResult = Shapes::StructureShape.new(name: 'ModifyWorkspacePropertiesResult')
    ModifyWorkspaceStateRequest = Shapes::StructureShape.new(name: 'ModifyWorkspaceStateRequest')
    ModifyWorkspaceStateResult = Shapes::StructureShape.new(name: 'ModifyWorkspaceStateResult')
    NonEmptyString = Shapes::StringShape.new(name: 'NonEmptyString')
    OperatingSystem = Shapes::StructureShape.new(name: 'OperatingSystem')
    OperatingSystemType = Shapes::StringShape.new(name: 'OperatingSystemType')
    OperationInProgressException = Shapes::StructureShape.new(name: 'OperationInProgressException')
    OperationNotSupportedException = Shapes::StructureShape.new(name: 'OperationNotSupportedException')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    RebootRequest = Shapes::StructureShape.new(name: 'RebootRequest')
    RebootWorkspaceRequests = Shapes::ListShape.new(name: 'RebootWorkspaceRequests')
    RebootWorkspacesRequest = Shapes::StructureShape.new(name: 'RebootWorkspacesRequest')
    RebootWorkspacesResult = Shapes::StructureShape.new(name: 'RebootWorkspacesResult')
    RebuildRequest = Shapes::StructureShape.new(name: 'RebuildRequest')
    RebuildWorkspaceRequests = Shapes::ListShape.new(name: 'RebuildWorkspaceRequests')
    RebuildWorkspacesRequest = Shapes::StructureShape.new(name: 'RebuildWorkspacesRequest')
    RebuildWorkspacesResult = Shapes::StructureShape.new(name: 'RebuildWorkspacesResult')
    ReconnectEnum = Shapes::StringShape.new(name: 'ReconnectEnum')
    Region = Shapes::StringShape.new(name: 'Region')
    RegisterWorkspaceDirectoryRequest = Shapes::StructureShape.new(name: 'RegisterWorkspaceDirectoryRequest')
    RegisterWorkspaceDirectoryResult = Shapes::StructureShape.new(name: 'RegisterWorkspaceDirectoryResult')
    RegistrationCode = Shapes::StringShape.new(name: 'RegistrationCode')
    ResourceAlreadyExistsException = Shapes::StructureShape.new(name: 'ResourceAlreadyExistsException')
    ResourceAssociatedException = Shapes::StructureShape.new(name: 'ResourceAssociatedException')
    ResourceCreationFailedException = Shapes::StructureShape.new(name: 'ResourceCreationFailedException')
    ResourceIdList = Shapes::ListShape.new(name: 'ResourceIdList')
    ResourceLimitExceededException = Shapes::StructureShape.new(name: 'ResourceLimitExceededException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceUnavailableException = Shapes::StructureShape.new(name: 'ResourceUnavailableException')
    RestoreWorkspaceRequest = Shapes::StructureShape.new(name: 'RestoreWorkspaceRequest')
    RestoreWorkspaceResult = Shapes::StructureShape.new(name: 'RestoreWorkspaceResult')
    RevokeIpRulesRequest = Shapes::StructureShape.new(name: 'RevokeIpRulesRequest')
    RevokeIpRulesResult = Shapes::StructureShape.new(name: 'RevokeIpRulesResult')
    RootStorage = Shapes::StructureShape.new(name: 'RootStorage')
    RootVolumeSizeGib = Shapes::IntegerShape.new(name: 'RootVolumeSizeGib')
    RunningMode = Shapes::StringShape.new(name: 'RunningMode')
    RunningModeAutoStopTimeoutInMinutes = Shapes::IntegerShape.new(name: 'RunningModeAutoStopTimeoutInMinutes')
    SecurityGroupId = Shapes::StringShape.new(name: 'SecurityGroupId')
    SelfservicePermissions = Shapes::StructureShape.new(name: 'SelfservicePermissions')
    Snapshot = Shapes::StructureShape.new(name: 'Snapshot')
    SnapshotList = Shapes::ListShape.new(name: 'SnapshotList')
    StartRequest = Shapes::StructureShape.new(name: 'StartRequest')
    StartWorkspaceRequests = Shapes::ListShape.new(name: 'StartWorkspaceRequests')
    StartWorkspacesRequest = Shapes::StructureShape.new(name: 'StartWorkspacesRequest')
    StartWorkspacesResult = Shapes::StructureShape.new(name: 'StartWorkspacesResult')
    StopRequest = Shapes::StructureShape.new(name: 'StopRequest')
    StopWorkspaceRequests = Shapes::ListShape.new(name: 'StopWorkspaceRequests')
    StopWorkspacesRequest = Shapes::StructureShape.new(name: 'StopWorkspacesRequest')
    StopWorkspacesResult = Shapes::StructureShape.new(name: 'StopWorkspacesResult')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    SubnetIds = Shapes::ListShape.new(name: 'SubnetIds')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TargetWorkspaceState = Shapes::StringShape.new(name: 'TargetWorkspaceState')
    Tenancy = Shapes::StringShape.new(name: 'Tenancy')
    TerminateRequest = Shapes::StructureShape.new(name: 'TerminateRequest')
    TerminateWorkspaceRequests = Shapes::ListShape.new(name: 'TerminateWorkspaceRequests')
    TerminateWorkspacesRequest = Shapes::StructureShape.new(name: 'TerminateWorkspacesRequest')
    TerminateWorkspacesResult = Shapes::StructureShape.new(name: 'TerminateWorkspacesResult')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UnsupportedNetworkConfigurationException = Shapes::StructureShape.new(name: 'UnsupportedNetworkConfigurationException')
    UnsupportedWorkspaceConfigurationException = Shapes::StructureShape.new(name: 'UnsupportedWorkspaceConfigurationException')
    UpdateConnectionAliasPermissionRequest = Shapes::StructureShape.new(name: 'UpdateConnectionAliasPermissionRequest')
    UpdateConnectionAliasPermissionResult = Shapes::StructureShape.new(name: 'UpdateConnectionAliasPermissionResult')
    UpdateRulesOfIpGroupRequest = Shapes::StructureShape.new(name: 'UpdateRulesOfIpGroupRequest')
    UpdateRulesOfIpGroupResult = Shapes::StructureShape.new(name: 'UpdateRulesOfIpGroupResult')
    UpdateWorkspaceImagePermissionRequest = Shapes::StructureShape.new(name: 'UpdateWorkspaceImagePermissionRequest')
    UpdateWorkspaceImagePermissionResult = Shapes::StructureShape.new(name: 'UpdateWorkspaceImagePermissionResult')
    UserName = Shapes::StringShape.new(name: 'UserName')
    UserStorage = Shapes::StructureShape.new(name: 'UserStorage')
    UserVolumeSizeGib = Shapes::IntegerShape.new(name: 'UserVolumeSizeGib')
    VolumeEncryptionKey = Shapes::StringShape.new(name: 'VolumeEncryptionKey')
    Workspace = Shapes::StructureShape.new(name: 'Workspace')
    WorkspaceAccessProperties = Shapes::StructureShape.new(name: 'WorkspaceAccessProperties')
    WorkspaceBundle = Shapes::StructureShape.new(name: 'WorkspaceBundle')
    WorkspaceConnectionStatus = Shapes::StructureShape.new(name: 'WorkspaceConnectionStatus')
    WorkspaceConnectionStatusList = Shapes::ListShape.new(name: 'WorkspaceConnectionStatusList')
    WorkspaceCreationProperties = Shapes::StructureShape.new(name: 'WorkspaceCreationProperties')
    WorkspaceDirectory = Shapes::StructureShape.new(name: 'WorkspaceDirectory')
    WorkspaceDirectoryState = Shapes::StringShape.new(name: 'WorkspaceDirectoryState')
    WorkspaceDirectoryType = Shapes::StringShape.new(name: 'WorkspaceDirectoryType')
    WorkspaceErrorCode = Shapes::StringShape.new(name: 'WorkspaceErrorCode')
    WorkspaceId = Shapes::StringShape.new(name: 'WorkspaceId')
    WorkspaceIdList = Shapes::ListShape.new(name: 'WorkspaceIdList')
    WorkspaceImage = Shapes::StructureShape.new(name: 'WorkspaceImage')
    WorkspaceImageDescription = Shapes::StringShape.new(name: 'WorkspaceImageDescription')
    WorkspaceImageErrorCode = Shapes::StringShape.new(name: 'WorkspaceImageErrorCode')
    WorkspaceImageId = Shapes::StringShape.new(name: 'WorkspaceImageId')
    WorkspaceImageIdList = Shapes::ListShape.new(name: 'WorkspaceImageIdList')
    WorkspaceImageIngestionProcess = Shapes::StringShape.new(name: 'WorkspaceImageIngestionProcess')
    WorkspaceImageList = Shapes::ListShape.new(name: 'WorkspaceImageList')
    WorkspaceImageName = Shapes::StringShape.new(name: 'WorkspaceImageName')
    WorkspaceImageRequiredTenancy = Shapes::StringShape.new(name: 'WorkspaceImageRequiredTenancy')
    WorkspaceImageState = Shapes::StringShape.new(name: 'WorkspaceImageState')
    WorkspaceList = Shapes::ListShape.new(name: 'WorkspaceList')
    WorkspaceProperties = Shapes::StructureShape.new(name: 'WorkspaceProperties')
    WorkspaceRequest = Shapes::StructureShape.new(name: 'WorkspaceRequest')
    WorkspaceRequestList = Shapes::ListShape.new(name: 'WorkspaceRequestList')
    WorkspaceState = Shapes::StringShape.new(name: 'WorkspaceState')
    WorkspacesDefaultRoleNotFoundException = Shapes::StructureShape.new(name: 'WorkspacesDefaultRoleNotFoundException')
    WorkspacesIpGroup = Shapes::StructureShape.new(name: 'WorkspacesIpGroup')
    WorkspacesIpGroupsList = Shapes::ListShape.new(name: 'WorkspacesIpGroupsList')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccountModification.add_member(:modification_state, Shapes::ShapeRef.new(shape: DedicatedTenancyModificationStateEnum, location_name: "ModificationState"))
    AccountModification.add_member(:dedicated_tenancy_support, Shapes::ShapeRef.new(shape: DedicatedTenancySupportResultEnum, location_name: "DedicatedTenancySupport"))
    AccountModification.add_member(:dedicated_tenancy_management_cidr_range, Shapes::ShapeRef.new(shape: DedicatedTenancyManagementCidrRange, location_name: "DedicatedTenancyManagementCidrRange"))
    AccountModification.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartTime"))
    AccountModification.add_member(:error_code, Shapes::ShapeRef.new(shape: WorkspaceErrorCode, location_name: "ErrorCode"))
    AccountModification.add_member(:error_message, Shapes::ShapeRef.new(shape: Description, location_name: "ErrorMessage"))
    AccountModification.struct_class = Types::AccountModification

    AccountModificationList.member = Shapes::ShapeRef.new(shape: AccountModification)

    ApplicationList.member = Shapes::ShapeRef.new(shape: Application)

    AssociateConnectionAliasRequest.add_member(:alias_id, Shapes::ShapeRef.new(shape: ConnectionAliasId, required: true, location_name: "AliasId"))
    AssociateConnectionAliasRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "ResourceId"))
    AssociateConnectionAliasRequest.struct_class = Types::AssociateConnectionAliasRequest

    AssociateConnectionAliasResult.add_member(:connection_identifier, Shapes::ShapeRef.new(shape: ConnectionIdentifier, location_name: "ConnectionIdentifier"))
    AssociateConnectionAliasResult.struct_class = Types::AssociateConnectionAliasResult

    AssociateIpGroupsRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location_name: "DirectoryId"))
    AssociateIpGroupsRequest.add_member(:group_ids, Shapes::ShapeRef.new(shape: IpGroupIdList, required: true, location_name: "GroupIds"))
    AssociateIpGroupsRequest.struct_class = Types::AssociateIpGroupsRequest

    AssociateIpGroupsResult.struct_class = Types::AssociateIpGroupsResult

    AuthorizeIpRulesRequest.add_member(:group_id, Shapes::ShapeRef.new(shape: IpGroupId, required: true, location_name: "GroupId"))
    AuthorizeIpRulesRequest.add_member(:user_rules, Shapes::ShapeRef.new(shape: IpRuleList, required: true, location_name: "UserRules"))
    AuthorizeIpRulesRequest.struct_class = Types::AuthorizeIpRulesRequest

    AuthorizeIpRulesResult.struct_class = Types::AuthorizeIpRulesResult

    BundleIdList.member = Shapes::ShapeRef.new(shape: BundleId)

    BundleList.member = Shapes::ShapeRef.new(shape: WorkspaceBundle)

    ClientProperties.add_member(:reconnect_enabled, Shapes::ShapeRef.new(shape: ReconnectEnum, location_name: "ReconnectEnabled"))
    ClientProperties.struct_class = Types::ClientProperties

    ClientPropertiesList.member = Shapes::ShapeRef.new(shape: ClientPropertiesResult)

    ClientPropertiesResult.add_member(:resource_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ResourceId"))
    ClientPropertiesResult.add_member(:client_properties, Shapes::ShapeRef.new(shape: ClientProperties, location_name: "ClientProperties"))
    ClientPropertiesResult.struct_class = Types::ClientPropertiesResult

    ComputeType.add_member(:name, Shapes::ShapeRef.new(shape: Compute, location_name: "Name"))
    ComputeType.struct_class = Types::ComputeType

    ConnectionAlias.add_member(:connection_string, Shapes::ShapeRef.new(shape: ConnectionString, location_name: "ConnectionString"))
    ConnectionAlias.add_member(:alias_id, Shapes::ShapeRef.new(shape: ConnectionAliasId, location_name: "AliasId"))
    ConnectionAlias.add_member(:state, Shapes::ShapeRef.new(shape: ConnectionAliasState, location_name: "State"))
    ConnectionAlias.add_member(:owner_account_id, Shapes::ShapeRef.new(shape: AwsAccount, location_name: "OwnerAccountId"))
    ConnectionAlias.add_member(:associations, Shapes::ShapeRef.new(shape: ConnectionAliasAssociationList, location_name: "Associations"))
    ConnectionAlias.struct_class = Types::ConnectionAlias

    ConnectionAliasAssociation.add_member(:association_status, Shapes::ShapeRef.new(shape: AssociationStatus, location_name: "AssociationStatus"))
    ConnectionAliasAssociation.add_member(:associated_account_id, Shapes::ShapeRef.new(shape: AwsAccount, location_name: "AssociatedAccountId"))
    ConnectionAliasAssociation.add_member(:resource_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ResourceId"))
    ConnectionAliasAssociation.add_member(:connection_identifier, Shapes::ShapeRef.new(shape: ConnectionIdentifier, location_name: "ConnectionIdentifier"))
    ConnectionAliasAssociation.struct_class = Types::ConnectionAliasAssociation

    ConnectionAliasAssociationList.member = Shapes::ShapeRef.new(shape: ConnectionAliasAssociation)

    ConnectionAliasIdList.member = Shapes::ShapeRef.new(shape: ConnectionAliasId)

    ConnectionAliasList.member = Shapes::ShapeRef.new(shape: ConnectionAlias)

    ConnectionAliasPermission.add_member(:shared_account_id, Shapes::ShapeRef.new(shape: AwsAccount, required: true, location_name: "SharedAccountId"))
    ConnectionAliasPermission.add_member(:allow_association, Shapes::ShapeRef.new(shape: BooleanObject, required: true, location_name: "AllowAssociation"))
    ConnectionAliasPermission.struct_class = Types::ConnectionAliasPermission

    ConnectionAliasPermissions.member = Shapes::ShapeRef.new(shape: ConnectionAliasPermission)

    CopyWorkspaceImageRequest.add_member(:name, Shapes::ShapeRef.new(shape: WorkspaceImageName, required: true, location_name: "Name"))
    CopyWorkspaceImageRequest.add_member(:description, Shapes::ShapeRef.new(shape: WorkspaceImageDescription, location_name: "Description"))
    CopyWorkspaceImageRequest.add_member(:source_image_id, Shapes::ShapeRef.new(shape: WorkspaceImageId, required: true, location_name: "SourceImageId"))
    CopyWorkspaceImageRequest.add_member(:source_region, Shapes::ShapeRef.new(shape: Region, required: true, location_name: "SourceRegion"))
    CopyWorkspaceImageRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CopyWorkspaceImageRequest.struct_class = Types::CopyWorkspaceImageRequest

    CopyWorkspaceImageResult.add_member(:image_id, Shapes::ShapeRef.new(shape: WorkspaceImageId, location_name: "ImageId"))
    CopyWorkspaceImageResult.struct_class = Types::CopyWorkspaceImageResult

    CreateConnectionAliasRequest.add_member(:connection_string, Shapes::ShapeRef.new(shape: ConnectionString, required: true, location_name: "ConnectionString"))
    CreateConnectionAliasRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateConnectionAliasRequest.struct_class = Types::CreateConnectionAliasRequest

    CreateConnectionAliasResult.add_member(:alias_id, Shapes::ShapeRef.new(shape: ConnectionAliasId, location_name: "AliasId"))
    CreateConnectionAliasResult.struct_class = Types::CreateConnectionAliasResult

    CreateIpGroupRequest.add_member(:group_name, Shapes::ShapeRef.new(shape: IpGroupName, required: true, location_name: "GroupName"))
    CreateIpGroupRequest.add_member(:group_desc, Shapes::ShapeRef.new(shape: IpGroupDesc, location_name: "GroupDesc"))
    CreateIpGroupRequest.add_member(:user_rules, Shapes::ShapeRef.new(shape: IpRuleList, location_name: "UserRules"))
    CreateIpGroupRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateIpGroupRequest.struct_class = Types::CreateIpGroupRequest

    CreateIpGroupResult.add_member(:group_id, Shapes::ShapeRef.new(shape: IpGroupId, location_name: "GroupId"))
    CreateIpGroupResult.struct_class = Types::CreateIpGroupResult

    CreateTagsRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "ResourceId"))
    CreateTagsRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    CreateTagsRequest.struct_class = Types::CreateTagsRequest

    CreateTagsResult.struct_class = Types::CreateTagsResult

    CreateWorkspacesRequest.add_member(:workspaces, Shapes::ShapeRef.new(shape: WorkspaceRequestList, required: true, location_name: "Workspaces"))
    CreateWorkspacesRequest.struct_class = Types::CreateWorkspacesRequest

    CreateWorkspacesResult.add_member(:failed_requests, Shapes::ShapeRef.new(shape: FailedCreateWorkspaceRequests, location_name: "FailedRequests"))
    CreateWorkspacesResult.add_member(:pending_requests, Shapes::ShapeRef.new(shape: WorkspaceList, location_name: "PendingRequests"))
    CreateWorkspacesResult.struct_class = Types::CreateWorkspacesResult

    DedicatedTenancyCidrRangeList.member = Shapes::ShapeRef.new(shape: DedicatedTenancyManagementCidrRange)

    DefaultWorkspaceCreationProperties.add_member(:enable_work_docs, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "EnableWorkDocs"))
    DefaultWorkspaceCreationProperties.add_member(:enable_internet_access, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "EnableInternetAccess"))
    DefaultWorkspaceCreationProperties.add_member(:default_ou, Shapes::ShapeRef.new(shape: DefaultOu, location_name: "DefaultOu"))
    DefaultWorkspaceCreationProperties.add_member(:custom_security_group_id, Shapes::ShapeRef.new(shape: SecurityGroupId, location_name: "CustomSecurityGroupId"))
    DefaultWorkspaceCreationProperties.add_member(:user_enabled_as_local_administrator, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "UserEnabledAsLocalAdministrator"))
    DefaultWorkspaceCreationProperties.add_member(:enable_maintenance_mode, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "EnableMaintenanceMode"))
    DefaultWorkspaceCreationProperties.struct_class = Types::DefaultWorkspaceCreationProperties

    DeleteConnectionAliasRequest.add_member(:alias_id, Shapes::ShapeRef.new(shape: ConnectionAliasId, required: true, location_name: "AliasId"))
    DeleteConnectionAliasRequest.struct_class = Types::DeleteConnectionAliasRequest

    DeleteConnectionAliasResult.struct_class = Types::DeleteConnectionAliasResult

    DeleteIpGroupRequest.add_member(:group_id, Shapes::ShapeRef.new(shape: IpGroupId, required: true, location_name: "GroupId"))
    DeleteIpGroupRequest.struct_class = Types::DeleteIpGroupRequest

    DeleteIpGroupResult.struct_class = Types::DeleteIpGroupResult

    DeleteTagsRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "ResourceId"))
    DeleteTagsRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    DeleteTagsRequest.struct_class = Types::DeleteTagsRequest

    DeleteTagsResult.struct_class = Types::DeleteTagsResult

    DeleteWorkspaceImageRequest.add_member(:image_id, Shapes::ShapeRef.new(shape: WorkspaceImageId, required: true, location_name: "ImageId"))
    DeleteWorkspaceImageRequest.struct_class = Types::DeleteWorkspaceImageRequest

    DeleteWorkspaceImageResult.struct_class = Types::DeleteWorkspaceImageResult

    DeregisterWorkspaceDirectoryRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location_name: "DirectoryId"))
    DeregisterWorkspaceDirectoryRequest.struct_class = Types::DeregisterWorkspaceDirectoryRequest

    DeregisterWorkspaceDirectoryResult.struct_class = Types::DeregisterWorkspaceDirectoryResult

    DescribeAccountModificationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    DescribeAccountModificationsRequest.struct_class = Types::DescribeAccountModificationsRequest

    DescribeAccountModificationsResult.add_member(:account_modifications, Shapes::ShapeRef.new(shape: AccountModificationList, location_name: "AccountModifications"))
    DescribeAccountModificationsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    DescribeAccountModificationsResult.struct_class = Types::DescribeAccountModificationsResult

    DescribeAccountRequest.struct_class = Types::DescribeAccountRequest

    DescribeAccountResult.add_member(:dedicated_tenancy_support, Shapes::ShapeRef.new(shape: DedicatedTenancySupportResultEnum, location_name: "DedicatedTenancySupport"))
    DescribeAccountResult.add_member(:dedicated_tenancy_management_cidr_range, Shapes::ShapeRef.new(shape: DedicatedTenancyManagementCidrRange, location_name: "DedicatedTenancyManagementCidrRange"))
    DescribeAccountResult.struct_class = Types::DescribeAccountResult

    DescribeClientPropertiesRequest.add_member(:resource_ids, Shapes::ShapeRef.new(shape: ResourceIdList, required: true, location_name: "ResourceIds"))
    DescribeClientPropertiesRequest.struct_class = Types::DescribeClientPropertiesRequest

    DescribeClientPropertiesResult.add_member(:client_properties_list, Shapes::ShapeRef.new(shape: ClientPropertiesList, location_name: "ClientPropertiesList"))
    DescribeClientPropertiesResult.struct_class = Types::DescribeClientPropertiesResult

    DescribeConnectionAliasPermissionsRequest.add_member(:alias_id, Shapes::ShapeRef.new(shape: ConnectionAliasId, required: true, location_name: "AliasId"))
    DescribeConnectionAliasPermissionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    DescribeConnectionAliasPermissionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Limit, location_name: "MaxResults"))
    DescribeConnectionAliasPermissionsRequest.struct_class = Types::DescribeConnectionAliasPermissionsRequest

    DescribeConnectionAliasPermissionsResult.add_member(:alias_id, Shapes::ShapeRef.new(shape: ConnectionAliasId, location_name: "AliasId"))
    DescribeConnectionAliasPermissionsResult.add_member(:connection_alias_permissions, Shapes::ShapeRef.new(shape: ConnectionAliasPermissions, location_name: "ConnectionAliasPermissions"))
    DescribeConnectionAliasPermissionsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    DescribeConnectionAliasPermissionsResult.struct_class = Types::DescribeConnectionAliasPermissionsResult

    DescribeConnectionAliasesRequest.add_member(:alias_ids, Shapes::ShapeRef.new(shape: ConnectionAliasIdList, location_name: "AliasIds"))
    DescribeConnectionAliasesRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ResourceId"))
    DescribeConnectionAliasesRequest.add_member(:limit, Shapes::ShapeRef.new(shape: Limit, location_name: "Limit"))
    DescribeConnectionAliasesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    DescribeConnectionAliasesRequest.struct_class = Types::DescribeConnectionAliasesRequest

    DescribeConnectionAliasesResult.add_member(:connection_aliases, Shapes::ShapeRef.new(shape: ConnectionAliasList, location_name: "ConnectionAliases"))
    DescribeConnectionAliasesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    DescribeConnectionAliasesResult.struct_class = Types::DescribeConnectionAliasesResult

    DescribeIpGroupsRequest.add_member(:group_ids, Shapes::ShapeRef.new(shape: IpGroupIdList, location_name: "GroupIds"))
    DescribeIpGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    DescribeIpGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Limit, location_name: "MaxResults"))
    DescribeIpGroupsRequest.struct_class = Types::DescribeIpGroupsRequest

    DescribeIpGroupsResult.add_member(:result, Shapes::ShapeRef.new(shape: WorkspacesIpGroupsList, location_name: "Result"))
    DescribeIpGroupsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    DescribeIpGroupsResult.struct_class = Types::DescribeIpGroupsResult

    DescribeTagsRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "ResourceId"))
    DescribeTagsRequest.struct_class = Types::DescribeTagsRequest

    DescribeTagsResult.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, location_name: "TagList"))
    DescribeTagsResult.struct_class = Types::DescribeTagsResult

    DescribeWorkspaceBundlesRequest.add_member(:bundle_ids, Shapes::ShapeRef.new(shape: BundleIdList, location_name: "BundleIds"))
    DescribeWorkspaceBundlesRequest.add_member(:owner, Shapes::ShapeRef.new(shape: BundleOwner, location_name: "Owner"))
    DescribeWorkspaceBundlesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    DescribeWorkspaceBundlesRequest.struct_class = Types::DescribeWorkspaceBundlesRequest

    DescribeWorkspaceBundlesResult.add_member(:bundles, Shapes::ShapeRef.new(shape: BundleList, location_name: "Bundles"))
    DescribeWorkspaceBundlesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    DescribeWorkspaceBundlesResult.struct_class = Types::DescribeWorkspaceBundlesResult

    DescribeWorkspaceDirectoriesRequest.add_member(:directory_ids, Shapes::ShapeRef.new(shape: DirectoryIdList, location_name: "DirectoryIds"))
    DescribeWorkspaceDirectoriesRequest.add_member(:limit, Shapes::ShapeRef.new(shape: Limit, location_name: "Limit"))
    DescribeWorkspaceDirectoriesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    DescribeWorkspaceDirectoriesRequest.struct_class = Types::DescribeWorkspaceDirectoriesRequest

    DescribeWorkspaceDirectoriesResult.add_member(:directories, Shapes::ShapeRef.new(shape: DirectoryList, location_name: "Directories"))
    DescribeWorkspaceDirectoriesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    DescribeWorkspaceDirectoriesResult.struct_class = Types::DescribeWorkspaceDirectoriesResult

    DescribeWorkspaceImagePermissionsRequest.add_member(:image_id, Shapes::ShapeRef.new(shape: WorkspaceImageId, required: true, location_name: "ImageId"))
    DescribeWorkspaceImagePermissionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    DescribeWorkspaceImagePermissionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Limit, location_name: "MaxResults"))
    DescribeWorkspaceImagePermissionsRequest.struct_class = Types::DescribeWorkspaceImagePermissionsRequest

    DescribeWorkspaceImagePermissionsResult.add_member(:image_id, Shapes::ShapeRef.new(shape: WorkspaceImageId, location_name: "ImageId"))
    DescribeWorkspaceImagePermissionsResult.add_member(:image_permissions, Shapes::ShapeRef.new(shape: ImagePermissions, location_name: "ImagePermissions"))
    DescribeWorkspaceImagePermissionsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    DescribeWorkspaceImagePermissionsResult.struct_class = Types::DescribeWorkspaceImagePermissionsResult

    DescribeWorkspaceImagesRequest.add_member(:image_ids, Shapes::ShapeRef.new(shape: WorkspaceImageIdList, location_name: "ImageIds"))
    DescribeWorkspaceImagesRequest.add_member(:image_type, Shapes::ShapeRef.new(shape: ImageType, location_name: "ImageType"))
    DescribeWorkspaceImagesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    DescribeWorkspaceImagesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Limit, location_name: "MaxResults"))
    DescribeWorkspaceImagesRequest.struct_class = Types::DescribeWorkspaceImagesRequest

    DescribeWorkspaceImagesResult.add_member(:images, Shapes::ShapeRef.new(shape: WorkspaceImageList, location_name: "Images"))
    DescribeWorkspaceImagesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    DescribeWorkspaceImagesResult.struct_class = Types::DescribeWorkspaceImagesResult

    DescribeWorkspaceSnapshotsRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location_name: "WorkspaceId"))
    DescribeWorkspaceSnapshotsRequest.struct_class = Types::DescribeWorkspaceSnapshotsRequest

    DescribeWorkspaceSnapshotsResult.add_member(:rebuild_snapshots, Shapes::ShapeRef.new(shape: SnapshotList, location_name: "RebuildSnapshots"))
    DescribeWorkspaceSnapshotsResult.add_member(:restore_snapshots, Shapes::ShapeRef.new(shape: SnapshotList, location_name: "RestoreSnapshots"))
    DescribeWorkspaceSnapshotsResult.struct_class = Types::DescribeWorkspaceSnapshotsResult

    DescribeWorkspacesConnectionStatusRequest.add_member(:workspace_ids, Shapes::ShapeRef.new(shape: WorkspaceIdList, location_name: "WorkspaceIds"))
    DescribeWorkspacesConnectionStatusRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    DescribeWorkspacesConnectionStatusRequest.struct_class = Types::DescribeWorkspacesConnectionStatusRequest

    DescribeWorkspacesConnectionStatusResult.add_member(:workspaces_connection_status, Shapes::ShapeRef.new(shape: WorkspaceConnectionStatusList, location_name: "WorkspacesConnectionStatus"))
    DescribeWorkspacesConnectionStatusResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    DescribeWorkspacesConnectionStatusResult.struct_class = Types::DescribeWorkspacesConnectionStatusResult

    DescribeWorkspacesRequest.add_member(:workspace_ids, Shapes::ShapeRef.new(shape: WorkspaceIdList, location_name: "WorkspaceIds"))
    DescribeWorkspacesRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, location_name: "DirectoryId"))
    DescribeWorkspacesRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: UserName, location_name: "UserName"))
    DescribeWorkspacesRequest.add_member(:bundle_id, Shapes::ShapeRef.new(shape: BundleId, location_name: "BundleId"))
    DescribeWorkspacesRequest.add_member(:limit, Shapes::ShapeRef.new(shape: Limit, location_name: "Limit"))
    DescribeWorkspacesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    DescribeWorkspacesRequest.struct_class = Types::DescribeWorkspacesRequest

    DescribeWorkspacesResult.add_member(:workspaces, Shapes::ShapeRef.new(shape: WorkspaceList, location_name: "Workspaces"))
    DescribeWorkspacesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    DescribeWorkspacesResult.struct_class = Types::DescribeWorkspacesResult

    DirectoryIdList.member = Shapes::ShapeRef.new(shape: DirectoryId)

    DirectoryList.member = Shapes::ShapeRef.new(shape: WorkspaceDirectory)

    DisassociateConnectionAliasRequest.add_member(:alias_id, Shapes::ShapeRef.new(shape: ConnectionAliasId, required: true, location_name: "AliasId"))
    DisassociateConnectionAliasRequest.struct_class = Types::DisassociateConnectionAliasRequest

    DisassociateConnectionAliasResult.struct_class = Types::DisassociateConnectionAliasResult

    DisassociateIpGroupsRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location_name: "DirectoryId"))
    DisassociateIpGroupsRequest.add_member(:group_ids, Shapes::ShapeRef.new(shape: IpGroupIdList, required: true, location_name: "GroupIds"))
    DisassociateIpGroupsRequest.struct_class = Types::DisassociateIpGroupsRequest

    DisassociateIpGroupsResult.struct_class = Types::DisassociateIpGroupsResult

    DnsIpAddresses.member = Shapes::ShapeRef.new(shape: IpAddress)

    FailedCreateWorkspaceRequest.add_member(:workspace_request, Shapes::ShapeRef.new(shape: WorkspaceRequest, location_name: "WorkspaceRequest"))
    FailedCreateWorkspaceRequest.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorType, location_name: "ErrorCode"))
    FailedCreateWorkspaceRequest.add_member(:error_message, Shapes::ShapeRef.new(shape: Description, location_name: "ErrorMessage"))
    FailedCreateWorkspaceRequest.struct_class = Types::FailedCreateWorkspaceRequest

    FailedCreateWorkspaceRequests.member = Shapes::ShapeRef.new(shape: FailedCreateWorkspaceRequest)

    FailedRebootWorkspaceRequests.member = Shapes::ShapeRef.new(shape: FailedWorkspaceChangeRequest)

    FailedRebuildWorkspaceRequests.member = Shapes::ShapeRef.new(shape: FailedWorkspaceChangeRequest)

    FailedStartWorkspaceRequests.member = Shapes::ShapeRef.new(shape: FailedWorkspaceChangeRequest)

    FailedStopWorkspaceRequests.member = Shapes::ShapeRef.new(shape: FailedWorkspaceChangeRequest)

    FailedTerminateWorkspaceRequests.member = Shapes::ShapeRef.new(shape: FailedWorkspaceChangeRequest)

    FailedWorkspaceChangeRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, location_name: "WorkspaceId"))
    FailedWorkspaceChangeRequest.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorType, location_name: "ErrorCode"))
    FailedWorkspaceChangeRequest.add_member(:error_message, Shapes::ShapeRef.new(shape: Description, location_name: "ErrorMessage"))
    FailedWorkspaceChangeRequest.struct_class = Types::FailedWorkspaceChangeRequest

    ImagePermission.add_member(:shared_account_id, Shapes::ShapeRef.new(shape: AwsAccount, location_name: "SharedAccountId"))
    ImagePermission.struct_class = Types::ImagePermission

    ImagePermissions.member = Shapes::ShapeRef.new(shape: ImagePermission)

    ImportWorkspaceImageRequest.add_member(:ec2_image_id, Shapes::ShapeRef.new(shape: Ec2ImageId, required: true, location_name: "Ec2ImageId"))
    ImportWorkspaceImageRequest.add_member(:ingestion_process, Shapes::ShapeRef.new(shape: WorkspaceImageIngestionProcess, required: true, location_name: "IngestionProcess"))
    ImportWorkspaceImageRequest.add_member(:image_name, Shapes::ShapeRef.new(shape: WorkspaceImageName, required: true, location_name: "ImageName"))
    ImportWorkspaceImageRequest.add_member(:image_description, Shapes::ShapeRef.new(shape: WorkspaceImageDescription, required: true, location_name: "ImageDescription"))
    ImportWorkspaceImageRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ImportWorkspaceImageRequest.add_member(:applications, Shapes::ShapeRef.new(shape: ApplicationList, location_name: "Applications"))
    ImportWorkspaceImageRequest.struct_class = Types::ImportWorkspaceImageRequest

    ImportWorkspaceImageResult.add_member(:image_id, Shapes::ShapeRef.new(shape: WorkspaceImageId, location_name: "ImageId"))
    ImportWorkspaceImageResult.struct_class = Types::ImportWorkspaceImageResult

    InvalidParameterValuesException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    InvalidParameterValuesException.struct_class = Types::InvalidParameterValuesException

    InvalidResourceStateException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    InvalidResourceStateException.struct_class = Types::InvalidResourceStateException

    IpGroupIdList.member = Shapes::ShapeRef.new(shape: IpGroupId)

    IpRevokedRuleList.member = Shapes::ShapeRef.new(shape: IpRule)

    IpRuleItem.add_member(:ip_rule, Shapes::ShapeRef.new(shape: IpRule, location_name: "ipRule"))
    IpRuleItem.add_member(:rule_desc, Shapes::ShapeRef.new(shape: IpRuleDesc, location_name: "ruleDesc"))
    IpRuleItem.struct_class = Types::IpRuleItem

    IpRuleList.member = Shapes::ShapeRef.new(shape: IpRuleItem)

    ListAvailableManagementCidrRangesRequest.add_member(:management_cidr_range_constraint, Shapes::ShapeRef.new(shape: ManagementCidrRangeConstraint, required: true, location_name: "ManagementCidrRangeConstraint"))
    ListAvailableManagementCidrRangesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ManagementCidrRangeMaxResults, location_name: "MaxResults"))
    ListAvailableManagementCidrRangesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListAvailableManagementCidrRangesRequest.struct_class = Types::ListAvailableManagementCidrRangesRequest

    ListAvailableManagementCidrRangesResult.add_member(:management_cidr_ranges, Shapes::ShapeRef.new(shape: DedicatedTenancyCidrRangeList, location_name: "ManagementCidrRanges"))
    ListAvailableManagementCidrRangesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListAvailableManagementCidrRangesResult.struct_class = Types::ListAvailableManagementCidrRangesResult

    MigrateWorkspaceRequest.add_member(:source_workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location_name: "SourceWorkspaceId"))
    MigrateWorkspaceRequest.add_member(:bundle_id, Shapes::ShapeRef.new(shape: BundleId, required: true, location_name: "BundleId"))
    MigrateWorkspaceRequest.struct_class = Types::MigrateWorkspaceRequest

    MigrateWorkspaceResult.add_member(:source_workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, location_name: "SourceWorkspaceId"))
    MigrateWorkspaceResult.add_member(:target_workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, location_name: "TargetWorkspaceId"))
    MigrateWorkspaceResult.struct_class = Types::MigrateWorkspaceResult

    ModificationState.add_member(:resource, Shapes::ShapeRef.new(shape: ModificationResourceEnum, location_name: "Resource"))
    ModificationState.add_member(:state, Shapes::ShapeRef.new(shape: ModificationStateEnum, location_name: "State"))
    ModificationState.struct_class = Types::ModificationState

    ModificationStateList.member = Shapes::ShapeRef.new(shape: ModificationState)

    ModifyAccountRequest.add_member(:dedicated_tenancy_support, Shapes::ShapeRef.new(shape: DedicatedTenancySupportEnum, location_name: "DedicatedTenancySupport"))
    ModifyAccountRequest.add_member(:dedicated_tenancy_management_cidr_range, Shapes::ShapeRef.new(shape: DedicatedTenancyManagementCidrRange, location_name: "DedicatedTenancyManagementCidrRange"))
    ModifyAccountRequest.struct_class = Types::ModifyAccountRequest

    ModifyAccountResult.struct_class = Types::ModifyAccountResult

    ModifyClientPropertiesRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "ResourceId"))
    ModifyClientPropertiesRequest.add_member(:client_properties, Shapes::ShapeRef.new(shape: ClientProperties, required: true, location_name: "ClientProperties"))
    ModifyClientPropertiesRequest.struct_class = Types::ModifyClientPropertiesRequest

    ModifyClientPropertiesResult.struct_class = Types::ModifyClientPropertiesResult

    ModifySelfservicePermissionsRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location_name: "ResourceId"))
    ModifySelfservicePermissionsRequest.add_member(:selfservice_permissions, Shapes::ShapeRef.new(shape: SelfservicePermissions, required: true, location_name: "SelfservicePermissions"))
    ModifySelfservicePermissionsRequest.struct_class = Types::ModifySelfservicePermissionsRequest

    ModifySelfservicePermissionsResult.struct_class = Types::ModifySelfservicePermissionsResult

    ModifyWorkspaceAccessPropertiesRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location_name: "ResourceId"))
    ModifyWorkspaceAccessPropertiesRequest.add_member(:workspace_access_properties, Shapes::ShapeRef.new(shape: WorkspaceAccessProperties, required: true, location_name: "WorkspaceAccessProperties"))
    ModifyWorkspaceAccessPropertiesRequest.struct_class = Types::ModifyWorkspaceAccessPropertiesRequest

    ModifyWorkspaceAccessPropertiesResult.struct_class = Types::ModifyWorkspaceAccessPropertiesResult

    ModifyWorkspaceCreationPropertiesRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location_name: "ResourceId"))
    ModifyWorkspaceCreationPropertiesRequest.add_member(:workspace_creation_properties, Shapes::ShapeRef.new(shape: WorkspaceCreationProperties, required: true, location_name: "WorkspaceCreationProperties"))
    ModifyWorkspaceCreationPropertiesRequest.struct_class = Types::ModifyWorkspaceCreationPropertiesRequest

    ModifyWorkspaceCreationPropertiesResult.struct_class = Types::ModifyWorkspaceCreationPropertiesResult

    ModifyWorkspacePropertiesRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location_name: "WorkspaceId"))
    ModifyWorkspacePropertiesRequest.add_member(:workspace_properties, Shapes::ShapeRef.new(shape: WorkspaceProperties, required: true, location_name: "WorkspaceProperties"))
    ModifyWorkspacePropertiesRequest.struct_class = Types::ModifyWorkspacePropertiesRequest

    ModifyWorkspacePropertiesResult.struct_class = Types::ModifyWorkspacePropertiesResult

    ModifyWorkspaceStateRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location_name: "WorkspaceId"))
    ModifyWorkspaceStateRequest.add_member(:workspace_state, Shapes::ShapeRef.new(shape: TargetWorkspaceState, required: true, location_name: "WorkspaceState"))
    ModifyWorkspaceStateRequest.struct_class = Types::ModifyWorkspaceStateRequest

    ModifyWorkspaceStateResult.struct_class = Types::ModifyWorkspaceStateResult

    OperatingSystem.add_member(:type, Shapes::ShapeRef.new(shape: OperatingSystemType, location_name: "Type"))
    OperatingSystem.struct_class = Types::OperatingSystem

    OperationInProgressException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    OperationInProgressException.struct_class = Types::OperationInProgressException

    OperationNotSupportedException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    OperationNotSupportedException.struct_class = Types::OperationNotSupportedException

    RebootRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location_name: "WorkspaceId"))
    RebootRequest.struct_class = Types::RebootRequest

    RebootWorkspaceRequests.member = Shapes::ShapeRef.new(shape: RebootRequest)

    RebootWorkspacesRequest.add_member(:reboot_workspace_requests, Shapes::ShapeRef.new(shape: RebootWorkspaceRequests, required: true, location_name: "RebootWorkspaceRequests"))
    RebootWorkspacesRequest.struct_class = Types::RebootWorkspacesRequest

    RebootWorkspacesResult.add_member(:failed_requests, Shapes::ShapeRef.new(shape: FailedRebootWorkspaceRequests, location_name: "FailedRequests"))
    RebootWorkspacesResult.struct_class = Types::RebootWorkspacesResult

    RebuildRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location_name: "WorkspaceId"))
    RebuildRequest.struct_class = Types::RebuildRequest

    RebuildWorkspaceRequests.member = Shapes::ShapeRef.new(shape: RebuildRequest)

    RebuildWorkspacesRequest.add_member(:rebuild_workspace_requests, Shapes::ShapeRef.new(shape: RebuildWorkspaceRequests, required: true, location_name: "RebuildWorkspaceRequests"))
    RebuildWorkspacesRequest.struct_class = Types::RebuildWorkspacesRequest

    RebuildWorkspacesResult.add_member(:failed_requests, Shapes::ShapeRef.new(shape: FailedRebuildWorkspaceRequests, location_name: "FailedRequests"))
    RebuildWorkspacesResult.struct_class = Types::RebuildWorkspacesResult

    RegisterWorkspaceDirectoryRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location_name: "DirectoryId"))
    RegisterWorkspaceDirectoryRequest.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIds, location_name: "SubnetIds"))
    RegisterWorkspaceDirectoryRequest.add_member(:enable_work_docs, Shapes::ShapeRef.new(shape: BooleanObject, required: true, location_name: "EnableWorkDocs"))
    RegisterWorkspaceDirectoryRequest.add_member(:enable_self_service, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "EnableSelfService"))
    RegisterWorkspaceDirectoryRequest.add_member(:tenancy, Shapes::ShapeRef.new(shape: Tenancy, location_name: "Tenancy"))
    RegisterWorkspaceDirectoryRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    RegisterWorkspaceDirectoryRequest.struct_class = Types::RegisterWorkspaceDirectoryRequest

    RegisterWorkspaceDirectoryResult.struct_class = Types::RegisterWorkspaceDirectoryResult

    ResourceAlreadyExistsException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ResourceAlreadyExistsException.struct_class = Types::ResourceAlreadyExistsException

    ResourceAssociatedException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ResourceAssociatedException.struct_class = Types::ResourceAssociatedException

    ResourceCreationFailedException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ResourceCreationFailedException.struct_class = Types::ResourceCreationFailedException

    ResourceIdList.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    ResourceLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ResourceLimitExceededException.struct_class = Types::ResourceLimitExceededException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ResourceId"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ResourceUnavailableException.add_member(:resource_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ResourceId"))
    ResourceUnavailableException.struct_class = Types::ResourceUnavailableException

    RestoreWorkspaceRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location_name: "WorkspaceId"))
    RestoreWorkspaceRequest.struct_class = Types::RestoreWorkspaceRequest

    RestoreWorkspaceResult.struct_class = Types::RestoreWorkspaceResult

    RevokeIpRulesRequest.add_member(:group_id, Shapes::ShapeRef.new(shape: IpGroupId, required: true, location_name: "GroupId"))
    RevokeIpRulesRequest.add_member(:user_rules, Shapes::ShapeRef.new(shape: IpRevokedRuleList, required: true, location_name: "UserRules"))
    RevokeIpRulesRequest.struct_class = Types::RevokeIpRulesRequest

    RevokeIpRulesResult.struct_class = Types::RevokeIpRulesResult

    RootStorage.add_member(:capacity, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Capacity"))
    RootStorage.struct_class = Types::RootStorage

    SelfservicePermissions.add_member(:restart_workspace, Shapes::ShapeRef.new(shape: ReconnectEnum, location_name: "RestartWorkspace"))
    SelfservicePermissions.add_member(:increase_volume_size, Shapes::ShapeRef.new(shape: ReconnectEnum, location_name: "IncreaseVolumeSize"))
    SelfservicePermissions.add_member(:change_compute_type, Shapes::ShapeRef.new(shape: ReconnectEnum, location_name: "ChangeComputeType"))
    SelfservicePermissions.add_member(:switch_running_mode, Shapes::ShapeRef.new(shape: ReconnectEnum, location_name: "SwitchRunningMode"))
    SelfservicePermissions.add_member(:rebuild_workspace, Shapes::ShapeRef.new(shape: ReconnectEnum, location_name: "RebuildWorkspace"))
    SelfservicePermissions.struct_class = Types::SelfservicePermissions

    Snapshot.add_member(:snapshot_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "SnapshotTime"))
    Snapshot.struct_class = Types::Snapshot

    SnapshotList.member = Shapes::ShapeRef.new(shape: Snapshot)

    StartRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, location_name: "WorkspaceId"))
    StartRequest.struct_class = Types::StartRequest

    StartWorkspaceRequests.member = Shapes::ShapeRef.new(shape: StartRequest)

    StartWorkspacesRequest.add_member(:start_workspace_requests, Shapes::ShapeRef.new(shape: StartWorkspaceRequests, required: true, location_name: "StartWorkspaceRequests"))
    StartWorkspacesRequest.struct_class = Types::StartWorkspacesRequest

    StartWorkspacesResult.add_member(:failed_requests, Shapes::ShapeRef.new(shape: FailedStartWorkspaceRequests, location_name: "FailedRequests"))
    StartWorkspacesResult.struct_class = Types::StartWorkspacesResult

    StopRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, location_name: "WorkspaceId"))
    StopRequest.struct_class = Types::StopRequest

    StopWorkspaceRequests.member = Shapes::ShapeRef.new(shape: StopRequest)

    StopWorkspacesRequest.add_member(:stop_workspace_requests, Shapes::ShapeRef.new(shape: StopWorkspaceRequests, required: true, location_name: "StopWorkspaceRequests"))
    StopWorkspacesRequest.struct_class = Types::StopWorkspacesRequest

    StopWorkspacesResult.add_member(:failed_requests, Shapes::ShapeRef.new(shape: FailedStopWorkspaceRequests, location_name: "FailedRequests"))
    StopWorkspacesResult.struct_class = Types::StopWorkspacesResult

    SubnetIds.member = Shapes::ShapeRef.new(shape: SubnetId)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TerminateRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location_name: "WorkspaceId"))
    TerminateRequest.struct_class = Types::TerminateRequest

    TerminateWorkspaceRequests.member = Shapes::ShapeRef.new(shape: TerminateRequest)

    TerminateWorkspacesRequest.add_member(:terminate_workspace_requests, Shapes::ShapeRef.new(shape: TerminateWorkspaceRequests, required: true, location_name: "TerminateWorkspaceRequests"))
    TerminateWorkspacesRequest.struct_class = Types::TerminateWorkspacesRequest

    TerminateWorkspacesResult.add_member(:failed_requests, Shapes::ShapeRef.new(shape: FailedTerminateWorkspaceRequests, location_name: "FailedRequests"))
    TerminateWorkspacesResult.struct_class = Types::TerminateWorkspacesResult

    UnsupportedNetworkConfigurationException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    UnsupportedNetworkConfigurationException.struct_class = Types::UnsupportedNetworkConfigurationException

    UnsupportedWorkspaceConfigurationException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    UnsupportedWorkspaceConfigurationException.struct_class = Types::UnsupportedWorkspaceConfigurationException

    UpdateConnectionAliasPermissionRequest.add_member(:alias_id, Shapes::ShapeRef.new(shape: ConnectionAliasId, required: true, location_name: "AliasId"))
    UpdateConnectionAliasPermissionRequest.add_member(:connection_alias_permission, Shapes::ShapeRef.new(shape: ConnectionAliasPermission, required: true, location_name: "ConnectionAliasPermission"))
    UpdateConnectionAliasPermissionRequest.struct_class = Types::UpdateConnectionAliasPermissionRequest

    UpdateConnectionAliasPermissionResult.struct_class = Types::UpdateConnectionAliasPermissionResult

    UpdateRulesOfIpGroupRequest.add_member(:group_id, Shapes::ShapeRef.new(shape: IpGroupId, required: true, location_name: "GroupId"))
    UpdateRulesOfIpGroupRequest.add_member(:user_rules, Shapes::ShapeRef.new(shape: IpRuleList, required: true, location_name: "UserRules"))
    UpdateRulesOfIpGroupRequest.struct_class = Types::UpdateRulesOfIpGroupRequest

    UpdateRulesOfIpGroupResult.struct_class = Types::UpdateRulesOfIpGroupResult

    UpdateWorkspaceImagePermissionRequest.add_member(:image_id, Shapes::ShapeRef.new(shape: WorkspaceImageId, required: true, location_name: "ImageId"))
    UpdateWorkspaceImagePermissionRequest.add_member(:allow_copy_image, Shapes::ShapeRef.new(shape: BooleanObject, required: true, location_name: "AllowCopyImage"))
    UpdateWorkspaceImagePermissionRequest.add_member(:shared_account_id, Shapes::ShapeRef.new(shape: AwsAccount, required: true, location_name: "SharedAccountId"))
    UpdateWorkspaceImagePermissionRequest.struct_class = Types::UpdateWorkspaceImagePermissionRequest

    UpdateWorkspaceImagePermissionResult.struct_class = Types::UpdateWorkspaceImagePermissionResult

    UserStorage.add_member(:capacity, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Capacity"))
    UserStorage.struct_class = Types::UserStorage

    Workspace.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, location_name: "WorkspaceId"))
    Workspace.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, location_name: "DirectoryId"))
    Workspace.add_member(:user_name, Shapes::ShapeRef.new(shape: UserName, location_name: "UserName"))
    Workspace.add_member(:ip_address, Shapes::ShapeRef.new(shape: IpAddress, location_name: "IpAddress"))
    Workspace.add_member(:state, Shapes::ShapeRef.new(shape: WorkspaceState, location_name: "State"))
    Workspace.add_member(:bundle_id, Shapes::ShapeRef.new(shape: BundleId, location_name: "BundleId"))
    Workspace.add_member(:subnet_id, Shapes::ShapeRef.new(shape: SubnetId, location_name: "SubnetId"))
    Workspace.add_member(:error_message, Shapes::ShapeRef.new(shape: Description, location_name: "ErrorMessage"))
    Workspace.add_member(:error_code, Shapes::ShapeRef.new(shape: WorkspaceErrorCode, location_name: "ErrorCode"))
    Workspace.add_member(:computer_name, Shapes::ShapeRef.new(shape: ComputerName, location_name: "ComputerName"))
    Workspace.add_member(:volume_encryption_key, Shapes::ShapeRef.new(shape: VolumeEncryptionKey, location_name: "VolumeEncryptionKey"))
    Workspace.add_member(:user_volume_encryption_enabled, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "UserVolumeEncryptionEnabled"))
    Workspace.add_member(:root_volume_encryption_enabled, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "RootVolumeEncryptionEnabled"))
    Workspace.add_member(:workspace_properties, Shapes::ShapeRef.new(shape: WorkspaceProperties, location_name: "WorkspaceProperties"))
    Workspace.add_member(:modification_states, Shapes::ShapeRef.new(shape: ModificationStateList, location_name: "ModificationStates"))
    Workspace.struct_class = Types::Workspace

    WorkspaceAccessProperties.add_member(:device_type_windows, Shapes::ShapeRef.new(shape: AccessPropertyValue, location_name: "DeviceTypeWindows"))
    WorkspaceAccessProperties.add_member(:device_type_osx, Shapes::ShapeRef.new(shape: AccessPropertyValue, location_name: "DeviceTypeOsx"))
    WorkspaceAccessProperties.add_member(:device_type_web, Shapes::ShapeRef.new(shape: AccessPropertyValue, location_name: "DeviceTypeWeb"))
    WorkspaceAccessProperties.add_member(:device_type_ios, Shapes::ShapeRef.new(shape: AccessPropertyValue, location_name: "DeviceTypeIos"))
    WorkspaceAccessProperties.add_member(:device_type_android, Shapes::ShapeRef.new(shape: AccessPropertyValue, location_name: "DeviceTypeAndroid"))
    WorkspaceAccessProperties.add_member(:device_type_chrome_os, Shapes::ShapeRef.new(shape: AccessPropertyValue, location_name: "DeviceTypeChromeOs"))
    WorkspaceAccessProperties.add_member(:device_type_zero_client, Shapes::ShapeRef.new(shape: AccessPropertyValue, location_name: "DeviceTypeZeroClient"))
    WorkspaceAccessProperties.struct_class = Types::WorkspaceAccessProperties

    WorkspaceBundle.add_member(:bundle_id, Shapes::ShapeRef.new(shape: BundleId, location_name: "BundleId"))
    WorkspaceBundle.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    WorkspaceBundle.add_member(:owner, Shapes::ShapeRef.new(shape: BundleOwner, location_name: "Owner"))
    WorkspaceBundle.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    WorkspaceBundle.add_member(:image_id, Shapes::ShapeRef.new(shape: WorkspaceImageId, location_name: "ImageId"))
    WorkspaceBundle.add_member(:root_storage, Shapes::ShapeRef.new(shape: RootStorage, location_name: "RootStorage"))
    WorkspaceBundle.add_member(:user_storage, Shapes::ShapeRef.new(shape: UserStorage, location_name: "UserStorage"))
    WorkspaceBundle.add_member(:compute_type, Shapes::ShapeRef.new(shape: ComputeType, location_name: "ComputeType"))
    WorkspaceBundle.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTime"))
    WorkspaceBundle.struct_class = Types::WorkspaceBundle

    WorkspaceConnectionStatus.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, location_name: "WorkspaceId"))
    WorkspaceConnectionStatus.add_member(:connection_state, Shapes::ShapeRef.new(shape: ConnectionState, location_name: "ConnectionState"))
    WorkspaceConnectionStatus.add_member(:connection_state_check_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ConnectionStateCheckTimestamp"))
    WorkspaceConnectionStatus.add_member(:last_known_user_connection_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastKnownUserConnectionTimestamp"))
    WorkspaceConnectionStatus.struct_class = Types::WorkspaceConnectionStatus

    WorkspaceConnectionStatusList.member = Shapes::ShapeRef.new(shape: WorkspaceConnectionStatus)

    WorkspaceCreationProperties.add_member(:enable_work_docs, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "EnableWorkDocs"))
    WorkspaceCreationProperties.add_member(:enable_internet_access, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "EnableInternetAccess"))
    WorkspaceCreationProperties.add_member(:default_ou, Shapes::ShapeRef.new(shape: DefaultOu, location_name: "DefaultOu"))
    WorkspaceCreationProperties.add_member(:custom_security_group_id, Shapes::ShapeRef.new(shape: SecurityGroupId, location_name: "CustomSecurityGroupId"))
    WorkspaceCreationProperties.add_member(:user_enabled_as_local_administrator, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "UserEnabledAsLocalAdministrator"))
    WorkspaceCreationProperties.add_member(:enable_maintenance_mode, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "EnableMaintenanceMode"))
    WorkspaceCreationProperties.struct_class = Types::WorkspaceCreationProperties

    WorkspaceDirectory.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, location_name: "DirectoryId"))
    WorkspaceDirectory.add_member(:alias, Shapes::ShapeRef.new(shape: Alias, location_name: "Alias"))
    WorkspaceDirectory.add_member(:directory_name, Shapes::ShapeRef.new(shape: DirectoryName, location_name: "DirectoryName"))
    WorkspaceDirectory.add_member(:registration_code, Shapes::ShapeRef.new(shape: RegistrationCode, location_name: "RegistrationCode"))
    WorkspaceDirectory.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIds, location_name: "SubnetIds"))
    WorkspaceDirectory.add_member(:dns_ip_addresses, Shapes::ShapeRef.new(shape: DnsIpAddresses, location_name: "DnsIpAddresses"))
    WorkspaceDirectory.add_member(:customer_user_name, Shapes::ShapeRef.new(shape: UserName, location_name: "CustomerUserName"))
    WorkspaceDirectory.add_member(:iam_role_id, Shapes::ShapeRef.new(shape: ARN, location_name: "IamRoleId"))
    WorkspaceDirectory.add_member(:directory_type, Shapes::ShapeRef.new(shape: WorkspaceDirectoryType, location_name: "DirectoryType"))
    WorkspaceDirectory.add_member(:workspace_security_group_id, Shapes::ShapeRef.new(shape: SecurityGroupId, location_name: "WorkspaceSecurityGroupId"))
    WorkspaceDirectory.add_member(:state, Shapes::ShapeRef.new(shape: WorkspaceDirectoryState, location_name: "State"))
    WorkspaceDirectory.add_member(:workspace_creation_properties, Shapes::ShapeRef.new(shape: DefaultWorkspaceCreationProperties, location_name: "WorkspaceCreationProperties"))
    WorkspaceDirectory.add_member(:ip_group_ids, Shapes::ShapeRef.new(shape: IpGroupIdList, location_name: "ipGroupIds"))
    WorkspaceDirectory.add_member(:workspace_access_properties, Shapes::ShapeRef.new(shape: WorkspaceAccessProperties, location_name: "WorkspaceAccessProperties"))
    WorkspaceDirectory.add_member(:tenancy, Shapes::ShapeRef.new(shape: Tenancy, location_name: "Tenancy"))
    WorkspaceDirectory.add_member(:selfservice_permissions, Shapes::ShapeRef.new(shape: SelfservicePermissions, location_name: "SelfservicePermissions"))
    WorkspaceDirectory.struct_class = Types::WorkspaceDirectory

    WorkspaceIdList.member = Shapes::ShapeRef.new(shape: WorkspaceId)

    WorkspaceImage.add_member(:image_id, Shapes::ShapeRef.new(shape: WorkspaceImageId, location_name: "ImageId"))
    WorkspaceImage.add_member(:name, Shapes::ShapeRef.new(shape: WorkspaceImageName, location_name: "Name"))
    WorkspaceImage.add_member(:description, Shapes::ShapeRef.new(shape: WorkspaceImageDescription, location_name: "Description"))
    WorkspaceImage.add_member(:operating_system, Shapes::ShapeRef.new(shape: OperatingSystem, location_name: "OperatingSystem"))
    WorkspaceImage.add_member(:state, Shapes::ShapeRef.new(shape: WorkspaceImageState, location_name: "State"))
    WorkspaceImage.add_member(:required_tenancy, Shapes::ShapeRef.new(shape: WorkspaceImageRequiredTenancy, location_name: "RequiredTenancy"))
    WorkspaceImage.add_member(:error_code, Shapes::ShapeRef.new(shape: WorkspaceImageErrorCode, location_name: "ErrorCode"))
    WorkspaceImage.add_member(:error_message, Shapes::ShapeRef.new(shape: Description, location_name: "ErrorMessage"))
    WorkspaceImage.add_member(:created, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Created"))
    WorkspaceImage.add_member(:owner_account_id, Shapes::ShapeRef.new(shape: AwsAccount, location_name: "OwnerAccountId"))
    WorkspaceImage.struct_class = Types::WorkspaceImage

    WorkspaceImageIdList.member = Shapes::ShapeRef.new(shape: WorkspaceImageId)

    WorkspaceImageList.member = Shapes::ShapeRef.new(shape: WorkspaceImage)

    WorkspaceList.member = Shapes::ShapeRef.new(shape: Workspace)

    WorkspaceProperties.add_member(:running_mode, Shapes::ShapeRef.new(shape: RunningMode, location_name: "RunningMode"))
    WorkspaceProperties.add_member(:running_mode_auto_stop_timeout_in_minutes, Shapes::ShapeRef.new(shape: RunningModeAutoStopTimeoutInMinutes, location_name: "RunningModeAutoStopTimeoutInMinutes"))
    WorkspaceProperties.add_member(:root_volume_size_gib, Shapes::ShapeRef.new(shape: RootVolumeSizeGib, location_name: "RootVolumeSizeGib"))
    WorkspaceProperties.add_member(:user_volume_size_gib, Shapes::ShapeRef.new(shape: UserVolumeSizeGib, location_name: "UserVolumeSizeGib"))
    WorkspaceProperties.add_member(:compute_type_name, Shapes::ShapeRef.new(shape: Compute, location_name: "ComputeTypeName"))
    WorkspaceProperties.struct_class = Types::WorkspaceProperties

    WorkspaceRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location_name: "DirectoryId"))
    WorkspaceRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: UserName, required: true, location_name: "UserName"))
    WorkspaceRequest.add_member(:bundle_id, Shapes::ShapeRef.new(shape: BundleId, required: true, location_name: "BundleId"))
    WorkspaceRequest.add_member(:volume_encryption_key, Shapes::ShapeRef.new(shape: VolumeEncryptionKey, location_name: "VolumeEncryptionKey"))
    WorkspaceRequest.add_member(:user_volume_encryption_enabled, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "UserVolumeEncryptionEnabled"))
    WorkspaceRequest.add_member(:root_volume_encryption_enabled, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "RootVolumeEncryptionEnabled"))
    WorkspaceRequest.add_member(:workspace_properties, Shapes::ShapeRef.new(shape: WorkspaceProperties, location_name: "WorkspaceProperties"))
    WorkspaceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    WorkspaceRequest.struct_class = Types::WorkspaceRequest

    WorkspaceRequestList.member = Shapes::ShapeRef.new(shape: WorkspaceRequest)

    WorkspacesDefaultRoleNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    WorkspacesDefaultRoleNotFoundException.struct_class = Types::WorkspacesDefaultRoleNotFoundException

    WorkspacesIpGroup.add_member(:group_id, Shapes::ShapeRef.new(shape: IpGroupId, location_name: "groupId"))
    WorkspacesIpGroup.add_member(:group_name, Shapes::ShapeRef.new(shape: IpGroupName, location_name: "groupName"))
    WorkspacesIpGroup.add_member(:group_desc, Shapes::ShapeRef.new(shape: IpGroupDesc, location_name: "groupDesc"))
    WorkspacesIpGroup.add_member(:user_rules, Shapes::ShapeRef.new(shape: IpRuleList, location_name: "userRules"))
    WorkspacesIpGroup.struct_class = Types::WorkspacesIpGroup

    WorkspacesIpGroupsList.member = Shapes::ShapeRef.new(shape: WorkspacesIpGroup)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2015-04-08"

      api.metadata = {
        "apiVersion" => "2015-04-08",
        "endpointPrefix" => "workspaces",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "Amazon WorkSpaces",
        "serviceId" => "WorkSpaces",
        "signatureVersion" => "v4",
        "targetPrefix" => "WorkspacesService",
        "uid" => "workspaces-2015-04-08",
      }

      api.add_operation(:associate_connection_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateConnectionAlias"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateConnectionAliasRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateConnectionAliasResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAssociatedException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotSupportedException)
      end)

      api.add_operation(:associate_ip_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateIpGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateIpGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateIpGroupsResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotSupportedException)
      end)

      api.add_operation(:authorize_ip_rules, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AuthorizeIpRules"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AuthorizeIpRulesRequest)
        o.output = Shapes::ShapeRef.new(shape: AuthorizeIpRulesResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:copy_workspace_image, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CopyWorkspaceImage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CopyWorkspaceImageRequest)
        o.output = Shapes::ShapeRef.new(shape: CopyWorkspaceImageResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
      end)

      api.add_operation(:create_connection_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateConnectionAlias"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateConnectionAliasRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateConnectionAliasResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotSupportedException)
      end)

      api.add_operation(:create_ip_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateIpGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateIpGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateIpGroupResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceCreationFailedException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateTagsResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
      end)

      api.add_operation(:create_workspaces, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateWorkspaces"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateWorkspacesRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateWorkspacesResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
      end)

      api.add_operation(:delete_connection_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConnectionAlias"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteConnectionAliasRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteConnectionAliasResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAssociatedException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotSupportedException)
      end)

      api.add_operation(:delete_ip_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteIpGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteIpGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteIpGroupResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAssociatedException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteTagsResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
      end)

      api.add_operation(:delete_workspace_image, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteWorkspaceImage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteWorkspaceImageRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteWorkspaceImageResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAssociatedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:deregister_workspace_directory, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterWorkspaceDirectory"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeregisterWorkspaceDirectoryRequest)
        o.output = Shapes::ShapeRef.new(shape: DeregisterWorkspaceDirectoryResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateException)
      end)

      api.add_operation(:describe_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAccount"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAccountResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:describe_account_modifications, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAccountModifications"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAccountModificationsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAccountModificationsResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:describe_client_properties, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeClientProperties"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeClientPropertiesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeClientPropertiesResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:describe_connection_alias_permissions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeConnectionAliasPermissions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeConnectionAliasPermissionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeConnectionAliasPermissionsResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotSupportedException)
      end)

      api.add_operation(:describe_connection_aliases, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeConnectionAliases"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeConnectionAliasesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeConnectionAliasesResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotSupportedException)
      end)

      api.add_operation(:describe_ip_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeIpGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeIpGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeIpGroupsResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:describe_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeTagsResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_workspace_bundles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeWorkspaceBundles"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeWorkspaceBundlesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeWorkspaceBundlesResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_workspace_directories, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeWorkspaceDirectories"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeWorkspaceDirectoriesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeWorkspaceDirectoriesResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_workspace_image_permissions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeWorkspaceImagePermissions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeWorkspaceImagePermissionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeWorkspaceImagePermissionsResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
      end)

      api.add_operation(:describe_workspace_images, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeWorkspaceImages"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeWorkspaceImagesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeWorkspaceImagesResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:describe_workspace_snapshots, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeWorkspaceSnapshots"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeWorkspaceSnapshotsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeWorkspaceSnapshotsResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:describe_workspaces, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeWorkspaces"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeWorkspacesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeWorkspacesResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_workspaces_connection_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeWorkspacesConnectionStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeWorkspacesConnectionStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeWorkspacesConnectionStatusResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
      end)

      api.add_operation(:disassociate_connection_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateConnectionAlias"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateConnectionAliasRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateConnectionAliasResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotSupportedException)
      end)

      api.add_operation(:disassociate_ip_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateIpGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateIpGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateIpGroupsResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:import_workspace_image, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ImportWorkspaceImage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ImportWorkspaceImageRequest)
        o.output = Shapes::ShapeRef.new(shape: ImportWorkspaceImageResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
      end)

      api.add_operation(:list_available_management_cidr_ranges, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAvailableManagementCidrRanges"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAvailableManagementCidrRangesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAvailableManagementCidrRangesResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:migrate_workspace, Seahorse::Model::Operation.new.tap do |o|
        o.name = "MigrateWorkspace"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: MigrateWorkspaceRequest)
        o.output = Shapes::ShapeRef.new(shape: MigrateWorkspaceResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        o.errors << Shapes::ShapeRef.new(shape: OperationInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
      end)

      api.add_operation(:modify_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyAccount"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: ModifyAccountResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:modify_client_properties, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyClientProperties"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyClientPropertiesRequest)
        o.output = Shapes::ShapeRef.new(shape: ModifyClientPropertiesResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:modify_selfservice_permissions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifySelfservicePermissions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifySelfservicePermissionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ModifySelfservicePermissionsResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:modify_workspace_access_properties, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyWorkspaceAccessProperties"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyWorkspaceAccessPropertiesRequest)
        o.output = Shapes::ShapeRef.new(shape: ModifyWorkspaceAccessPropertiesResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:modify_workspace_creation_properties, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyWorkspaceCreationProperties"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyWorkspaceCreationPropertiesRequest)
        o.output = Shapes::ShapeRef.new(shape: ModifyWorkspaceCreationPropertiesResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotSupportedException)
      end)

      api.add_operation(:modify_workspace_properties, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyWorkspaceProperties"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyWorkspacePropertiesRequest)
        o.output = Shapes::ShapeRef.new(shape: ModifyWorkspacePropertiesResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        o.errors << Shapes::ShapeRef.new(shape: OperationInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedWorkspaceConfigurationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
      end)

      api.add_operation(:modify_workspace_state, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyWorkspaceState"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyWorkspaceStateRequest)
        o.output = Shapes::ShapeRef.new(shape: ModifyWorkspaceStateResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:reboot_workspaces, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RebootWorkspaces"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RebootWorkspacesRequest)
        o.output = Shapes::ShapeRef.new(shape: RebootWorkspacesResult)
      end)

      api.add_operation(:rebuild_workspaces, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RebuildWorkspaces"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RebuildWorkspacesRequest)
        o.output = Shapes::ShapeRef.new(shape: RebuildWorkspacesResult)
      end)

      api.add_operation(:register_workspace_directory, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterWorkspaceDirectory"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RegisterWorkspaceDirectoryRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterWorkspaceDirectoryResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: WorkspacesDefaultRoleNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedNetworkConfigurationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotSupportedException)
      end)

      api.add_operation(:restore_workspace, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RestoreWorkspace"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RestoreWorkspaceRequest)
        o.output = Shapes::ShapeRef.new(shape: RestoreWorkspaceResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:revoke_ip_rules, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RevokeIpRules"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RevokeIpRulesRequest)
        o.output = Shapes::ShapeRef.new(shape: RevokeIpRulesResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:start_workspaces, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartWorkspaces"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartWorkspacesRequest)
        o.output = Shapes::ShapeRef.new(shape: StartWorkspacesResult)
      end)

      api.add_operation(:stop_workspaces, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopWorkspaces"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopWorkspacesRequest)
        o.output = Shapes::ShapeRef.new(shape: StopWorkspacesResult)
      end)

      api.add_operation(:terminate_workspaces, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TerminateWorkspaces"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TerminateWorkspacesRequest)
        o.output = Shapes::ShapeRef.new(shape: TerminateWorkspacesResult)
      end)

      api.add_operation(:update_connection_alias_permission, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateConnectionAliasPermission"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateConnectionAliasPermissionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateConnectionAliasPermissionResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAssociatedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotSupportedException)
      end)

      api.add_operation(:update_rules_of_ip_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRulesOfIpGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateRulesOfIpGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRulesOfIpGroupResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_workspace_image_permission, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateWorkspaceImagePermission"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateWorkspaceImagePermissionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateWorkspaceImagePermissionResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotSupportedException)
      end)
    end

  end
end
