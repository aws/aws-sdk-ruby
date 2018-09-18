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
    Alias = Shapes::StringShape.new(name: 'Alias')
    AssociateIpGroupsRequest = Shapes::StructureShape.new(name: 'AssociateIpGroupsRequest')
    AssociateIpGroupsResult = Shapes::StructureShape.new(name: 'AssociateIpGroupsResult')
    AuthorizeIpRulesRequest = Shapes::StructureShape.new(name: 'AuthorizeIpRulesRequest')
    AuthorizeIpRulesResult = Shapes::StructureShape.new(name: 'AuthorizeIpRulesResult')
    BooleanObject = Shapes::BooleanShape.new(name: 'BooleanObject')
    BundleId = Shapes::StringShape.new(name: 'BundleId')
    BundleIdList = Shapes::ListShape.new(name: 'BundleIdList')
    BundleList = Shapes::ListShape.new(name: 'BundleList')
    BundleOwner = Shapes::StringShape.new(name: 'BundleOwner')
    Compute = Shapes::StringShape.new(name: 'Compute')
    ComputeType = Shapes::StructureShape.new(name: 'ComputeType')
    ComputerName = Shapes::StringShape.new(name: 'ComputerName')
    ConnectionState = Shapes::StringShape.new(name: 'ConnectionState')
    CreateIpGroupRequest = Shapes::StructureShape.new(name: 'CreateIpGroupRequest')
    CreateIpGroupResult = Shapes::StructureShape.new(name: 'CreateIpGroupResult')
    CreateTagsRequest = Shapes::StructureShape.new(name: 'CreateTagsRequest')
    CreateTagsResult = Shapes::StructureShape.new(name: 'CreateTagsResult')
    CreateWorkspacesRequest = Shapes::StructureShape.new(name: 'CreateWorkspacesRequest')
    CreateWorkspacesResult = Shapes::StructureShape.new(name: 'CreateWorkspacesResult')
    DefaultOu = Shapes::StringShape.new(name: 'DefaultOu')
    DefaultWorkspaceCreationProperties = Shapes::StructureShape.new(name: 'DefaultWorkspaceCreationProperties')
    DeleteIpGroupRequest = Shapes::StructureShape.new(name: 'DeleteIpGroupRequest')
    DeleteIpGroupResult = Shapes::StructureShape.new(name: 'DeleteIpGroupResult')
    DeleteTagsRequest = Shapes::StructureShape.new(name: 'DeleteTagsRequest')
    DeleteTagsResult = Shapes::StructureShape.new(name: 'DeleteTagsResult')
    DescribeIpGroupsRequest = Shapes::StructureShape.new(name: 'DescribeIpGroupsRequest')
    DescribeIpGroupsResult = Shapes::StructureShape.new(name: 'DescribeIpGroupsResult')
    DescribeTagsRequest = Shapes::StructureShape.new(name: 'DescribeTagsRequest')
    DescribeTagsResult = Shapes::StructureShape.new(name: 'DescribeTagsResult')
    DescribeWorkspaceBundlesRequest = Shapes::StructureShape.new(name: 'DescribeWorkspaceBundlesRequest')
    DescribeWorkspaceBundlesResult = Shapes::StructureShape.new(name: 'DescribeWorkspaceBundlesResult')
    DescribeWorkspaceDirectoriesRequest = Shapes::StructureShape.new(name: 'DescribeWorkspaceDirectoriesRequest')
    DescribeWorkspaceDirectoriesResult = Shapes::StructureShape.new(name: 'DescribeWorkspaceDirectoriesResult')
    DescribeWorkspacesConnectionStatusRequest = Shapes::StructureShape.new(name: 'DescribeWorkspacesConnectionStatusRequest')
    DescribeWorkspacesConnectionStatusResult = Shapes::StructureShape.new(name: 'DescribeWorkspacesConnectionStatusResult')
    DescribeWorkspacesRequest = Shapes::StructureShape.new(name: 'DescribeWorkspacesRequest')
    DescribeWorkspacesResult = Shapes::StructureShape.new(name: 'DescribeWorkspacesResult')
    Description = Shapes::StringShape.new(name: 'Description')
    DirectoryId = Shapes::StringShape.new(name: 'DirectoryId')
    DirectoryIdList = Shapes::ListShape.new(name: 'DirectoryIdList')
    DirectoryList = Shapes::ListShape.new(name: 'DirectoryList')
    DirectoryName = Shapes::StringShape.new(name: 'DirectoryName')
    DisassociateIpGroupsRequest = Shapes::StructureShape.new(name: 'DisassociateIpGroupsRequest')
    DisassociateIpGroupsResult = Shapes::StructureShape.new(name: 'DisassociateIpGroupsResult')
    DnsIpAddresses = Shapes::ListShape.new(name: 'DnsIpAddresses')
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
    ModificationResourceEnum = Shapes::StringShape.new(name: 'ModificationResourceEnum')
    ModificationState = Shapes::StructureShape.new(name: 'ModificationState')
    ModificationStateEnum = Shapes::StringShape.new(name: 'ModificationStateEnum')
    ModificationStateList = Shapes::ListShape.new(name: 'ModificationStateList')
    ModifyWorkspacePropertiesRequest = Shapes::StructureShape.new(name: 'ModifyWorkspacePropertiesRequest')
    ModifyWorkspacePropertiesResult = Shapes::StructureShape.new(name: 'ModifyWorkspacePropertiesResult')
    ModifyWorkspaceStateRequest = Shapes::StructureShape.new(name: 'ModifyWorkspaceStateRequest')
    ModifyWorkspaceStateResult = Shapes::StructureShape.new(name: 'ModifyWorkspaceStateResult')
    NonEmptyString = Shapes::StringShape.new(name: 'NonEmptyString')
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
    RegistrationCode = Shapes::StringShape.new(name: 'RegistrationCode')
    ResourceAlreadyExistsException = Shapes::StructureShape.new(name: 'ResourceAlreadyExistsException')
    ResourceAssociatedException = Shapes::StructureShape.new(name: 'ResourceAssociatedException')
    ResourceCreationFailedException = Shapes::StructureShape.new(name: 'ResourceCreationFailedException')
    ResourceLimitExceededException = Shapes::StructureShape.new(name: 'ResourceLimitExceededException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceUnavailableException = Shapes::StructureShape.new(name: 'ResourceUnavailableException')
    RevokeIpRulesRequest = Shapes::StructureShape.new(name: 'RevokeIpRulesRequest')
    RevokeIpRulesResult = Shapes::StructureShape.new(name: 'RevokeIpRulesResult')
    RootStorage = Shapes::StructureShape.new(name: 'RootStorage')
    RootVolumeSizeGib = Shapes::IntegerShape.new(name: 'RootVolumeSizeGib')
    RunningMode = Shapes::StringShape.new(name: 'RunningMode')
    RunningModeAutoStopTimeoutInMinutes = Shapes::IntegerShape.new(name: 'RunningModeAutoStopTimeoutInMinutes')
    SecurityGroupId = Shapes::StringShape.new(name: 'SecurityGroupId')
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
    TerminateRequest = Shapes::StructureShape.new(name: 'TerminateRequest')
    TerminateWorkspaceRequests = Shapes::ListShape.new(name: 'TerminateWorkspaceRequests')
    TerminateWorkspacesRequest = Shapes::StructureShape.new(name: 'TerminateWorkspacesRequest')
    TerminateWorkspacesResult = Shapes::StructureShape.new(name: 'TerminateWorkspacesResult')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UnsupportedWorkspaceConfigurationException = Shapes::StructureShape.new(name: 'UnsupportedWorkspaceConfigurationException')
    UpdateRulesOfIpGroupRequest = Shapes::StructureShape.new(name: 'UpdateRulesOfIpGroupRequest')
    UpdateRulesOfIpGroupResult = Shapes::StructureShape.new(name: 'UpdateRulesOfIpGroupResult')
    UserName = Shapes::StringShape.new(name: 'UserName')
    UserStorage = Shapes::StructureShape.new(name: 'UserStorage')
    UserVolumeSizeGib = Shapes::IntegerShape.new(name: 'UserVolumeSizeGib')
    VolumeEncryptionKey = Shapes::StringShape.new(name: 'VolumeEncryptionKey')
    Workspace = Shapes::StructureShape.new(name: 'Workspace')
    WorkspaceBundle = Shapes::StructureShape.new(name: 'WorkspaceBundle')
    WorkspaceConnectionStatus = Shapes::StructureShape.new(name: 'WorkspaceConnectionStatus')
    WorkspaceConnectionStatusList = Shapes::ListShape.new(name: 'WorkspaceConnectionStatusList')
    WorkspaceDirectory = Shapes::StructureShape.new(name: 'WorkspaceDirectory')
    WorkspaceDirectoryState = Shapes::StringShape.new(name: 'WorkspaceDirectoryState')
    WorkspaceDirectoryType = Shapes::StringShape.new(name: 'WorkspaceDirectoryType')
    WorkspaceErrorCode = Shapes::StringShape.new(name: 'WorkspaceErrorCode')
    WorkspaceId = Shapes::StringShape.new(name: 'WorkspaceId')
    WorkspaceIdList = Shapes::ListShape.new(name: 'WorkspaceIdList')
    WorkspaceList = Shapes::ListShape.new(name: 'WorkspaceList')
    WorkspaceProperties = Shapes::StructureShape.new(name: 'WorkspaceProperties')
    WorkspaceRequest = Shapes::StructureShape.new(name: 'WorkspaceRequest')
    WorkspaceRequestList = Shapes::ListShape.new(name: 'WorkspaceRequestList')
    WorkspaceState = Shapes::StringShape.new(name: 'WorkspaceState')
    WorkspacesIpGroup = Shapes::StructureShape.new(name: 'WorkspacesIpGroup')
    WorkspacesIpGroupsList = Shapes::ListShape.new(name: 'WorkspacesIpGroupsList')

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

    ComputeType.add_member(:name, Shapes::ShapeRef.new(shape: Compute, location_name: "Name"))
    ComputeType.struct_class = Types::ComputeType

    CreateIpGroupRequest.add_member(:group_name, Shapes::ShapeRef.new(shape: IpGroupName, required: true, location_name: "GroupName"))
    CreateIpGroupRequest.add_member(:group_desc, Shapes::ShapeRef.new(shape: IpGroupDesc, location_name: "GroupDesc"))
    CreateIpGroupRequest.add_member(:user_rules, Shapes::ShapeRef.new(shape: IpRuleList, location_name: "UserRules"))
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

    DefaultWorkspaceCreationProperties.add_member(:enable_work_docs, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "EnableWorkDocs"))
    DefaultWorkspaceCreationProperties.add_member(:enable_internet_access, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "EnableInternetAccess"))
    DefaultWorkspaceCreationProperties.add_member(:default_ou, Shapes::ShapeRef.new(shape: DefaultOu, location_name: "DefaultOu"))
    DefaultWorkspaceCreationProperties.add_member(:custom_security_group_id, Shapes::ShapeRef.new(shape: SecurityGroupId, location_name: "CustomSecurityGroupId"))
    DefaultWorkspaceCreationProperties.add_member(:user_enabled_as_local_administrator, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "UserEnabledAsLocalAdministrator"))
    DefaultWorkspaceCreationProperties.struct_class = Types::DefaultWorkspaceCreationProperties

    DeleteIpGroupRequest.add_member(:group_id, Shapes::ShapeRef.new(shape: IpGroupId, required: true, location_name: "GroupId"))
    DeleteIpGroupRequest.struct_class = Types::DeleteIpGroupRequest

    DeleteIpGroupResult.struct_class = Types::DeleteIpGroupResult

    DeleteTagsRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "ResourceId"))
    DeleteTagsRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    DeleteTagsRequest.struct_class = Types::DeleteTagsRequest

    DeleteTagsResult.struct_class = Types::DeleteTagsResult

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
    DescribeWorkspaceDirectoriesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    DescribeWorkspaceDirectoriesRequest.struct_class = Types::DescribeWorkspaceDirectoriesRequest

    DescribeWorkspaceDirectoriesResult.add_member(:directories, Shapes::ShapeRef.new(shape: DirectoryList, location_name: "Directories"))
    DescribeWorkspaceDirectoriesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    DescribeWorkspaceDirectoriesResult.struct_class = Types::DescribeWorkspaceDirectoriesResult

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

    IpGroupIdList.member = Shapes::ShapeRef.new(shape: IpGroupId)

    IpRevokedRuleList.member = Shapes::ShapeRef.new(shape: IpRule)

    IpRuleItem.add_member(:ip_rule, Shapes::ShapeRef.new(shape: IpRule, location_name: "ipRule"))
    IpRuleItem.add_member(:rule_desc, Shapes::ShapeRef.new(shape: IpRuleDesc, location_name: "ruleDesc"))
    IpRuleItem.struct_class = Types::IpRuleItem

    IpRuleList.member = Shapes::ShapeRef.new(shape: IpRuleItem)

    ModificationState.add_member(:resource, Shapes::ShapeRef.new(shape: ModificationResourceEnum, location_name: "Resource"))
    ModificationState.add_member(:state, Shapes::ShapeRef.new(shape: ModificationStateEnum, location_name: "State"))
    ModificationState.struct_class = Types::ModificationState

    ModificationStateList.member = Shapes::ShapeRef.new(shape: ModificationState)

    ModifyWorkspacePropertiesRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location_name: "WorkspaceId"))
    ModifyWorkspacePropertiesRequest.add_member(:workspace_properties, Shapes::ShapeRef.new(shape: WorkspaceProperties, required: true, location_name: "WorkspaceProperties"))
    ModifyWorkspacePropertiesRequest.struct_class = Types::ModifyWorkspacePropertiesRequest

    ModifyWorkspacePropertiesResult.struct_class = Types::ModifyWorkspacePropertiesResult

    ModifyWorkspaceStateRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location_name: "WorkspaceId"))
    ModifyWorkspaceStateRequest.add_member(:workspace_state, Shapes::ShapeRef.new(shape: TargetWorkspaceState, required: true, location_name: "WorkspaceState"))
    ModifyWorkspaceStateRequest.struct_class = Types::ModifyWorkspaceStateRequest

    ModifyWorkspaceStateResult.struct_class = Types::ModifyWorkspaceStateResult

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

    RevokeIpRulesRequest.add_member(:group_id, Shapes::ShapeRef.new(shape: IpGroupId, required: true, location_name: "GroupId"))
    RevokeIpRulesRequest.add_member(:user_rules, Shapes::ShapeRef.new(shape: IpRevokedRuleList, required: true, location_name: "UserRules"))
    RevokeIpRulesRequest.struct_class = Types::RevokeIpRulesRequest

    RevokeIpRulesResult.struct_class = Types::RevokeIpRulesResult

    RootStorage.add_member(:capacity, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Capacity"))
    RootStorage.struct_class = Types::RootStorage

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

    UpdateRulesOfIpGroupRequest.add_member(:group_id, Shapes::ShapeRef.new(shape: IpGroupId, required: true, location_name: "GroupId"))
    UpdateRulesOfIpGroupRequest.add_member(:user_rules, Shapes::ShapeRef.new(shape: IpRuleList, required: true, location_name: "UserRules"))
    UpdateRulesOfIpGroupRequest.struct_class = Types::UpdateRulesOfIpGroupRequest

    UpdateRulesOfIpGroupResult.struct_class = Types::UpdateRulesOfIpGroupResult

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

    WorkspaceBundle.add_member(:bundle_id, Shapes::ShapeRef.new(shape: BundleId, location_name: "BundleId"))
    WorkspaceBundle.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    WorkspaceBundle.add_member(:owner, Shapes::ShapeRef.new(shape: BundleOwner, location_name: "Owner"))
    WorkspaceBundle.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    WorkspaceBundle.add_member(:root_storage, Shapes::ShapeRef.new(shape: RootStorage, location_name: "RootStorage"))
    WorkspaceBundle.add_member(:user_storage, Shapes::ShapeRef.new(shape: UserStorage, location_name: "UserStorage"))
    WorkspaceBundle.add_member(:compute_type, Shapes::ShapeRef.new(shape: ComputeType, location_name: "ComputeType"))
    WorkspaceBundle.struct_class = Types::WorkspaceBundle

    WorkspaceConnectionStatus.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, location_name: "WorkspaceId"))
    WorkspaceConnectionStatus.add_member(:connection_state, Shapes::ShapeRef.new(shape: ConnectionState, location_name: "ConnectionState"))
    WorkspaceConnectionStatus.add_member(:connection_state_check_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ConnectionStateCheckTimestamp"))
    WorkspaceConnectionStatus.add_member(:last_known_user_connection_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastKnownUserConnectionTimestamp"))
    WorkspaceConnectionStatus.struct_class = Types::WorkspaceConnectionStatus

    WorkspaceConnectionStatusList.member = Shapes::ShapeRef.new(shape: WorkspaceConnectionStatus)

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
    WorkspaceDirectory.struct_class = Types::WorkspaceDirectory

    WorkspaceIdList.member = Shapes::ShapeRef.new(shape: WorkspaceId)

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
    end

  end
end
