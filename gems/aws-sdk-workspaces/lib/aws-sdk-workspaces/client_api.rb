# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::WorkSpaces
  # @api private
  module ClientApi

    include Seahorse::Model

    AGAModeForDirectoryEnum = Shapes::StringShape.new(name: 'AGAModeForDirectoryEnum')
    AGAModeForWorkSpaceEnum = Shapes::StringShape.new(name: 'AGAModeForWorkSpaceEnum')
    AGAPreferredProtocolForDirectory = Shapes::StringShape.new(name: 'AGAPreferredProtocolForDirectory')
    AGAPreferredProtocolForWorkSpace = Shapes::StringShape.new(name: 'AGAPreferredProtocolForWorkSpace')
    ARN = Shapes::StringShape.new(name: 'ARN')
    AcceptAccountLinkInvitationRequest = Shapes::StructureShape.new(name: 'AcceptAccountLinkInvitationRequest')
    AcceptAccountLinkInvitationResult = Shapes::StructureShape.new(name: 'AcceptAccountLinkInvitationResult')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccessEndpoint = Shapes::StructureShape.new(name: 'AccessEndpoint')
    AccessEndpointConfig = Shapes::StructureShape.new(name: 'AccessEndpointConfig')
    AccessEndpointList = Shapes::ListShape.new(name: 'AccessEndpointList')
    AccessEndpointType = Shapes::StringShape.new(name: 'AccessEndpointType')
    AccessPropertyValue = Shapes::StringShape.new(name: 'AccessPropertyValue')
    AccountLink = Shapes::StructureShape.new(name: 'AccountLink')
    AccountLinkList = Shapes::ListShape.new(name: 'AccountLinkList')
    AccountLinkStatusEnum = Shapes::StringShape.new(name: 'AccountLinkStatusEnum')
    AccountModification = Shapes::StructureShape.new(name: 'AccountModification')
    AccountModificationList = Shapes::ListShape.new(name: 'AccountModificationList')
    ActiveDirectoryConfig = Shapes::StructureShape.new(name: 'ActiveDirectoryConfig')
    ActiveUserSessions = Shapes::IntegerShape.new(name: 'ActiveUserSessions')
    ActualUserSessions = Shapes::IntegerShape.new(name: 'ActualUserSessions')
    AddInName = Shapes::StringShape.new(name: 'AddInName')
    AddInUrl = Shapes::StringShape.new(name: 'AddInUrl')
    Alias = Shapes::StringShape.new(name: 'Alias')
    AlphanumericDashUnderscoreNonEmptyString = Shapes::StringShape.new(name: 'AlphanumericDashUnderscoreNonEmptyString')
    AmazonUuid = Shapes::StringShape.new(name: 'AmazonUuid')
    Application = Shapes::StringShape.new(name: 'Application')
    ApplicationAssociatedResourceType = Shapes::StringShape.new(name: 'ApplicationAssociatedResourceType')
    ApplicationAssociatedResourceTypeList = Shapes::ListShape.new(name: 'ApplicationAssociatedResourceTypeList')
    ApplicationList = Shapes::ListShape.new(name: 'ApplicationList')
    ApplicationNotSupportedException = Shapes::StructureShape.new(name: 'ApplicationNotSupportedException')
    ApplicationResourceAssociation = Shapes::StructureShape.new(name: 'ApplicationResourceAssociation')
    ApplicationResourceAssociationList = Shapes::ListShape.new(name: 'ApplicationResourceAssociationList')
    ApplicationSettingsRequest = Shapes::StructureShape.new(name: 'ApplicationSettingsRequest')
    ApplicationSettingsResponse = Shapes::StructureShape.new(name: 'ApplicationSettingsResponse')
    ApplicationSettingsStatusEnum = Shapes::StringShape.new(name: 'ApplicationSettingsStatusEnum')
    AssociateConnectionAliasRequest = Shapes::StructureShape.new(name: 'AssociateConnectionAliasRequest')
    AssociateConnectionAliasResult = Shapes::StructureShape.new(name: 'AssociateConnectionAliasResult')
    AssociateIpGroupsRequest = Shapes::StructureShape.new(name: 'AssociateIpGroupsRequest')
    AssociateIpGroupsResult = Shapes::StructureShape.new(name: 'AssociateIpGroupsResult')
    AssociateWorkspaceApplicationRequest = Shapes::StructureShape.new(name: 'AssociateWorkspaceApplicationRequest')
    AssociateWorkspaceApplicationResult = Shapes::StructureShape.new(name: 'AssociateWorkspaceApplicationResult')
    AssociationErrorCode = Shapes::StringShape.new(name: 'AssociationErrorCode')
    AssociationState = Shapes::StringShape.new(name: 'AssociationState')
    AssociationStateReason = Shapes::StructureShape.new(name: 'AssociationStateReason')
    AssociationStatus = Shapes::StringShape.new(name: 'AssociationStatus')
    AuthenticationType = Shapes::StringShape.new(name: 'AuthenticationType')
    AuthorizeIpRulesRequest = Shapes::StructureShape.new(name: 'AuthorizeIpRulesRequest')
    AuthorizeIpRulesResult = Shapes::StructureShape.new(name: 'AuthorizeIpRulesResult')
    AvailableUserSessions = Shapes::IntegerShape.new(name: 'AvailableUserSessions')
    AwsAccount = Shapes::StringShape.new(name: 'AwsAccount')
    BooleanObject = Shapes::BooleanShape.new(name: 'BooleanObject')
    BundleAssociatedResourceType = Shapes::StringShape.new(name: 'BundleAssociatedResourceType')
    BundleAssociatedResourceTypeList = Shapes::ListShape.new(name: 'BundleAssociatedResourceTypeList')
    BundleId = Shapes::StringShape.new(name: 'BundleId')
    BundleIdList = Shapes::ListShape.new(name: 'BundleIdList')
    BundleList = Shapes::ListShape.new(name: 'BundleList')
    BundleOwner = Shapes::StringShape.new(name: 'BundleOwner')
    BundleResourceAssociation = Shapes::StructureShape.new(name: 'BundleResourceAssociation')
    BundleResourceAssociationList = Shapes::ListShape.new(name: 'BundleResourceAssociationList')
    BundleType = Shapes::StringShape.new(name: 'BundleType')
    Capacity = Shapes::StructureShape.new(name: 'Capacity')
    CapacityStatus = Shapes::StructureShape.new(name: 'CapacityStatus')
    CertificateAuthorityArn = Shapes::StringShape.new(name: 'CertificateAuthorityArn')
    CertificateBasedAuthProperties = Shapes::StructureShape.new(name: 'CertificateBasedAuthProperties')
    CertificateBasedAuthStatusEnum = Shapes::StringShape.new(name: 'CertificateBasedAuthStatusEnum')
    ClientDeviceType = Shapes::StringShape.new(name: 'ClientDeviceType')
    ClientDeviceTypeList = Shapes::ListShape.new(name: 'ClientDeviceTypeList')
    ClientEmail = Shapes::StringShape.new(name: 'ClientEmail')
    ClientLocale = Shapes::StringShape.new(name: 'ClientLocale')
    ClientLoginMessage = Shapes::StringShape.new(name: 'ClientLoginMessage')
    ClientProperties = Shapes::StructureShape.new(name: 'ClientProperties')
    ClientPropertiesList = Shapes::ListShape.new(name: 'ClientPropertiesList')
    ClientPropertiesResult = Shapes::StructureShape.new(name: 'ClientPropertiesResult')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ClientUrl = Shapes::StringShape.new(name: 'ClientUrl')
    Compute = Shapes::StringShape.new(name: 'Compute')
    ComputeList = Shapes::ListShape.new(name: 'ComputeList')
    ComputeNotCompatibleException = Shapes::StructureShape.new(name: 'ComputeNotCompatibleException')
    ComputeType = Shapes::StructureShape.new(name: 'ComputeType')
    ComputerName = Shapes::StringShape.new(name: 'ComputerName')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConnectClientAddIn = Shapes::StructureShape.new(name: 'ConnectClientAddIn')
    ConnectClientAddInList = Shapes::ListShape.new(name: 'ConnectClientAddInList')
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
    CreateAccountLinkInvitationRequest = Shapes::StructureShape.new(name: 'CreateAccountLinkInvitationRequest')
    CreateAccountLinkInvitationResult = Shapes::StructureShape.new(name: 'CreateAccountLinkInvitationResult')
    CreateConnectClientAddInRequest = Shapes::StructureShape.new(name: 'CreateConnectClientAddInRequest')
    CreateConnectClientAddInResult = Shapes::StructureShape.new(name: 'CreateConnectClientAddInResult')
    CreateConnectionAliasRequest = Shapes::StructureShape.new(name: 'CreateConnectionAliasRequest')
    CreateConnectionAliasResult = Shapes::StructureShape.new(name: 'CreateConnectionAliasResult')
    CreateIpGroupRequest = Shapes::StructureShape.new(name: 'CreateIpGroupRequest')
    CreateIpGroupResult = Shapes::StructureShape.new(name: 'CreateIpGroupResult')
    CreateStandbyWorkspacesRequest = Shapes::StructureShape.new(name: 'CreateStandbyWorkspacesRequest')
    CreateStandbyWorkspacesResult = Shapes::StructureShape.new(name: 'CreateStandbyWorkspacesResult')
    CreateTagsRequest = Shapes::StructureShape.new(name: 'CreateTagsRequest')
    CreateTagsResult = Shapes::StructureShape.new(name: 'CreateTagsResult')
    CreateUpdatedWorkspaceImageRequest = Shapes::StructureShape.new(name: 'CreateUpdatedWorkspaceImageRequest')
    CreateUpdatedWorkspaceImageResult = Shapes::StructureShape.new(name: 'CreateUpdatedWorkspaceImageResult')
    CreateWorkspaceBundleRequest = Shapes::StructureShape.new(name: 'CreateWorkspaceBundleRequest')
    CreateWorkspaceBundleResult = Shapes::StructureShape.new(name: 'CreateWorkspaceBundleResult')
    CreateWorkspaceImageRequest = Shapes::StructureShape.new(name: 'CreateWorkspaceImageRequest')
    CreateWorkspaceImageResult = Shapes::StructureShape.new(name: 'CreateWorkspaceImageResult')
    CreateWorkspacesPoolRequest = Shapes::StructureShape.new(name: 'CreateWorkspacesPoolRequest')
    CreateWorkspacesPoolResult = Shapes::StructureShape.new(name: 'CreateWorkspacesPoolResult')
    CreateWorkspacesRequest = Shapes::StructureShape.new(name: 'CreateWorkspacesRequest')
    CreateWorkspacesResult = Shapes::StructureShape.new(name: 'CreateWorkspacesResult')
    CustomImageProtocol = Shapes::StringShape.new(name: 'CustomImageProtocol')
    CustomWorkspaceImageImportErrorDetails = Shapes::StructureShape.new(name: 'CustomWorkspaceImageImportErrorDetails')
    CustomWorkspaceImageImportErrorDetailsList = Shapes::ListShape.new(name: 'CustomWorkspaceImageImportErrorDetailsList')
    CustomWorkspaceImageImportState = Shapes::StringShape.new(name: 'CustomWorkspaceImageImportState')
    DataReplication = Shapes::StringShape.new(name: 'DataReplication')
    DataReplicationSettings = Shapes::StructureShape.new(name: 'DataReplicationSettings')
    DedicatedTenancyAccountType = Shapes::StringShape.new(name: 'DedicatedTenancyAccountType')
    DedicatedTenancyCidrRangeList = Shapes::ListShape.new(name: 'DedicatedTenancyCidrRangeList')
    DedicatedTenancyManagementCidrRange = Shapes::StringShape.new(name: 'DedicatedTenancyManagementCidrRange')
    DedicatedTenancyModificationStateEnum = Shapes::StringShape.new(name: 'DedicatedTenancyModificationStateEnum')
    DedicatedTenancySupportEnum = Shapes::StringShape.new(name: 'DedicatedTenancySupportEnum')
    DedicatedTenancySupportResultEnum = Shapes::StringShape.new(name: 'DedicatedTenancySupportResultEnum')
    DefaultClientBrandingAttributes = Shapes::StructureShape.new(name: 'DefaultClientBrandingAttributes')
    DefaultImportClientBrandingAttributes = Shapes::StructureShape.new(name: 'DefaultImportClientBrandingAttributes')
    DefaultLogo = Shapes::BlobShape.new(name: 'DefaultLogo')
    DefaultOu = Shapes::StringShape.new(name: 'DefaultOu')
    DefaultWorkspaceCreationProperties = Shapes::StructureShape.new(name: 'DefaultWorkspaceCreationProperties')
    DeletableCertificateBasedAuthPropertiesList = Shapes::ListShape.new(name: 'DeletableCertificateBasedAuthPropertiesList')
    DeletableCertificateBasedAuthProperty = Shapes::StringShape.new(name: 'DeletableCertificateBasedAuthProperty')
    DeletableSamlPropertiesList = Shapes::ListShape.new(name: 'DeletableSamlPropertiesList')
    DeletableSamlProperty = Shapes::StringShape.new(name: 'DeletableSamlProperty')
    DeleteAccountLinkInvitationRequest = Shapes::StructureShape.new(name: 'DeleteAccountLinkInvitationRequest')
    DeleteAccountLinkInvitationResult = Shapes::StructureShape.new(name: 'DeleteAccountLinkInvitationResult')
    DeleteClientBrandingRequest = Shapes::StructureShape.new(name: 'DeleteClientBrandingRequest')
    DeleteClientBrandingResult = Shapes::StructureShape.new(name: 'DeleteClientBrandingResult')
    DeleteConnectClientAddInRequest = Shapes::StructureShape.new(name: 'DeleteConnectClientAddInRequest')
    DeleteConnectClientAddInResult = Shapes::StructureShape.new(name: 'DeleteConnectClientAddInResult')
    DeleteConnectionAliasRequest = Shapes::StructureShape.new(name: 'DeleteConnectionAliasRequest')
    DeleteConnectionAliasResult = Shapes::StructureShape.new(name: 'DeleteConnectionAliasResult')
    DeleteIpGroupRequest = Shapes::StructureShape.new(name: 'DeleteIpGroupRequest')
    DeleteIpGroupResult = Shapes::StructureShape.new(name: 'DeleteIpGroupResult')
    DeleteTagsRequest = Shapes::StructureShape.new(name: 'DeleteTagsRequest')
    DeleteTagsResult = Shapes::StructureShape.new(name: 'DeleteTagsResult')
    DeleteWorkspaceBundleRequest = Shapes::StructureShape.new(name: 'DeleteWorkspaceBundleRequest')
    DeleteWorkspaceBundleResult = Shapes::StructureShape.new(name: 'DeleteWorkspaceBundleResult')
    DeleteWorkspaceImageRequest = Shapes::StructureShape.new(name: 'DeleteWorkspaceImageRequest')
    DeleteWorkspaceImageResult = Shapes::StructureShape.new(name: 'DeleteWorkspaceImageResult')
    DeployWorkspaceApplicationsRequest = Shapes::StructureShape.new(name: 'DeployWorkspaceApplicationsRequest')
    DeployWorkspaceApplicationsResult = Shapes::StructureShape.new(name: 'DeployWorkspaceApplicationsResult')
    DeregisterWorkspaceDirectoryRequest = Shapes::StructureShape.new(name: 'DeregisterWorkspaceDirectoryRequest')
    DeregisterWorkspaceDirectoryResult = Shapes::StructureShape.new(name: 'DeregisterWorkspaceDirectoryResult')
    DescribeAccountModificationsRequest = Shapes::StructureShape.new(name: 'DescribeAccountModificationsRequest')
    DescribeAccountModificationsResult = Shapes::StructureShape.new(name: 'DescribeAccountModificationsResult')
    DescribeAccountRequest = Shapes::StructureShape.new(name: 'DescribeAccountRequest')
    DescribeAccountResult = Shapes::StructureShape.new(name: 'DescribeAccountResult')
    DescribeApplicationAssociationsRequest = Shapes::StructureShape.new(name: 'DescribeApplicationAssociationsRequest')
    DescribeApplicationAssociationsResult = Shapes::StructureShape.new(name: 'DescribeApplicationAssociationsResult')
    DescribeApplicationsRequest = Shapes::StructureShape.new(name: 'DescribeApplicationsRequest')
    DescribeApplicationsResult = Shapes::StructureShape.new(name: 'DescribeApplicationsResult')
    DescribeBundleAssociationsRequest = Shapes::StructureShape.new(name: 'DescribeBundleAssociationsRequest')
    DescribeBundleAssociationsResult = Shapes::StructureShape.new(name: 'DescribeBundleAssociationsResult')
    DescribeClientBrandingRequest = Shapes::StructureShape.new(name: 'DescribeClientBrandingRequest')
    DescribeClientBrandingResult = Shapes::StructureShape.new(name: 'DescribeClientBrandingResult')
    DescribeClientPropertiesRequest = Shapes::StructureShape.new(name: 'DescribeClientPropertiesRequest')
    DescribeClientPropertiesResult = Shapes::StructureShape.new(name: 'DescribeClientPropertiesResult')
    DescribeConnectClientAddInsRequest = Shapes::StructureShape.new(name: 'DescribeConnectClientAddInsRequest')
    DescribeConnectClientAddInsResult = Shapes::StructureShape.new(name: 'DescribeConnectClientAddInsResult')
    DescribeConnectionAliasPermissionsRequest = Shapes::StructureShape.new(name: 'DescribeConnectionAliasPermissionsRequest')
    DescribeConnectionAliasPermissionsResult = Shapes::StructureShape.new(name: 'DescribeConnectionAliasPermissionsResult')
    DescribeConnectionAliasesRequest = Shapes::StructureShape.new(name: 'DescribeConnectionAliasesRequest')
    DescribeConnectionAliasesResult = Shapes::StructureShape.new(name: 'DescribeConnectionAliasesResult')
    DescribeCustomWorkspaceImageImportRequest = Shapes::StructureShape.new(name: 'DescribeCustomWorkspaceImageImportRequest')
    DescribeCustomWorkspaceImageImportResult = Shapes::StructureShape.new(name: 'DescribeCustomWorkspaceImageImportResult')
    DescribeImageAssociationsRequest = Shapes::StructureShape.new(name: 'DescribeImageAssociationsRequest')
    DescribeImageAssociationsResult = Shapes::StructureShape.new(name: 'DescribeImageAssociationsResult')
    DescribeIpGroupsRequest = Shapes::StructureShape.new(name: 'DescribeIpGroupsRequest')
    DescribeIpGroupsResult = Shapes::StructureShape.new(name: 'DescribeIpGroupsResult')
    DescribeTagsRequest = Shapes::StructureShape.new(name: 'DescribeTagsRequest')
    DescribeTagsResult = Shapes::StructureShape.new(name: 'DescribeTagsResult')
    DescribeWorkspaceAssociationsRequest = Shapes::StructureShape.new(name: 'DescribeWorkspaceAssociationsRequest')
    DescribeWorkspaceAssociationsResult = Shapes::StructureShape.new(name: 'DescribeWorkspaceAssociationsResult')
    DescribeWorkspaceBundlesRequest = Shapes::StructureShape.new(name: 'DescribeWorkspaceBundlesRequest')
    DescribeWorkspaceBundlesResult = Shapes::StructureShape.new(name: 'DescribeWorkspaceBundlesResult')
    DescribeWorkspaceDirectoriesFilter = Shapes::StructureShape.new(name: 'DescribeWorkspaceDirectoriesFilter')
    DescribeWorkspaceDirectoriesFilterList = Shapes::ListShape.new(name: 'DescribeWorkspaceDirectoriesFilterList')
    DescribeWorkspaceDirectoriesFilterName = Shapes::StringShape.new(name: 'DescribeWorkspaceDirectoriesFilterName')
    DescribeWorkspaceDirectoriesFilterValue = Shapes::StringShape.new(name: 'DescribeWorkspaceDirectoriesFilterValue')
    DescribeWorkspaceDirectoriesFilterValues = Shapes::ListShape.new(name: 'DescribeWorkspaceDirectoriesFilterValues')
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
    DescribeWorkspacesPoolSessionsRequest = Shapes::StructureShape.new(name: 'DescribeWorkspacesPoolSessionsRequest')
    DescribeWorkspacesPoolSessionsResult = Shapes::StructureShape.new(name: 'DescribeWorkspacesPoolSessionsResult')
    DescribeWorkspacesPoolsFilter = Shapes::StructureShape.new(name: 'DescribeWorkspacesPoolsFilter')
    DescribeWorkspacesPoolsFilterName = Shapes::StringShape.new(name: 'DescribeWorkspacesPoolsFilterName')
    DescribeWorkspacesPoolsFilterOperator = Shapes::StringShape.new(name: 'DescribeWorkspacesPoolsFilterOperator')
    DescribeWorkspacesPoolsFilterValue = Shapes::StringShape.new(name: 'DescribeWorkspacesPoolsFilterValue')
    DescribeWorkspacesPoolsFilterValues = Shapes::ListShape.new(name: 'DescribeWorkspacesPoolsFilterValues')
    DescribeWorkspacesPoolsFilters = Shapes::ListShape.new(name: 'DescribeWorkspacesPoolsFilters')
    DescribeWorkspacesPoolsRequest = Shapes::StructureShape.new(name: 'DescribeWorkspacesPoolsRequest')
    DescribeWorkspacesPoolsResult = Shapes::StructureShape.new(name: 'DescribeWorkspacesPoolsResult')
    DescribeWorkspacesRequest = Shapes::StructureShape.new(name: 'DescribeWorkspacesRequest')
    DescribeWorkspacesResult = Shapes::StructureShape.new(name: 'DescribeWorkspacesResult')
    Description = Shapes::StringShape.new(name: 'Description')
    DesiredUserSessions = Shapes::IntegerShape.new(name: 'DesiredUserSessions')
    DirectoryId = Shapes::StringShape.new(name: 'DirectoryId')
    DirectoryIdList = Shapes::ListShape.new(name: 'DirectoryIdList')
    DirectoryList = Shapes::ListShape.new(name: 'DirectoryList')
    DirectoryName = Shapes::StringShape.new(name: 'DirectoryName')
    DisassociateConnectionAliasRequest = Shapes::StructureShape.new(name: 'DisassociateConnectionAliasRequest')
    DisassociateConnectionAliasResult = Shapes::StructureShape.new(name: 'DisassociateConnectionAliasResult')
    DisassociateIpGroupsRequest = Shapes::StructureShape.new(name: 'DisassociateIpGroupsRequest')
    DisassociateIpGroupsResult = Shapes::StructureShape.new(name: 'DisassociateIpGroupsResult')
    DisassociateWorkspaceApplicationRequest = Shapes::StructureShape.new(name: 'DisassociateWorkspaceApplicationRequest')
    DisassociateWorkspaceApplicationResult = Shapes::StructureShape.new(name: 'DisassociateWorkspaceApplicationResult')
    DisconnectTimeoutInSeconds = Shapes::IntegerShape.new(name: 'DisconnectTimeoutInSeconds')
    DnsIpAddresses = Shapes::ListShape.new(name: 'DnsIpAddresses')
    DnsIpv6Addresses = Shapes::ListShape.new(name: 'DnsIpv6Addresses')
    DomainName = Shapes::StringShape.new(name: 'DomainName')
    Ec2ImageId = Shapes::StringShape.new(name: 'Ec2ImageId')
    Ec2ImportTaskId = Shapes::StringShape.new(name: 'Ec2ImportTaskId')
    EndpointEncryptionMode = Shapes::StringShape.new(name: 'EndpointEncryptionMode')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ErrorDetails = Shapes::StructureShape.new(name: 'ErrorDetails')
    ErrorDetailsList = Shapes::ListShape.new(name: 'ErrorDetailsList')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ErrorType = Shapes::StringShape.new(name: 'ErrorType')
    ExceptionErrorCode = Shapes::StringShape.new(name: 'ExceptionErrorCode')
    ExceptionMessage = Shapes::StringShape.new(name: 'ExceptionMessage')
    FailedCreateStandbyWorkspacesRequest = Shapes::StructureShape.new(name: 'FailedCreateStandbyWorkspacesRequest')
    FailedCreateStandbyWorkspacesRequestList = Shapes::ListShape.new(name: 'FailedCreateStandbyWorkspacesRequestList')
    FailedCreateWorkspaceRequest = Shapes::StructureShape.new(name: 'FailedCreateWorkspaceRequest')
    FailedCreateWorkspaceRequests = Shapes::ListShape.new(name: 'FailedCreateWorkspaceRequests')
    FailedRebootWorkspaceRequests = Shapes::ListShape.new(name: 'FailedRebootWorkspaceRequests')
    FailedRebuildWorkspaceRequests = Shapes::ListShape.new(name: 'FailedRebuildWorkspaceRequests')
    FailedStartWorkspaceRequests = Shapes::ListShape.new(name: 'FailedStartWorkspaceRequests')
    FailedStopWorkspaceRequests = Shapes::ListShape.new(name: 'FailedStopWorkspaceRequests')
    FailedTerminateWorkspaceRequests = Shapes::ListShape.new(name: 'FailedTerminateWorkspaceRequests')
    FailedWorkspaceChangeRequest = Shapes::StructureShape.new(name: 'FailedWorkspaceChangeRequest')
    GetAccountLinkRequest = Shapes::StructureShape.new(name: 'GetAccountLinkRequest')
    GetAccountLinkResult = Shapes::StructureShape.new(name: 'GetAccountLinkResult')
    GlobalAcceleratorForDirectory = Shapes::StructureShape.new(name: 'GlobalAcceleratorForDirectory')
    GlobalAcceleratorForWorkSpace = Shapes::StructureShape.new(name: 'GlobalAcceleratorForWorkSpace')
    IDCConfig = Shapes::StructureShape.new(name: 'IDCConfig')
    IdleDisconnectTimeoutInSeconds = Shapes::IntegerShape.new(name: 'IdleDisconnectTimeoutInSeconds')
    ImageAssociatedResourceType = Shapes::StringShape.new(name: 'ImageAssociatedResourceType')
    ImageAssociatedResourceTypeList = Shapes::ListShape.new(name: 'ImageAssociatedResourceTypeList')
    ImageBuildVersionArn = Shapes::StringShape.new(name: 'ImageBuildVersionArn')
    ImageComputeType = Shapes::StringShape.new(name: 'ImageComputeType')
    ImageErrorMessage = Shapes::StringShape.new(name: 'ImageErrorMessage')
    ImagePermission = Shapes::StructureShape.new(name: 'ImagePermission')
    ImagePermissions = Shapes::ListShape.new(name: 'ImagePermissions')
    ImageResourceAssociation = Shapes::StructureShape.new(name: 'ImageResourceAssociation')
    ImageResourceAssociationList = Shapes::ListShape.new(name: 'ImageResourceAssociationList')
    ImageSourceIdentifier = Shapes::UnionShape.new(name: 'ImageSourceIdentifier')
    ImageType = Shapes::StringShape.new(name: 'ImageType')
    ImportClientBrandingRequest = Shapes::StructureShape.new(name: 'ImportClientBrandingRequest')
    ImportClientBrandingResult = Shapes::StructureShape.new(name: 'ImportClientBrandingResult')
    ImportCustomWorkspaceImageRequest = Shapes::StructureShape.new(name: 'ImportCustomWorkspaceImageRequest')
    ImportCustomWorkspaceImageResult = Shapes::StructureShape.new(name: 'ImportCustomWorkspaceImageResult')
    ImportWorkspaceImageRequest = Shapes::StructureShape.new(name: 'ImportWorkspaceImageRequest')
    ImportWorkspaceImageResult = Shapes::StructureShape.new(name: 'ImportWorkspaceImageResult')
    IncompatibleApplicationsException = Shapes::StructureShape.new(name: 'IncompatibleApplicationsException')
    InfrastructureConfigurationArn = Shapes::StringShape.new(name: 'InfrastructureConfigurationArn')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InternetFallbackProtocol = Shapes::StringShape.new(name: 'InternetFallbackProtocol')
    InternetFallbackProtocolList = Shapes::ListShape.new(name: 'InternetFallbackProtocolList')
    InvalidParameterCombinationException = Shapes::StructureShape.new(name: 'InvalidParameterCombinationException')
    InvalidParameterValuesException = Shapes::StructureShape.new(name: 'InvalidParameterValuesException')
    InvalidResourceStateException = Shapes::StructureShape.new(name: 'InvalidResourceStateException')
    Ios2XLogo = Shapes::BlobShape.new(name: 'Ios2XLogo')
    Ios3XLogo = Shapes::BlobShape.new(name: 'Ios3XLogo')
    IosClientBrandingAttributes = Shapes::StructureShape.new(name: 'IosClientBrandingAttributes')
    IosImportClientBrandingAttributes = Shapes::StructureShape.new(name: 'IosImportClientBrandingAttributes')
    IosLogo = Shapes::BlobShape.new(name: 'IosLogo')
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
    Ipv6Address = Shapes::StringShape.new(name: 'Ipv6Address')
    Limit = Shapes::IntegerShape.new(name: 'Limit')
    Limit50 = Shapes::IntegerShape.new(name: 'Limit50')
    LinkId = Shapes::StringShape.new(name: 'LinkId')
    LinkStatusFilterList = Shapes::ListShape.new(name: 'LinkStatusFilterList')
    ListAccountLinksRequest = Shapes::StructureShape.new(name: 'ListAccountLinksRequest')
    ListAccountLinksResult = Shapes::StructureShape.new(name: 'ListAccountLinksResult')
    ListAvailableManagementCidrRangesRequest = Shapes::StructureShape.new(name: 'ListAvailableManagementCidrRangesRequest')
    ListAvailableManagementCidrRangesResult = Shapes::StructureShape.new(name: 'ListAvailableManagementCidrRangesResult')
    LogUploadEnum = Shapes::StringShape.new(name: 'LogUploadEnum')
    LoginMessage = Shapes::MapShape.new(name: 'LoginMessage')
    ManagementCidrRangeConstraint = Shapes::StringShape.new(name: 'ManagementCidrRangeConstraint')
    ManagementCidrRangeMaxResults = Shapes::IntegerShape.new(name: 'ManagementCidrRangeMaxResults')
    MaxUserDurationInSeconds = Shapes::IntegerShape.new(name: 'MaxUserDurationInSeconds')
    MaximumLength = Shapes::IntegerShape.new(name: 'MaximumLength')
    Message = Shapes::StringShape.new(name: 'Message')
    MicrosoftEntraConfig = Shapes::StructureShape.new(name: 'MicrosoftEntraConfig')
    MicrosoftEntraConfigTenantId = Shapes::StringShape.new(name: 'MicrosoftEntraConfigTenantId')
    MigrateWorkspaceRequest = Shapes::StructureShape.new(name: 'MigrateWorkspaceRequest')
    MigrateWorkspaceResult = Shapes::StructureShape.new(name: 'MigrateWorkspaceResult')
    ModificationResourceEnum = Shapes::StringShape.new(name: 'ModificationResourceEnum')
    ModificationState = Shapes::StructureShape.new(name: 'ModificationState')
    ModificationStateEnum = Shapes::StringShape.new(name: 'ModificationStateEnum')
    ModificationStateList = Shapes::ListShape.new(name: 'ModificationStateList')
    ModifyAccountRequest = Shapes::StructureShape.new(name: 'ModifyAccountRequest')
    ModifyAccountResult = Shapes::StructureShape.new(name: 'ModifyAccountResult')
    ModifyCertificateBasedAuthPropertiesRequest = Shapes::StructureShape.new(name: 'ModifyCertificateBasedAuthPropertiesRequest')
    ModifyCertificateBasedAuthPropertiesResult = Shapes::StructureShape.new(name: 'ModifyCertificateBasedAuthPropertiesResult')
    ModifyClientPropertiesRequest = Shapes::StructureShape.new(name: 'ModifyClientPropertiesRequest')
    ModifyClientPropertiesResult = Shapes::StructureShape.new(name: 'ModifyClientPropertiesResult')
    ModifyEndpointEncryptionModeRequest = Shapes::StructureShape.new(name: 'ModifyEndpointEncryptionModeRequest')
    ModifyEndpointEncryptionModeResponse = Shapes::StructureShape.new(name: 'ModifyEndpointEncryptionModeResponse')
    ModifySamlPropertiesRequest = Shapes::StructureShape.new(name: 'ModifySamlPropertiesRequest')
    ModifySamlPropertiesResult = Shapes::StructureShape.new(name: 'ModifySamlPropertiesResult')
    ModifySelfservicePermissionsRequest = Shapes::StructureShape.new(name: 'ModifySelfservicePermissionsRequest')
    ModifySelfservicePermissionsResult = Shapes::StructureShape.new(name: 'ModifySelfservicePermissionsResult')
    ModifyStreamingPropertiesRequest = Shapes::StructureShape.new(name: 'ModifyStreamingPropertiesRequest')
    ModifyStreamingPropertiesResult = Shapes::StructureShape.new(name: 'ModifyStreamingPropertiesResult')
    ModifyWorkspaceAccessPropertiesRequest = Shapes::StructureShape.new(name: 'ModifyWorkspaceAccessPropertiesRequest')
    ModifyWorkspaceAccessPropertiesResult = Shapes::StructureShape.new(name: 'ModifyWorkspaceAccessPropertiesResult')
    ModifyWorkspaceCreationPropertiesRequest = Shapes::StructureShape.new(name: 'ModifyWorkspaceCreationPropertiesRequest')
    ModifyWorkspaceCreationPropertiesResult = Shapes::StructureShape.new(name: 'ModifyWorkspaceCreationPropertiesResult')
    ModifyWorkspacePropertiesRequest = Shapes::StructureShape.new(name: 'ModifyWorkspacePropertiesRequest')
    ModifyWorkspacePropertiesResult = Shapes::StructureShape.new(name: 'ModifyWorkspacePropertiesResult')
    ModifyWorkspaceStateRequest = Shapes::StructureShape.new(name: 'ModifyWorkspaceStateRequest')
    ModifyWorkspaceStateResult = Shapes::StructureShape.new(name: 'ModifyWorkspaceStateResult')
    NetworkAccessConfiguration = Shapes::StructureShape.new(name: 'NetworkAccessConfiguration')
    NonEmptyString = Shapes::StringShape.new(name: 'NonEmptyString')
    OSVersion = Shapes::StringShape.new(name: 'OSVersion')
    OperatingSystem = Shapes::StructureShape.new(name: 'OperatingSystem')
    OperatingSystemName = Shapes::StringShape.new(name: 'OperatingSystemName')
    OperatingSystemNameList = Shapes::ListShape.new(name: 'OperatingSystemNameList')
    OperatingSystemNotCompatibleException = Shapes::StructureShape.new(name: 'OperatingSystemNotCompatibleException')
    OperatingSystemType = Shapes::StringShape.new(name: 'OperatingSystemType')
    OperationInProgressException = Shapes::StructureShape.new(name: 'OperationInProgressException')
    OperationNotSupportedException = Shapes::StructureShape.new(name: 'OperationNotSupportedException')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    PendingCreateStandbyWorkspacesRequest = Shapes::StructureShape.new(name: 'PendingCreateStandbyWorkspacesRequest')
    PendingCreateStandbyWorkspacesRequestList = Shapes::ListShape.new(name: 'PendingCreateStandbyWorkspacesRequestList')
    Platform = Shapes::StringShape.new(name: 'Platform')
    PoolsRunningMode = Shapes::StringShape.new(name: 'PoolsRunningMode')
    Protocol = Shapes::StringShape.new(name: 'Protocol')
    ProtocolList = Shapes::ListShape.new(name: 'ProtocolList')
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
    RejectAccountLinkInvitationRequest = Shapes::StructureShape.new(name: 'RejectAccountLinkInvitationRequest')
    RejectAccountLinkInvitationResult = Shapes::StructureShape.new(name: 'RejectAccountLinkInvitationResult')
    RelatedWorkspaceProperties = Shapes::StructureShape.new(name: 'RelatedWorkspaceProperties')
    RelatedWorkspaces = Shapes::ListShape.new(name: 'RelatedWorkspaces')
    ResourceAlreadyExistsException = Shapes::StructureShape.new(name: 'ResourceAlreadyExistsException')
    ResourceAssociatedException = Shapes::StructureShape.new(name: 'ResourceAssociatedException')
    ResourceCreationFailedException = Shapes::StructureShape.new(name: 'ResourceCreationFailedException')
    ResourceIdList = Shapes::ListShape.new(name: 'ResourceIdList')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
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
    S3BucketName = Shapes::StringShape.new(name: 'S3BucketName')
    SamlProperties = Shapes::StructureShape.new(name: 'SamlProperties')
    SamlStatusEnum = Shapes::StringShape.new(name: 'SamlStatusEnum')
    SamlUserAccessUrl = Shapes::StringShape.new(name: 'SamlUserAccessUrl')
    SecretsManagerArn = Shapes::StringShape.new(name: 'SecretsManagerArn')
    SecurityGroupId = Shapes::StringShape.new(name: 'SecurityGroupId')
    SelfservicePermissions = Shapes::StructureShape.new(name: 'SelfservicePermissions')
    SessionConnectionState = Shapes::StringShape.new(name: 'SessionConnectionState')
    SessionInstanceId = Shapes::StringShape.new(name: 'SessionInstanceId')
    SettingsGroup = Shapes::StringShape.new(name: 'SettingsGroup')
    Snapshot = Shapes::StructureShape.new(name: 'Snapshot')
    SnapshotList = Shapes::ListShape.new(name: 'SnapshotList')
    StandbyWorkspace = Shapes::StructureShape.new(name: 'StandbyWorkspace')
    StandbyWorkspaceRelationshipType = Shapes::StringShape.new(name: 'StandbyWorkspaceRelationshipType')
    StandbyWorkspacesList = Shapes::ListShape.new(name: 'StandbyWorkspacesList')
    StandbyWorkspacesProperties = Shapes::StructureShape.new(name: 'StandbyWorkspacesProperties')
    StandbyWorkspacesPropertiesList = Shapes::ListShape.new(name: 'StandbyWorkspacesPropertiesList')
    StartRequest = Shapes::StructureShape.new(name: 'StartRequest')
    StartWorkspaceRequests = Shapes::ListShape.new(name: 'StartWorkspaceRequests')
    StartWorkspacesPoolRequest = Shapes::StructureShape.new(name: 'StartWorkspacesPoolRequest')
    StartWorkspacesPoolResult = Shapes::StructureShape.new(name: 'StartWorkspacesPoolResult')
    StartWorkspacesRequest = Shapes::StructureShape.new(name: 'StartWorkspacesRequest')
    StartWorkspacesResult = Shapes::StructureShape.new(name: 'StartWorkspacesResult')
    StopRequest = Shapes::StructureShape.new(name: 'StopRequest')
    StopWorkspaceRequests = Shapes::ListShape.new(name: 'StopWorkspaceRequests')
    StopWorkspacesPoolRequest = Shapes::StructureShape.new(name: 'StopWorkspacesPoolRequest')
    StopWorkspacesPoolResult = Shapes::StructureShape.new(name: 'StopWorkspacesPoolResult')
    StopWorkspacesRequest = Shapes::StructureShape.new(name: 'StopWorkspacesRequest')
    StopWorkspacesResult = Shapes::StructureShape.new(name: 'StopWorkspacesResult')
    StorageConnector = Shapes::StructureShape.new(name: 'StorageConnector')
    StorageConnectorStatusEnum = Shapes::StringShape.new(name: 'StorageConnectorStatusEnum')
    StorageConnectorTypeEnum = Shapes::StringShape.new(name: 'StorageConnectorTypeEnum')
    StorageConnectors = Shapes::ListShape.new(name: 'StorageConnectors')
    StreamingExperiencePreferredProtocolEnum = Shapes::StringShape.new(name: 'StreamingExperiencePreferredProtocolEnum')
    StreamingProperties = Shapes::StructureShape.new(name: 'StreamingProperties')
    String2048 = Shapes::StringShape.new(name: 'String2048')
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
    TerminateWorkspacesPoolRequest = Shapes::StructureShape.new(name: 'TerminateWorkspacesPoolRequest')
    TerminateWorkspacesPoolResult = Shapes::StructureShape.new(name: 'TerminateWorkspacesPoolResult')
    TerminateWorkspacesPoolSessionRequest = Shapes::StructureShape.new(name: 'TerminateWorkspacesPoolSessionRequest')
    TerminateWorkspacesPoolSessionResult = Shapes::StructureShape.new(name: 'TerminateWorkspacesPoolSessionResult')
    TerminateWorkspacesRequest = Shapes::StructureShape.new(name: 'TerminateWorkspacesRequest')
    TerminateWorkspacesResult = Shapes::StructureShape.new(name: 'TerminateWorkspacesResult')
    TimeoutSettings = Shapes::StructureShape.new(name: 'TimeoutSettings')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UnsupportedNetworkConfigurationException = Shapes::StructureShape.new(name: 'UnsupportedNetworkConfigurationException')
    UnsupportedWorkspaceConfigurationException = Shapes::StructureShape.new(name: 'UnsupportedWorkspaceConfigurationException')
    UpdateConnectClientAddInRequest = Shapes::StructureShape.new(name: 'UpdateConnectClientAddInRequest')
    UpdateConnectClientAddInResult = Shapes::StructureShape.new(name: 'UpdateConnectClientAddInResult')
    UpdateConnectionAliasPermissionRequest = Shapes::StructureShape.new(name: 'UpdateConnectionAliasPermissionRequest')
    UpdateConnectionAliasPermissionResult = Shapes::StructureShape.new(name: 'UpdateConnectionAliasPermissionResult')
    UpdateDescription = Shapes::StringShape.new(name: 'UpdateDescription')
    UpdateResult = Shapes::StructureShape.new(name: 'UpdateResult')
    UpdateRulesOfIpGroupRequest = Shapes::StructureShape.new(name: 'UpdateRulesOfIpGroupRequest')
    UpdateRulesOfIpGroupResult = Shapes::StructureShape.new(name: 'UpdateRulesOfIpGroupResult')
    UpdateWorkspaceBundleRequest = Shapes::StructureShape.new(name: 'UpdateWorkspaceBundleRequest')
    UpdateWorkspaceBundleResult = Shapes::StructureShape.new(name: 'UpdateWorkspaceBundleResult')
    UpdateWorkspaceImagePermissionRequest = Shapes::StructureShape.new(name: 'UpdateWorkspaceImagePermissionRequest')
    UpdateWorkspaceImagePermissionResult = Shapes::StructureShape.new(name: 'UpdateWorkspaceImagePermissionResult')
    UpdateWorkspacesPoolRequest = Shapes::StructureShape.new(name: 'UpdateWorkspacesPoolRequest')
    UpdateWorkspacesPoolResult = Shapes::StructureShape.new(name: 'UpdateWorkspacesPoolResult')
    UserIdentityType = Shapes::StringShape.new(name: 'UserIdentityType')
    UserName = Shapes::StringShape.new(name: 'UserName')
    UserSetting = Shapes::StructureShape.new(name: 'UserSetting')
    UserSettingActionEnum = Shapes::StringShape.new(name: 'UserSettingActionEnum')
    UserSettingPermissionEnum = Shapes::StringShape.new(name: 'UserSettingPermissionEnum')
    UserSettings = Shapes::ListShape.new(name: 'UserSettings')
    UserStorage = Shapes::StructureShape.new(name: 'UserStorage')
    UserVolumeSizeGib = Shapes::IntegerShape.new(name: 'UserVolumeSizeGib')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    VolumeEncryptionKey = Shapes::StringShape.new(name: 'VolumeEncryptionKey')
    WorkSpaceApplication = Shapes::StructureShape.new(name: 'WorkSpaceApplication')
    WorkSpaceApplicationDeployment = Shapes::StructureShape.new(name: 'WorkSpaceApplicationDeployment')
    WorkSpaceApplicationId = Shapes::StringShape.new(name: 'WorkSpaceApplicationId')
    WorkSpaceApplicationIdList = Shapes::ListShape.new(name: 'WorkSpaceApplicationIdList')
    WorkSpaceApplicationLicenseType = Shapes::StringShape.new(name: 'WorkSpaceApplicationLicenseType')
    WorkSpaceApplicationList = Shapes::ListShape.new(name: 'WorkSpaceApplicationList')
    WorkSpaceApplicationOwner = Shapes::StringShape.new(name: 'WorkSpaceApplicationOwner')
    WorkSpaceApplicationState = Shapes::StringShape.new(name: 'WorkSpaceApplicationState')
    WorkSpaceAssociatedResourceType = Shapes::StringShape.new(name: 'WorkSpaceAssociatedResourceType')
    WorkSpaceAssociatedResourceTypeList = Shapes::ListShape.new(name: 'WorkSpaceAssociatedResourceTypeList')
    Workspace = Shapes::StructureShape.new(name: 'Workspace')
    WorkspaceAccessProperties = Shapes::StructureShape.new(name: 'WorkspaceAccessProperties')
    WorkspaceBundle = Shapes::StructureShape.new(name: 'WorkspaceBundle')
    WorkspaceBundleDescription = Shapes::StringShape.new(name: 'WorkspaceBundleDescription')
    WorkspaceBundleName = Shapes::StringShape.new(name: 'WorkspaceBundleName')
    WorkspaceBundleState = Shapes::StringShape.new(name: 'WorkspaceBundleState')
    WorkspaceConnectionStatus = Shapes::StructureShape.new(name: 'WorkspaceConnectionStatus')
    WorkspaceConnectionStatusList = Shapes::ListShape.new(name: 'WorkspaceConnectionStatusList')
    WorkspaceCreationProperties = Shapes::StructureShape.new(name: 'WorkspaceCreationProperties')
    WorkspaceDirectory = Shapes::StructureShape.new(name: 'WorkspaceDirectory')
    WorkspaceDirectoryDescription = Shapes::StringShape.new(name: 'WorkspaceDirectoryDescription')
    WorkspaceDirectoryName = Shapes::StringShape.new(name: 'WorkspaceDirectoryName')
    WorkspaceDirectoryNameList = Shapes::ListShape.new(name: 'WorkspaceDirectoryNameList')
    WorkspaceDirectoryState = Shapes::StringShape.new(name: 'WorkspaceDirectoryState')
    WorkspaceDirectoryType = Shapes::StringShape.new(name: 'WorkspaceDirectoryType')
    WorkspaceErrorCode = Shapes::StringShape.new(name: 'WorkspaceErrorCode')
    WorkspaceId = Shapes::StringShape.new(name: 'WorkspaceId')
    WorkspaceIdList = Shapes::ListShape.new(name: 'WorkspaceIdList')
    WorkspaceImage = Shapes::StructureShape.new(name: 'WorkspaceImage')
    WorkspaceImageDescription = Shapes::StringShape.new(name: 'WorkspaceImageDescription')
    WorkspaceImageErrorCode = Shapes::StringShape.new(name: 'WorkspaceImageErrorCode')
    WorkspaceImageErrorDetailCode = Shapes::StringShape.new(name: 'WorkspaceImageErrorDetailCode')
    WorkspaceImageId = Shapes::StringShape.new(name: 'WorkspaceImageId')
    WorkspaceImageIdList = Shapes::ListShape.new(name: 'WorkspaceImageIdList')
    WorkspaceImageIngestionProcess = Shapes::StringShape.new(name: 'WorkspaceImageIngestionProcess')
    WorkspaceImageList = Shapes::ListShape.new(name: 'WorkspaceImageList')
    WorkspaceImageName = Shapes::StringShape.new(name: 'WorkspaceImageName')
    WorkspaceImageRequiredTenancy = Shapes::StringShape.new(name: 'WorkspaceImageRequiredTenancy')
    WorkspaceImageState = Shapes::StringShape.new(name: 'WorkspaceImageState')
    WorkspaceList = Shapes::ListShape.new(name: 'WorkspaceList')
    WorkspaceName = Shapes::StringShape.new(name: 'WorkspaceName')
    WorkspaceProperties = Shapes::StructureShape.new(name: 'WorkspaceProperties')
    WorkspaceRequest = Shapes::StructureShape.new(name: 'WorkspaceRequest')
    WorkspaceRequestList = Shapes::ListShape.new(name: 'WorkspaceRequestList')
    WorkspaceResourceAssociation = Shapes::StructureShape.new(name: 'WorkspaceResourceAssociation')
    WorkspaceResourceAssociationList = Shapes::ListShape.new(name: 'WorkspaceResourceAssociationList')
    WorkspaceState = Shapes::StringShape.new(name: 'WorkspaceState')
    WorkspaceType = Shapes::StringShape.new(name: 'WorkspaceType')
    WorkspacesDefaultRoleNotFoundException = Shapes::StructureShape.new(name: 'WorkspacesDefaultRoleNotFoundException')
    WorkspacesIpGroup = Shapes::StructureShape.new(name: 'WorkspacesIpGroup')
    WorkspacesIpGroupsList = Shapes::ListShape.new(name: 'WorkspacesIpGroupsList')
    WorkspacesPool = Shapes::StructureShape.new(name: 'WorkspacesPool')
    WorkspacesPoolError = Shapes::StructureShape.new(name: 'WorkspacesPoolError')
    WorkspacesPoolErrorCode = Shapes::StringShape.new(name: 'WorkspacesPoolErrorCode')
    WorkspacesPoolErrors = Shapes::ListShape.new(name: 'WorkspacesPoolErrors')
    WorkspacesPoolId = Shapes::StringShape.new(name: 'WorkspacesPoolId')
    WorkspacesPoolIds = Shapes::ListShape.new(name: 'WorkspacesPoolIds')
    WorkspacesPoolName = Shapes::StringShape.new(name: 'WorkspacesPoolName')
    WorkspacesPoolSession = Shapes::StructureShape.new(name: 'WorkspacesPoolSession')
    WorkspacesPoolSessions = Shapes::ListShape.new(name: 'WorkspacesPoolSessions')
    WorkspacesPoolState = Shapes::StringShape.new(name: 'WorkspacesPoolState')
    WorkspacesPoolUserId = Shapes::StringShape.new(name: 'WorkspacesPoolUserId')
    WorkspacesPools = Shapes::ListShape.new(name: 'WorkspacesPools')

    AcceptAccountLinkInvitationRequest.add_member(:link_id, Shapes::ShapeRef.new(shape: LinkId, required: true, location_name: "LinkId"))
    AcceptAccountLinkInvitationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken"))
    AcceptAccountLinkInvitationRequest.struct_class = Types::AcceptAccountLinkInvitationRequest

    AcceptAccountLinkInvitationResult.add_member(:account_link, Shapes::ShapeRef.new(shape: AccountLink, location_name: "AccountLink"))
    AcceptAccountLinkInvitationResult.struct_class = Types::AcceptAccountLinkInvitationResult

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccessEndpoint.add_member(:access_endpoint_type, Shapes::ShapeRef.new(shape: AccessEndpointType, location_name: "AccessEndpointType"))
    AccessEndpoint.add_member(:vpc_endpoint_id, Shapes::ShapeRef.new(shape: AlphanumericDashUnderscoreNonEmptyString, location_name: "VpcEndpointId"))
    AccessEndpoint.struct_class = Types::AccessEndpoint

    AccessEndpointConfig.add_member(:access_endpoints, Shapes::ShapeRef.new(shape: AccessEndpointList, required: true, location_name: "AccessEndpoints"))
    AccessEndpointConfig.add_member(:internet_fallback_protocols, Shapes::ShapeRef.new(shape: InternetFallbackProtocolList, location_name: "InternetFallbackProtocols"))
    AccessEndpointConfig.struct_class = Types::AccessEndpointConfig

    AccessEndpointList.member = Shapes::ShapeRef.new(shape: AccessEndpoint)

    AccountLink.add_member(:account_link_id, Shapes::ShapeRef.new(shape: LinkId, location_name: "AccountLinkId"))
    AccountLink.add_member(:account_link_status, Shapes::ShapeRef.new(shape: AccountLinkStatusEnum, location_name: "AccountLinkStatus"))
    AccountLink.add_member(:source_account_id, Shapes::ShapeRef.new(shape: AwsAccount, location_name: "SourceAccountId"))
    AccountLink.add_member(:target_account_id, Shapes::ShapeRef.new(shape: AwsAccount, location_name: "TargetAccountId"))
    AccountLink.struct_class = Types::AccountLink

    AccountLinkList.member = Shapes::ShapeRef.new(shape: AccountLink)

    AccountModification.add_member(:modification_state, Shapes::ShapeRef.new(shape: DedicatedTenancyModificationStateEnum, location_name: "ModificationState"))
    AccountModification.add_member(:dedicated_tenancy_support, Shapes::ShapeRef.new(shape: DedicatedTenancySupportResultEnum, location_name: "DedicatedTenancySupport"))
    AccountModification.add_member(:dedicated_tenancy_management_cidr_range, Shapes::ShapeRef.new(shape: DedicatedTenancyManagementCidrRange, location_name: "DedicatedTenancyManagementCidrRange"))
    AccountModification.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartTime"))
    AccountModification.add_member(:error_code, Shapes::ShapeRef.new(shape: WorkspaceErrorCode, location_name: "ErrorCode"))
    AccountModification.add_member(:error_message, Shapes::ShapeRef.new(shape: Description, location_name: "ErrorMessage"))
    AccountModification.struct_class = Types::AccountModification

    AccountModificationList.member = Shapes::ShapeRef.new(shape: AccountModification)

    ActiveDirectoryConfig.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    ActiveDirectoryConfig.add_member(:service_account_secret_arn, Shapes::ShapeRef.new(shape: SecretsManagerArn, required: true, location_name: "ServiceAccountSecretArn"))
    ActiveDirectoryConfig.struct_class = Types::ActiveDirectoryConfig

    ApplicationAssociatedResourceTypeList.member = Shapes::ShapeRef.new(shape: ApplicationAssociatedResourceType)

    ApplicationList.member = Shapes::ShapeRef.new(shape: Application)

    ApplicationNotSupportedException.struct_class = Types::ApplicationNotSupportedException

    ApplicationResourceAssociation.add_member(:application_id, Shapes::ShapeRef.new(shape: WorkSpaceApplicationId, location_name: "ApplicationId"))
    ApplicationResourceAssociation.add_member(:associated_resource_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AssociatedResourceId"))
    ApplicationResourceAssociation.add_member(:associated_resource_type, Shapes::ShapeRef.new(shape: ApplicationAssociatedResourceType, location_name: "AssociatedResourceType"))
    ApplicationResourceAssociation.add_member(:created, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Created"))
    ApplicationResourceAssociation.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTime"))
    ApplicationResourceAssociation.add_member(:state, Shapes::ShapeRef.new(shape: AssociationState, location_name: "State"))
    ApplicationResourceAssociation.add_member(:state_reason, Shapes::ShapeRef.new(shape: AssociationStateReason, location_name: "StateReason"))
    ApplicationResourceAssociation.struct_class = Types::ApplicationResourceAssociation

    ApplicationResourceAssociationList.member = Shapes::ShapeRef.new(shape: ApplicationResourceAssociation)

    ApplicationSettingsRequest.add_member(:status, Shapes::ShapeRef.new(shape: ApplicationSettingsStatusEnum, required: true, location_name: "Status"))
    ApplicationSettingsRequest.add_member(:settings_group, Shapes::ShapeRef.new(shape: SettingsGroup, location_name: "SettingsGroup"))
    ApplicationSettingsRequest.struct_class = Types::ApplicationSettingsRequest

    ApplicationSettingsResponse.add_member(:status, Shapes::ShapeRef.new(shape: ApplicationSettingsStatusEnum, required: true, location_name: "Status"))
    ApplicationSettingsResponse.add_member(:settings_group, Shapes::ShapeRef.new(shape: SettingsGroup, location_name: "SettingsGroup"))
    ApplicationSettingsResponse.add_member(:s3_bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, location_name: "S3BucketName"))
    ApplicationSettingsResponse.struct_class = Types::ApplicationSettingsResponse

    AssociateConnectionAliasRequest.add_member(:alias_id, Shapes::ShapeRef.new(shape: ConnectionAliasId, required: true, location_name: "AliasId"))
    AssociateConnectionAliasRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "ResourceId"))
    AssociateConnectionAliasRequest.struct_class = Types::AssociateConnectionAliasRequest

    AssociateConnectionAliasResult.add_member(:connection_identifier, Shapes::ShapeRef.new(shape: ConnectionIdentifier, location_name: "ConnectionIdentifier"))
    AssociateConnectionAliasResult.struct_class = Types::AssociateConnectionAliasResult

    AssociateIpGroupsRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location_name: "DirectoryId"))
    AssociateIpGroupsRequest.add_member(:group_ids, Shapes::ShapeRef.new(shape: IpGroupIdList, required: true, location_name: "GroupIds"))
    AssociateIpGroupsRequest.struct_class = Types::AssociateIpGroupsRequest

    AssociateIpGroupsResult.struct_class = Types::AssociateIpGroupsResult

    AssociateWorkspaceApplicationRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location_name: "WorkspaceId"))
    AssociateWorkspaceApplicationRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: WorkSpaceApplicationId, required: true, location_name: "ApplicationId"))
    AssociateWorkspaceApplicationRequest.struct_class = Types::AssociateWorkspaceApplicationRequest

    AssociateWorkspaceApplicationResult.add_member(:association, Shapes::ShapeRef.new(shape: WorkspaceResourceAssociation, location_name: "Association"))
    AssociateWorkspaceApplicationResult.struct_class = Types::AssociateWorkspaceApplicationResult

    AssociationStateReason.add_member(:error_code, Shapes::ShapeRef.new(shape: AssociationErrorCode, location_name: "ErrorCode"))
    AssociationStateReason.add_member(:error_message, Shapes::ShapeRef.new(shape: String2048, location_name: "ErrorMessage"))
    AssociationStateReason.struct_class = Types::AssociationStateReason

    AuthorizeIpRulesRequest.add_member(:group_id, Shapes::ShapeRef.new(shape: IpGroupId, required: true, location_name: "GroupId"))
    AuthorizeIpRulesRequest.add_member(:user_rules, Shapes::ShapeRef.new(shape: IpRuleList, required: true, location_name: "UserRules"))
    AuthorizeIpRulesRequest.struct_class = Types::AuthorizeIpRulesRequest

    AuthorizeIpRulesResult.struct_class = Types::AuthorizeIpRulesResult

    BundleAssociatedResourceTypeList.member = Shapes::ShapeRef.new(shape: BundleAssociatedResourceType)

    BundleIdList.member = Shapes::ShapeRef.new(shape: BundleId)

    BundleList.member = Shapes::ShapeRef.new(shape: WorkspaceBundle)

    BundleResourceAssociation.add_member(:associated_resource_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AssociatedResourceId"))
    BundleResourceAssociation.add_member(:associated_resource_type, Shapes::ShapeRef.new(shape: BundleAssociatedResourceType, location_name: "AssociatedResourceType"))
    BundleResourceAssociation.add_member(:bundle_id, Shapes::ShapeRef.new(shape: BundleId, location_name: "BundleId"))
    BundleResourceAssociation.add_member(:created, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Created"))
    BundleResourceAssociation.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTime"))
    BundleResourceAssociation.add_member(:state, Shapes::ShapeRef.new(shape: AssociationState, location_name: "State"))
    BundleResourceAssociation.add_member(:state_reason, Shapes::ShapeRef.new(shape: AssociationStateReason, location_name: "StateReason"))
    BundleResourceAssociation.struct_class = Types::BundleResourceAssociation

    BundleResourceAssociationList.member = Shapes::ShapeRef.new(shape: BundleResourceAssociation)

    Capacity.add_member(:desired_user_sessions, Shapes::ShapeRef.new(shape: DesiredUserSessions, required: true, location_name: "DesiredUserSessions"))
    Capacity.struct_class = Types::Capacity

    CapacityStatus.add_member(:available_user_sessions, Shapes::ShapeRef.new(shape: AvailableUserSessions, required: true, location_name: "AvailableUserSessions"))
    CapacityStatus.add_member(:desired_user_sessions, Shapes::ShapeRef.new(shape: DesiredUserSessions, required: true, location_name: "DesiredUserSessions"))
    CapacityStatus.add_member(:actual_user_sessions, Shapes::ShapeRef.new(shape: ActualUserSessions, required: true, location_name: "ActualUserSessions"))
    CapacityStatus.add_member(:active_user_sessions, Shapes::ShapeRef.new(shape: ActiveUserSessions, required: true, location_name: "ActiveUserSessions"))
    CapacityStatus.struct_class = Types::CapacityStatus

    CertificateBasedAuthProperties.add_member(:status, Shapes::ShapeRef.new(shape: CertificateBasedAuthStatusEnum, location_name: "Status"))
    CertificateBasedAuthProperties.add_member(:certificate_authority_arn, Shapes::ShapeRef.new(shape: CertificateAuthorityArn, location_name: "CertificateAuthorityArn"))
    CertificateBasedAuthProperties.struct_class = Types::CertificateBasedAuthProperties

    ClientDeviceTypeList.member = Shapes::ShapeRef.new(shape: ClientDeviceType)

    ClientProperties.add_member(:reconnect_enabled, Shapes::ShapeRef.new(shape: ReconnectEnum, location_name: "ReconnectEnabled"))
    ClientProperties.add_member(:log_upload_enabled, Shapes::ShapeRef.new(shape: LogUploadEnum, location_name: "LogUploadEnabled"))
    ClientProperties.struct_class = Types::ClientProperties

    ClientPropertiesList.member = Shapes::ShapeRef.new(shape: ClientPropertiesResult)

    ClientPropertiesResult.add_member(:resource_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ResourceId"))
    ClientPropertiesResult.add_member(:client_properties, Shapes::ShapeRef.new(shape: ClientProperties, location_name: "ClientProperties"))
    ClientPropertiesResult.struct_class = Types::ClientPropertiesResult

    ComputeList.member = Shapes::ShapeRef.new(shape: Compute)

    ComputeNotCompatibleException.struct_class = Types::ComputeNotCompatibleException

    ComputeType.add_member(:name, Shapes::ShapeRef.new(shape: Compute, location_name: "Name"))
    ComputeType.struct_class = Types::ComputeType

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    ConnectClientAddIn.add_member(:add_in_id, Shapes::ShapeRef.new(shape: AmazonUuid, location_name: "AddInId"))
    ConnectClientAddIn.add_member(:resource_id, Shapes::ShapeRef.new(shape: DirectoryId, location_name: "ResourceId"))
    ConnectClientAddIn.add_member(:name, Shapes::ShapeRef.new(shape: AddInName, location_name: "Name"))
    ConnectClientAddIn.add_member(:url, Shapes::ShapeRef.new(shape: AddInUrl, location_name: "URL"))
    ConnectClientAddIn.struct_class = Types::ConnectClientAddIn

    ConnectClientAddInList.member = Shapes::ShapeRef.new(shape: ConnectClientAddIn)

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

    CreateAccountLinkInvitationRequest.add_member(:target_account_id, Shapes::ShapeRef.new(shape: AwsAccount, required: true, location_name: "TargetAccountId"))
    CreateAccountLinkInvitationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken"))
    CreateAccountLinkInvitationRequest.struct_class = Types::CreateAccountLinkInvitationRequest

    CreateAccountLinkInvitationResult.add_member(:account_link, Shapes::ShapeRef.new(shape: AccountLink, location_name: "AccountLink"))
    CreateAccountLinkInvitationResult.struct_class = Types::CreateAccountLinkInvitationResult

    CreateConnectClientAddInRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location_name: "ResourceId"))
    CreateConnectClientAddInRequest.add_member(:name, Shapes::ShapeRef.new(shape: AddInName, required: true, location_name: "Name"))
    CreateConnectClientAddInRequest.add_member(:url, Shapes::ShapeRef.new(shape: AddInUrl, required: true, location_name: "URL"))
    CreateConnectClientAddInRequest.struct_class = Types::CreateConnectClientAddInRequest

    CreateConnectClientAddInResult.add_member(:add_in_id, Shapes::ShapeRef.new(shape: AmazonUuid, location_name: "AddInId"))
    CreateConnectClientAddInResult.struct_class = Types::CreateConnectClientAddInResult

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

    CreateStandbyWorkspacesRequest.add_member(:primary_region, Shapes::ShapeRef.new(shape: Region, required: true, location_name: "PrimaryRegion"))
    CreateStandbyWorkspacesRequest.add_member(:standby_workspaces, Shapes::ShapeRef.new(shape: StandbyWorkspacesList, required: true, location_name: "StandbyWorkspaces"))
    CreateStandbyWorkspacesRequest.struct_class = Types::CreateStandbyWorkspacesRequest

    CreateStandbyWorkspacesResult.add_member(:failed_standby_requests, Shapes::ShapeRef.new(shape: FailedCreateStandbyWorkspacesRequestList, location_name: "FailedStandbyRequests"))
    CreateStandbyWorkspacesResult.add_member(:pending_standby_requests, Shapes::ShapeRef.new(shape: PendingCreateStandbyWorkspacesRequestList, location_name: "PendingStandbyRequests"))
    CreateStandbyWorkspacesResult.struct_class = Types::CreateStandbyWorkspacesResult

    CreateTagsRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "ResourceId"))
    CreateTagsRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    CreateTagsRequest.struct_class = Types::CreateTagsRequest

    CreateTagsResult.struct_class = Types::CreateTagsResult

    CreateUpdatedWorkspaceImageRequest.add_member(:name, Shapes::ShapeRef.new(shape: WorkspaceImageName, required: true, location_name: "Name"))
    CreateUpdatedWorkspaceImageRequest.add_member(:description, Shapes::ShapeRef.new(shape: WorkspaceImageDescription, required: true, location_name: "Description"))
    CreateUpdatedWorkspaceImageRequest.add_member(:source_image_id, Shapes::ShapeRef.new(shape: WorkspaceImageId, required: true, location_name: "SourceImageId"))
    CreateUpdatedWorkspaceImageRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateUpdatedWorkspaceImageRequest.struct_class = Types::CreateUpdatedWorkspaceImageRequest

    CreateUpdatedWorkspaceImageResult.add_member(:image_id, Shapes::ShapeRef.new(shape: WorkspaceImageId, location_name: "ImageId"))
    CreateUpdatedWorkspaceImageResult.struct_class = Types::CreateUpdatedWorkspaceImageResult

    CreateWorkspaceBundleRequest.add_member(:bundle_name, Shapes::ShapeRef.new(shape: WorkspaceBundleName, required: true, location_name: "BundleName"))
    CreateWorkspaceBundleRequest.add_member(:bundle_description, Shapes::ShapeRef.new(shape: WorkspaceBundleDescription, required: true, location_name: "BundleDescription"))
    CreateWorkspaceBundleRequest.add_member(:image_id, Shapes::ShapeRef.new(shape: WorkspaceImageId, required: true, location_name: "ImageId"))
    CreateWorkspaceBundleRequest.add_member(:compute_type, Shapes::ShapeRef.new(shape: ComputeType, required: true, location_name: "ComputeType"))
    CreateWorkspaceBundleRequest.add_member(:user_storage, Shapes::ShapeRef.new(shape: UserStorage, required: true, location_name: "UserStorage"))
    CreateWorkspaceBundleRequest.add_member(:root_storage, Shapes::ShapeRef.new(shape: RootStorage, location_name: "RootStorage"))
    CreateWorkspaceBundleRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateWorkspaceBundleRequest.struct_class = Types::CreateWorkspaceBundleRequest

    CreateWorkspaceBundleResult.add_member(:workspace_bundle, Shapes::ShapeRef.new(shape: WorkspaceBundle, location_name: "WorkspaceBundle"))
    CreateWorkspaceBundleResult.struct_class = Types::CreateWorkspaceBundleResult

    CreateWorkspaceImageRequest.add_member(:name, Shapes::ShapeRef.new(shape: WorkspaceImageName, required: true, location_name: "Name"))
    CreateWorkspaceImageRequest.add_member(:description, Shapes::ShapeRef.new(shape: WorkspaceImageDescription, required: true, location_name: "Description"))
    CreateWorkspaceImageRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location_name: "WorkspaceId"))
    CreateWorkspaceImageRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateWorkspaceImageRequest.struct_class = Types::CreateWorkspaceImageRequest

    CreateWorkspaceImageResult.add_member(:image_id, Shapes::ShapeRef.new(shape: WorkspaceImageId, location_name: "ImageId"))
    CreateWorkspaceImageResult.add_member(:name, Shapes::ShapeRef.new(shape: WorkspaceImageName, location_name: "Name"))
    CreateWorkspaceImageResult.add_member(:description, Shapes::ShapeRef.new(shape: WorkspaceImageDescription, location_name: "Description"))
    CreateWorkspaceImageResult.add_member(:operating_system, Shapes::ShapeRef.new(shape: OperatingSystem, location_name: "OperatingSystem"))
    CreateWorkspaceImageResult.add_member(:state, Shapes::ShapeRef.new(shape: WorkspaceImageState, location_name: "State"))
    CreateWorkspaceImageResult.add_member(:required_tenancy, Shapes::ShapeRef.new(shape: WorkspaceImageRequiredTenancy, location_name: "RequiredTenancy"))
    CreateWorkspaceImageResult.add_member(:created, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Created"))
    CreateWorkspaceImageResult.add_member(:owner_account_id, Shapes::ShapeRef.new(shape: AwsAccount, location_name: "OwnerAccountId"))
    CreateWorkspaceImageResult.struct_class = Types::CreateWorkspaceImageResult

    CreateWorkspacesPoolRequest.add_member(:pool_name, Shapes::ShapeRef.new(shape: WorkspacesPoolName, required: true, location_name: "PoolName"))
    CreateWorkspacesPoolRequest.add_member(:description, Shapes::ShapeRef.new(shape: UpdateDescription, required: true, location_name: "Description"))
    CreateWorkspacesPoolRequest.add_member(:bundle_id, Shapes::ShapeRef.new(shape: BundleId, required: true, location_name: "BundleId"))
    CreateWorkspacesPoolRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location_name: "DirectoryId"))
    CreateWorkspacesPoolRequest.add_member(:capacity, Shapes::ShapeRef.new(shape: Capacity, required: true, location_name: "Capacity"))
    CreateWorkspacesPoolRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateWorkspacesPoolRequest.add_member(:application_settings, Shapes::ShapeRef.new(shape: ApplicationSettingsRequest, location_name: "ApplicationSettings"))
    CreateWorkspacesPoolRequest.add_member(:timeout_settings, Shapes::ShapeRef.new(shape: TimeoutSettings, location_name: "TimeoutSettings"))
    CreateWorkspacesPoolRequest.add_member(:running_mode, Shapes::ShapeRef.new(shape: PoolsRunningMode, location_name: "RunningMode"))
    CreateWorkspacesPoolRequest.struct_class = Types::CreateWorkspacesPoolRequest

    CreateWorkspacesPoolResult.add_member(:workspaces_pool, Shapes::ShapeRef.new(shape: WorkspacesPool, location_name: "WorkspacesPool"))
    CreateWorkspacesPoolResult.struct_class = Types::CreateWorkspacesPoolResult

    CreateWorkspacesRequest.add_member(:workspaces, Shapes::ShapeRef.new(shape: WorkspaceRequestList, required: true, location_name: "Workspaces"))
    CreateWorkspacesRequest.struct_class = Types::CreateWorkspacesRequest

    CreateWorkspacesResult.add_member(:failed_requests, Shapes::ShapeRef.new(shape: FailedCreateWorkspaceRequests, location_name: "FailedRequests"))
    CreateWorkspacesResult.add_member(:pending_requests, Shapes::ShapeRef.new(shape: WorkspaceList, location_name: "PendingRequests"))
    CreateWorkspacesResult.struct_class = Types::CreateWorkspacesResult

    CustomWorkspaceImageImportErrorDetails.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "ErrorCode"))
    CustomWorkspaceImageImportErrorDetails.add_member(:error_message, Shapes::ShapeRef.new(shape: ImageErrorMessage, location_name: "ErrorMessage"))
    CustomWorkspaceImageImportErrorDetails.struct_class = Types::CustomWorkspaceImageImportErrorDetails

    CustomWorkspaceImageImportErrorDetailsList.member = Shapes::ShapeRef.new(shape: CustomWorkspaceImageImportErrorDetails)

    DataReplicationSettings.add_member(:data_replication, Shapes::ShapeRef.new(shape: DataReplication, location_name: "DataReplication"))
    DataReplicationSettings.add_member(:recovery_snapshot_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "RecoverySnapshotTime"))
    DataReplicationSettings.struct_class = Types::DataReplicationSettings

    DedicatedTenancyCidrRangeList.member = Shapes::ShapeRef.new(shape: DedicatedTenancyManagementCidrRange)

    DefaultClientBrandingAttributes.add_member(:logo_url, Shapes::ShapeRef.new(shape: ClientUrl, location_name: "LogoUrl"))
    DefaultClientBrandingAttributes.add_member(:support_email, Shapes::ShapeRef.new(shape: ClientEmail, location_name: "SupportEmail"))
    DefaultClientBrandingAttributes.add_member(:support_link, Shapes::ShapeRef.new(shape: ClientUrl, location_name: "SupportLink"))
    DefaultClientBrandingAttributes.add_member(:forgot_password_link, Shapes::ShapeRef.new(shape: ClientUrl, location_name: "ForgotPasswordLink"))
    DefaultClientBrandingAttributes.add_member(:login_message, Shapes::ShapeRef.new(shape: LoginMessage, location_name: "LoginMessage"))
    DefaultClientBrandingAttributes.struct_class = Types::DefaultClientBrandingAttributes

    DefaultImportClientBrandingAttributes.add_member(:logo, Shapes::ShapeRef.new(shape: DefaultLogo, location_name: "Logo"))
    DefaultImportClientBrandingAttributes.add_member(:support_email, Shapes::ShapeRef.new(shape: ClientEmail, location_name: "SupportEmail"))
    DefaultImportClientBrandingAttributes.add_member(:support_link, Shapes::ShapeRef.new(shape: ClientUrl, location_name: "SupportLink"))
    DefaultImportClientBrandingAttributes.add_member(:forgot_password_link, Shapes::ShapeRef.new(shape: ClientUrl, location_name: "ForgotPasswordLink"))
    DefaultImportClientBrandingAttributes.add_member(:login_message, Shapes::ShapeRef.new(shape: LoginMessage, location_name: "LoginMessage"))
    DefaultImportClientBrandingAttributes.struct_class = Types::DefaultImportClientBrandingAttributes

    DefaultWorkspaceCreationProperties.add_member(:enable_internet_access, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "EnableInternetAccess"))
    DefaultWorkspaceCreationProperties.add_member(:default_ou, Shapes::ShapeRef.new(shape: DefaultOu, location_name: "DefaultOu"))
    DefaultWorkspaceCreationProperties.add_member(:custom_security_group_id, Shapes::ShapeRef.new(shape: SecurityGroupId, location_name: "CustomSecurityGroupId"))
    DefaultWorkspaceCreationProperties.add_member(:user_enabled_as_local_administrator, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "UserEnabledAsLocalAdministrator"))
    DefaultWorkspaceCreationProperties.add_member(:enable_maintenance_mode, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "EnableMaintenanceMode"))
    DefaultWorkspaceCreationProperties.add_member(:instance_iam_role_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "InstanceIamRoleArn"))
    DefaultWorkspaceCreationProperties.struct_class = Types::DefaultWorkspaceCreationProperties

    DeletableCertificateBasedAuthPropertiesList.member = Shapes::ShapeRef.new(shape: DeletableCertificateBasedAuthProperty)

    DeletableSamlPropertiesList.member = Shapes::ShapeRef.new(shape: DeletableSamlProperty)

    DeleteAccountLinkInvitationRequest.add_member(:link_id, Shapes::ShapeRef.new(shape: LinkId, required: true, location_name: "LinkId"))
    DeleteAccountLinkInvitationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken"))
    DeleteAccountLinkInvitationRequest.struct_class = Types::DeleteAccountLinkInvitationRequest

    DeleteAccountLinkInvitationResult.add_member(:account_link, Shapes::ShapeRef.new(shape: AccountLink, location_name: "AccountLink"))
    DeleteAccountLinkInvitationResult.struct_class = Types::DeleteAccountLinkInvitationResult

    DeleteClientBrandingRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location_name: "ResourceId"))
    DeleteClientBrandingRequest.add_member(:platforms, Shapes::ShapeRef.new(shape: ClientDeviceTypeList, required: true, location_name: "Platforms"))
    DeleteClientBrandingRequest.struct_class = Types::DeleteClientBrandingRequest

    DeleteClientBrandingResult.struct_class = Types::DeleteClientBrandingResult

    DeleteConnectClientAddInRequest.add_member(:add_in_id, Shapes::ShapeRef.new(shape: AmazonUuid, required: true, location_name: "AddInId"))
    DeleteConnectClientAddInRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location_name: "ResourceId"))
    DeleteConnectClientAddInRequest.struct_class = Types::DeleteConnectClientAddInRequest

    DeleteConnectClientAddInResult.struct_class = Types::DeleteConnectClientAddInResult

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

    DeleteWorkspaceBundleRequest.add_member(:bundle_id, Shapes::ShapeRef.new(shape: BundleId, location_name: "BundleId"))
    DeleteWorkspaceBundleRequest.struct_class = Types::DeleteWorkspaceBundleRequest

    DeleteWorkspaceBundleResult.struct_class = Types::DeleteWorkspaceBundleResult

    DeleteWorkspaceImageRequest.add_member(:image_id, Shapes::ShapeRef.new(shape: WorkspaceImageId, required: true, location_name: "ImageId"))
    DeleteWorkspaceImageRequest.struct_class = Types::DeleteWorkspaceImageRequest

    DeleteWorkspaceImageResult.struct_class = Types::DeleteWorkspaceImageResult

    DeployWorkspaceApplicationsRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location_name: "WorkspaceId"))
    DeployWorkspaceApplicationsRequest.add_member(:force, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "Force"))
    DeployWorkspaceApplicationsRequest.struct_class = Types::DeployWorkspaceApplicationsRequest

    DeployWorkspaceApplicationsResult.add_member(:deployment, Shapes::ShapeRef.new(shape: WorkSpaceApplicationDeployment, location_name: "Deployment"))
    DeployWorkspaceApplicationsResult.struct_class = Types::DeployWorkspaceApplicationsResult

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
    DescribeAccountResult.add_member(:dedicated_tenancy_account_type, Shapes::ShapeRef.new(shape: DedicatedTenancyAccountType, location_name: "DedicatedTenancyAccountType"))
    DescribeAccountResult.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    DescribeAccountResult.struct_class = Types::DescribeAccountResult

    DescribeApplicationAssociationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Limit, location_name: "MaxResults"))
    DescribeApplicationAssociationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    DescribeApplicationAssociationsRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: WorkSpaceApplicationId, required: true, location_name: "ApplicationId"))
    DescribeApplicationAssociationsRequest.add_member(:associated_resource_types, Shapes::ShapeRef.new(shape: ApplicationAssociatedResourceTypeList, required: true, location_name: "AssociatedResourceTypes"))
    DescribeApplicationAssociationsRequest.struct_class = Types::DescribeApplicationAssociationsRequest

    DescribeApplicationAssociationsResult.add_member(:associations, Shapes::ShapeRef.new(shape: ApplicationResourceAssociationList, location_name: "Associations"))
    DescribeApplicationAssociationsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    DescribeApplicationAssociationsResult.struct_class = Types::DescribeApplicationAssociationsResult

    DescribeApplicationsRequest.add_member(:application_ids, Shapes::ShapeRef.new(shape: WorkSpaceApplicationIdList, location_name: "ApplicationIds"))
    DescribeApplicationsRequest.add_member(:compute_type_names, Shapes::ShapeRef.new(shape: ComputeList, location_name: "ComputeTypeNames"))
    DescribeApplicationsRequest.add_member(:license_type, Shapes::ShapeRef.new(shape: WorkSpaceApplicationLicenseType, location_name: "LicenseType"))
    DescribeApplicationsRequest.add_member(:operating_system_names, Shapes::ShapeRef.new(shape: OperatingSystemNameList, location_name: "OperatingSystemNames"))
    DescribeApplicationsRequest.add_member(:owner, Shapes::ShapeRef.new(shape: WorkSpaceApplicationOwner, location_name: "Owner"))
    DescribeApplicationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Limit, location_name: "MaxResults"))
    DescribeApplicationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    DescribeApplicationsRequest.struct_class = Types::DescribeApplicationsRequest

    DescribeApplicationsResult.add_member(:applications, Shapes::ShapeRef.new(shape: WorkSpaceApplicationList, location_name: "Applications"))
    DescribeApplicationsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    DescribeApplicationsResult.struct_class = Types::DescribeApplicationsResult

    DescribeBundleAssociationsRequest.add_member(:bundle_id, Shapes::ShapeRef.new(shape: BundleId, required: true, location_name: "BundleId"))
    DescribeBundleAssociationsRequest.add_member(:associated_resource_types, Shapes::ShapeRef.new(shape: BundleAssociatedResourceTypeList, required: true, location_name: "AssociatedResourceTypes"))
    DescribeBundleAssociationsRequest.struct_class = Types::DescribeBundleAssociationsRequest

    DescribeBundleAssociationsResult.add_member(:associations, Shapes::ShapeRef.new(shape: BundleResourceAssociationList, location_name: "Associations"))
    DescribeBundleAssociationsResult.struct_class = Types::DescribeBundleAssociationsResult

    DescribeClientBrandingRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location_name: "ResourceId"))
    DescribeClientBrandingRequest.struct_class = Types::DescribeClientBrandingRequest

    DescribeClientBrandingResult.add_member(:device_type_windows, Shapes::ShapeRef.new(shape: DefaultClientBrandingAttributes, location_name: "DeviceTypeWindows"))
    DescribeClientBrandingResult.add_member(:device_type_osx, Shapes::ShapeRef.new(shape: DefaultClientBrandingAttributes, location_name: "DeviceTypeOsx"))
    DescribeClientBrandingResult.add_member(:device_type_android, Shapes::ShapeRef.new(shape: DefaultClientBrandingAttributes, location_name: "DeviceTypeAndroid"))
    DescribeClientBrandingResult.add_member(:device_type_ios, Shapes::ShapeRef.new(shape: IosClientBrandingAttributes, location_name: "DeviceTypeIos"))
    DescribeClientBrandingResult.add_member(:device_type_linux, Shapes::ShapeRef.new(shape: DefaultClientBrandingAttributes, location_name: "DeviceTypeLinux"))
    DescribeClientBrandingResult.add_member(:device_type_web, Shapes::ShapeRef.new(shape: DefaultClientBrandingAttributes, location_name: "DeviceTypeWeb"))
    DescribeClientBrandingResult.struct_class = Types::DescribeClientBrandingResult

    DescribeClientPropertiesRequest.add_member(:resource_ids, Shapes::ShapeRef.new(shape: ResourceIdList, required: true, location_name: "ResourceIds"))
    DescribeClientPropertiesRequest.struct_class = Types::DescribeClientPropertiesRequest

    DescribeClientPropertiesResult.add_member(:client_properties_list, Shapes::ShapeRef.new(shape: ClientPropertiesList, location_name: "ClientPropertiesList"))
    DescribeClientPropertiesResult.struct_class = Types::DescribeClientPropertiesResult

    DescribeConnectClientAddInsRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location_name: "ResourceId"))
    DescribeConnectClientAddInsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    DescribeConnectClientAddInsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Limit, location_name: "MaxResults"))
    DescribeConnectClientAddInsRequest.struct_class = Types::DescribeConnectClientAddInsRequest

    DescribeConnectClientAddInsResult.add_member(:add_ins, Shapes::ShapeRef.new(shape: ConnectClientAddInList, location_name: "AddIns"))
    DescribeConnectClientAddInsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    DescribeConnectClientAddInsResult.struct_class = Types::DescribeConnectClientAddInsResult

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

    DescribeCustomWorkspaceImageImportRequest.add_member(:image_id, Shapes::ShapeRef.new(shape: WorkspaceImageId, required: true, location_name: "ImageId"))
    DescribeCustomWorkspaceImageImportRequest.struct_class = Types::DescribeCustomWorkspaceImageImportRequest

    DescribeCustomWorkspaceImageImportResult.add_member(:image_id, Shapes::ShapeRef.new(shape: WorkspaceImageId, location_name: "ImageId"))
    DescribeCustomWorkspaceImageImportResult.add_member(:infrastructure_configuration_arn, Shapes::ShapeRef.new(shape: InfrastructureConfigurationArn, location_name: "InfrastructureConfigurationArn"))
    DescribeCustomWorkspaceImageImportResult.add_member(:state, Shapes::ShapeRef.new(shape: CustomWorkspaceImageImportState, location_name: "State"))
    DescribeCustomWorkspaceImageImportResult.add_member(:created, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Created"))
    DescribeCustomWorkspaceImageImportResult.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTime"))
    DescribeCustomWorkspaceImageImportResult.add_member(:image_source, Shapes::ShapeRef.new(shape: ImageSourceIdentifier, location_name: "ImageSource"))
    DescribeCustomWorkspaceImageImportResult.add_member(:image_builder_instance_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ImageBuilderInstanceId"))
    DescribeCustomWorkspaceImageImportResult.add_member(:error_details, Shapes::ShapeRef.new(shape: CustomWorkspaceImageImportErrorDetailsList, location_name: "ErrorDetails"))
    DescribeCustomWorkspaceImageImportResult.struct_class = Types::DescribeCustomWorkspaceImageImportResult

    DescribeImageAssociationsRequest.add_member(:image_id, Shapes::ShapeRef.new(shape: WorkspaceImageId, required: true, location_name: "ImageId"))
    DescribeImageAssociationsRequest.add_member(:associated_resource_types, Shapes::ShapeRef.new(shape: ImageAssociatedResourceTypeList, required: true, location_name: "AssociatedResourceTypes"))
    DescribeImageAssociationsRequest.struct_class = Types::DescribeImageAssociationsRequest

    DescribeImageAssociationsResult.add_member(:associations, Shapes::ShapeRef.new(shape: ImageResourceAssociationList, location_name: "Associations"))
    DescribeImageAssociationsResult.struct_class = Types::DescribeImageAssociationsResult

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

    DescribeWorkspaceAssociationsRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location_name: "WorkspaceId"))
    DescribeWorkspaceAssociationsRequest.add_member(:associated_resource_types, Shapes::ShapeRef.new(shape: WorkSpaceAssociatedResourceTypeList, required: true, location_name: "AssociatedResourceTypes"))
    DescribeWorkspaceAssociationsRequest.struct_class = Types::DescribeWorkspaceAssociationsRequest

    DescribeWorkspaceAssociationsResult.add_member(:associations, Shapes::ShapeRef.new(shape: WorkspaceResourceAssociationList, location_name: "Associations"))
    DescribeWorkspaceAssociationsResult.struct_class = Types::DescribeWorkspaceAssociationsResult

    DescribeWorkspaceBundlesRequest.add_member(:bundle_ids, Shapes::ShapeRef.new(shape: BundleIdList, location_name: "BundleIds"))
    DescribeWorkspaceBundlesRequest.add_member(:owner, Shapes::ShapeRef.new(shape: BundleOwner, location_name: "Owner"))
    DescribeWorkspaceBundlesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    DescribeWorkspaceBundlesRequest.struct_class = Types::DescribeWorkspaceBundlesRequest

    DescribeWorkspaceBundlesResult.add_member(:bundles, Shapes::ShapeRef.new(shape: BundleList, location_name: "Bundles"))
    DescribeWorkspaceBundlesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    DescribeWorkspaceBundlesResult.struct_class = Types::DescribeWorkspaceBundlesResult

    DescribeWorkspaceDirectoriesFilter.add_member(:name, Shapes::ShapeRef.new(shape: DescribeWorkspaceDirectoriesFilterName, required: true, location_name: "Name"))
    DescribeWorkspaceDirectoriesFilter.add_member(:values, Shapes::ShapeRef.new(shape: DescribeWorkspaceDirectoriesFilterValues, required: true, location_name: "Values"))
    DescribeWorkspaceDirectoriesFilter.struct_class = Types::DescribeWorkspaceDirectoriesFilter

    DescribeWorkspaceDirectoriesFilterList.member = Shapes::ShapeRef.new(shape: DescribeWorkspaceDirectoriesFilter)

    DescribeWorkspaceDirectoriesFilterValues.member = Shapes::ShapeRef.new(shape: DescribeWorkspaceDirectoriesFilterValue)

    DescribeWorkspaceDirectoriesRequest.add_member(:directory_ids, Shapes::ShapeRef.new(shape: DirectoryIdList, location_name: "DirectoryIds"))
    DescribeWorkspaceDirectoriesRequest.add_member(:workspace_directory_names, Shapes::ShapeRef.new(shape: WorkspaceDirectoryNameList, location_name: "WorkspaceDirectoryNames"))
    DescribeWorkspaceDirectoriesRequest.add_member(:limit, Shapes::ShapeRef.new(shape: Limit, location_name: "Limit"))
    DescribeWorkspaceDirectoriesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    DescribeWorkspaceDirectoriesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: DescribeWorkspaceDirectoriesFilterList, location_name: "Filters"))
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

    DescribeWorkspacesPoolSessionsRequest.add_member(:pool_id, Shapes::ShapeRef.new(shape: WorkspacesPoolId, required: true, location_name: "PoolId"))
    DescribeWorkspacesPoolSessionsRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: WorkspacesPoolUserId, location_name: "UserId"))
    DescribeWorkspacesPoolSessionsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: Limit50, location_name: "Limit"))
    DescribeWorkspacesPoolSessionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    DescribeWorkspacesPoolSessionsRequest.struct_class = Types::DescribeWorkspacesPoolSessionsRequest

    DescribeWorkspacesPoolSessionsResult.add_member(:sessions, Shapes::ShapeRef.new(shape: WorkspacesPoolSessions, location_name: "Sessions"))
    DescribeWorkspacesPoolSessionsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    DescribeWorkspacesPoolSessionsResult.struct_class = Types::DescribeWorkspacesPoolSessionsResult

    DescribeWorkspacesPoolsFilter.add_member(:name, Shapes::ShapeRef.new(shape: DescribeWorkspacesPoolsFilterName, required: true, location_name: "Name"))
    DescribeWorkspacesPoolsFilter.add_member(:values, Shapes::ShapeRef.new(shape: DescribeWorkspacesPoolsFilterValues, required: true, location_name: "Values"))
    DescribeWorkspacesPoolsFilter.add_member(:operator, Shapes::ShapeRef.new(shape: DescribeWorkspacesPoolsFilterOperator, required: true, location_name: "Operator"))
    DescribeWorkspacesPoolsFilter.struct_class = Types::DescribeWorkspacesPoolsFilter

    DescribeWorkspacesPoolsFilterValues.member = Shapes::ShapeRef.new(shape: DescribeWorkspacesPoolsFilterValue)

    DescribeWorkspacesPoolsFilters.member = Shapes::ShapeRef.new(shape: DescribeWorkspacesPoolsFilter)

    DescribeWorkspacesPoolsRequest.add_member(:pool_ids, Shapes::ShapeRef.new(shape: WorkspacesPoolIds, location_name: "PoolIds"))
    DescribeWorkspacesPoolsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: DescribeWorkspacesPoolsFilters, location_name: "Filters"))
    DescribeWorkspacesPoolsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: Limit, location_name: "Limit"))
    DescribeWorkspacesPoolsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    DescribeWorkspacesPoolsRequest.struct_class = Types::DescribeWorkspacesPoolsRequest

    DescribeWorkspacesPoolsResult.add_member(:workspaces_pools, Shapes::ShapeRef.new(shape: WorkspacesPools, location_name: "WorkspacesPools"))
    DescribeWorkspacesPoolsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    DescribeWorkspacesPoolsResult.struct_class = Types::DescribeWorkspacesPoolsResult

    DescribeWorkspacesRequest.add_member(:workspace_ids, Shapes::ShapeRef.new(shape: WorkspaceIdList, location_name: "WorkspaceIds"))
    DescribeWorkspacesRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, location_name: "DirectoryId"))
    DescribeWorkspacesRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: UserName, location_name: "UserName"))
    DescribeWorkspacesRequest.add_member(:bundle_id, Shapes::ShapeRef.new(shape: BundleId, location_name: "BundleId"))
    DescribeWorkspacesRequest.add_member(:limit, Shapes::ShapeRef.new(shape: Limit, location_name: "Limit"))
    DescribeWorkspacesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    DescribeWorkspacesRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, location_name: "WorkspaceName"))
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

    DisassociateWorkspaceApplicationRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location_name: "WorkspaceId"))
    DisassociateWorkspaceApplicationRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: WorkSpaceApplicationId, required: true, location_name: "ApplicationId"))
    DisassociateWorkspaceApplicationRequest.struct_class = Types::DisassociateWorkspaceApplicationRequest

    DisassociateWorkspaceApplicationResult.add_member(:association, Shapes::ShapeRef.new(shape: WorkspaceResourceAssociation, location_name: "Association"))
    DisassociateWorkspaceApplicationResult.struct_class = Types::DisassociateWorkspaceApplicationResult

    DnsIpAddresses.member = Shapes::ShapeRef.new(shape: IpAddress)

    DnsIpv6Addresses.member = Shapes::ShapeRef.new(shape: Ipv6Address)

    ErrorDetails.add_member(:error_code, Shapes::ShapeRef.new(shape: WorkspaceImageErrorDetailCode, location_name: "ErrorCode"))
    ErrorDetails.add_member(:error_message, Shapes::ShapeRef.new(shape: Description, location_name: "ErrorMessage"))
    ErrorDetails.struct_class = Types::ErrorDetails

    ErrorDetailsList.member = Shapes::ShapeRef.new(shape: ErrorDetails)

    FailedCreateStandbyWorkspacesRequest.add_member(:standby_workspace_request, Shapes::ShapeRef.new(shape: StandbyWorkspace, location_name: "StandbyWorkspaceRequest"))
    FailedCreateStandbyWorkspacesRequest.add_member(:error_code, Shapes::ShapeRef.new(shape: WorkspaceErrorCode, location_name: "ErrorCode"))
    FailedCreateStandbyWorkspacesRequest.add_member(:error_message, Shapes::ShapeRef.new(shape: Description, location_name: "ErrorMessage"))
    FailedCreateStandbyWorkspacesRequest.struct_class = Types::FailedCreateStandbyWorkspacesRequest

    FailedCreateStandbyWorkspacesRequestList.member = Shapes::ShapeRef.new(shape: FailedCreateStandbyWorkspacesRequest)

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

    GetAccountLinkRequest.add_member(:link_id, Shapes::ShapeRef.new(shape: LinkId, location_name: "LinkId"))
    GetAccountLinkRequest.add_member(:linked_account_id, Shapes::ShapeRef.new(shape: AwsAccount, location_name: "LinkedAccountId"))
    GetAccountLinkRequest.struct_class = Types::GetAccountLinkRequest

    GetAccountLinkResult.add_member(:account_link, Shapes::ShapeRef.new(shape: AccountLink, location_name: "AccountLink"))
    GetAccountLinkResult.struct_class = Types::GetAccountLinkResult

    GlobalAcceleratorForDirectory.add_member(:mode, Shapes::ShapeRef.new(shape: AGAModeForDirectoryEnum, required: true, location_name: "Mode"))
    GlobalAcceleratorForDirectory.add_member(:preferred_protocol, Shapes::ShapeRef.new(shape: AGAPreferredProtocolForDirectory, location_name: "PreferredProtocol"))
    GlobalAcceleratorForDirectory.struct_class = Types::GlobalAcceleratorForDirectory

    GlobalAcceleratorForWorkSpace.add_member(:mode, Shapes::ShapeRef.new(shape: AGAModeForWorkSpaceEnum, required: true, location_name: "Mode"))
    GlobalAcceleratorForWorkSpace.add_member(:preferred_protocol, Shapes::ShapeRef.new(shape: AGAPreferredProtocolForWorkSpace, location_name: "PreferredProtocol"))
    GlobalAcceleratorForWorkSpace.struct_class = Types::GlobalAcceleratorForWorkSpace

    IDCConfig.add_member(:instance_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "InstanceArn"))
    IDCConfig.add_member(:application_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ApplicationArn"))
    IDCConfig.struct_class = Types::IDCConfig

    ImageAssociatedResourceTypeList.member = Shapes::ShapeRef.new(shape: ImageAssociatedResourceType)

    ImagePermission.add_member(:shared_account_id, Shapes::ShapeRef.new(shape: AwsAccount, location_name: "SharedAccountId"))
    ImagePermission.struct_class = Types::ImagePermission

    ImagePermissions.member = Shapes::ShapeRef.new(shape: ImagePermission)

    ImageResourceAssociation.add_member(:associated_resource_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AssociatedResourceId"))
    ImageResourceAssociation.add_member(:associated_resource_type, Shapes::ShapeRef.new(shape: ImageAssociatedResourceType, location_name: "AssociatedResourceType"))
    ImageResourceAssociation.add_member(:created, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Created"))
    ImageResourceAssociation.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTime"))
    ImageResourceAssociation.add_member(:image_id, Shapes::ShapeRef.new(shape: WorkspaceImageId, location_name: "ImageId"))
    ImageResourceAssociation.add_member(:state, Shapes::ShapeRef.new(shape: AssociationState, location_name: "State"))
    ImageResourceAssociation.add_member(:state_reason, Shapes::ShapeRef.new(shape: AssociationStateReason, location_name: "StateReason"))
    ImageResourceAssociation.struct_class = Types::ImageResourceAssociation

    ImageResourceAssociationList.member = Shapes::ShapeRef.new(shape: ImageResourceAssociation)

    ImageSourceIdentifier.add_member(:ec2_import_task_id, Shapes::ShapeRef.new(shape: Ec2ImportTaskId, location_name: "Ec2ImportTaskId"))
    ImageSourceIdentifier.add_member(:image_build_version_arn, Shapes::ShapeRef.new(shape: ImageBuildVersionArn, location_name: "ImageBuildVersionArn"))
    ImageSourceIdentifier.add_member(:ec2_image_id, Shapes::ShapeRef.new(shape: Ec2ImageId, location_name: "Ec2ImageId"))
    ImageSourceIdentifier.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ImageSourceIdentifier.add_member_subclass(:ec2_import_task_id, Types::ImageSourceIdentifier::Ec2ImportTaskId)
    ImageSourceIdentifier.add_member_subclass(:image_build_version_arn, Types::ImageSourceIdentifier::ImageBuildVersionArn)
    ImageSourceIdentifier.add_member_subclass(:ec2_image_id, Types::ImageSourceIdentifier::Ec2ImageId)
    ImageSourceIdentifier.add_member_subclass(:unknown, Types::ImageSourceIdentifier::Unknown)
    ImageSourceIdentifier.struct_class = Types::ImageSourceIdentifier

    ImportClientBrandingRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location_name: "ResourceId"))
    ImportClientBrandingRequest.add_member(:device_type_windows, Shapes::ShapeRef.new(shape: DefaultImportClientBrandingAttributes, location_name: "DeviceTypeWindows"))
    ImportClientBrandingRequest.add_member(:device_type_osx, Shapes::ShapeRef.new(shape: DefaultImportClientBrandingAttributes, location_name: "DeviceTypeOsx"))
    ImportClientBrandingRequest.add_member(:device_type_android, Shapes::ShapeRef.new(shape: DefaultImportClientBrandingAttributes, location_name: "DeviceTypeAndroid"))
    ImportClientBrandingRequest.add_member(:device_type_ios, Shapes::ShapeRef.new(shape: IosImportClientBrandingAttributes, location_name: "DeviceTypeIos"))
    ImportClientBrandingRequest.add_member(:device_type_linux, Shapes::ShapeRef.new(shape: DefaultImportClientBrandingAttributes, location_name: "DeviceTypeLinux"))
    ImportClientBrandingRequest.add_member(:device_type_web, Shapes::ShapeRef.new(shape: DefaultImportClientBrandingAttributes, location_name: "DeviceTypeWeb"))
    ImportClientBrandingRequest.struct_class = Types::ImportClientBrandingRequest

    ImportClientBrandingResult.add_member(:device_type_windows, Shapes::ShapeRef.new(shape: DefaultClientBrandingAttributes, location_name: "DeviceTypeWindows"))
    ImportClientBrandingResult.add_member(:device_type_osx, Shapes::ShapeRef.new(shape: DefaultClientBrandingAttributes, location_name: "DeviceTypeOsx"))
    ImportClientBrandingResult.add_member(:device_type_android, Shapes::ShapeRef.new(shape: DefaultClientBrandingAttributes, location_name: "DeviceTypeAndroid"))
    ImportClientBrandingResult.add_member(:device_type_ios, Shapes::ShapeRef.new(shape: IosClientBrandingAttributes, location_name: "DeviceTypeIos"))
    ImportClientBrandingResult.add_member(:device_type_linux, Shapes::ShapeRef.new(shape: DefaultClientBrandingAttributes, location_name: "DeviceTypeLinux"))
    ImportClientBrandingResult.add_member(:device_type_web, Shapes::ShapeRef.new(shape: DefaultClientBrandingAttributes, location_name: "DeviceTypeWeb"))
    ImportClientBrandingResult.struct_class = Types::ImportClientBrandingResult

    ImportCustomWorkspaceImageRequest.add_member(:image_name, Shapes::ShapeRef.new(shape: WorkspaceImageName, required: true, location_name: "ImageName"))
    ImportCustomWorkspaceImageRequest.add_member(:image_description, Shapes::ShapeRef.new(shape: WorkspaceImageDescription, required: true, location_name: "ImageDescription"))
    ImportCustomWorkspaceImageRequest.add_member(:compute_type, Shapes::ShapeRef.new(shape: ImageComputeType, required: true, location_name: "ComputeType"))
    ImportCustomWorkspaceImageRequest.add_member(:protocol, Shapes::ShapeRef.new(shape: CustomImageProtocol, required: true, location_name: "Protocol"))
    ImportCustomWorkspaceImageRequest.add_member(:image_source, Shapes::ShapeRef.new(shape: ImageSourceIdentifier, required: true, location_name: "ImageSource"))
    ImportCustomWorkspaceImageRequest.add_member(:infrastructure_configuration_arn, Shapes::ShapeRef.new(shape: InfrastructureConfigurationArn, required: true, location_name: "InfrastructureConfigurationArn"))
    ImportCustomWorkspaceImageRequest.add_member(:platform, Shapes::ShapeRef.new(shape: Platform, required: true, location_name: "Platform"))
    ImportCustomWorkspaceImageRequest.add_member(:os_version, Shapes::ShapeRef.new(shape: OSVersion, required: true, location_name: "OsVersion"))
    ImportCustomWorkspaceImageRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ImportCustomWorkspaceImageRequest.struct_class = Types::ImportCustomWorkspaceImageRequest

    ImportCustomWorkspaceImageResult.add_member(:image_id, Shapes::ShapeRef.new(shape: WorkspaceImageId, location_name: "ImageId"))
    ImportCustomWorkspaceImageResult.add_member(:state, Shapes::ShapeRef.new(shape: CustomWorkspaceImageImportState, location_name: "State"))
    ImportCustomWorkspaceImageResult.struct_class = Types::ImportCustomWorkspaceImageResult

    ImportWorkspaceImageRequest.add_member(:ec2_image_id, Shapes::ShapeRef.new(shape: Ec2ImageId, required: true, location_name: "Ec2ImageId"))
    ImportWorkspaceImageRequest.add_member(:ingestion_process, Shapes::ShapeRef.new(shape: WorkspaceImageIngestionProcess, required: true, location_name: "IngestionProcess"))
    ImportWorkspaceImageRequest.add_member(:image_name, Shapes::ShapeRef.new(shape: WorkspaceImageName, required: true, location_name: "ImageName"))
    ImportWorkspaceImageRequest.add_member(:image_description, Shapes::ShapeRef.new(shape: WorkspaceImageDescription, required: true, location_name: "ImageDescription"))
    ImportWorkspaceImageRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ImportWorkspaceImageRequest.add_member(:applications, Shapes::ShapeRef.new(shape: ApplicationList, location_name: "Applications"))
    ImportWorkspaceImageRequest.struct_class = Types::ImportWorkspaceImageRequest

    ImportWorkspaceImageResult.add_member(:image_id, Shapes::ShapeRef.new(shape: WorkspaceImageId, location_name: "ImageId"))
    ImportWorkspaceImageResult.struct_class = Types::ImportWorkspaceImageResult

    IncompatibleApplicationsException.struct_class = Types::IncompatibleApplicationsException

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    InternetFallbackProtocolList.member = Shapes::ShapeRef.new(shape: InternetFallbackProtocol)

    InvalidParameterCombinationException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    InvalidParameterCombinationException.struct_class = Types::InvalidParameterCombinationException

    InvalidParameterValuesException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    InvalidParameterValuesException.struct_class = Types::InvalidParameterValuesException

    InvalidResourceStateException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    InvalidResourceStateException.struct_class = Types::InvalidResourceStateException

    IosClientBrandingAttributes.add_member(:logo_url, Shapes::ShapeRef.new(shape: ClientUrl, location_name: "LogoUrl"))
    IosClientBrandingAttributes.add_member(:logo_2x_url, Shapes::ShapeRef.new(shape: ClientUrl, location_name: "Logo2xUrl"))
    IosClientBrandingAttributes.add_member(:logo_3x_url, Shapes::ShapeRef.new(shape: ClientUrl, location_name: "Logo3xUrl"))
    IosClientBrandingAttributes.add_member(:support_email, Shapes::ShapeRef.new(shape: ClientEmail, location_name: "SupportEmail"))
    IosClientBrandingAttributes.add_member(:support_link, Shapes::ShapeRef.new(shape: ClientUrl, location_name: "SupportLink"))
    IosClientBrandingAttributes.add_member(:forgot_password_link, Shapes::ShapeRef.new(shape: ClientUrl, location_name: "ForgotPasswordLink"))
    IosClientBrandingAttributes.add_member(:login_message, Shapes::ShapeRef.new(shape: LoginMessage, location_name: "LoginMessage"))
    IosClientBrandingAttributes.struct_class = Types::IosClientBrandingAttributes

    IosImportClientBrandingAttributes.add_member(:logo, Shapes::ShapeRef.new(shape: IosLogo, location_name: "Logo"))
    IosImportClientBrandingAttributes.add_member(:logo_2x, Shapes::ShapeRef.new(shape: Ios2XLogo, location_name: "Logo2x"))
    IosImportClientBrandingAttributes.add_member(:logo_3x, Shapes::ShapeRef.new(shape: Ios3XLogo, location_name: "Logo3x"))
    IosImportClientBrandingAttributes.add_member(:support_email, Shapes::ShapeRef.new(shape: ClientEmail, location_name: "SupportEmail"))
    IosImportClientBrandingAttributes.add_member(:support_link, Shapes::ShapeRef.new(shape: ClientUrl, location_name: "SupportLink"))
    IosImportClientBrandingAttributes.add_member(:forgot_password_link, Shapes::ShapeRef.new(shape: ClientUrl, location_name: "ForgotPasswordLink"))
    IosImportClientBrandingAttributes.add_member(:login_message, Shapes::ShapeRef.new(shape: LoginMessage, location_name: "LoginMessage"))
    IosImportClientBrandingAttributes.struct_class = Types::IosImportClientBrandingAttributes

    IpGroupIdList.member = Shapes::ShapeRef.new(shape: IpGroupId)

    IpRevokedRuleList.member = Shapes::ShapeRef.new(shape: IpRule)

    IpRuleItem.add_member(:ip_rule, Shapes::ShapeRef.new(shape: IpRule, location_name: "ipRule"))
    IpRuleItem.add_member(:rule_desc, Shapes::ShapeRef.new(shape: IpRuleDesc, location_name: "ruleDesc"))
    IpRuleItem.struct_class = Types::IpRuleItem

    IpRuleList.member = Shapes::ShapeRef.new(shape: IpRuleItem)

    LinkStatusFilterList.member = Shapes::ShapeRef.new(shape: AccountLinkStatusEnum)

    ListAccountLinksRequest.add_member(:link_status_filter, Shapes::ShapeRef.new(shape: LinkStatusFilterList, location_name: "LinkStatusFilter"))
    ListAccountLinksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListAccountLinksRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Limit, location_name: "MaxResults"))
    ListAccountLinksRequest.struct_class = Types::ListAccountLinksRequest

    ListAccountLinksResult.add_member(:account_links, Shapes::ShapeRef.new(shape: AccountLinkList, location_name: "AccountLinks"))
    ListAccountLinksResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListAccountLinksResult.struct_class = Types::ListAccountLinksResult

    ListAvailableManagementCidrRangesRequest.add_member(:management_cidr_range_constraint, Shapes::ShapeRef.new(shape: ManagementCidrRangeConstraint, required: true, location_name: "ManagementCidrRangeConstraint"))
    ListAvailableManagementCidrRangesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ManagementCidrRangeMaxResults, location_name: "MaxResults"))
    ListAvailableManagementCidrRangesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListAvailableManagementCidrRangesRequest.struct_class = Types::ListAvailableManagementCidrRangesRequest

    ListAvailableManagementCidrRangesResult.add_member(:management_cidr_ranges, Shapes::ShapeRef.new(shape: DedicatedTenancyCidrRangeList, location_name: "ManagementCidrRanges"))
    ListAvailableManagementCidrRangesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListAvailableManagementCidrRangesResult.struct_class = Types::ListAvailableManagementCidrRangesResult

    LoginMessage.key = Shapes::ShapeRef.new(shape: ClientLocale)
    LoginMessage.value = Shapes::ShapeRef.new(shape: ClientLoginMessage)

    MicrosoftEntraConfig.add_member(:tenant_id, Shapes::ShapeRef.new(shape: MicrosoftEntraConfigTenantId, location_name: "TenantId"))
    MicrosoftEntraConfig.add_member(:application_config_secret_arn, Shapes::ShapeRef.new(shape: SecretsManagerArn, location_name: "ApplicationConfigSecretArn"))
    MicrosoftEntraConfig.struct_class = Types::MicrosoftEntraConfig

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

    ModifyAccountResult.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ModifyAccountResult.struct_class = Types::ModifyAccountResult

    ModifyCertificateBasedAuthPropertiesRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location_name: "ResourceId"))
    ModifyCertificateBasedAuthPropertiesRequest.add_member(:certificate_based_auth_properties, Shapes::ShapeRef.new(shape: CertificateBasedAuthProperties, location_name: "CertificateBasedAuthProperties"))
    ModifyCertificateBasedAuthPropertiesRequest.add_member(:properties_to_delete, Shapes::ShapeRef.new(shape: DeletableCertificateBasedAuthPropertiesList, location_name: "PropertiesToDelete"))
    ModifyCertificateBasedAuthPropertiesRequest.struct_class = Types::ModifyCertificateBasedAuthPropertiesRequest

    ModifyCertificateBasedAuthPropertiesResult.struct_class = Types::ModifyCertificateBasedAuthPropertiesResult

    ModifyClientPropertiesRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "ResourceId"))
    ModifyClientPropertiesRequest.add_member(:client_properties, Shapes::ShapeRef.new(shape: ClientProperties, required: true, location_name: "ClientProperties"))
    ModifyClientPropertiesRequest.struct_class = Types::ModifyClientPropertiesRequest

    ModifyClientPropertiesResult.struct_class = Types::ModifyClientPropertiesResult

    ModifyEndpointEncryptionModeRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location_name: "DirectoryId"))
    ModifyEndpointEncryptionModeRequest.add_member(:endpoint_encryption_mode, Shapes::ShapeRef.new(shape: EndpointEncryptionMode, required: true, location_name: "EndpointEncryptionMode"))
    ModifyEndpointEncryptionModeRequest.struct_class = Types::ModifyEndpointEncryptionModeRequest

    ModifyEndpointEncryptionModeResponse.struct_class = Types::ModifyEndpointEncryptionModeResponse

    ModifySamlPropertiesRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location_name: "ResourceId"))
    ModifySamlPropertiesRequest.add_member(:saml_properties, Shapes::ShapeRef.new(shape: SamlProperties, location_name: "SamlProperties"))
    ModifySamlPropertiesRequest.add_member(:properties_to_delete, Shapes::ShapeRef.new(shape: DeletableSamlPropertiesList, location_name: "PropertiesToDelete"))
    ModifySamlPropertiesRequest.struct_class = Types::ModifySamlPropertiesRequest

    ModifySamlPropertiesResult.struct_class = Types::ModifySamlPropertiesResult

    ModifySelfservicePermissionsRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location_name: "ResourceId"))
    ModifySelfservicePermissionsRequest.add_member(:selfservice_permissions, Shapes::ShapeRef.new(shape: SelfservicePermissions, required: true, location_name: "SelfservicePermissions"))
    ModifySelfservicePermissionsRequest.struct_class = Types::ModifySelfservicePermissionsRequest

    ModifySelfservicePermissionsResult.struct_class = Types::ModifySelfservicePermissionsResult

    ModifyStreamingPropertiesRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location_name: "ResourceId"))
    ModifyStreamingPropertiesRequest.add_member(:streaming_properties, Shapes::ShapeRef.new(shape: StreamingProperties, location_name: "StreamingProperties"))
    ModifyStreamingPropertiesRequest.struct_class = Types::ModifyStreamingPropertiesRequest

    ModifyStreamingPropertiesResult.struct_class = Types::ModifyStreamingPropertiesResult

    ModifyWorkspaceAccessPropertiesRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location_name: "ResourceId"))
    ModifyWorkspaceAccessPropertiesRequest.add_member(:workspace_access_properties, Shapes::ShapeRef.new(shape: WorkspaceAccessProperties, required: true, location_name: "WorkspaceAccessProperties"))
    ModifyWorkspaceAccessPropertiesRequest.struct_class = Types::ModifyWorkspaceAccessPropertiesRequest

    ModifyWorkspaceAccessPropertiesResult.struct_class = Types::ModifyWorkspaceAccessPropertiesResult

    ModifyWorkspaceCreationPropertiesRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location_name: "ResourceId"))
    ModifyWorkspaceCreationPropertiesRequest.add_member(:workspace_creation_properties, Shapes::ShapeRef.new(shape: WorkspaceCreationProperties, required: true, location_name: "WorkspaceCreationProperties"))
    ModifyWorkspaceCreationPropertiesRequest.struct_class = Types::ModifyWorkspaceCreationPropertiesRequest

    ModifyWorkspaceCreationPropertiesResult.struct_class = Types::ModifyWorkspaceCreationPropertiesResult

    ModifyWorkspacePropertiesRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location_name: "WorkspaceId"))
    ModifyWorkspacePropertiesRequest.add_member(:workspace_properties, Shapes::ShapeRef.new(shape: WorkspaceProperties, location_name: "WorkspaceProperties"))
    ModifyWorkspacePropertiesRequest.add_member(:data_replication, Shapes::ShapeRef.new(shape: DataReplication, location_name: "DataReplication"))
    ModifyWorkspacePropertiesRequest.struct_class = Types::ModifyWorkspacePropertiesRequest

    ModifyWorkspacePropertiesResult.struct_class = Types::ModifyWorkspacePropertiesResult

    ModifyWorkspaceStateRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location_name: "WorkspaceId"))
    ModifyWorkspaceStateRequest.add_member(:workspace_state, Shapes::ShapeRef.new(shape: TargetWorkspaceState, required: true, location_name: "WorkspaceState"))
    ModifyWorkspaceStateRequest.struct_class = Types::ModifyWorkspaceStateRequest

    ModifyWorkspaceStateResult.struct_class = Types::ModifyWorkspaceStateResult

    NetworkAccessConfiguration.add_member(:eni_private_ip_address, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "EniPrivateIpAddress"))
    NetworkAccessConfiguration.add_member(:eni_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "EniId"))
    NetworkAccessConfiguration.struct_class = Types::NetworkAccessConfiguration

    OperatingSystem.add_member(:type, Shapes::ShapeRef.new(shape: OperatingSystemType, location_name: "Type"))
    OperatingSystem.struct_class = Types::OperatingSystem

    OperatingSystemNameList.member = Shapes::ShapeRef.new(shape: OperatingSystemName)

    OperatingSystemNotCompatibleException.struct_class = Types::OperatingSystemNotCompatibleException

    OperationInProgressException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    OperationInProgressException.struct_class = Types::OperationInProgressException

    OperationNotSupportedException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    OperationNotSupportedException.add_member(:reason, Shapes::ShapeRef.new(shape: ExceptionErrorCode, location_name: "reason"))
    OperationNotSupportedException.struct_class = Types::OperationNotSupportedException

    PendingCreateStandbyWorkspacesRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: UserName, location_name: "UserName"))
    PendingCreateStandbyWorkspacesRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, location_name: "DirectoryId"))
    PendingCreateStandbyWorkspacesRequest.add_member(:state, Shapes::ShapeRef.new(shape: WorkspaceState, location_name: "State"))
    PendingCreateStandbyWorkspacesRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, location_name: "WorkspaceId"))
    PendingCreateStandbyWorkspacesRequest.struct_class = Types::PendingCreateStandbyWorkspacesRequest

    PendingCreateStandbyWorkspacesRequestList.member = Shapes::ShapeRef.new(shape: PendingCreateStandbyWorkspacesRequest)

    ProtocolList.member = Shapes::ShapeRef.new(shape: Protocol)

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

    RegisterWorkspaceDirectoryRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, location_name: "DirectoryId"))
    RegisterWorkspaceDirectoryRequest.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIds, location_name: "SubnetIds"))
    RegisterWorkspaceDirectoryRequest.add_member(:enable_self_service, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "EnableSelfService"))
    RegisterWorkspaceDirectoryRequest.add_member(:tenancy, Shapes::ShapeRef.new(shape: Tenancy, location_name: "Tenancy"))
    RegisterWorkspaceDirectoryRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    RegisterWorkspaceDirectoryRequest.add_member(:workspace_directory_name, Shapes::ShapeRef.new(shape: WorkspaceDirectoryName, location_name: "WorkspaceDirectoryName"))
    RegisterWorkspaceDirectoryRequest.add_member(:workspace_directory_description, Shapes::ShapeRef.new(shape: WorkspaceDirectoryDescription, location_name: "WorkspaceDirectoryDescription"))
    RegisterWorkspaceDirectoryRequest.add_member(:user_identity_type, Shapes::ShapeRef.new(shape: UserIdentityType, location_name: "UserIdentityType"))
    RegisterWorkspaceDirectoryRequest.add_member(:idc_instance_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "IdcInstanceArn"))
    RegisterWorkspaceDirectoryRequest.add_member(:microsoft_entra_config, Shapes::ShapeRef.new(shape: MicrosoftEntraConfig, location_name: "MicrosoftEntraConfig"))
    RegisterWorkspaceDirectoryRequest.add_member(:workspace_type, Shapes::ShapeRef.new(shape: WorkspaceType, location_name: "WorkspaceType"))
    RegisterWorkspaceDirectoryRequest.add_member(:active_directory_config, Shapes::ShapeRef.new(shape: ActiveDirectoryConfig, location_name: "ActiveDirectoryConfig"))
    RegisterWorkspaceDirectoryRequest.struct_class = Types::RegisterWorkspaceDirectoryRequest

    RegisterWorkspaceDirectoryResult.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, location_name: "DirectoryId"))
    RegisterWorkspaceDirectoryResult.add_member(:state, Shapes::ShapeRef.new(shape: WorkspaceDirectoryState, location_name: "State"))
    RegisterWorkspaceDirectoryResult.struct_class = Types::RegisterWorkspaceDirectoryResult

    RejectAccountLinkInvitationRequest.add_member(:link_id, Shapes::ShapeRef.new(shape: LinkId, required: true, location_name: "LinkId"))
    RejectAccountLinkInvitationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken"))
    RejectAccountLinkInvitationRequest.struct_class = Types::RejectAccountLinkInvitationRequest

    RejectAccountLinkInvitationResult.add_member(:account_link, Shapes::ShapeRef.new(shape: AccountLink, location_name: "AccountLink"))
    RejectAccountLinkInvitationResult.struct_class = Types::RejectAccountLinkInvitationResult

    RelatedWorkspaceProperties.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, location_name: "WorkspaceId"))
    RelatedWorkspaceProperties.add_member(:region, Shapes::ShapeRef.new(shape: Region, location_name: "Region"))
    RelatedWorkspaceProperties.add_member(:state, Shapes::ShapeRef.new(shape: WorkspaceState, location_name: "State"))
    RelatedWorkspaceProperties.add_member(:type, Shapes::ShapeRef.new(shape: StandbyWorkspaceRelationshipType, location_name: "Type"))
    RelatedWorkspaceProperties.struct_class = Types::RelatedWorkspaceProperties

    RelatedWorkspaces.member = Shapes::ShapeRef.new(shape: RelatedWorkspaceProperties)

    ResourceAlreadyExistsException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ResourceAlreadyExistsException.struct_class = Types::ResourceAlreadyExistsException

    ResourceAssociatedException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ResourceAssociatedException.struct_class = Types::ResourceAssociatedException

    ResourceCreationFailedException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ResourceCreationFailedException.struct_class = Types::ResourceCreationFailedException

    ResourceIdList.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    ResourceInUseException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ResourceInUseException.add_member(:resource_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ResourceId"))
    ResourceInUseException.struct_class = Types::ResourceInUseException

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

    RootStorage.add_member(:capacity, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "Capacity"))
    RootStorage.struct_class = Types::RootStorage

    SamlProperties.add_member(:status, Shapes::ShapeRef.new(shape: SamlStatusEnum, location_name: "Status"))
    SamlProperties.add_member(:user_access_url, Shapes::ShapeRef.new(shape: SamlUserAccessUrl, location_name: "UserAccessUrl"))
    SamlProperties.add_member(:relay_state_parameter_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RelayStateParameterName"))
    SamlProperties.struct_class = Types::SamlProperties

    SelfservicePermissions.add_member(:restart_workspace, Shapes::ShapeRef.new(shape: ReconnectEnum, location_name: "RestartWorkspace"))
    SelfservicePermissions.add_member(:increase_volume_size, Shapes::ShapeRef.new(shape: ReconnectEnum, location_name: "IncreaseVolumeSize"))
    SelfservicePermissions.add_member(:change_compute_type, Shapes::ShapeRef.new(shape: ReconnectEnum, location_name: "ChangeComputeType"))
    SelfservicePermissions.add_member(:switch_running_mode, Shapes::ShapeRef.new(shape: ReconnectEnum, location_name: "SwitchRunningMode"))
    SelfservicePermissions.add_member(:rebuild_workspace, Shapes::ShapeRef.new(shape: ReconnectEnum, location_name: "RebuildWorkspace"))
    SelfservicePermissions.struct_class = Types::SelfservicePermissions

    Snapshot.add_member(:snapshot_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "SnapshotTime"))
    Snapshot.struct_class = Types::Snapshot

    SnapshotList.member = Shapes::ShapeRef.new(shape: Snapshot)

    StandbyWorkspace.add_member(:primary_workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location_name: "PrimaryWorkspaceId"))
    StandbyWorkspace.add_member(:volume_encryption_key, Shapes::ShapeRef.new(shape: VolumeEncryptionKey, location_name: "VolumeEncryptionKey"))
    StandbyWorkspace.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location_name: "DirectoryId"))
    StandbyWorkspace.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    StandbyWorkspace.add_member(:data_replication, Shapes::ShapeRef.new(shape: DataReplication, location_name: "DataReplication"))
    StandbyWorkspace.struct_class = Types::StandbyWorkspace

    StandbyWorkspacesList.member = Shapes::ShapeRef.new(shape: StandbyWorkspace)

    StandbyWorkspacesProperties.add_member(:standby_workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, location_name: "StandbyWorkspaceId"))
    StandbyWorkspacesProperties.add_member(:data_replication, Shapes::ShapeRef.new(shape: DataReplication, location_name: "DataReplication"))
    StandbyWorkspacesProperties.add_member(:recovery_snapshot_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "RecoverySnapshotTime"))
    StandbyWorkspacesProperties.struct_class = Types::StandbyWorkspacesProperties

    StandbyWorkspacesPropertiesList.member = Shapes::ShapeRef.new(shape: StandbyWorkspacesProperties)

    StartRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, location_name: "WorkspaceId"))
    StartRequest.struct_class = Types::StartRequest

    StartWorkspaceRequests.member = Shapes::ShapeRef.new(shape: StartRequest)

    StartWorkspacesPoolRequest.add_member(:pool_id, Shapes::ShapeRef.new(shape: WorkspacesPoolId, required: true, location_name: "PoolId"))
    StartWorkspacesPoolRequest.struct_class = Types::StartWorkspacesPoolRequest

    StartWorkspacesPoolResult.struct_class = Types::StartWorkspacesPoolResult

    StartWorkspacesRequest.add_member(:start_workspace_requests, Shapes::ShapeRef.new(shape: StartWorkspaceRequests, required: true, location_name: "StartWorkspaceRequests"))
    StartWorkspacesRequest.struct_class = Types::StartWorkspacesRequest

    StartWorkspacesResult.add_member(:failed_requests, Shapes::ShapeRef.new(shape: FailedStartWorkspaceRequests, location_name: "FailedRequests"))
    StartWorkspacesResult.struct_class = Types::StartWorkspacesResult

    StopRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, location_name: "WorkspaceId"))
    StopRequest.struct_class = Types::StopRequest

    StopWorkspaceRequests.member = Shapes::ShapeRef.new(shape: StopRequest)

    StopWorkspacesPoolRequest.add_member(:pool_id, Shapes::ShapeRef.new(shape: WorkspacesPoolId, required: true, location_name: "PoolId"))
    StopWorkspacesPoolRequest.struct_class = Types::StopWorkspacesPoolRequest

    StopWorkspacesPoolResult.struct_class = Types::StopWorkspacesPoolResult

    StopWorkspacesRequest.add_member(:stop_workspace_requests, Shapes::ShapeRef.new(shape: StopWorkspaceRequests, required: true, location_name: "StopWorkspaceRequests"))
    StopWorkspacesRequest.struct_class = Types::StopWorkspacesRequest

    StopWorkspacesResult.add_member(:failed_requests, Shapes::ShapeRef.new(shape: FailedStopWorkspaceRequests, location_name: "FailedRequests"))
    StopWorkspacesResult.struct_class = Types::StopWorkspacesResult

    StorageConnector.add_member(:connector_type, Shapes::ShapeRef.new(shape: StorageConnectorTypeEnum, required: true, location_name: "ConnectorType"))
    StorageConnector.add_member(:status, Shapes::ShapeRef.new(shape: StorageConnectorStatusEnum, required: true, location_name: "Status"))
    StorageConnector.struct_class = Types::StorageConnector

    StorageConnectors.member = Shapes::ShapeRef.new(shape: StorageConnector)

    StreamingProperties.add_member(:streaming_experience_preferred_protocol, Shapes::ShapeRef.new(shape: StreamingExperiencePreferredProtocolEnum, location_name: "StreamingExperiencePreferredProtocol"))
    StreamingProperties.add_member(:user_settings, Shapes::ShapeRef.new(shape: UserSettings, location_name: "UserSettings"))
    StreamingProperties.add_member(:storage_connectors, Shapes::ShapeRef.new(shape: StorageConnectors, location_name: "StorageConnectors"))
    StreamingProperties.add_member(:global_accelerator, Shapes::ShapeRef.new(shape: GlobalAcceleratorForDirectory, location_name: "GlobalAccelerator"))
    StreamingProperties.struct_class = Types::StreamingProperties

    SubnetIds.member = Shapes::ShapeRef.new(shape: SubnetId)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TerminateRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location_name: "WorkspaceId"))
    TerminateRequest.struct_class = Types::TerminateRequest

    TerminateWorkspaceRequests.member = Shapes::ShapeRef.new(shape: TerminateRequest)

    TerminateWorkspacesPoolRequest.add_member(:pool_id, Shapes::ShapeRef.new(shape: WorkspacesPoolId, required: true, location_name: "PoolId"))
    TerminateWorkspacesPoolRequest.struct_class = Types::TerminateWorkspacesPoolRequest

    TerminateWorkspacesPoolResult.struct_class = Types::TerminateWorkspacesPoolResult

    TerminateWorkspacesPoolSessionRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: AmazonUuid, required: true, location_name: "SessionId"))
    TerminateWorkspacesPoolSessionRequest.struct_class = Types::TerminateWorkspacesPoolSessionRequest

    TerminateWorkspacesPoolSessionResult.struct_class = Types::TerminateWorkspacesPoolSessionResult

    TerminateWorkspacesRequest.add_member(:terminate_workspace_requests, Shapes::ShapeRef.new(shape: TerminateWorkspaceRequests, required: true, location_name: "TerminateWorkspaceRequests"))
    TerminateWorkspacesRequest.struct_class = Types::TerminateWorkspacesRequest

    TerminateWorkspacesResult.add_member(:failed_requests, Shapes::ShapeRef.new(shape: FailedTerminateWorkspaceRequests, location_name: "FailedRequests"))
    TerminateWorkspacesResult.struct_class = Types::TerminateWorkspacesResult

    TimeoutSettings.add_member(:disconnect_timeout_in_seconds, Shapes::ShapeRef.new(shape: DisconnectTimeoutInSeconds, location_name: "DisconnectTimeoutInSeconds"))
    TimeoutSettings.add_member(:idle_disconnect_timeout_in_seconds, Shapes::ShapeRef.new(shape: IdleDisconnectTimeoutInSeconds, location_name: "IdleDisconnectTimeoutInSeconds"))
    TimeoutSettings.add_member(:max_user_duration_in_seconds, Shapes::ShapeRef.new(shape: MaxUserDurationInSeconds, location_name: "MaxUserDurationInSeconds"))
    TimeoutSettings.struct_class = Types::TimeoutSettings

    UnsupportedNetworkConfigurationException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    UnsupportedNetworkConfigurationException.struct_class = Types::UnsupportedNetworkConfigurationException

    UnsupportedWorkspaceConfigurationException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    UnsupportedWorkspaceConfigurationException.struct_class = Types::UnsupportedWorkspaceConfigurationException

    UpdateConnectClientAddInRequest.add_member(:add_in_id, Shapes::ShapeRef.new(shape: AmazonUuid, required: true, location_name: "AddInId"))
    UpdateConnectClientAddInRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location_name: "ResourceId"))
    UpdateConnectClientAddInRequest.add_member(:name, Shapes::ShapeRef.new(shape: AddInName, location_name: "Name"))
    UpdateConnectClientAddInRequest.add_member(:url, Shapes::ShapeRef.new(shape: AddInUrl, location_name: "URL"))
    UpdateConnectClientAddInRequest.struct_class = Types::UpdateConnectClientAddInRequest

    UpdateConnectClientAddInResult.struct_class = Types::UpdateConnectClientAddInResult

    UpdateConnectionAliasPermissionRequest.add_member(:alias_id, Shapes::ShapeRef.new(shape: ConnectionAliasId, required: true, location_name: "AliasId"))
    UpdateConnectionAliasPermissionRequest.add_member(:connection_alias_permission, Shapes::ShapeRef.new(shape: ConnectionAliasPermission, required: true, location_name: "ConnectionAliasPermission"))
    UpdateConnectionAliasPermissionRequest.struct_class = Types::UpdateConnectionAliasPermissionRequest

    UpdateConnectionAliasPermissionResult.struct_class = Types::UpdateConnectionAliasPermissionResult

    UpdateResult.add_member(:update_available, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "UpdateAvailable"))
    UpdateResult.add_member(:description, Shapes::ShapeRef.new(shape: UpdateDescription, location_name: "Description"))
    UpdateResult.struct_class = Types::UpdateResult

    UpdateRulesOfIpGroupRequest.add_member(:group_id, Shapes::ShapeRef.new(shape: IpGroupId, required: true, location_name: "GroupId"))
    UpdateRulesOfIpGroupRequest.add_member(:user_rules, Shapes::ShapeRef.new(shape: IpRuleList, required: true, location_name: "UserRules"))
    UpdateRulesOfIpGroupRequest.struct_class = Types::UpdateRulesOfIpGroupRequest

    UpdateRulesOfIpGroupResult.struct_class = Types::UpdateRulesOfIpGroupResult

    UpdateWorkspaceBundleRequest.add_member(:bundle_id, Shapes::ShapeRef.new(shape: BundleId, location_name: "BundleId"))
    UpdateWorkspaceBundleRequest.add_member(:image_id, Shapes::ShapeRef.new(shape: WorkspaceImageId, location_name: "ImageId"))
    UpdateWorkspaceBundleRequest.struct_class = Types::UpdateWorkspaceBundleRequest

    UpdateWorkspaceBundleResult.struct_class = Types::UpdateWorkspaceBundleResult

    UpdateWorkspaceImagePermissionRequest.add_member(:image_id, Shapes::ShapeRef.new(shape: WorkspaceImageId, required: true, location_name: "ImageId"))
    UpdateWorkspaceImagePermissionRequest.add_member(:allow_copy_image, Shapes::ShapeRef.new(shape: BooleanObject, required: true, location_name: "AllowCopyImage"))
    UpdateWorkspaceImagePermissionRequest.add_member(:shared_account_id, Shapes::ShapeRef.new(shape: AwsAccount, required: true, location_name: "SharedAccountId"))
    UpdateWorkspaceImagePermissionRequest.struct_class = Types::UpdateWorkspaceImagePermissionRequest

    UpdateWorkspaceImagePermissionResult.struct_class = Types::UpdateWorkspaceImagePermissionResult

    UpdateWorkspacesPoolRequest.add_member(:pool_id, Shapes::ShapeRef.new(shape: WorkspacesPoolId, required: true, location_name: "PoolId"))
    UpdateWorkspacesPoolRequest.add_member(:description, Shapes::ShapeRef.new(shape: UpdateDescription, location_name: "Description"))
    UpdateWorkspacesPoolRequest.add_member(:bundle_id, Shapes::ShapeRef.new(shape: BundleId, location_name: "BundleId"))
    UpdateWorkspacesPoolRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, location_name: "DirectoryId"))
    UpdateWorkspacesPoolRequest.add_member(:capacity, Shapes::ShapeRef.new(shape: Capacity, location_name: "Capacity"))
    UpdateWorkspacesPoolRequest.add_member(:application_settings, Shapes::ShapeRef.new(shape: ApplicationSettingsRequest, location_name: "ApplicationSettings"))
    UpdateWorkspacesPoolRequest.add_member(:timeout_settings, Shapes::ShapeRef.new(shape: TimeoutSettings, location_name: "TimeoutSettings"))
    UpdateWorkspacesPoolRequest.add_member(:running_mode, Shapes::ShapeRef.new(shape: PoolsRunningMode, location_name: "RunningMode"))
    UpdateWorkspacesPoolRequest.struct_class = Types::UpdateWorkspacesPoolRequest

    UpdateWorkspacesPoolResult.add_member(:workspaces_pool, Shapes::ShapeRef.new(shape: WorkspacesPool, location_name: "WorkspacesPool"))
    UpdateWorkspacesPoolResult.struct_class = Types::UpdateWorkspacesPoolResult

    UserSetting.add_member(:action, Shapes::ShapeRef.new(shape: UserSettingActionEnum, required: true, location_name: "Action"))
    UserSetting.add_member(:permission, Shapes::ShapeRef.new(shape: UserSettingPermissionEnum, required: true, location_name: "Permission"))
    UserSetting.add_member(:maximum_length, Shapes::ShapeRef.new(shape: MaximumLength, location_name: "MaximumLength"))
    UserSetting.struct_class = Types::UserSetting

    UserSettings.member = Shapes::ShapeRef.new(shape: UserSetting)

    UserStorage.add_member(:capacity, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "Capacity"))
    UserStorage.struct_class = Types::UserStorage

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException

    WorkSpaceApplication.add_member(:application_id, Shapes::ShapeRef.new(shape: WorkSpaceApplicationId, location_name: "ApplicationId"))
    WorkSpaceApplication.add_member(:created, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Created"))
    WorkSpaceApplication.add_member(:description, Shapes::ShapeRef.new(shape: String2048, location_name: "Description"))
    WorkSpaceApplication.add_member(:license_type, Shapes::ShapeRef.new(shape: WorkSpaceApplicationLicenseType, location_name: "LicenseType"))
    WorkSpaceApplication.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    WorkSpaceApplication.add_member(:owner, Shapes::ShapeRef.new(shape: WorkSpaceApplicationOwner, location_name: "Owner"))
    WorkSpaceApplication.add_member(:state, Shapes::ShapeRef.new(shape: WorkSpaceApplicationState, location_name: "State"))
    WorkSpaceApplication.add_member(:supported_compute_type_names, Shapes::ShapeRef.new(shape: ComputeList, location_name: "SupportedComputeTypeNames"))
    WorkSpaceApplication.add_member(:supported_operating_system_names, Shapes::ShapeRef.new(shape: OperatingSystemNameList, location_name: "SupportedOperatingSystemNames"))
    WorkSpaceApplication.struct_class = Types::WorkSpaceApplication

    WorkSpaceApplicationDeployment.add_member(:associations, Shapes::ShapeRef.new(shape: WorkspaceResourceAssociationList, location_name: "Associations"))
    WorkSpaceApplicationDeployment.struct_class = Types::WorkSpaceApplicationDeployment

    WorkSpaceApplicationIdList.member = Shapes::ShapeRef.new(shape: WorkSpaceApplicationId)

    WorkSpaceApplicationList.member = Shapes::ShapeRef.new(shape: WorkSpaceApplication)

    WorkSpaceAssociatedResourceTypeList.member = Shapes::ShapeRef.new(shape: WorkSpaceAssociatedResourceType)

    Workspace.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, location_name: "WorkspaceId"))
    Workspace.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, location_name: "DirectoryId"))
    Workspace.add_member(:user_name, Shapes::ShapeRef.new(shape: UserName, location_name: "UserName"))
    Workspace.add_member(:ip_address, Shapes::ShapeRef.new(shape: IpAddress, location_name: "IpAddress"))
    Workspace.add_member(:ipv_6_address, Shapes::ShapeRef.new(shape: Ipv6Address, location_name: "Ipv6Address"))
    Workspace.add_member(:state, Shapes::ShapeRef.new(shape: WorkspaceState, location_name: "State"))
    Workspace.add_member(:bundle_id, Shapes::ShapeRef.new(shape: BundleId, location_name: "BundleId"))
    Workspace.add_member(:subnet_id, Shapes::ShapeRef.new(shape: SubnetId, location_name: "SubnetId"))
    Workspace.add_member(:error_message, Shapes::ShapeRef.new(shape: Description, location_name: "ErrorMessage"))
    Workspace.add_member(:error_code, Shapes::ShapeRef.new(shape: WorkspaceErrorCode, location_name: "ErrorCode"))
    Workspace.add_member(:computer_name, Shapes::ShapeRef.new(shape: ComputerName, location_name: "ComputerName"))
    Workspace.add_member(:volume_encryption_key, Shapes::ShapeRef.new(shape: VolumeEncryptionKey, location_name: "VolumeEncryptionKey"))
    Workspace.add_member(:user_volume_encryption_enabled, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "UserVolumeEncryptionEnabled"))
    Workspace.add_member(:root_volume_encryption_enabled, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "RootVolumeEncryptionEnabled"))
    Workspace.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, location_name: "WorkspaceName"))
    Workspace.add_member(:workspace_properties, Shapes::ShapeRef.new(shape: WorkspaceProperties, location_name: "WorkspaceProperties"))
    Workspace.add_member(:modification_states, Shapes::ShapeRef.new(shape: ModificationStateList, location_name: "ModificationStates"))
    Workspace.add_member(:related_workspaces, Shapes::ShapeRef.new(shape: RelatedWorkspaces, location_name: "RelatedWorkspaces"))
    Workspace.add_member(:data_replication_settings, Shapes::ShapeRef.new(shape: DataReplicationSettings, location_name: "DataReplicationSettings"))
    Workspace.add_member(:standby_workspaces_properties, Shapes::ShapeRef.new(shape: StandbyWorkspacesPropertiesList, location_name: "StandbyWorkspacesProperties"))
    Workspace.struct_class = Types::Workspace

    WorkspaceAccessProperties.add_member(:device_type_windows, Shapes::ShapeRef.new(shape: AccessPropertyValue, location_name: "DeviceTypeWindows"))
    WorkspaceAccessProperties.add_member(:device_type_osx, Shapes::ShapeRef.new(shape: AccessPropertyValue, location_name: "DeviceTypeOsx"))
    WorkspaceAccessProperties.add_member(:device_type_web, Shapes::ShapeRef.new(shape: AccessPropertyValue, location_name: "DeviceTypeWeb"))
    WorkspaceAccessProperties.add_member(:device_type_ios, Shapes::ShapeRef.new(shape: AccessPropertyValue, location_name: "DeviceTypeIos"))
    WorkspaceAccessProperties.add_member(:device_type_android, Shapes::ShapeRef.new(shape: AccessPropertyValue, location_name: "DeviceTypeAndroid"))
    WorkspaceAccessProperties.add_member(:device_type_chrome_os, Shapes::ShapeRef.new(shape: AccessPropertyValue, location_name: "DeviceTypeChromeOs"))
    WorkspaceAccessProperties.add_member(:device_type_zero_client, Shapes::ShapeRef.new(shape: AccessPropertyValue, location_name: "DeviceTypeZeroClient"))
    WorkspaceAccessProperties.add_member(:device_type_linux, Shapes::ShapeRef.new(shape: AccessPropertyValue, location_name: "DeviceTypeLinux"))
    WorkspaceAccessProperties.add_member(:device_type_work_spaces_thin_client, Shapes::ShapeRef.new(shape: AccessPropertyValue, location_name: "DeviceTypeWorkSpacesThinClient"))
    WorkspaceAccessProperties.add_member(:access_endpoint_config, Shapes::ShapeRef.new(shape: AccessEndpointConfig, location_name: "AccessEndpointConfig"))
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
    WorkspaceBundle.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    WorkspaceBundle.add_member(:state, Shapes::ShapeRef.new(shape: WorkspaceBundleState, location_name: "State"))
    WorkspaceBundle.add_member(:bundle_type, Shapes::ShapeRef.new(shape: BundleType, location_name: "BundleType"))
    WorkspaceBundle.struct_class = Types::WorkspaceBundle

    WorkspaceConnectionStatus.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, location_name: "WorkspaceId"))
    WorkspaceConnectionStatus.add_member(:connection_state, Shapes::ShapeRef.new(shape: ConnectionState, location_name: "ConnectionState"))
    WorkspaceConnectionStatus.add_member(:connection_state_check_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ConnectionStateCheckTimestamp"))
    WorkspaceConnectionStatus.add_member(:last_known_user_connection_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastKnownUserConnectionTimestamp"))
    WorkspaceConnectionStatus.struct_class = Types::WorkspaceConnectionStatus

    WorkspaceConnectionStatusList.member = Shapes::ShapeRef.new(shape: WorkspaceConnectionStatus)

    WorkspaceCreationProperties.add_member(:enable_internet_access, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "EnableInternetAccess"))
    WorkspaceCreationProperties.add_member(:default_ou, Shapes::ShapeRef.new(shape: DefaultOu, location_name: "DefaultOu"))
    WorkspaceCreationProperties.add_member(:custom_security_group_id, Shapes::ShapeRef.new(shape: SecurityGroupId, location_name: "CustomSecurityGroupId"))
    WorkspaceCreationProperties.add_member(:user_enabled_as_local_administrator, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "UserEnabledAsLocalAdministrator"))
    WorkspaceCreationProperties.add_member(:enable_maintenance_mode, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "EnableMaintenanceMode"))
    WorkspaceCreationProperties.add_member(:instance_iam_role_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "InstanceIamRoleArn"))
    WorkspaceCreationProperties.struct_class = Types::WorkspaceCreationProperties

    WorkspaceDirectory.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, location_name: "DirectoryId"))
    WorkspaceDirectory.add_member(:alias, Shapes::ShapeRef.new(shape: Alias, location_name: "Alias"))
    WorkspaceDirectory.add_member(:directory_name, Shapes::ShapeRef.new(shape: DirectoryName, location_name: "DirectoryName"))
    WorkspaceDirectory.add_member(:registration_code, Shapes::ShapeRef.new(shape: RegistrationCode, location_name: "RegistrationCode"))
    WorkspaceDirectory.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIds, location_name: "SubnetIds"))
    WorkspaceDirectory.add_member(:dns_ip_addresses, Shapes::ShapeRef.new(shape: DnsIpAddresses, location_name: "DnsIpAddresses"))
    WorkspaceDirectory.add_member(:dns_ipv_6_addresses, Shapes::ShapeRef.new(shape: DnsIpv6Addresses, location_name: "DnsIpv6Addresses"))
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
    WorkspaceDirectory.add_member(:saml_properties, Shapes::ShapeRef.new(shape: SamlProperties, location_name: "SamlProperties"))
    WorkspaceDirectory.add_member(:certificate_based_auth_properties, Shapes::ShapeRef.new(shape: CertificateBasedAuthProperties, location_name: "CertificateBasedAuthProperties"))
    WorkspaceDirectory.add_member(:endpoint_encryption_mode, Shapes::ShapeRef.new(shape: EndpointEncryptionMode, location_name: "EndpointEncryptionMode"))
    WorkspaceDirectory.add_member(:microsoft_entra_config, Shapes::ShapeRef.new(shape: MicrosoftEntraConfig, location_name: "MicrosoftEntraConfig"))
    WorkspaceDirectory.add_member(:workspace_directory_name, Shapes::ShapeRef.new(shape: WorkspaceDirectoryName, location_name: "WorkspaceDirectoryName"))
    WorkspaceDirectory.add_member(:workspace_directory_description, Shapes::ShapeRef.new(shape: WorkspaceDirectoryDescription, location_name: "WorkspaceDirectoryDescription"))
    WorkspaceDirectory.add_member(:user_identity_type, Shapes::ShapeRef.new(shape: UserIdentityType, location_name: "UserIdentityType"))
    WorkspaceDirectory.add_member(:workspace_type, Shapes::ShapeRef.new(shape: WorkspaceType, location_name: "WorkspaceType"))
    WorkspaceDirectory.add_member(:idc_config, Shapes::ShapeRef.new(shape: IDCConfig, location_name: "IDCConfig"))
    WorkspaceDirectory.add_member(:active_directory_config, Shapes::ShapeRef.new(shape: ActiveDirectoryConfig, location_name: "ActiveDirectoryConfig"))
    WorkspaceDirectory.add_member(:streaming_properties, Shapes::ShapeRef.new(shape: StreamingProperties, location_name: "StreamingProperties"))
    WorkspaceDirectory.add_member(:error_message, Shapes::ShapeRef.new(shape: Description, location_name: "ErrorMessage"))
    WorkspaceDirectory.struct_class = Types::WorkspaceDirectory

    WorkspaceDirectoryNameList.member = Shapes::ShapeRef.new(shape: WorkspaceDirectoryName)

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
    WorkspaceImage.add_member(:updates, Shapes::ShapeRef.new(shape: UpdateResult, location_name: "Updates"))
    WorkspaceImage.add_member(:error_details, Shapes::ShapeRef.new(shape: ErrorDetailsList, location_name: "ErrorDetails"))
    WorkspaceImage.struct_class = Types::WorkspaceImage

    WorkspaceImageIdList.member = Shapes::ShapeRef.new(shape: WorkspaceImageId)

    WorkspaceImageList.member = Shapes::ShapeRef.new(shape: WorkspaceImage)

    WorkspaceList.member = Shapes::ShapeRef.new(shape: Workspace)

    WorkspaceProperties.add_member(:running_mode, Shapes::ShapeRef.new(shape: RunningMode, location_name: "RunningMode"))
    WorkspaceProperties.add_member(:running_mode_auto_stop_timeout_in_minutes, Shapes::ShapeRef.new(shape: RunningModeAutoStopTimeoutInMinutes, location_name: "RunningModeAutoStopTimeoutInMinutes"))
    WorkspaceProperties.add_member(:root_volume_size_gib, Shapes::ShapeRef.new(shape: RootVolumeSizeGib, location_name: "RootVolumeSizeGib"))
    WorkspaceProperties.add_member(:user_volume_size_gib, Shapes::ShapeRef.new(shape: UserVolumeSizeGib, location_name: "UserVolumeSizeGib"))
    WorkspaceProperties.add_member(:compute_type_name, Shapes::ShapeRef.new(shape: Compute, location_name: "ComputeTypeName"))
    WorkspaceProperties.add_member(:protocols, Shapes::ShapeRef.new(shape: ProtocolList, location_name: "Protocols"))
    WorkspaceProperties.add_member(:operating_system_name, Shapes::ShapeRef.new(shape: OperatingSystemName, location_name: "OperatingSystemName"))
    WorkspaceProperties.add_member(:global_accelerator, Shapes::ShapeRef.new(shape: GlobalAcceleratorForWorkSpace, location_name: "GlobalAccelerator"))
    WorkspaceProperties.struct_class = Types::WorkspaceProperties

    WorkspaceRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location_name: "DirectoryId"))
    WorkspaceRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: UserName, required: true, location_name: "UserName"))
    WorkspaceRequest.add_member(:bundle_id, Shapes::ShapeRef.new(shape: BundleId, required: true, location_name: "BundleId"))
    WorkspaceRequest.add_member(:volume_encryption_key, Shapes::ShapeRef.new(shape: VolumeEncryptionKey, location_name: "VolumeEncryptionKey"))
    WorkspaceRequest.add_member(:user_volume_encryption_enabled, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "UserVolumeEncryptionEnabled"))
    WorkspaceRequest.add_member(:root_volume_encryption_enabled, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "RootVolumeEncryptionEnabled"))
    WorkspaceRequest.add_member(:workspace_properties, Shapes::ShapeRef.new(shape: WorkspaceProperties, location_name: "WorkspaceProperties"))
    WorkspaceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    WorkspaceRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, location_name: "WorkspaceName"))
    WorkspaceRequest.add_member(:ipv_6_address, Shapes::ShapeRef.new(shape: Ipv6Address, location_name: "Ipv6Address"))
    WorkspaceRequest.struct_class = Types::WorkspaceRequest

    WorkspaceRequestList.member = Shapes::ShapeRef.new(shape: WorkspaceRequest)

    WorkspaceResourceAssociation.add_member(:associated_resource_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AssociatedResourceId"))
    WorkspaceResourceAssociation.add_member(:associated_resource_type, Shapes::ShapeRef.new(shape: WorkSpaceAssociatedResourceType, location_name: "AssociatedResourceType"))
    WorkspaceResourceAssociation.add_member(:created, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Created"))
    WorkspaceResourceAssociation.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTime"))
    WorkspaceResourceAssociation.add_member(:state, Shapes::ShapeRef.new(shape: AssociationState, location_name: "State"))
    WorkspaceResourceAssociation.add_member(:state_reason, Shapes::ShapeRef.new(shape: AssociationStateReason, location_name: "StateReason"))
    WorkspaceResourceAssociation.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, location_name: "WorkspaceId"))
    WorkspaceResourceAssociation.struct_class = Types::WorkspaceResourceAssociation

    WorkspaceResourceAssociationList.member = Shapes::ShapeRef.new(shape: WorkspaceResourceAssociation)

    WorkspacesDefaultRoleNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    WorkspacesDefaultRoleNotFoundException.struct_class = Types::WorkspacesDefaultRoleNotFoundException

    WorkspacesIpGroup.add_member(:group_id, Shapes::ShapeRef.new(shape: IpGroupId, location_name: "groupId"))
    WorkspacesIpGroup.add_member(:group_name, Shapes::ShapeRef.new(shape: IpGroupName, location_name: "groupName"))
    WorkspacesIpGroup.add_member(:group_desc, Shapes::ShapeRef.new(shape: IpGroupDesc, location_name: "groupDesc"))
    WorkspacesIpGroup.add_member(:user_rules, Shapes::ShapeRef.new(shape: IpRuleList, location_name: "userRules"))
    WorkspacesIpGroup.struct_class = Types::WorkspacesIpGroup

    WorkspacesIpGroupsList.member = Shapes::ShapeRef.new(shape: WorkspacesIpGroup)

    WorkspacesPool.add_member(:pool_id, Shapes::ShapeRef.new(shape: WorkspacesPoolId, required: true, location_name: "PoolId"))
    WorkspacesPool.add_member(:pool_arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "PoolArn"))
    WorkspacesPool.add_member(:capacity_status, Shapes::ShapeRef.new(shape: CapacityStatus, required: true, location_name: "CapacityStatus"))
    WorkspacesPool.add_member(:pool_name, Shapes::ShapeRef.new(shape: WorkspacesPoolName, required: true, location_name: "PoolName"))
    WorkspacesPool.add_member(:description, Shapes::ShapeRef.new(shape: UpdateDescription, location_name: "Description"))
    WorkspacesPool.add_member(:state, Shapes::ShapeRef.new(shape: WorkspacesPoolState, required: true, location_name: "State"))
    WorkspacesPool.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedAt"))
    WorkspacesPool.add_member(:bundle_id, Shapes::ShapeRef.new(shape: BundleId, required: true, location_name: "BundleId"))
    WorkspacesPool.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location_name: "DirectoryId"))
    WorkspacesPool.add_member(:errors, Shapes::ShapeRef.new(shape: WorkspacesPoolErrors, location_name: "Errors"))
    WorkspacesPool.add_member(:application_settings, Shapes::ShapeRef.new(shape: ApplicationSettingsResponse, location_name: "ApplicationSettings"))
    WorkspacesPool.add_member(:timeout_settings, Shapes::ShapeRef.new(shape: TimeoutSettings, location_name: "TimeoutSettings"))
    WorkspacesPool.add_member(:running_mode, Shapes::ShapeRef.new(shape: PoolsRunningMode, required: true, location_name: "RunningMode"))
    WorkspacesPool.struct_class = Types::WorkspacesPool

    WorkspacesPoolError.add_member(:error_code, Shapes::ShapeRef.new(shape: WorkspacesPoolErrorCode, location_name: "ErrorCode"))
    WorkspacesPoolError.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "ErrorMessage"))
    WorkspacesPoolError.struct_class = Types::WorkspacesPoolError

    WorkspacesPoolErrors.member = Shapes::ShapeRef.new(shape: WorkspacesPoolError)

    WorkspacesPoolIds.member = Shapes::ShapeRef.new(shape: WorkspacesPoolId)

    WorkspacesPoolSession.add_member(:authentication_type, Shapes::ShapeRef.new(shape: AuthenticationType, location_name: "AuthenticationType"))
    WorkspacesPoolSession.add_member(:connection_state, Shapes::ShapeRef.new(shape: SessionConnectionState, location_name: "ConnectionState"))
    WorkspacesPoolSession.add_member(:session_id, Shapes::ShapeRef.new(shape: AmazonUuid, required: true, location_name: "SessionId"))
    WorkspacesPoolSession.add_member(:instance_id, Shapes::ShapeRef.new(shape: SessionInstanceId, location_name: "InstanceId"))
    WorkspacesPoolSession.add_member(:pool_id, Shapes::ShapeRef.new(shape: WorkspacesPoolId, required: true, location_name: "PoolId"))
    WorkspacesPoolSession.add_member(:expiration_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ExpirationTime"))
    WorkspacesPoolSession.add_member(:network_access_configuration, Shapes::ShapeRef.new(shape: NetworkAccessConfiguration, location_name: "NetworkAccessConfiguration"))
    WorkspacesPoolSession.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartTime"))
    WorkspacesPoolSession.add_member(:user_id, Shapes::ShapeRef.new(shape: WorkspacesPoolUserId, required: true, location_name: "UserId"))
    WorkspacesPoolSession.struct_class = Types::WorkspacesPoolSession

    WorkspacesPoolSessions.member = Shapes::ShapeRef.new(shape: WorkspacesPoolSession)

    WorkspacesPools.member = Shapes::ShapeRef.new(shape: WorkspacesPool)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2015-04-08"

      api.metadata = {
        "apiVersion" => "2015-04-08",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "workspaces",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "protocols" => ["json"],
        "serviceFullName" => "Amazon WorkSpaces",
        "serviceId" => "WorkSpaces",
        "signatureVersion" => "v4",
        "targetPrefix" => "WorkspacesService",
        "uid" => "workspaces-2015-04-08",
      }

      api.add_operation(:accept_account_link_invitation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AcceptAccountLinkInvitation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AcceptAccountLinkInvitationRequest)
        o.output = Shapes::ShapeRef.new(shape: AcceptAccountLinkInvitationResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

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

      api.add_operation(:associate_workspace_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateWorkspaceApplication"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateWorkspaceApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateWorkspaceApplicationResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ComputeNotCompatibleException)
        o.errors << Shapes::ShapeRef.new(shape: OperatingSystemNotCompatibleException)
        o.errors << Shapes::ShapeRef.new(shape: ApplicationNotSupportedException)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleApplicationsException)
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

      api.add_operation(:create_account_link_invitation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAccountLinkInvitation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAccountLinkInvitationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAccountLinkInvitationResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_connect_client_add_in, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateConnectClientAddIn"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateConnectClientAddInRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateConnectClientAddInResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceCreationFailedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
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

      api.add_operation(:create_standby_workspaces, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateStandbyWorkspaces"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateStandbyWorkspacesRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateStandbyWorkspacesResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
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

      api.add_operation(:create_updated_workspace_image, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateUpdatedWorkspaceImage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateUpdatedWorkspaceImageRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateUpdatedWorkspaceImageResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
      end)

      api.add_operation(:create_workspace_bundle, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateWorkspaceBundle"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateWorkspaceBundleRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateWorkspaceBundleResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_workspace_image, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateWorkspaceImage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateWorkspaceImageRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateWorkspaceImageResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
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

      api.add_operation(:create_workspaces_pool, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateWorkspacesPool"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateWorkspacesPoolRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateWorkspacesPoolResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_account_link_invitation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAccountLinkInvitation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAccountLinkInvitationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAccountLinkInvitationResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_client_branding, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteClientBranding"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteClientBrandingRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteClientBrandingResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_connect_client_add_in, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConnectClientAddIn"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteConnectClientAddInRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteConnectClientAddInResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
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

      api.add_operation(:delete_workspace_bundle, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteWorkspaceBundle"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteWorkspaceBundleRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteWorkspaceBundleResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAssociatedException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
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

      api.add_operation(:deploy_workspace_applications, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeployWorkspaceApplications"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeployWorkspaceApplicationsRequest)
        o.output = Shapes::ShapeRef.new(shape: DeployWorkspaceApplicationsResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: IncompatibleApplicationsException)
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

      api.add_operation(:describe_application_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeApplicationAssociations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeApplicationAssociationsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeApplicationAssociationsResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_applications, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeApplications"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeApplicationsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeApplicationsResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_bundle_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeBundleAssociations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeBundleAssociationsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeBundleAssociationsResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_client_branding, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeClientBranding"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeClientBrandingRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeClientBrandingResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:describe_connect_client_add_ins, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeConnectClientAddIns"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeConnectClientAddInsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeConnectClientAddInsResult)
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

      api.add_operation(:describe_custom_workspace_image_import, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCustomWorkspaceImageImport"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeCustomWorkspaceImageImportRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeCustomWorkspaceImageImportResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_image_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeImageAssociations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeImageAssociationsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeImageAssociationsResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:describe_workspace_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeWorkspaceAssociations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeWorkspaceAssociationsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeWorkspaceAssociationsResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotSupportedException)
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

      api.add_operation(:describe_workspaces_pool_sessions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeWorkspacesPoolSessions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeWorkspacesPoolSessionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeWorkspacesPoolSessionsResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:describe_workspaces_pools, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeWorkspacesPools"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeWorkspacesPoolsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeWorkspacesPoolsResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
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
        o.errors << Shapes::ShapeRef.new(shape: OperationNotSupportedException)
      end)

      api.add_operation(:disassociate_workspace_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateWorkspaceApplication"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateWorkspaceApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateWorkspaceApplicationResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_account_link, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAccountLink"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAccountLinkRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAccountLinkResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:import_client_branding, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ImportClientBranding"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ImportClientBrandingRequest)
        o.output = Shapes::ShapeRef.new(shape: ImportClientBrandingResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:import_custom_workspace_image, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ImportCustomWorkspaceImage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ImportCustomWorkspaceImageRequest)
        o.output = Shapes::ShapeRef.new(shape: ImportCustomWorkspaceImageResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
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

      api.add_operation(:list_account_links, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAccountLinks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAccountLinksRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAccountLinksResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
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

      api.add_operation(:modify_certificate_based_auth_properties, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyCertificateBasedAuthProperties"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyCertificateBasedAuthPropertiesRequest)
        o.output = Shapes::ShapeRef.new(shape: ModifyCertificateBasedAuthPropertiesResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotSupportedException)
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
        o.errors << Shapes::ShapeRef.new(shape: OperationNotSupportedException)
      end)

      api.add_operation(:modify_endpoint_encryption_mode, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyEndpointEncryptionMode"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyEndpointEncryptionModeRequest)
        o.output = Shapes::ShapeRef.new(shape: ModifyEndpointEncryptionModeResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotSupportedException)
      end)

      api.add_operation(:modify_saml_properties, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifySamlProperties"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifySamlPropertiesRequest)
        o.output = Shapes::ShapeRef.new(shape: ModifySamlPropertiesResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: OperationNotSupportedException)
      end)

      api.add_operation(:modify_streaming_properties, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyStreamingProperties"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyStreamingPropertiesRequest)
        o.output = Shapes::ShapeRef.new(shape: ModifyStreamingPropertiesResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotSupportedException)
      end)

      api.add_operation(:modify_workspace_access_properties, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyWorkspaceAccessProperties"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyWorkspaceAccessPropertiesRequest)
        o.output = Shapes::ShapeRef.new(shape: ModifyWorkspaceAccessPropertiesResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotSupportedException)
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
        o.errors << Shapes::ShapeRef.new(shape: OperationNotSupportedException)
      end)

      api.add_operation(:reboot_workspaces, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RebootWorkspaces"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RebootWorkspacesRequest)
        o.output = Shapes::ShapeRef.new(shape: RebootWorkspacesResult)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotSupportedException)
      end)

      api.add_operation(:rebuild_workspaces, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RebuildWorkspaces"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RebuildWorkspacesRequest)
        o.output = Shapes::ShapeRef.new(shape: RebuildWorkspacesResult)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotSupportedException)
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
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
      end)

      api.add_operation(:reject_account_link_invitation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RejectAccountLinkInvitation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RejectAccountLinkInvitationRequest)
        o.output = Shapes::ShapeRef.new(shape: RejectAccountLinkInvitationResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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
        o.errors << Shapes::ShapeRef.new(shape: OperationNotSupportedException)
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

      api.add_operation(:start_workspaces_pool, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartWorkspacesPool"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartWorkspacesPoolRequest)
        o.output = Shapes::ShapeRef.new(shape: StartWorkspacesPoolResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        o.errors << Shapes::ShapeRef.new(shape: OperationInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:stop_workspaces, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopWorkspaces"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopWorkspacesRequest)
        o.output = Shapes::ShapeRef.new(shape: StopWorkspacesResult)
      end)

      api.add_operation(:stop_workspaces_pool, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopWorkspacesPool"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopWorkspacesPoolRequest)
        o.output = Shapes::ShapeRef.new(shape: StopWorkspacesPoolResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:terminate_workspaces, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TerminateWorkspaces"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TerminateWorkspacesRequest)
        o.output = Shapes::ShapeRef.new(shape: TerminateWorkspacesResult)
      end)

      api.add_operation(:terminate_workspaces_pool, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TerminateWorkspacesPool"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TerminateWorkspacesPoolRequest)
        o.output = Shapes::ShapeRef.new(shape: TerminateWorkspacesPoolResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:terminate_workspaces_pool_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TerminateWorkspacesPoolSession"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TerminateWorkspacesPoolSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: TerminateWorkspacesPoolSessionResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        o.errors << Shapes::ShapeRef.new(shape: OperationInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_connect_client_add_in, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateConnectClientAddIn"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateConnectClientAddInRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateConnectClientAddInResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
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

      api.add_operation(:update_workspace_bundle, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateWorkspaceBundle"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateWorkspaceBundleRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateWorkspaceBundleResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotSupportedException)
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

      api.add_operation(:update_workspaces_pool, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateWorkspacesPool"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateWorkspacesPoolRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateWorkspacesPoolResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        o.errors << Shapes::ShapeRef.new(shape: OperationInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)
    end

  end
end
