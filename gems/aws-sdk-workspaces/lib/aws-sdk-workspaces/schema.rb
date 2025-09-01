# frozen_string_literal: true

# This is generated code!

module Aws::WorkSpaces
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AGAModeForDirectoryEnum = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#AGAModeForDirectoryEnum', name: 'AGAModeForDirectoryEnum')
    AGAModeForWorkSpaceEnum = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#AGAModeForWorkSpaceEnum', name: 'AGAModeForWorkSpaceEnum')
    AGAPreferredProtocolForDirectory = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#AGAPreferredProtocolForDirectory', name: 'AGAPreferredProtocolForDirectory')
    AGAPreferredProtocolForWorkSpace = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#AGAPreferredProtocolForWorkSpace', name: 'AGAPreferredProtocolForWorkSpace')
    ARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#ARN', name: 'ARN', traits: {"smithy.api#pattern" => "^arn:aws[a-z-]{0,7}:[A-Za-z0-9][A-za-z0-9_/.-]{0,62}:[A-za-z0-9_/.-]{0,63}:[A-za-z0-9_/.-]{0,63}:[A-Za-z0-9][A-Za-z0-9:_/+=,@.\\\\-]{0,1023}$"})
    AcceptAccountLinkInvitationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#AcceptAccountLinkInvitationRequest', name: 'AcceptAccountLinkInvitationRequest')
    AcceptAccountLinkInvitationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#AcceptAccountLinkInvitationResult', name: 'AcceptAccountLinkInvitationResult')
    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client"})
    AccessEndpoint = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#AccessEndpoint', name: 'AccessEndpoint')
    AccessEndpointConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#AccessEndpointConfig', name: 'AccessEndpointConfig')
    AccessEndpointList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#AccessEndpointList', name: 'AccessEndpointList')
    AccessEndpointType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#AccessEndpointType', name: 'AccessEndpointType')
    AccessPropertyValue = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#AccessPropertyValue', name: 'AccessPropertyValue')
    AccountLink = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#AccountLink', name: 'AccountLink')
    AccountLinkList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#AccountLinkList', name: 'AccountLinkList')
    AccountLinkStatusEnum = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#AccountLinkStatusEnum', name: 'AccountLinkStatusEnum')
    AccountModification = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#AccountModification', name: 'AccountModification')
    AccountModificationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#AccountModificationList', name: 'AccountModificationList')
    ActiveDirectoryConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#ActiveDirectoryConfig', name: 'ActiveDirectoryConfig')
    ActiveUserSessions = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.workspaces#ActiveUserSessions', name: 'ActiveUserSessions', traits: {"smithy.api#range" => {"min" => 0}})
    ActualUserSessions = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.workspaces#ActualUserSessions', name: 'ActualUserSessions', traits: {"smithy.api#range" => {"min" => 0}})
    AddInName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#AddInName', name: 'AddInName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^.*$"})
    AddInUrl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#AddInUrl', name: 'AddInUrl', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^(http|https)\\://\\S+$"})
    Alias = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#Alias', name: 'Alias')
    AlphanumericDashUnderscoreNonEmptyString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#AlphanumericDashUnderscoreNonEmptyString', name: 'AlphanumericDashUnderscoreNonEmptyString', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9\\_\\-]{1,1000}$"})
    AmazonUuid = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#AmazonUuid', name: 'AmazonUuid', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    Application = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#Application', name: 'Application')
    ApplicationAssociatedResourceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#ApplicationAssociatedResourceType', name: 'ApplicationAssociatedResourceType')
    ApplicationAssociatedResourceTypeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#ApplicationAssociatedResourceTypeList', name: 'ApplicationAssociatedResourceTypeList')
    ApplicationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#ApplicationList', name: 'ApplicationList', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    ApplicationNotSupportedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#ApplicationNotSupportedException', name: 'ApplicationNotSupportedException', traits: {"smithy.api#error" => "client"})
    ApplicationResourceAssociation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#ApplicationResourceAssociation', name: 'ApplicationResourceAssociation')
    ApplicationResourceAssociationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#ApplicationResourceAssociationList', name: 'ApplicationResourceAssociationList')
    ApplicationSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#ApplicationSettingsRequest', name: 'ApplicationSettingsRequest')
    ApplicationSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#ApplicationSettingsResponse', name: 'ApplicationSettingsResponse')
    ApplicationSettingsStatusEnum = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#ApplicationSettingsStatusEnum', name: 'ApplicationSettingsStatusEnum')
    AssociateConnectionAliasRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#AssociateConnectionAliasRequest', name: 'AssociateConnectionAliasRequest')
    AssociateConnectionAliasResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#AssociateConnectionAliasResult', name: 'AssociateConnectionAliasResult')
    AssociateIpGroupsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#AssociateIpGroupsRequest', name: 'AssociateIpGroupsRequest')
    AssociateIpGroupsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#AssociateIpGroupsResult', name: 'AssociateIpGroupsResult')
    AssociateWorkspaceApplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#AssociateWorkspaceApplicationRequest', name: 'AssociateWorkspaceApplicationRequest')
    AssociateWorkspaceApplicationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#AssociateWorkspaceApplicationResult', name: 'AssociateWorkspaceApplicationResult')
    AssociationErrorCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#AssociationErrorCode', name: 'AssociationErrorCode')
    AssociationState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#AssociationState', name: 'AssociationState')
    AssociationStateReason = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#AssociationStateReason', name: 'AssociationStateReason')
    AssociationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#AssociationStatus', name: 'AssociationStatus')
    AuthenticationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#AuthenticationType', name: 'AuthenticationType')
    AuthorizeIpRulesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#AuthorizeIpRulesRequest', name: 'AuthorizeIpRulesRequest')
    AuthorizeIpRulesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#AuthorizeIpRulesResult', name: 'AuthorizeIpRulesResult')
    AvailableUserSessions = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.workspaces#AvailableUserSessions', name: 'AvailableUserSessions', traits: {"smithy.api#range" => {"min" => 0}})
    AwsAccount = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#AwsAccount', name: 'AwsAccount', traits: {"smithy.api#pattern" => "^\\d{12}$"})
    BooleanObject = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.workspaces#BooleanObject', name: 'BooleanObject')
    BundleAssociatedResourceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#BundleAssociatedResourceType', name: 'BundleAssociatedResourceType')
    BundleAssociatedResourceTypeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#BundleAssociatedResourceTypeList', name: 'BundleAssociatedResourceTypeList')
    BundleId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#BundleId', name: 'BundleId', traits: {"smithy.api#pattern" => "^wsb-[0-9a-z]{8,63}$"})
    BundleIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#BundleIdList', name: 'BundleIdList', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    BundleList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#BundleList', name: 'BundleList')
    BundleOwner = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#BundleOwner', name: 'BundleOwner')
    BundleResourceAssociation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#BundleResourceAssociation', name: 'BundleResourceAssociation')
    BundleResourceAssociationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#BundleResourceAssociationList', name: 'BundleResourceAssociationList')
    BundleType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#BundleType', name: 'BundleType')
    Capacity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#Capacity', name: 'Capacity')
    CapacityStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#CapacityStatus', name: 'CapacityStatus')
    CertificateAuthorityArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#CertificateAuthorityArn', name: 'CertificateAuthorityArn', traits: {"smithy.api#length" => {"min" => 5, "max" => 200}, "smithy.api#pattern" => "^arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]*:[\\w+=,.@-]+(/[\\w+=,.@-]+)*$"})
    CertificateBasedAuthProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#CertificateBasedAuthProperties', name: 'CertificateBasedAuthProperties')
    CertificateBasedAuthStatusEnum = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#CertificateBasedAuthStatusEnum', name: 'CertificateBasedAuthStatusEnum')
    ClientDeviceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#ClientDeviceType', name: 'ClientDeviceType')
    ClientDeviceTypeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#ClientDeviceTypeList', name: 'ClientDeviceTypeList', traits: {"smithy.api#length" => {"min" => 1, "max" => 6}})
    ClientEmail = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#ClientEmail', name: 'ClientEmail', traits: {"smithy.api#length" => {"min" => 6, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,4}$"})
    ClientLocale = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#ClientLocale', name: 'ClientLocale', traits: {"smithy.api#length" => {"min" => 5, "max" => 5}, "smithy.api#pattern" => "^[a-z]{2}_[A-Z]{2}$"})
    ClientLoginMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#ClientLoginMessage', name: 'ClientLoginMessage', traits: {"smithy.api#length" => {"min" => 0, "max" => 2000}, "smithy.api#pattern" => "^.*$"})
    ClientProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#ClientProperties', name: 'ClientProperties')
    ClientPropertiesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#ClientPropertiesList', name: 'ClientPropertiesList')
    ClientPropertiesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#ClientPropertiesResult', name: 'ClientPropertiesResult')
    ClientToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#ClientToken', name: 'ClientToken', traits: {"smithy.api#pattern" => "^.{1,64}$"})
    ClientUrl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#ClientUrl', name: 'ClientUrl', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^(http|https)\\://\\S+$"})
    Compute = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#Compute', name: 'Compute')
    ComputeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#ComputeList', name: 'ComputeList')
    ComputeNotCompatibleException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#ComputeNotCompatibleException', name: 'ComputeNotCompatibleException', traits: {"smithy.api#error" => "client"})
    ComputeType = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#ComputeType', name: 'ComputeType')
    ComputerName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#ComputerName', name: 'ComputerName')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client"})
    ConnectClientAddIn = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#ConnectClientAddIn', name: 'ConnectClientAddIn')
    ConnectClientAddInList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#ConnectClientAddInList', name: 'ConnectClientAddInList')
    ConnectionAlias = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#ConnectionAlias', name: 'ConnectionAlias')
    ConnectionAliasAssociation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#ConnectionAliasAssociation', name: 'ConnectionAliasAssociation')
    ConnectionAliasAssociationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#ConnectionAliasAssociationList', name: 'ConnectionAliasAssociationList', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    ConnectionAliasId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#ConnectionAliasId', name: 'ConnectionAliasId', traits: {"smithy.api#length" => {"min" => 13, "max" => 68}, "smithy.api#pattern" => "^wsca-[0-9a-z]{8,63}$"})
    ConnectionAliasIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#ConnectionAliasIdList', name: 'ConnectionAliasIdList', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    ConnectionAliasList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#ConnectionAliasList', name: 'ConnectionAliasList', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    ConnectionAliasPermission = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#ConnectionAliasPermission', name: 'ConnectionAliasPermission')
    ConnectionAliasPermissions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#ConnectionAliasPermissions', name: 'ConnectionAliasPermissions', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    ConnectionAliasState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#ConnectionAliasState', name: 'ConnectionAliasState')
    ConnectionIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#ConnectionIdentifier', name: 'ConnectionIdentifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#pattern" => "^[a-zA-Z0-9]+$"})
    ConnectionState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#ConnectionState', name: 'ConnectionState')
    ConnectionString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#ConnectionString', name: 'ConnectionString', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[.0-9a-zA-Z\\-]{1,255}$"})
    CopyWorkspaceImageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#CopyWorkspaceImageRequest', name: 'CopyWorkspaceImageRequest')
    CopyWorkspaceImageResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#CopyWorkspaceImageResult', name: 'CopyWorkspaceImageResult')
    CreateAccountLinkInvitationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#CreateAccountLinkInvitationRequest', name: 'CreateAccountLinkInvitationRequest')
    CreateAccountLinkInvitationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#CreateAccountLinkInvitationResult', name: 'CreateAccountLinkInvitationResult')
    CreateConnectClientAddInRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#CreateConnectClientAddInRequest', name: 'CreateConnectClientAddInRequest')
    CreateConnectClientAddInResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#CreateConnectClientAddInResult', name: 'CreateConnectClientAddInResult')
    CreateConnectionAliasRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#CreateConnectionAliasRequest', name: 'CreateConnectionAliasRequest')
    CreateConnectionAliasResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#CreateConnectionAliasResult', name: 'CreateConnectionAliasResult')
    CreateIpGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#CreateIpGroupRequest', name: 'CreateIpGroupRequest')
    CreateIpGroupResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#CreateIpGroupResult', name: 'CreateIpGroupResult')
    CreateStandbyWorkspacesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#CreateStandbyWorkspacesRequest', name: 'CreateStandbyWorkspacesRequest')
    CreateStandbyWorkspacesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#CreateStandbyWorkspacesResult', name: 'CreateStandbyWorkspacesResult')
    CreateTagsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#CreateTagsRequest', name: 'CreateTagsRequest')
    CreateTagsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#CreateTagsResult', name: 'CreateTagsResult')
    CreateUpdatedWorkspaceImageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#CreateUpdatedWorkspaceImageRequest', name: 'CreateUpdatedWorkspaceImageRequest')
    CreateUpdatedWorkspaceImageResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#CreateUpdatedWorkspaceImageResult', name: 'CreateUpdatedWorkspaceImageResult')
    CreateWorkspaceBundleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#CreateWorkspaceBundleRequest', name: 'CreateWorkspaceBundleRequest')
    CreateWorkspaceBundleResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#CreateWorkspaceBundleResult', name: 'CreateWorkspaceBundleResult')
    CreateWorkspaceImageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#CreateWorkspaceImageRequest', name: 'CreateWorkspaceImageRequest')
    CreateWorkspaceImageResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#CreateWorkspaceImageResult', name: 'CreateWorkspaceImageResult')
    CreateWorkspacesPoolRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#CreateWorkspacesPoolRequest', name: 'CreateWorkspacesPoolRequest')
    CreateWorkspacesPoolResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#CreateWorkspacesPoolResult', name: 'CreateWorkspacesPoolResult')
    CreateWorkspacesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#CreateWorkspacesRequest', name: 'CreateWorkspacesRequest')
    CreateWorkspacesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#CreateWorkspacesResult', name: 'CreateWorkspacesResult')
    DataReplication = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#DataReplication', name: 'DataReplication')
    DataReplicationSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DataReplicationSettings', name: 'DataReplicationSettings')
    DedicatedTenancyAccountType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#DedicatedTenancyAccountType', name: 'DedicatedTenancyAccountType')
    DedicatedTenancyCidrRangeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#DedicatedTenancyCidrRangeList', name: 'DedicatedTenancyCidrRangeList')
    DedicatedTenancyManagementCidrRange = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#DedicatedTenancyManagementCidrRange', name: 'DedicatedTenancyManagementCidrRange', traits: {"smithy.api#pattern" => "^(^([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\\.([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\\.0\\.0)(\\/(16$))$"})
    DedicatedTenancyModificationStateEnum = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#DedicatedTenancyModificationStateEnum', name: 'DedicatedTenancyModificationStateEnum')
    DedicatedTenancySupportEnum = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#DedicatedTenancySupportEnum', name: 'DedicatedTenancySupportEnum')
    DedicatedTenancySupportResultEnum = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#DedicatedTenancySupportResultEnum', name: 'DedicatedTenancySupportResultEnum')
    DefaultClientBrandingAttributes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DefaultClientBrandingAttributes', name: 'DefaultClientBrandingAttributes')
    DefaultImportClientBrandingAttributes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DefaultImportClientBrandingAttributes', name: 'DefaultImportClientBrandingAttributes')
    DefaultLogo = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.workspaces#DefaultLogo', name: 'DefaultLogo', traits: {"smithy.api#length" => {"min" => 1, "max" => 1500000}})
    DefaultOu = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#DefaultOu', name: 'DefaultOu')
    DefaultWorkspaceCreationProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DefaultWorkspaceCreationProperties', name: 'DefaultWorkspaceCreationProperties')
    DeletableCertificateBasedAuthPropertiesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#DeletableCertificateBasedAuthPropertiesList', name: 'DeletableCertificateBasedAuthPropertiesList')
    DeletableCertificateBasedAuthProperty = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#DeletableCertificateBasedAuthProperty', name: 'DeletableCertificateBasedAuthProperty')
    DeletableSamlPropertiesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#DeletableSamlPropertiesList', name: 'DeletableSamlPropertiesList')
    DeletableSamlProperty = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#DeletableSamlProperty', name: 'DeletableSamlProperty')
    DeleteAccountLinkInvitationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DeleteAccountLinkInvitationRequest', name: 'DeleteAccountLinkInvitationRequest')
    DeleteAccountLinkInvitationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DeleteAccountLinkInvitationResult', name: 'DeleteAccountLinkInvitationResult')
    DeleteClientBrandingRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DeleteClientBrandingRequest', name: 'DeleteClientBrandingRequest')
    DeleteClientBrandingResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DeleteClientBrandingResult', name: 'DeleteClientBrandingResult')
    DeleteConnectClientAddInRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DeleteConnectClientAddInRequest', name: 'DeleteConnectClientAddInRequest')
    DeleteConnectClientAddInResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DeleteConnectClientAddInResult', name: 'DeleteConnectClientAddInResult')
    DeleteConnectionAliasRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DeleteConnectionAliasRequest', name: 'DeleteConnectionAliasRequest')
    DeleteConnectionAliasResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DeleteConnectionAliasResult', name: 'DeleteConnectionAliasResult')
    DeleteIpGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DeleteIpGroupRequest', name: 'DeleteIpGroupRequest')
    DeleteIpGroupResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DeleteIpGroupResult', name: 'DeleteIpGroupResult')
    DeleteTagsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DeleteTagsRequest', name: 'DeleteTagsRequest')
    DeleteTagsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DeleteTagsResult', name: 'DeleteTagsResult')
    DeleteWorkspaceBundleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DeleteWorkspaceBundleRequest', name: 'DeleteWorkspaceBundleRequest')
    DeleteWorkspaceBundleResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DeleteWorkspaceBundleResult', name: 'DeleteWorkspaceBundleResult')
    DeleteWorkspaceImageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DeleteWorkspaceImageRequest', name: 'DeleteWorkspaceImageRequest')
    DeleteWorkspaceImageResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DeleteWorkspaceImageResult', name: 'DeleteWorkspaceImageResult')
    DeployWorkspaceApplicationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DeployWorkspaceApplicationsRequest', name: 'DeployWorkspaceApplicationsRequest')
    DeployWorkspaceApplicationsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DeployWorkspaceApplicationsResult', name: 'DeployWorkspaceApplicationsResult')
    DeregisterWorkspaceDirectoryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DeregisterWorkspaceDirectoryRequest', name: 'DeregisterWorkspaceDirectoryRequest')
    DeregisterWorkspaceDirectoryResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DeregisterWorkspaceDirectoryResult', name: 'DeregisterWorkspaceDirectoryResult')
    DescribeAccountModificationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DescribeAccountModificationsRequest', name: 'DescribeAccountModificationsRequest')
    DescribeAccountModificationsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DescribeAccountModificationsResult', name: 'DescribeAccountModificationsResult')
    DescribeAccountRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DescribeAccountRequest', name: 'DescribeAccountRequest')
    DescribeAccountResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DescribeAccountResult', name: 'DescribeAccountResult')
    DescribeApplicationAssociationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DescribeApplicationAssociationsRequest', name: 'DescribeApplicationAssociationsRequest')
    DescribeApplicationAssociationsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DescribeApplicationAssociationsResult', name: 'DescribeApplicationAssociationsResult')
    DescribeApplicationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DescribeApplicationsRequest', name: 'DescribeApplicationsRequest')
    DescribeApplicationsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DescribeApplicationsResult', name: 'DescribeApplicationsResult')
    DescribeBundleAssociationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DescribeBundleAssociationsRequest', name: 'DescribeBundleAssociationsRequest')
    DescribeBundleAssociationsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DescribeBundleAssociationsResult', name: 'DescribeBundleAssociationsResult')
    DescribeClientBrandingRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DescribeClientBrandingRequest', name: 'DescribeClientBrandingRequest')
    DescribeClientBrandingResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DescribeClientBrandingResult', name: 'DescribeClientBrandingResult')
    DescribeClientPropertiesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DescribeClientPropertiesRequest', name: 'DescribeClientPropertiesRequest')
    DescribeClientPropertiesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DescribeClientPropertiesResult', name: 'DescribeClientPropertiesResult')
    DescribeConnectClientAddInsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DescribeConnectClientAddInsRequest', name: 'DescribeConnectClientAddInsRequest')
    DescribeConnectClientAddInsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DescribeConnectClientAddInsResult', name: 'DescribeConnectClientAddInsResult')
    DescribeConnectionAliasPermissionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DescribeConnectionAliasPermissionsRequest', name: 'DescribeConnectionAliasPermissionsRequest')
    DescribeConnectionAliasPermissionsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DescribeConnectionAliasPermissionsResult', name: 'DescribeConnectionAliasPermissionsResult')
    DescribeConnectionAliasesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DescribeConnectionAliasesRequest', name: 'DescribeConnectionAliasesRequest')
    DescribeConnectionAliasesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DescribeConnectionAliasesResult', name: 'DescribeConnectionAliasesResult')
    DescribeImageAssociationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DescribeImageAssociationsRequest', name: 'DescribeImageAssociationsRequest')
    DescribeImageAssociationsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DescribeImageAssociationsResult', name: 'DescribeImageAssociationsResult')
    DescribeIpGroupsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DescribeIpGroupsRequest', name: 'DescribeIpGroupsRequest')
    DescribeIpGroupsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DescribeIpGroupsResult', name: 'DescribeIpGroupsResult')
    DescribeTagsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DescribeTagsRequest', name: 'DescribeTagsRequest')
    DescribeTagsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DescribeTagsResult', name: 'DescribeTagsResult')
    DescribeWorkspaceAssociationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DescribeWorkspaceAssociationsRequest', name: 'DescribeWorkspaceAssociationsRequest')
    DescribeWorkspaceAssociationsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DescribeWorkspaceAssociationsResult', name: 'DescribeWorkspaceAssociationsResult')
    DescribeWorkspaceBundlesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DescribeWorkspaceBundlesRequest', name: 'DescribeWorkspaceBundlesRequest')
    DescribeWorkspaceBundlesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DescribeWorkspaceBundlesResult', name: 'DescribeWorkspaceBundlesResult')
    DescribeWorkspaceDirectoriesFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DescribeWorkspaceDirectoriesFilter', name: 'DescribeWorkspaceDirectoriesFilter')
    DescribeWorkspaceDirectoriesFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#DescribeWorkspaceDirectoriesFilterList', name: 'DescribeWorkspaceDirectoriesFilterList', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    DescribeWorkspaceDirectoriesFilterName = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#DescribeWorkspaceDirectoriesFilterName', name: 'DescribeWorkspaceDirectoriesFilterName')
    DescribeWorkspaceDirectoriesFilterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#DescribeWorkspaceDirectoriesFilterValue', name: 'DescribeWorkspaceDirectoriesFilterValue', traits: {"smithy.api#pattern" => "^[0-9a-zA-Z\\*\\.\\\\/\\?-_]{0,64}$"})
    DescribeWorkspaceDirectoriesFilterValues = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#DescribeWorkspaceDirectoriesFilterValues', name: 'DescribeWorkspaceDirectoriesFilterValues', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    DescribeWorkspaceDirectoriesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DescribeWorkspaceDirectoriesRequest', name: 'DescribeWorkspaceDirectoriesRequest')
    DescribeWorkspaceDirectoriesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DescribeWorkspaceDirectoriesResult', name: 'DescribeWorkspaceDirectoriesResult')
    DescribeWorkspaceImagePermissionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DescribeWorkspaceImagePermissionsRequest', name: 'DescribeWorkspaceImagePermissionsRequest')
    DescribeWorkspaceImagePermissionsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DescribeWorkspaceImagePermissionsResult', name: 'DescribeWorkspaceImagePermissionsResult')
    DescribeWorkspaceImagesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DescribeWorkspaceImagesRequest', name: 'DescribeWorkspaceImagesRequest')
    DescribeWorkspaceImagesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DescribeWorkspaceImagesResult', name: 'DescribeWorkspaceImagesResult')
    DescribeWorkspaceSnapshotsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DescribeWorkspaceSnapshotsRequest', name: 'DescribeWorkspaceSnapshotsRequest')
    DescribeWorkspaceSnapshotsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DescribeWorkspaceSnapshotsResult', name: 'DescribeWorkspaceSnapshotsResult')
    DescribeWorkspacesConnectionStatusRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DescribeWorkspacesConnectionStatusRequest', name: 'DescribeWorkspacesConnectionStatusRequest')
    DescribeWorkspacesConnectionStatusResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DescribeWorkspacesConnectionStatusResult', name: 'DescribeWorkspacesConnectionStatusResult')
    DescribeWorkspacesPoolSessionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DescribeWorkspacesPoolSessionsRequest', name: 'DescribeWorkspacesPoolSessionsRequest')
    DescribeWorkspacesPoolSessionsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DescribeWorkspacesPoolSessionsResult', name: 'DescribeWorkspacesPoolSessionsResult')
    DescribeWorkspacesPoolsFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DescribeWorkspacesPoolsFilter', name: 'DescribeWorkspacesPoolsFilter')
    DescribeWorkspacesPoolsFilterName = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#DescribeWorkspacesPoolsFilterName', name: 'DescribeWorkspacesPoolsFilterName')
    DescribeWorkspacesPoolsFilterOperator = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#DescribeWorkspacesPoolsFilterOperator', name: 'DescribeWorkspacesPoolsFilterOperator')
    DescribeWorkspacesPoolsFilterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#DescribeWorkspacesPoolsFilterValue', name: 'DescribeWorkspacesPoolsFilterValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[A-Za-z0-9][A-Za-z0-9_.-]+$"})
    DescribeWorkspacesPoolsFilterValues = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#DescribeWorkspacesPoolsFilterValues', name: 'DescribeWorkspacesPoolsFilterValues', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    DescribeWorkspacesPoolsFilters = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#DescribeWorkspacesPoolsFilters', name: 'DescribeWorkspacesPoolsFilters', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    DescribeWorkspacesPoolsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DescribeWorkspacesPoolsRequest', name: 'DescribeWorkspacesPoolsRequest')
    DescribeWorkspacesPoolsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DescribeWorkspacesPoolsResult', name: 'DescribeWorkspacesPoolsResult')
    DescribeWorkspacesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DescribeWorkspacesRequest', name: 'DescribeWorkspacesRequest')
    DescribeWorkspacesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DescribeWorkspacesResult', name: 'DescribeWorkspacesResult')
    Description = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#Description', name: 'Description')
    DesiredUserSessions = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.workspaces#DesiredUserSessions', name: 'DesiredUserSessions', traits: {"smithy.api#range" => {"min" => 0}})
    DirectoryId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#DirectoryId', name: 'DirectoryId', traits: {"smithy.api#length" => {"min" => 10, "max" => 65}, "smithy.api#pattern" => "^(d-[0-9a-f]{8,63}$)|(wsd-[0-9a-z]{8,63}$)$"})
    DirectoryIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#DirectoryIdList', name: 'DirectoryIdList', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    DirectoryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#DirectoryList', name: 'DirectoryList')
    DirectoryName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#DirectoryName', name: 'DirectoryName')
    DisassociateConnectionAliasRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DisassociateConnectionAliasRequest', name: 'DisassociateConnectionAliasRequest')
    DisassociateConnectionAliasResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DisassociateConnectionAliasResult', name: 'DisassociateConnectionAliasResult')
    DisassociateIpGroupsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DisassociateIpGroupsRequest', name: 'DisassociateIpGroupsRequest')
    DisassociateIpGroupsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DisassociateIpGroupsResult', name: 'DisassociateIpGroupsResult')
    DisassociateWorkspaceApplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DisassociateWorkspaceApplicationRequest', name: 'DisassociateWorkspaceApplicationRequest')
    DisassociateWorkspaceApplicationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#DisassociateWorkspaceApplicationResult', name: 'DisassociateWorkspaceApplicationResult')
    DisconnectTimeoutInSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.workspaces#DisconnectTimeoutInSeconds', name: 'DisconnectTimeoutInSeconds', traits: {"smithy.api#range" => {"min" => 60, "max" => 36000}})
    DnsIpAddresses = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#DnsIpAddresses', name: 'DnsIpAddresses')
    DomainName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#DomainName', name: 'DomainName', traits: {"smithy.api#pattern" => "^([a-zA-Z0-9]+[.-])+([a-zA-Z0-9])+$"})
    Ec2ImageId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#Ec2ImageId', name: 'Ec2ImageId', traits: {"smithy.api#pattern" => "^ami\\-([a-f0-9]{8}|[a-f0-9]{17})$"})
    EndpointEncryptionMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#EndpointEncryptionMode', name: 'EndpointEncryptionMode')
    ErrorDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#ErrorDetails', name: 'ErrorDetails')
    ErrorDetailsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#ErrorDetailsList', name: 'ErrorDetailsList')
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#ErrorMessage', name: 'ErrorMessage')
    ErrorType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#ErrorType', name: 'ErrorType')
    ExceptionErrorCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#ExceptionErrorCode', name: 'ExceptionErrorCode')
    ExceptionMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#ExceptionMessage', name: 'ExceptionMessage')
    FailedCreateStandbyWorkspacesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#FailedCreateStandbyWorkspacesRequest', name: 'FailedCreateStandbyWorkspacesRequest')
    FailedCreateStandbyWorkspacesRequestList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#FailedCreateStandbyWorkspacesRequestList', name: 'FailedCreateStandbyWorkspacesRequestList')
    FailedCreateWorkspaceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#FailedCreateWorkspaceRequest', name: 'FailedCreateWorkspaceRequest')
    FailedCreateWorkspaceRequests = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#FailedCreateWorkspaceRequests', name: 'FailedCreateWorkspaceRequests')
    FailedRebootWorkspaceRequests = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#FailedRebootWorkspaceRequests', name: 'FailedRebootWorkspaceRequests')
    FailedRebuildWorkspaceRequests = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#FailedRebuildWorkspaceRequests', name: 'FailedRebuildWorkspaceRequests')
    FailedStartWorkspaceRequests = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#FailedStartWorkspaceRequests', name: 'FailedStartWorkspaceRequests')
    FailedStopWorkspaceRequests = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#FailedStopWorkspaceRequests', name: 'FailedStopWorkspaceRequests')
    FailedTerminateWorkspaceRequests = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#FailedTerminateWorkspaceRequests', name: 'FailedTerminateWorkspaceRequests')
    FailedWorkspaceChangeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#FailedWorkspaceChangeRequest', name: 'FailedWorkspaceChangeRequest')
    GetAccountLinkRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#GetAccountLinkRequest', name: 'GetAccountLinkRequest')
    GetAccountLinkResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#GetAccountLinkResult', name: 'GetAccountLinkResult')
    GlobalAcceleratorForDirectory = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#GlobalAcceleratorForDirectory', name: 'GlobalAcceleratorForDirectory')
    GlobalAcceleratorForWorkSpace = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#GlobalAcceleratorForWorkSpace', name: 'GlobalAcceleratorForWorkSpace')
    IDCConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#IDCConfig', name: 'IDCConfig')
    IdleDisconnectTimeoutInSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.workspaces#IdleDisconnectTimeoutInSeconds', name: 'IdleDisconnectTimeoutInSeconds', traits: {"smithy.api#range" => {"min" => 0, "max" => 36000}})
    ImageAssociatedResourceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#ImageAssociatedResourceType', name: 'ImageAssociatedResourceType')
    ImageAssociatedResourceTypeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#ImageAssociatedResourceTypeList', name: 'ImageAssociatedResourceTypeList')
    ImagePermission = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#ImagePermission', name: 'ImagePermission')
    ImagePermissions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#ImagePermissions', name: 'ImagePermissions')
    ImageResourceAssociation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#ImageResourceAssociation', name: 'ImageResourceAssociation')
    ImageResourceAssociationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#ImageResourceAssociationList', name: 'ImageResourceAssociationList')
    ImageType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#ImageType', name: 'ImageType')
    ImportClientBrandingRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#ImportClientBrandingRequest', name: 'ImportClientBrandingRequest')
    ImportClientBrandingResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#ImportClientBrandingResult', name: 'ImportClientBrandingResult')
    ImportWorkspaceImageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#ImportWorkspaceImageRequest', name: 'ImportWorkspaceImageRequest')
    ImportWorkspaceImageResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#ImportWorkspaceImageResult', name: 'ImportWorkspaceImageResult')
    IncompatibleApplicationsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#IncompatibleApplicationsException', name: 'IncompatibleApplicationsException', traits: {"smithy.api#error" => "client"})
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "client"})
    InternetFallbackProtocol = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#InternetFallbackProtocol', name: 'InternetFallbackProtocol')
    InternetFallbackProtocolList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#InternetFallbackProtocolList', name: 'InternetFallbackProtocolList')
    InvalidParameterCombinationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#InvalidParameterCombinationException', name: 'InvalidParameterCombinationException', traits: {"smithy.api#error" => "client"})
    InvalidParameterValuesException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#InvalidParameterValuesException', name: 'InvalidParameterValuesException', traits: {"smithy.api#error" => "client"})
    InvalidResourceStateException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#InvalidResourceStateException', name: 'InvalidResourceStateException', traits: {"smithy.api#error" => "client"})
    Ios2XLogo = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.workspaces#Ios2XLogo', name: 'Ios2XLogo', traits: {"smithy.api#length" => {"min" => 1, "max" => 1770000}})
    Ios3XLogo = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.workspaces#Ios3XLogo', name: 'Ios3XLogo', traits: {"smithy.api#length" => {"min" => 1, "max" => 1770000}})
    IosClientBrandingAttributes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#IosClientBrandingAttributes', name: 'IosClientBrandingAttributes')
    IosImportClientBrandingAttributes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#IosImportClientBrandingAttributes', name: 'IosImportClientBrandingAttributes')
    IosLogo = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.workspaces#IosLogo', name: 'IosLogo', traits: {"smithy.api#length" => {"min" => 1, "max" => 447000}})
    IpAddress = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#IpAddress', name: 'IpAddress')
    IpGroupDesc = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#IpGroupDesc', name: 'IpGroupDesc')
    IpGroupId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#IpGroupId', name: 'IpGroupId', traits: {"smithy.api#pattern" => "^wsipg-[0-9a-z]{8,63}$"})
    IpGroupIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#IpGroupIdList', name: 'IpGroupIdList')
    IpGroupName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#IpGroupName', name: 'IpGroupName')
    IpRevokedRuleList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#IpRevokedRuleList', name: 'IpRevokedRuleList')
    IpRule = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#IpRule', name: 'IpRule')
    IpRuleDesc = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#IpRuleDesc', name: 'IpRuleDesc')
    IpRuleItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#IpRuleItem', name: 'IpRuleItem')
    IpRuleList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#IpRuleList', name: 'IpRuleList')
    Limit = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.workspaces#Limit', name: 'Limit', traits: {"smithy.api#range" => {"min" => 1, "max" => 25}})
    Limit50 = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.workspaces#Limit50', name: 'Limit50', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    LinkId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#LinkId', name: 'LinkId', traits: {"smithy.api#pattern" => "^link-.{8,24}$"})
    LinkStatusFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#LinkStatusFilterList', name: 'LinkStatusFilterList')
    ListAccountLinksRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#ListAccountLinksRequest', name: 'ListAccountLinksRequest')
    ListAccountLinksResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#ListAccountLinksResult', name: 'ListAccountLinksResult')
    ListAvailableManagementCidrRangesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#ListAvailableManagementCidrRangesRequest', name: 'ListAvailableManagementCidrRangesRequest')
    ListAvailableManagementCidrRangesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#ListAvailableManagementCidrRangesResult', name: 'ListAvailableManagementCidrRangesResult')
    LogUploadEnum = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#LogUploadEnum', name: 'LogUploadEnum')
    LoginMessage = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.workspaces#LoginMessage', name: 'LoginMessage')
    ManagementCidrRangeConstraint = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#ManagementCidrRangeConstraint', name: 'ManagementCidrRangeConstraint', traits: {"smithy.api#pattern" => "^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])(\\/(3[0-2]|[1-2][0-9]|[0-9]))$"})
    ManagementCidrRangeMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.workspaces#ManagementCidrRangeMaxResults', name: 'ManagementCidrRangeMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 5}})
    MaxUserDurationInSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.workspaces#MaxUserDurationInSeconds', name: 'MaxUserDurationInSeconds', traits: {"smithy.api#range" => {"min" => 600, "max" => 432000}})
    MaximumLength = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.workspaces#MaximumLength', name: 'MaximumLength', traits: {"smithy.api#range" => {"min" => 0}})
    MicrosoftEntraConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#MicrosoftEntraConfig', name: 'MicrosoftEntraConfig')
    MicrosoftEntraConfigTenantId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#MicrosoftEntraConfigTenantId', name: 'MicrosoftEntraConfigTenantId', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9-]{1,100}$"})
    MigrateWorkspaceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#MigrateWorkspaceRequest', name: 'MigrateWorkspaceRequest')
    MigrateWorkspaceResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#MigrateWorkspaceResult', name: 'MigrateWorkspaceResult')
    ModificationResourceEnum = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#ModificationResourceEnum', name: 'ModificationResourceEnum')
    ModificationState = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#ModificationState', name: 'ModificationState')
    ModificationStateEnum = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#ModificationStateEnum', name: 'ModificationStateEnum')
    ModificationStateList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#ModificationStateList', name: 'ModificationStateList')
    ModifyAccountRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#ModifyAccountRequest', name: 'ModifyAccountRequest')
    ModifyAccountResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#ModifyAccountResult', name: 'ModifyAccountResult')
    ModifyCertificateBasedAuthPropertiesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#ModifyCertificateBasedAuthPropertiesRequest', name: 'ModifyCertificateBasedAuthPropertiesRequest')
    ModifyCertificateBasedAuthPropertiesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#ModifyCertificateBasedAuthPropertiesResult', name: 'ModifyCertificateBasedAuthPropertiesResult')
    ModifyClientPropertiesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#ModifyClientPropertiesRequest', name: 'ModifyClientPropertiesRequest')
    ModifyClientPropertiesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#ModifyClientPropertiesResult', name: 'ModifyClientPropertiesResult')
    ModifyEndpointEncryptionModeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#ModifyEndpointEncryptionModeRequest', name: 'ModifyEndpointEncryptionModeRequest')
    ModifyEndpointEncryptionModeResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#ModifyEndpointEncryptionModeResponse', name: 'ModifyEndpointEncryptionModeResponse')
    ModifySamlPropertiesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#ModifySamlPropertiesRequest', name: 'ModifySamlPropertiesRequest')
    ModifySamlPropertiesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#ModifySamlPropertiesResult', name: 'ModifySamlPropertiesResult')
    ModifySelfservicePermissionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#ModifySelfservicePermissionsRequest', name: 'ModifySelfservicePermissionsRequest')
    ModifySelfservicePermissionsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#ModifySelfservicePermissionsResult', name: 'ModifySelfservicePermissionsResult')
    ModifyStreamingPropertiesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#ModifyStreamingPropertiesRequest', name: 'ModifyStreamingPropertiesRequest')
    ModifyStreamingPropertiesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#ModifyStreamingPropertiesResult', name: 'ModifyStreamingPropertiesResult')
    ModifyWorkspaceAccessPropertiesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#ModifyWorkspaceAccessPropertiesRequest', name: 'ModifyWorkspaceAccessPropertiesRequest')
    ModifyWorkspaceAccessPropertiesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#ModifyWorkspaceAccessPropertiesResult', name: 'ModifyWorkspaceAccessPropertiesResult')
    ModifyWorkspaceCreationPropertiesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#ModifyWorkspaceCreationPropertiesRequest', name: 'ModifyWorkspaceCreationPropertiesRequest')
    ModifyWorkspaceCreationPropertiesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#ModifyWorkspaceCreationPropertiesResult', name: 'ModifyWorkspaceCreationPropertiesResult')
    ModifyWorkspacePropertiesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#ModifyWorkspacePropertiesRequest', name: 'ModifyWorkspacePropertiesRequest')
    ModifyWorkspacePropertiesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#ModifyWorkspacePropertiesResult', name: 'ModifyWorkspacePropertiesResult')
    ModifyWorkspaceStateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#ModifyWorkspaceStateRequest', name: 'ModifyWorkspaceStateRequest')
    ModifyWorkspaceStateResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#ModifyWorkspaceStateResult', name: 'ModifyWorkspaceStateResult')
    NetworkAccessConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#NetworkAccessConfiguration', name: 'NetworkAccessConfiguration')
    NonEmptyString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#NonEmptyString', name: 'NonEmptyString', traits: {"smithy.api#length" => {"min" => 1}})
    OperatingSystem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#OperatingSystem', name: 'OperatingSystem')
    OperatingSystemName = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#OperatingSystemName', name: 'OperatingSystemName')
    OperatingSystemNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#OperatingSystemNameList', name: 'OperatingSystemNameList')
    OperatingSystemNotCompatibleException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#OperatingSystemNotCompatibleException', name: 'OperatingSystemNotCompatibleException', traits: {"smithy.api#error" => "client"})
    OperatingSystemType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#OperatingSystemType', name: 'OperatingSystemType')
    OperationInProgressException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#OperationInProgressException', name: 'OperationInProgressException', traits: {"smithy.api#error" => "client"})
    OperationNotSupportedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#OperationNotSupportedException', name: 'OperationNotSupportedException', traits: {"smithy.api#error" => "client"})
    PaginationToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#PaginationToken', name: 'PaginationToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    PendingCreateStandbyWorkspacesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#PendingCreateStandbyWorkspacesRequest', name: 'PendingCreateStandbyWorkspacesRequest')
    PendingCreateStandbyWorkspacesRequestList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#PendingCreateStandbyWorkspacesRequestList', name: 'PendingCreateStandbyWorkspacesRequestList')
    PoolsRunningMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#PoolsRunningMode', name: 'PoolsRunningMode')
    Protocol = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#Protocol', name: 'Protocol')
    ProtocolList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#ProtocolList', name: 'ProtocolList')
    RebootRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#RebootRequest', name: 'RebootRequest')
    RebootWorkspaceRequests = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#RebootWorkspaceRequests', name: 'RebootWorkspaceRequests', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    RebootWorkspacesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#RebootWorkspacesRequest', name: 'RebootWorkspacesRequest')
    RebootWorkspacesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#RebootWorkspacesResult', name: 'RebootWorkspacesResult')
    RebuildRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#RebuildRequest', name: 'RebuildRequest')
    RebuildWorkspaceRequests = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#RebuildWorkspaceRequests', name: 'RebuildWorkspaceRequests', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    RebuildWorkspacesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#RebuildWorkspacesRequest', name: 'RebuildWorkspacesRequest')
    RebuildWorkspacesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#RebuildWorkspacesResult', name: 'RebuildWorkspacesResult')
    ReconnectEnum = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#ReconnectEnum', name: 'ReconnectEnum')
    Region = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#Region', name: 'Region', traits: {"smithy.api#length" => {"min" => 1, "max" => 31}, "smithy.api#pattern" => "^[-0-9a-z]{1,31}$"})
    RegisterWorkspaceDirectoryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#RegisterWorkspaceDirectoryRequest', name: 'RegisterWorkspaceDirectoryRequest')
    RegisterWorkspaceDirectoryResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#RegisterWorkspaceDirectoryResult', name: 'RegisterWorkspaceDirectoryResult')
    RegistrationCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#RegistrationCode', name: 'RegistrationCode', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    RejectAccountLinkInvitationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#RejectAccountLinkInvitationRequest', name: 'RejectAccountLinkInvitationRequest')
    RejectAccountLinkInvitationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#RejectAccountLinkInvitationResult', name: 'RejectAccountLinkInvitationResult')
    RelatedWorkspaceProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#RelatedWorkspaceProperties', name: 'RelatedWorkspaceProperties')
    RelatedWorkspaces = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#RelatedWorkspaces', name: 'RelatedWorkspaces')
    ResourceAlreadyExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#ResourceAlreadyExistsException', name: 'ResourceAlreadyExistsException', traits: {"smithy.api#error" => "client"})
    ResourceAssociatedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#ResourceAssociatedException', name: 'ResourceAssociatedException', traits: {"smithy.api#error" => "client"})
    ResourceCreationFailedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#ResourceCreationFailedException', name: 'ResourceCreationFailedException', traits: {"smithy.api#error" => "client"})
    ResourceIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#ResourceIdList', name: 'ResourceIdList', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    ResourceInUseException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#ResourceInUseException', name: 'ResourceInUseException', traits: {"smithy.api#error" => "client"})
    ResourceLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#ResourceLimitExceededException', name: 'ResourceLimitExceededException', traits: {"smithy.api#error" => "client"})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client"})
    ResourceUnavailableException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#ResourceUnavailableException', name: 'ResourceUnavailableException', traits: {"smithy.api#error" => "client"})
    RestoreWorkspaceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#RestoreWorkspaceRequest', name: 'RestoreWorkspaceRequest')
    RestoreWorkspaceResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#RestoreWorkspaceResult', name: 'RestoreWorkspaceResult')
    RevokeIpRulesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#RevokeIpRulesRequest', name: 'RevokeIpRulesRequest')
    RevokeIpRulesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#RevokeIpRulesResult', name: 'RevokeIpRulesResult')
    RootStorage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#RootStorage', name: 'RootStorage')
    RootVolumeSizeGib = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.workspaces#RootVolumeSizeGib', name: 'RootVolumeSizeGib')
    RunningMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#RunningMode', name: 'RunningMode')
    RunningModeAutoStopTimeoutInMinutes = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.workspaces#RunningModeAutoStopTimeoutInMinutes', name: 'RunningModeAutoStopTimeoutInMinutes')
    S3BucketName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#S3BucketName', name: 'S3BucketName', traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9]$"})
    SamlProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#SamlProperties', name: 'SamlProperties')
    SamlStatusEnum = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#SamlStatusEnum', name: 'SamlStatusEnum')
    SamlUserAccessUrl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#SamlUserAccessUrl', name: 'SamlUserAccessUrl', traits: {"smithy.api#length" => {"min" => 8, "max" => 200}, "smithy.api#pattern" => "^(http|https)\\://\\S+$"})
    SecretsManagerArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#SecretsManagerArn', name: 'SecretsManagerArn', traits: {"smithy.api#pattern" => "^arn:aws[a-z-]{0,7}:secretsmanager:[A-za-z0-9_/.-]{0,63}:[A-za-z0-9_/.-]{0,63}:secret:[A-Za-z0-9][A-za-z0-9_/.-]{8,519}$"})
    SecurityGroupId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#SecurityGroupId', name: 'SecurityGroupId', traits: {"smithy.api#length" => {"min" => 11, "max" => 20}, "smithy.api#pattern" => "^(sg-([0-9a-f]{8}|[0-9a-f]{17}))$"})
    SelfservicePermissions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#SelfservicePermissions', name: 'SelfservicePermissions')
    SessionConnectionState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#SessionConnectionState', name: 'SessionConnectionState')
    SessionInstanceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#SessionInstanceId', name: 'SessionInstanceId', traits: {"smithy.api#pattern" => "^i-[a-f0-9]{8}(?:[a-f0-9]{9})?$"})
    SettingsGroup = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#SettingsGroup', name: 'SettingsGroup', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}, "smithy.api#pattern" => "^[A-Za-z0-9_./()!*'-]+$"})
    Snapshot = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#Snapshot', name: 'Snapshot')
    SnapshotList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#SnapshotList', name: 'SnapshotList')
    StandbyWorkspace = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#StandbyWorkspace', name: 'StandbyWorkspace')
    StandbyWorkspaceRelationshipType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#StandbyWorkspaceRelationshipType', name: 'StandbyWorkspaceRelationshipType')
    StandbyWorkspacesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#StandbyWorkspacesList', name: 'StandbyWorkspacesList')
    StandbyWorkspacesProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#StandbyWorkspacesProperties', name: 'StandbyWorkspacesProperties')
    StandbyWorkspacesPropertiesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#StandbyWorkspacesPropertiesList', name: 'StandbyWorkspacesPropertiesList')
    StartRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#StartRequest', name: 'StartRequest')
    StartWorkspaceRequests = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#StartWorkspaceRequests', name: 'StartWorkspaceRequests', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    StartWorkspacesPoolRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#StartWorkspacesPoolRequest', name: 'StartWorkspacesPoolRequest')
    StartWorkspacesPoolResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#StartWorkspacesPoolResult', name: 'StartWorkspacesPoolResult')
    StartWorkspacesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#StartWorkspacesRequest', name: 'StartWorkspacesRequest')
    StartWorkspacesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#StartWorkspacesResult', name: 'StartWorkspacesResult')
    StopRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#StopRequest', name: 'StopRequest')
    StopWorkspaceRequests = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#StopWorkspaceRequests', name: 'StopWorkspaceRequests', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    StopWorkspacesPoolRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#StopWorkspacesPoolRequest', name: 'StopWorkspacesPoolRequest')
    StopWorkspacesPoolResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#StopWorkspacesPoolResult', name: 'StopWorkspacesPoolResult')
    StopWorkspacesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#StopWorkspacesRequest', name: 'StopWorkspacesRequest')
    StopWorkspacesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#StopWorkspacesResult', name: 'StopWorkspacesResult')
    StorageConnector = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#StorageConnector', name: 'StorageConnector')
    StorageConnectorStatusEnum = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#StorageConnectorStatusEnum', name: 'StorageConnectorStatusEnum')
    StorageConnectorTypeEnum = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#StorageConnectorTypeEnum', name: 'StorageConnectorTypeEnum')
    StorageConnectors = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#StorageConnectors', name: 'StorageConnectors', traits: {"smithy.api#length" => {"min" => 1}})
    StreamingExperiencePreferredProtocolEnum = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#StreamingExperiencePreferredProtocolEnum', name: 'StreamingExperiencePreferredProtocolEnum')
    StreamingProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#StreamingProperties', name: 'StreamingProperties')
    String2048 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#String2048', name: 'String2048', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    SubnetId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#SubnetId', name: 'SubnetId', traits: {"smithy.api#length" => {"min" => 15, "max" => 24}, "smithy.api#pattern" => "^(subnet-([0-9a-f]{8}|[0-9a-f]{17}))$"})
    SubnetIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#SubnetIds', name: 'SubnetIds', traits: {"smithy.api#length" => {"min" => 0, "max" => 2}})
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 127}})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#TagKeyList', name: 'TagKeyList')
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#TagList', name: 'TagList')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    TargetWorkspaceState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#TargetWorkspaceState', name: 'TargetWorkspaceState')
    Tenancy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#Tenancy', name: 'Tenancy')
    TerminateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#TerminateRequest', name: 'TerminateRequest')
    TerminateWorkspaceRequests = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#TerminateWorkspaceRequests', name: 'TerminateWorkspaceRequests', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    TerminateWorkspacesPoolRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#TerminateWorkspacesPoolRequest', name: 'TerminateWorkspacesPoolRequest')
    TerminateWorkspacesPoolResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#TerminateWorkspacesPoolResult', name: 'TerminateWorkspacesPoolResult')
    TerminateWorkspacesPoolSessionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#TerminateWorkspacesPoolSessionRequest', name: 'TerminateWorkspacesPoolSessionRequest')
    TerminateWorkspacesPoolSessionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#TerminateWorkspacesPoolSessionResult', name: 'TerminateWorkspacesPoolSessionResult')
    TerminateWorkspacesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#TerminateWorkspacesRequest', name: 'TerminateWorkspacesRequest')
    TerminateWorkspacesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#TerminateWorkspacesResult', name: 'TerminateWorkspacesResult')
    TimeoutSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#TimeoutSettings', name: 'TimeoutSettings')
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.workspaces#Timestamp', name: 'Timestamp')
    UnsupportedNetworkConfigurationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#UnsupportedNetworkConfigurationException', name: 'UnsupportedNetworkConfigurationException', traits: {"smithy.api#error" => "client"})
    UnsupportedWorkspaceConfigurationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#UnsupportedWorkspaceConfigurationException', name: 'UnsupportedWorkspaceConfigurationException', traits: {"smithy.api#error" => "client"})
    UpdateConnectClientAddInRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#UpdateConnectClientAddInRequest', name: 'UpdateConnectClientAddInRequest')
    UpdateConnectClientAddInResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#UpdateConnectClientAddInResult', name: 'UpdateConnectClientAddInResult')
    UpdateConnectionAliasPermissionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#UpdateConnectionAliasPermissionRequest', name: 'UpdateConnectionAliasPermissionRequest')
    UpdateConnectionAliasPermissionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#UpdateConnectionAliasPermissionResult', name: 'UpdateConnectionAliasPermissionResult')
    UpdateDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#UpdateDescription', name: 'UpdateDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9_./() -]+$"})
    UpdateResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#UpdateResult', name: 'UpdateResult')
    UpdateRulesOfIpGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#UpdateRulesOfIpGroupRequest', name: 'UpdateRulesOfIpGroupRequest')
    UpdateRulesOfIpGroupResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#UpdateRulesOfIpGroupResult', name: 'UpdateRulesOfIpGroupResult')
    UpdateWorkspaceBundleRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#UpdateWorkspaceBundleRequest', name: 'UpdateWorkspaceBundleRequest')
    UpdateWorkspaceBundleResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#UpdateWorkspaceBundleResult', name: 'UpdateWorkspaceBundleResult')
    UpdateWorkspaceImagePermissionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#UpdateWorkspaceImagePermissionRequest', name: 'UpdateWorkspaceImagePermissionRequest')
    UpdateWorkspaceImagePermissionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#UpdateWorkspaceImagePermissionResult', name: 'UpdateWorkspaceImagePermissionResult')
    UpdateWorkspacesPoolRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#UpdateWorkspacesPoolRequest', name: 'UpdateWorkspacesPoolRequest')
    UpdateWorkspacesPoolResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#UpdateWorkspacesPoolResult', name: 'UpdateWorkspacesPoolResult')
    UserIdentityType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#UserIdentityType', name: 'UserIdentityType')
    UserName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#UserName', name: 'UserName', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}})
    UserSetting = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#UserSetting', name: 'UserSetting')
    UserSettingActionEnum = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#UserSettingActionEnum', name: 'UserSettingActionEnum')
    UserSettingPermissionEnum = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#UserSettingPermissionEnum', name: 'UserSettingPermissionEnum')
    UserSettings = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#UserSettings', name: 'UserSettings', traits: {"smithy.api#length" => {"min" => 1}})
    UserStorage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#UserStorage', name: 'UserStorage')
    UserVolumeSizeGib = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.workspaces#UserVolumeSizeGib', name: 'UserVolumeSizeGib')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client"})
    VolumeEncryptionKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#VolumeEncryptionKey', name: 'VolumeEncryptionKey')
    WorkSpaceApplication = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#WorkSpaceApplication', name: 'WorkSpaceApplication')
    WorkSpaceApplicationDeployment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#WorkSpaceApplicationDeployment', name: 'WorkSpaceApplicationDeployment')
    WorkSpaceApplicationId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#WorkSpaceApplicationId', name: 'WorkSpaceApplicationId', traits: {"smithy.api#pattern" => "^wsa-[0-9a-z]{8,63}$"})
    WorkSpaceApplicationIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#WorkSpaceApplicationIdList', name: 'WorkSpaceApplicationIdList', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    WorkSpaceApplicationLicenseType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#WorkSpaceApplicationLicenseType', name: 'WorkSpaceApplicationLicenseType')
    WorkSpaceApplicationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#WorkSpaceApplicationList', name: 'WorkSpaceApplicationList')
    WorkSpaceApplicationOwner = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#WorkSpaceApplicationOwner', name: 'WorkSpaceApplicationOwner', traits: {"smithy.api#pattern" => "^\\d{12}|AMAZON$"})
    WorkSpaceApplicationState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#WorkSpaceApplicationState', name: 'WorkSpaceApplicationState')
    WorkSpaceAssociatedResourceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#WorkSpaceAssociatedResourceType', name: 'WorkSpaceAssociatedResourceType')
    WorkSpaceAssociatedResourceTypeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#WorkSpaceAssociatedResourceTypeList', name: 'WorkSpaceAssociatedResourceTypeList')
    Workspace = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#Workspace', name: 'Workspace')
    WorkspaceAccessProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#WorkspaceAccessProperties', name: 'WorkspaceAccessProperties')
    WorkspaceBundle = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#WorkspaceBundle', name: 'WorkspaceBundle')
    WorkspaceBundleDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#WorkspaceBundleDescription', name: 'WorkspaceBundleDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9_./() -]+$"})
    WorkspaceBundleName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#WorkspaceBundleName', name: 'WorkspaceBundleName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_./()\\\\-]+$"})
    WorkspaceBundleState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#WorkspaceBundleState', name: 'WorkspaceBundleState')
    WorkspaceConnectionStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#WorkspaceConnectionStatus', name: 'WorkspaceConnectionStatus')
    WorkspaceConnectionStatusList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#WorkspaceConnectionStatusList', name: 'WorkspaceConnectionStatusList')
    WorkspaceCreationProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#WorkspaceCreationProperties', name: 'WorkspaceCreationProperties')
    WorkspaceDirectory = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#WorkspaceDirectory', name: 'WorkspaceDirectory')
    WorkspaceDirectoryDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#WorkspaceDirectoryDescription', name: 'WorkspaceDirectoryDescription', traits: {"smithy.api#pattern" => "^([a-zA-Z0-9_])[\\\\a-zA-Z0-9_@#%*+=:?./!\\s-]{1,255}$"})
    WorkspaceDirectoryName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#WorkspaceDirectoryName', name: 'WorkspaceDirectoryName', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_.\\s-]{1,64}$"})
    WorkspaceDirectoryNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#WorkspaceDirectoryNameList', name: 'WorkspaceDirectoryNameList', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    WorkspaceDirectoryState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#WorkspaceDirectoryState', name: 'WorkspaceDirectoryState')
    WorkspaceDirectoryType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#WorkspaceDirectoryType', name: 'WorkspaceDirectoryType')
    WorkspaceErrorCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#WorkspaceErrorCode', name: 'WorkspaceErrorCode')
    WorkspaceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#WorkspaceId', name: 'WorkspaceId', traits: {"smithy.api#pattern" => "^ws-[0-9a-z]{8,63}$"})
    WorkspaceIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#WorkspaceIdList', name: 'WorkspaceIdList', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    WorkspaceImage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#WorkspaceImage', name: 'WorkspaceImage')
    WorkspaceImageDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#WorkspaceImageDescription', name: 'WorkspaceImageDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_./() -]+$"})
    WorkspaceImageErrorCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#WorkspaceImageErrorCode', name: 'WorkspaceImageErrorCode')
    WorkspaceImageErrorDetailCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#WorkspaceImageErrorDetailCode', name: 'WorkspaceImageErrorDetailCode')
    WorkspaceImageId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#WorkspaceImageId', name: 'WorkspaceImageId', traits: {"smithy.api#pattern" => "^wsi-[0-9a-z]{9,63}$"})
    WorkspaceImageIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#WorkspaceImageIdList', name: 'WorkspaceImageIdList', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    WorkspaceImageIngestionProcess = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#WorkspaceImageIngestionProcess', name: 'WorkspaceImageIngestionProcess')
    WorkspaceImageList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#WorkspaceImageList', name: 'WorkspaceImageList')
    WorkspaceImageName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#WorkspaceImageName', name: 'WorkspaceImageName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_./()\\\\-]+$"})
    WorkspaceImageRequiredTenancy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#WorkspaceImageRequiredTenancy', name: 'WorkspaceImageRequiredTenancy')
    WorkspaceImageState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#WorkspaceImageState', name: 'WorkspaceImageState')
    WorkspaceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#WorkspaceList', name: 'WorkspaceList')
    WorkspaceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#WorkspaceName', name: 'WorkspaceName', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9_()][a-zA-Z0-9_.()-]{1,63}$"})
    WorkspaceProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#WorkspaceProperties', name: 'WorkspaceProperties')
    WorkspaceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#WorkspaceRequest', name: 'WorkspaceRequest')
    WorkspaceRequestList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#WorkspaceRequestList', name: 'WorkspaceRequestList', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    WorkspaceResourceAssociation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#WorkspaceResourceAssociation', name: 'WorkspaceResourceAssociation')
    WorkspaceResourceAssociationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#WorkspaceResourceAssociationList', name: 'WorkspaceResourceAssociationList')
    WorkspaceState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#WorkspaceState', name: 'WorkspaceState')
    WorkspaceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#WorkspaceType', name: 'WorkspaceType')
    WorkspacesDefaultRoleNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#WorkspacesDefaultRoleNotFoundException', name: 'WorkspacesDefaultRoleNotFoundException', traits: {"smithy.api#error" => "client"})
    WorkspacesIpGroup = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#WorkspacesIpGroup', name: 'WorkspacesIpGroup')
    WorkspacesIpGroupsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#WorkspacesIpGroupsList', name: 'WorkspacesIpGroupsList')
    WorkspacesPool = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#WorkspacesPool', name: 'WorkspacesPool')
    WorkspacesPoolError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#WorkspacesPoolError', name: 'WorkspacesPoolError')
    WorkspacesPoolErrorCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#WorkspacesPoolErrorCode', name: 'WorkspacesPoolErrorCode')
    WorkspacesPoolErrors = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#WorkspacesPoolErrors', name: 'WorkspacesPoolErrors')
    WorkspacesPoolId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#WorkspacesPoolId', name: 'WorkspacesPoolId', traits: {"smithy.api#pattern" => "^wspool-[0-9a-z]{9}$"})
    WorkspacesPoolIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#WorkspacesPoolIds', name: 'WorkspacesPoolIds', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    WorkspacesPoolName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#WorkspacesPoolName', name: 'WorkspacesPoolName', traits: {"smithy.api#pattern" => "^[A-Za-z0-9][A-Za-z0-9_.-]{0,63}$"})
    WorkspacesPoolSession = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.workspaces#WorkspacesPoolSession', name: 'WorkspacesPoolSession')
    WorkspacesPoolSessions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#WorkspacesPoolSessions', name: 'WorkspacesPoolSessions')
    WorkspacesPoolState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.workspaces#WorkspacesPoolState', name: 'WorkspacesPoolState')
    WorkspacesPoolUserId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.workspaces#WorkspacesPoolUserId', name: 'WorkspacesPoolUserId', traits: {"smithy.api#length" => {"min" => 2, "max" => 128}})
    WorkspacesPools = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.workspaces#WorkspacesPools', name: 'WorkspacesPools')

    AGAModeForDirectoryEnum.add_member(:enabled_auto, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED_AUTO', traits: {"smithy.api#enumValue" => "ENABLED_AUTO"}))
    AGAModeForDirectoryEnum.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    AGAModeForWorkSpaceEnum.add_member(:enabled_auto, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED_AUTO', traits: {"smithy.api#enumValue" => "ENABLED_AUTO"}))
    AGAModeForWorkSpaceEnum.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    AGAModeForWorkSpaceEnum.add_member(:inherited, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INHERITED', traits: {"smithy.api#enumValue" => "INHERITED"}))
    AGAPreferredProtocolForDirectory.add_member(:tcp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TCP', traits: {"smithy.api#enumValue" => "TCP"}))
    AGAPreferredProtocolForDirectory.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    AGAPreferredProtocolForWorkSpace.add_member(:tcp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TCP', traits: {"smithy.api#enumValue" => "TCP"}))
    AGAPreferredProtocolForWorkSpace.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    AGAPreferredProtocolForWorkSpace.add_member(:inherited, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INHERITED', traits: {"smithy.api#enumValue" => "INHERITED"}))
    AcceptAccountLinkInvitationRequest.add_member(:link_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkId, location_name: 'LinkId', traits: {"smithy.api#documentation" => "<p>The identifier of the account link.</p>", "smithy.api#required" => {}}))
    AcceptAccountLinkInvitationRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>A string of up to 64 ASCII characters that Amazon WorkSpaces uses to ensure idempotent creation.</p>"}))
    AcceptAccountLinkInvitationRequest.type = Types::AcceptAccountLinkInvitationRequest
    AcceptAccountLinkInvitationResult.add_member(:account_link, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountLink, location_name: 'AccountLink', traits: {"smithy.api#documentation" => "<p>Information about the account link.</p>"}))
    AcceptAccountLinkInvitationResult.type = Types::AcceptAccountLinkInvitationResult
    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    AccessDeniedException.type = Types::AccessDeniedException
    AccessEndpoint.add_member(:access_endpoint_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessEndpointType, location_name: 'AccessEndpointType', traits: {"smithy.api#documentation" => "<p>Indicates the type of access endpoint.</p>"}))
    AccessEndpoint.add_member(:vpc_endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AlphanumericDashUnderscoreNonEmptyString, location_name: 'VpcEndpointId', traits: {"smithy.api#documentation" => "<p>Indicates the VPC endpoint to use for access.</p>"}))
    AccessEndpoint.type = Types::AccessEndpoint
    AccessEndpointConfig.add_member(:access_endpoints, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessEndpointList, location_name: 'AccessEndpoints', traits: {"smithy.api#documentation" => "<p>Indicates a list of access endpoints associated with this directory.</p>", "smithy.api#required" => {}}))
    AccessEndpointConfig.add_member(:internet_fallback_protocols, Smithy::Schema::Shapes::ShapeRef.new(shape: InternetFallbackProtocolList, location_name: 'InternetFallbackProtocols', traits: {"smithy.api#documentation" => "<p>Indicates a list of protocols that fallback to using the public Internet when streaming over a VPC endpoint is not available.</p>"}))
    AccessEndpointConfig.type = Types::AccessEndpointConfig
    AccessEndpointList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AccessEndpoint)
    AccessEndpointType.add_member(:streaming_wsp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STREAMING_WSP', traits: {"smithy.api#enumValue" => "STREAMING_WSP"}))
    AccessPropertyValue.add_member(:allow, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALLOW', traits: {"smithy.api#enumValue" => "ALLOW"}))
    AccessPropertyValue.add_member(:deny, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DENY', traits: {"smithy.api#enumValue" => "DENY"}))
    AccountLink.add_member(:account_link_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkId, location_name: 'AccountLinkId', traits: {"smithy.api#documentation" => "<p>The identifier of the account link.</p>"}))
    AccountLink.add_member(:account_link_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountLinkStatusEnum, location_name: 'AccountLinkStatus', traits: {"smithy.api#documentation" => "<p>The status of the account link.</p>"}))
    AccountLink.add_member(:source_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccount, location_name: 'SourceAccountId', traits: {"smithy.api#documentation" => "<p>The identifier of the source account.</p>"}))
    AccountLink.add_member(:target_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccount, location_name: 'TargetAccountId', traits: {"smithy.api#documentation" => "<p>The identifier of the target account.</p>"}))
    AccountLink.type = Types::AccountLink
    AccountLinkList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AccountLink)
    AccountLinkStatusEnum.add_member(:linked, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LINKED', traits: {"smithy.api#enumValue" => "LINKED"}))
    AccountLinkStatusEnum.add_member(:linking_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LINKING_FAILED', traits: {"smithy.api#enumValue" => "LINKING_FAILED"}))
    AccountLinkStatusEnum.add_member(:link_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LINK_NOT_FOUND', traits: {"smithy.api#enumValue" => "LINK_NOT_FOUND"}))
    AccountLinkStatusEnum.add_member(:pending_acceptance_by_target_account, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_ACCEPTANCE_BY_TARGET_ACCOUNT', traits: {"smithy.api#enumValue" => "PENDING_ACCEPTANCE_BY_TARGET_ACCOUNT"}))
    AccountLinkStatusEnum.add_member(:rejected, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REJECTED', traits: {"smithy.api#enumValue" => "REJECTED"}))
    AccountModification.add_member(:modification_state, Smithy::Schema::Shapes::ShapeRef.new(shape: DedicatedTenancyModificationStateEnum, location_name: 'ModificationState', traits: {"smithy.api#documentation" => "<p>The state of the modification to the configuration of BYOL.</p>"}))
    AccountModification.add_member(:dedicated_tenancy_support, Smithy::Schema::Shapes::ShapeRef.new(shape: DedicatedTenancySupportResultEnum, location_name: 'DedicatedTenancySupport', traits: {"smithy.api#documentation" => "<p>The status of BYOL (whether BYOL is being enabled or disabled).</p>"}))
    AccountModification.add_member(:dedicated_tenancy_management_cidr_range, Smithy::Schema::Shapes::ShapeRef.new(shape: DedicatedTenancyManagementCidrRange, location_name: 'DedicatedTenancyManagementCidrRange', traits: {"smithy.api#documentation" => "<p>The IP address range, specified as an IPv4 CIDR block, for the management network\n         interface used for the account.</p>"}))
    AccountModification.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The timestamp when the modification of the BYOL configuration was started.</p>"}))
    AccountModification.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>The error code that is returned if the configuration of BYOL cannot be modified.</p>"}))
    AccountModification.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>The text of the error message that is returned if the configuration of BYOL cannot be\n         modified.</p>"}))
    AccountModification.type = Types::AccountModification
    AccountModificationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AccountModification)
    ActiveDirectoryConfig.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>The name of the domain.</p>", "smithy.api#required" => {}}))
    ActiveDirectoryConfig.add_member(:service_account_secret_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SecretsManagerArn, location_name: 'ServiceAccountSecretArn', traits: {"smithy.api#documentation" => "<p>Indicates the secret ARN on the service account.</p>", "smithy.api#required" => {}}))
    ActiveDirectoryConfig.type = Types::ActiveDirectoryConfig
    Application.add_member(:microsoft_office_2016, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Microsoft_Office_2016', traits: {"smithy.api#enumValue" => "Microsoft_Office_2016"}))
    Application.add_member(:microsoft_office_2019, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Microsoft_Office_2019', traits: {"smithy.api#enumValue" => "Microsoft_Office_2019"}))
    ApplicationAssociatedResourceType.add_member(:workspace, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WORKSPACE', traits: {"smithy.api#enumValue" => "WORKSPACE"}))
    ApplicationAssociatedResourceType.add_member(:bundle, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BUNDLE', traits: {"smithy.api#enumValue" => "BUNDLE"}))
    ApplicationAssociatedResourceType.add_member(:image, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMAGE', traits: {"smithy.api#enumValue" => "IMAGE"}))
    ApplicationAssociatedResourceTypeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationAssociatedResourceType)
    ApplicationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Application)
    ApplicationNotSupportedException.type = Types::ApplicationNotSupportedException
    ApplicationResourceAssociation.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkSpaceApplicationId, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the application.</p>"}))
    ApplicationResourceAssociation.add_member(:associated_resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'AssociatedResourceId', traits: {"smithy.api#documentation" => "<p>The identifier of the associated resource.</p>"}))
    ApplicationResourceAssociation.add_member(:associated_resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationAssociatedResourceType, location_name: 'AssociatedResourceType', traits: {"smithy.api#documentation" => "<p>The resource type of the associated resource.</p>"}))
    ApplicationResourceAssociation.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'Created', traits: {"smithy.api#documentation" => "<p>The time the association was created.</p>"}))
    ApplicationResourceAssociation.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedTime', traits: {"smithy.api#documentation" => "<p>The time the association status was last updated.</p>"}))
    ApplicationResourceAssociation.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: AssociationState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The status of the application resource association.</p>"}))
    ApplicationResourceAssociation.add_member(:state_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: AssociationStateReason, location_name: 'StateReason', traits: {"smithy.api#documentation" => "<p>The reason the association deployment failed.</p>"}))
    ApplicationResourceAssociation.type = Types::ApplicationResourceAssociation
    ApplicationResourceAssociationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationResourceAssociation)
    ApplicationSettingsRequest.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSettingsStatusEnum, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Enables or disables persistent application settings for users during their pool sessions.</p>", "smithy.api#required" => {}}))
    ApplicationSettingsRequest.add_member(:settings_group, Smithy::Schema::Shapes::ShapeRef.new(shape: SettingsGroup, location_name: 'SettingsGroup', traits: {"smithy.api#documentation" => "<p>The path prefix for the S3 bucket where users’ persistent application settings are stored. \n         You can allow the same persistent application settings to be used across multiple pools by specifying \n         the same settings group for each pool.</p>"}))
    ApplicationSettingsRequest.type = Types::ApplicationSettingsRequest
    ApplicationSettingsResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSettingsStatusEnum, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Specifies whether persistent application settings are enabled for users during their pool sessions.</p>", "smithy.api#required" => {}}))
    ApplicationSettingsResponse.add_member(:settings_group, Smithy::Schema::Shapes::ShapeRef.new(shape: SettingsGroup, location_name: 'SettingsGroup', traits: {"smithy.api#documentation" => "<p>The path prefix for the S3 bucket where users’ persistent application settings are stored.</p>"}))
    ApplicationSettingsResponse.add_member(:s3_bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName, location_name: 'S3BucketName', traits: {"smithy.api#documentation" => "<p>The S3 bucket where users’ persistent application settings are stored. When persistent \n         application settings are enabled for the first time for an account in an Amazon Web Services Region, \n         an S3 bucket is created. The bucket is unique to the Amazon Web Services account and the Region.</p>"}))
    ApplicationSettingsResponse.type = Types::ApplicationSettingsResponse
    ApplicationSettingsStatusEnum.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    ApplicationSettingsStatusEnum.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    AssociateConnectionAliasRequest.add_member(:alias_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionAliasId, location_name: 'AliasId', traits: {"smithy.api#documentation" => "<p>The identifier of the connection alias.</p>", "smithy.api#required" => {}}))
    AssociateConnectionAliasRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The identifier of the directory to associate the connection alias with.</p>", "smithy.api#required" => {}}))
    AssociateConnectionAliasRequest.type = Types::AssociateConnectionAliasRequest
    AssociateConnectionAliasResult.add_member(:connection_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionIdentifier, location_name: 'ConnectionIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier of the connection alias association. You use the connection identifier in\n         the DNS TXT record when you're configuring your DNS routing policies. </p>"}))
    AssociateConnectionAliasResult.type = Types::AssociateConnectionAliasResult
    AssociateIpGroupsRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the directory.</p>", "smithy.api#required" => {}}))
    AssociateIpGroupsRequest.add_member(:group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: IpGroupIdList, location_name: 'GroupIds', traits: {"smithy.api#documentation" => "<p>The identifiers of one or more IP access control groups.</p>", "smithy.api#required" => {}}))
    AssociateIpGroupsRequest.type = Types::AssociateIpGroupsRequest
    AssociateIpGroupsResult.type = Types::AssociateIpGroupsResult
    AssociateWorkspaceApplicationRequest.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'WorkspaceId', traits: {"smithy.api#documentation" => "<p>The identifier of the WorkSpace.</p>", "smithy.api#required" => {}}))
    AssociateWorkspaceApplicationRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkSpaceApplicationId, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the application.</p>", "smithy.api#required" => {}}))
    AssociateWorkspaceApplicationRequest.type = Types::AssociateWorkspaceApplicationRequest
    AssociateWorkspaceApplicationResult.add_member(:association, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceResourceAssociation, location_name: 'Association', traits: {"smithy.api#documentation" => "<p>Information about the association between the specified WorkSpace and the specified application.</p>"}))
    AssociateWorkspaceApplicationResult.type = Types::AssociateWorkspaceApplicationResult
    AssociationErrorCode.add_member(:insufficient_diskspace, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSUFFICIENT_DISKSPACE', traits: {"smithy.api#enumValue" => "ValidationError.InsufficientDiskSpace"}))
    AssociationErrorCode.add_member(:insufficient_memory, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSUFFICIENT_MEMORY', traits: {"smithy.api#enumValue" => "ValidationError.InsufficientMemory"}))
    AssociationErrorCode.add_member(:unsupported_operating_system, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNSUPPORTED_OPERATING_SYSTEM', traits: {"smithy.api#enumValue" => "ValidationError.UnsupportedOperatingSystem"}))
    AssociationErrorCode.add_member(:internal_server_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_SERVER_ERROR', traits: {"smithy.api#enumValue" => "DeploymentError.InternalServerError"}))
    AssociationErrorCode.add_member(:workspace_unreachable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WORKSPACE_UNREACHABLE', traits: {"smithy.api#enumValue" => "DeploymentError.WorkspaceUnreachable"}))
    AssociationState.add_member(:pending_install, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_INSTALL', traits: {"smithy.api#enumValue" => "PENDING_INSTALL"}))
    AssociationState.add_member(:pending_install_deployment, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_INSTALL_DEPLOYMENT', traits: {"smithy.api#enumValue" => "PENDING_INSTALL_DEPLOYMENT"}))
    AssociationState.add_member(:pending_uninstall, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_UNINSTALL', traits: {"smithy.api#enumValue" => "PENDING_UNINSTALL"}))
    AssociationState.add_member(:pending_uninstall_deployment, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_UNINSTALL_DEPLOYMENT', traits: {"smithy.api#enumValue" => "PENDING_UNINSTALL_DEPLOYMENT"}))
    AssociationState.add_member(:installing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSTALLING', traits: {"smithy.api#enumValue" => "INSTALLING"}))
    AssociationState.add_member(:uninstalling, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNINSTALLING', traits: {"smithy.api#enumValue" => "UNINSTALLING"}))
    AssociationState.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    AssociationState.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    AssociationState.add_member(:removed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REMOVED', traits: {"smithy.api#enumValue" => "REMOVED"}))
    AssociationStateReason.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: AssociationErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>The error code of the association deployment failure.</p>"}))
    AssociationStateReason.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String2048, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>The error message of the association deployment failure.</p>"}))
    AssociationStateReason.type = Types::AssociationStateReason
    AssociationStatus.add_member(:not_associated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_ASSOCIATED', traits: {"smithy.api#enumValue" => "NOT_ASSOCIATED"}))
    AssociationStatus.add_member(:associated_with_owner_account, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSOCIATED_WITH_OWNER_ACCOUNT', traits: {"smithy.api#enumValue" => "ASSOCIATED_WITH_OWNER_ACCOUNT"}))
    AssociationStatus.add_member(:associated_with_shared_account, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSOCIATED_WITH_SHARED_ACCOUNT', traits: {"smithy.api#enumValue" => "ASSOCIATED_WITH_SHARED_ACCOUNT"}))
    AssociationStatus.add_member(:pending_association, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_ASSOCIATION', traits: {"smithy.api#enumValue" => "PENDING_ASSOCIATION"}))
    AssociationStatus.add_member(:pending_disassociation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_DISASSOCIATION', traits: {"smithy.api#enumValue" => "PENDING_DISASSOCIATION"}))
    AuthenticationType.add_member(:saml, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SAML', traits: {"smithy.api#enumValue" => "SAML"}))
    AuthorizeIpRulesRequest.add_member(:group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IpGroupId, location_name: 'GroupId', traits: {"smithy.api#documentation" => "<p>The identifier of the group.</p>", "smithy.api#required" => {}}))
    AuthorizeIpRulesRequest.add_member(:user_rules, Smithy::Schema::Shapes::ShapeRef.new(shape: IpRuleList, location_name: 'UserRules', traits: {"smithy.api#documentation" => "<p>The rules to add to the group.</p>", "smithy.api#required" => {}}))
    AuthorizeIpRulesRequest.type = Types::AuthorizeIpRulesRequest
    AuthorizeIpRulesResult.type = Types::AuthorizeIpRulesResult
    BundleAssociatedResourceType.add_member(:application, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPLICATION', traits: {"smithy.api#enumValue" => "APPLICATION"}))
    BundleAssociatedResourceTypeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BundleAssociatedResourceType)
    BundleIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BundleId)
    BundleList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceBundle)
    BundleResourceAssociation.add_member(:associated_resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'AssociatedResourceId', traits: {"smithy.api#documentation" => "<p>The identifier of the associated resource.</p>"}))
    BundleResourceAssociation.add_member(:associated_resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: BundleAssociatedResourceType, location_name: 'AssociatedResourceType', traits: {"smithy.api#documentation" => "<p>The resource type of the associated resources.</p>"}))
    BundleResourceAssociation.add_member(:bundle_id, Smithy::Schema::Shapes::ShapeRef.new(shape: BundleId, location_name: 'BundleId', traits: {"smithy.api#documentation" => "<p>The identifier of the bundle.</p>"}))
    BundleResourceAssociation.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'Created', traits: {"smithy.api#documentation" => "<p>The time the association is created.</p>"}))
    BundleResourceAssociation.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedTime', traits: {"smithy.api#documentation" => "<p>The time the association status was last updated.</p>"}))
    BundleResourceAssociation.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: AssociationState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The status of the bundle resource association.</p>"}))
    BundleResourceAssociation.add_member(:state_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: AssociationStateReason, location_name: 'StateReason', traits: {"smithy.api#documentation" => "<p>The reason the association deployment failed.</p>"}))
    BundleResourceAssociation.type = Types::BundleResourceAssociation
    BundleResourceAssociationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BundleResourceAssociation)
    BundleType.add_member(:regular, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REGULAR', traits: {"smithy.api#enumValue" => "REGULAR"}))
    BundleType.add_member(:standby, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STANDBY', traits: {"smithy.api#enumValue" => "STANDBY"}))
    Capacity.add_member(:desired_user_sessions, Smithy::Schema::Shapes::ShapeRef.new(shape: DesiredUserSessions, location_name: 'DesiredUserSessions', traits: {"smithy.api#documentation" => "<p>The desired number of user sessions for the WorkSpaces in the pool.</p>", "smithy.api#required" => {}}))
    Capacity.type = Types::Capacity
    CapacityStatus.add_member(:available_user_sessions, Smithy::Schema::Shapes::ShapeRef.new(shape: AvailableUserSessions, location_name: 'AvailableUserSessions', traits: {"smithy.api#documentation" => "<p>The number of user sessions currently available for streaming from your pool.</p>\n         <p>AvailableUserSessions = ActualUserSessions - ActiveUserSessions</p>", "smithy.api#required" => {}}))
    CapacityStatus.add_member(:desired_user_sessions, Smithy::Schema::Shapes::ShapeRef.new(shape: DesiredUserSessions, location_name: 'DesiredUserSessions', traits: {"smithy.api#documentation" => "<p>The total number of sessions slots that are either running or pending. This \n         represents the total number of concurrent streaming sessions your pool can support \n         in a steady state.</p>", "smithy.api#required" => {}}))
    CapacityStatus.add_member(:actual_user_sessions, Smithy::Schema::Shapes::ShapeRef.new(shape: ActualUserSessions, location_name: 'ActualUserSessions', traits: {"smithy.api#documentation" => "<p>The total number of user sessions that are available for streaming or are currently \n         streaming in your pool.</p>\n         <p>ActualUserSessions = AvailableUserSessions + ActiveUserSessions</p>", "smithy.api#required" => {}}))
    CapacityStatus.add_member(:active_user_sessions, Smithy::Schema::Shapes::ShapeRef.new(shape: ActiveUserSessions, location_name: 'ActiveUserSessions', traits: {"smithy.api#documentation" => "<p>The number of user sessions currently being used for your pool.</p>", "smithy.api#required" => {}}))
    CapacityStatus.type = Types::CapacityStatus
    CertificateBasedAuthProperties.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateBasedAuthStatusEnum, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the certificate-based authentication properties.</p>"}))
    CertificateBasedAuthProperties.add_member(:certificate_authority_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateAuthorityArn, location_name: 'CertificateAuthorityArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon Web Services Certificate Manager Private CA resource.</p>"}))
    CertificateBasedAuthProperties.type = Types::CertificateBasedAuthProperties
    CertificateBasedAuthStatusEnum.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    CertificateBasedAuthStatusEnum.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    ClientDeviceType.add_member(:device_type_windows, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEVICE_TYPE_WINDOWS', traits: {"smithy.api#enumValue" => "DeviceTypeWindows"}))
    ClientDeviceType.add_member(:device_type_osx, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEVICE_TYPE_OSX', traits: {"smithy.api#enumValue" => "DeviceTypeOsx"}))
    ClientDeviceType.add_member(:device_type_android, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEVICE_TYPE_ANDROID', traits: {"smithy.api#enumValue" => "DeviceTypeAndroid"}))
    ClientDeviceType.add_member(:device_type_ios, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEVICE_TYPE_IOS', traits: {"smithy.api#enumValue" => "DeviceTypeIos"}))
    ClientDeviceType.add_member(:device_type_linux, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEVICE_TYPE_LINUX', traits: {"smithy.api#enumValue" => "DeviceTypeLinux"}))
    ClientDeviceType.add_member(:device_type_web, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEVICE_TYPE_WEB', traits: {"smithy.api#enumValue" => "DeviceTypeWeb"}))
    ClientDeviceTypeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ClientDeviceType)
    ClientProperties.add_member(:reconnect_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: ReconnectEnum, location_name: 'ReconnectEnabled', traits: {"smithy.api#documentation" => "<p>Specifies whether users can cache their credentials on the Amazon WorkSpaces client.\n         When enabled, users can choose to reconnect to their WorkSpaces without re-entering their\n         credentials. </p>"}))
    ClientProperties.add_member(:log_upload_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: LogUploadEnum, location_name: 'LogUploadEnabled', traits: {"smithy.api#documentation" => "<p>Specifies whether users can upload diagnostic log files of Amazon WorkSpaces client directly to \n         WorkSpaces to troubleshoot issues when using the WorkSpaces client. \n         When enabled, the log files will be sent to WorkSpaces automatically and will be applied to all \n         users in the specified directory.</p>"}))
    ClientProperties.type = Types::ClientProperties
    ClientPropertiesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ClientPropertiesResult)
    ClientPropertiesResult.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The resource identifier, in the form of a directory ID.</p>"}))
    ClientPropertiesResult.add_member(:client_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientProperties, location_name: 'ClientProperties', traits: {"smithy.api#documentation" => "<p>Information about the Amazon WorkSpaces client.</p>"}))
    ClientPropertiesResult.type = Types::ClientPropertiesResult
    Compute.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VALUE', traits: {"smithy.api#enumValue" => "VALUE"}))
    Compute.add_member(:standard, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STANDARD', traits: {"smithy.api#enumValue" => "STANDARD"}))
    Compute.add_member(:performance, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PERFORMANCE', traits: {"smithy.api#enumValue" => "PERFORMANCE"}))
    Compute.add_member(:power, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POWER', traits: {"smithy.api#enumValue" => "POWER"}))
    Compute.add_member(:graphics, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GRAPHICS', traits: {"smithy.api#enumValue" => "GRAPHICS"}))
    Compute.add_member(:powerpro, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POWERPRO', traits: {"smithy.api#enumValue" => "POWERPRO"}))
    Compute.add_member(:generalpurpose_4_xlarge, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GENERALPURPOSE_4XLARGE', traits: {"smithy.api#enumValue" => "GENERALPURPOSE_4XLARGE"}))
    Compute.add_member(:generalpurpose_8_xlarge, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GENERALPURPOSE_8XLARGE', traits: {"smithy.api#enumValue" => "GENERALPURPOSE_8XLARGE"}))
    Compute.add_member(:graphicspro, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GRAPHICSPRO', traits: {"smithy.api#enumValue" => "GRAPHICSPRO"}))
    Compute.add_member(:graphics_g4_dn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GRAPHICS_G4DN', traits: {"smithy.api#enumValue" => "GRAPHICS_G4DN"}))
    Compute.add_member(:graphicspro_g4_dn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GRAPHICSPRO_G4DN', traits: {"smithy.api#enumValue" => "GRAPHICSPRO_G4DN"}))
    ComputeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Compute)
    ComputeNotCompatibleException.type = Types::ComputeNotCompatibleException
    ComputeType.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Compute, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The compute type.</p>"}))
    ComputeType.type = Types::ComputeType
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ConflictException.type = Types::ConflictException
    ConnectClientAddIn.add_member(:add_in_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonUuid, location_name: 'AddInId', traits: {"smithy.api#documentation" => "<p>The client add-in identifier.</p>"}))
    ConnectClientAddIn.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The directory identifier for which the client add-in is configured.</p>"}))
    ConnectClientAddIn.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AddInName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the client add in.</p>"}))
    ConnectClientAddIn.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: AddInUrl, location_name: 'URL', traits: {"smithy.api#documentation" => "<p>The endpoint URL of the client add-in.</p>"}))
    ConnectClientAddIn.type = Types::ConnectClientAddIn
    ConnectClientAddInList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectClientAddIn)
    ConnectionAlias.add_member(:connection_string, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionString, location_name: 'ConnectionString', traits: {"smithy.api#documentation" => "<p>The connection string specified for the connection alias. The connection string must be\n         in the form of a fully qualified domain name (FQDN), such as\n         <code>www.example.com</code>.</p>"}))
    ConnectionAlias.add_member(:alias_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionAliasId, location_name: 'AliasId', traits: {"smithy.api#documentation" => "<p>The identifier of the connection alias.</p>"}))
    ConnectionAlias.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionAliasState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The current state of the connection alias.</p>"}))
    ConnectionAlias.add_member(:owner_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccount, location_name: 'OwnerAccountId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Web Services account that owns the connection alias.</p>"}))
    ConnectionAlias.add_member(:associations, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionAliasAssociationList, location_name: 'Associations', traits: {"smithy.api#documentation" => "<p>The association status of the connection alias.</p>"}))
    ConnectionAlias.type = Types::ConnectionAlias
    ConnectionAliasAssociation.add_member(:association_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AssociationStatus, location_name: 'AssociationStatus', traits: {"smithy.api#documentation" => "<p>The association status of the connection alias.</p>"}))
    ConnectionAliasAssociation.add_member(:associated_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccount, location_name: 'AssociatedAccountId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Web Services account that associated the connection alias\n         with a directory.</p>"}))
    ConnectionAliasAssociation.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The identifier of the directory associated with a connection alias.</p>"}))
    ConnectionAliasAssociation.add_member(:connection_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionIdentifier, location_name: 'ConnectionIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier of the connection alias association. You use the connection identifier in\n         the DNS TXT record when you're configuring your DNS routing policies.</p>"}))
    ConnectionAliasAssociation.type = Types::ConnectionAliasAssociation
    ConnectionAliasAssociationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionAliasAssociation)
    ConnectionAliasIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionAliasId)
    ConnectionAliasList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionAlias)
    ConnectionAliasPermission.add_member(:shared_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccount, location_name: 'SharedAccountId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Web Services account that the connection alias is shared\n         with.</p>", "smithy.api#required" => {}}))
    ConnectionAliasPermission.add_member(:allow_association, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'AllowAssociation', traits: {"smithy.api#documentation" => "<p>Indicates whether the specified Amazon Web Services account is allowed to associate the\n         connection alias with a directory.</p>", "smithy.api#required" => {}}))
    ConnectionAliasPermission.type = Types::ConnectionAliasPermission
    ConnectionAliasPermissions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionAliasPermission)
    ConnectionAliasState.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    ConnectionAliasState.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATED', traits: {"smithy.api#enumValue" => "CREATED"}))
    ConnectionAliasState.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    ConnectionState.add_member(:connected, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONNECTED', traits: {"smithy.api#enumValue" => "CONNECTED"}))
    ConnectionState.add_member(:disconnected, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISCONNECTED', traits: {"smithy.api#enumValue" => "DISCONNECTED"}))
    ConnectionState.add_member(:unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN', traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    CopyWorkspaceImageRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceImageName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the image.</p>", "smithy.api#required" => {}}))
    CopyWorkspaceImageRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceImageDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the image.</p>"}))
    CopyWorkspaceImageRequest.add_member(:source_image_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceImageId, location_name: 'SourceImageId', traits: {"smithy.api#documentation" => "<p>The identifier of the source image.</p>", "smithy.api#required" => {}}))
    CopyWorkspaceImageRequest.add_member(:source_region, Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'SourceRegion', traits: {"smithy.api#documentation" => "<p>The identifier of the source Region.</p>", "smithy.api#required" => {}}))
    CopyWorkspaceImageRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags for the image.</p>"}))
    CopyWorkspaceImageRequest.type = Types::CopyWorkspaceImageRequest
    CopyWorkspaceImageResult.add_member(:image_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceImageId, location_name: 'ImageId', traits: {"smithy.api#documentation" => "<p>The identifier of the image.</p>"}))
    CopyWorkspaceImageResult.type = Types::CopyWorkspaceImageResult
    CreateAccountLinkInvitationRequest.add_member(:target_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccount, location_name: 'TargetAccountId', traits: {"smithy.api#documentation" => "<p>The identifier of the target account.</p>", "smithy.api#required" => {}}))
    CreateAccountLinkInvitationRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>A string of up to 64 ASCII characters that Amazon WorkSpaces uses to ensure idempotent creation.</p>"}))
    CreateAccountLinkInvitationRequest.type = Types::CreateAccountLinkInvitationRequest
    CreateAccountLinkInvitationResult.add_member(:account_link, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountLink, location_name: 'AccountLink', traits: {"smithy.api#documentation" => "<p>Information about the account link.</p>"}))
    CreateAccountLinkInvitationResult.type = Types::CreateAccountLinkInvitationResult
    CreateConnectClientAddInRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The directory identifier for which to configure the client add-in.</p>", "smithy.api#required" => {}}))
    CreateConnectClientAddInRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AddInName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the client add-in.</p>", "smithy.api#required" => {}}))
    CreateConnectClientAddInRequest.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: AddInUrl, location_name: 'URL', traits: {"smithy.api#documentation" => "<p>The endpoint URL of the Amazon Connect client add-in.</p>", "smithy.api#required" => {}}))
    CreateConnectClientAddInRequest.type = Types::CreateConnectClientAddInRequest
    CreateConnectClientAddInResult.add_member(:add_in_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonUuid, location_name: 'AddInId', traits: {"smithy.api#documentation" => "<p>The client add-in identifier.</p>"}))
    CreateConnectClientAddInResult.type = Types::CreateConnectClientAddInResult
    CreateConnectionAliasRequest.add_member(:connection_string, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionString, location_name: 'ConnectionString', traits: {"smithy.api#documentation" => "<p>A connection string in the form of a fully qualified domain name (FQDN), such as\n            <code>www.example.com</code>.</p>\n         <important>\n            <p>After you create a connection string, it is always associated to your Amazon Web Services account. You cannot recreate the same connection string with a different\n            account, even if you delete all instances of it from the original account. The\n            connection string is globally reserved for your account.</p>\n         </important>", "smithy.api#required" => {}}))
    CreateConnectionAliasRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags to associate with the connection alias.</p>"}))
    CreateConnectionAliasRequest.type = Types::CreateConnectionAliasRequest
    CreateConnectionAliasResult.add_member(:alias_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionAliasId, location_name: 'AliasId', traits: {"smithy.api#documentation" => "<p>The identifier of the connection alias.</p>"}))
    CreateConnectionAliasResult.type = Types::CreateConnectionAliasResult
    CreateIpGroupRequest.add_member(:group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: IpGroupName, location_name: 'GroupName', traits: {"smithy.api#documentation" => "<p>The name of the group.</p>", "smithy.api#required" => {}}))
    CreateIpGroupRequest.add_member(:group_desc, Smithy::Schema::Shapes::ShapeRef.new(shape: IpGroupDesc, location_name: 'GroupDesc', traits: {"smithy.api#documentation" => "<p>The description of the group.</p>"}))
    CreateIpGroupRequest.add_member(:user_rules, Smithy::Schema::Shapes::ShapeRef.new(shape: IpRuleList, location_name: 'UserRules', traits: {"smithy.api#documentation" => "<p>The rules to add to the group.</p>"}))
    CreateIpGroupRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags. Each WorkSpaces resource can have a maximum of 50 tags.</p>"}))
    CreateIpGroupRequest.type = Types::CreateIpGroupRequest
    CreateIpGroupResult.add_member(:group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IpGroupId, location_name: 'GroupId', traits: {"smithy.api#documentation" => "<p>The identifier of the group.</p>"}))
    CreateIpGroupResult.type = Types::CreateIpGroupResult
    CreateStandbyWorkspacesRequest.add_member(:primary_region, Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'PrimaryRegion', traits: {"smithy.api#documentation" => "<p>The Region of the primary WorkSpace.</p>", "smithy.api#required" => {}}))
    CreateStandbyWorkspacesRequest.add_member(:standby_workspaces, Smithy::Schema::Shapes::ShapeRef.new(shape: StandbyWorkspacesList, location_name: 'StandbyWorkspaces', traits: {"smithy.api#documentation" => "<p>Information about the standby WorkSpace to be created.</p>", "smithy.api#required" => {}}))
    CreateStandbyWorkspacesRequest.type = Types::CreateStandbyWorkspacesRequest
    CreateStandbyWorkspacesResult.add_member(:failed_standby_requests, Smithy::Schema::Shapes::ShapeRef.new(shape: FailedCreateStandbyWorkspacesRequestList, location_name: 'FailedStandbyRequests', traits: {"smithy.api#documentation" => "<p>Information about the standby WorkSpace that could not be created. </p>"}))
    CreateStandbyWorkspacesResult.add_member(:pending_standby_requests, Smithy::Schema::Shapes::ShapeRef.new(shape: PendingCreateStandbyWorkspacesRequestList, location_name: 'PendingStandbyRequests', traits: {"smithy.api#documentation" => "<p>Information about the standby WorkSpace that was created.</p>"}))
    CreateStandbyWorkspacesResult.type = Types::CreateStandbyWorkspacesResult
    CreateTagsRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The identifier of the WorkSpaces resource. The supported resource types are WorkSpaces,\n         registered directories, images, custom bundles, IP access control groups, and connection\n         aliases.</p>", "smithy.api#required" => {}}))
    CreateTagsRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags. Each WorkSpaces resource can have a maximum of 50 tags.</p>", "smithy.api#required" => {}}))
    CreateTagsRequest.type = Types::CreateTagsRequest
    CreateTagsResult.type = Types::CreateTagsResult
    CreateUpdatedWorkspaceImageRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceImageName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the new updated WorkSpace image.</p>", "smithy.api#required" => {}}))
    CreateUpdatedWorkspaceImageRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceImageDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of whether updates for the WorkSpace image are available.</p>", "smithy.api#required" => {}}))
    CreateUpdatedWorkspaceImageRequest.add_member(:source_image_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceImageId, location_name: 'SourceImageId', traits: {"smithy.api#documentation" => "<p>The identifier of the source WorkSpace image.</p>", "smithy.api#required" => {}}))
    CreateUpdatedWorkspaceImageRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags that you want to add to the new updated WorkSpace image.</p>\n         <note>\n            <p>To add tags at the same time when you're creating the updated image, you must create\n            an IAM policy that grants your IAM user permissions to use\n               <code>workspaces:CreateTags</code>. </p>\n         </note>"}))
    CreateUpdatedWorkspaceImageRequest.type = Types::CreateUpdatedWorkspaceImageRequest
    CreateUpdatedWorkspaceImageResult.add_member(:image_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceImageId, location_name: 'ImageId', traits: {"smithy.api#documentation" => "<p>The identifier of the new updated WorkSpace image.</p>"}))
    CreateUpdatedWorkspaceImageResult.type = Types::CreateUpdatedWorkspaceImageResult
    CreateWorkspaceBundleRequest.add_member(:bundle_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceBundleName, location_name: 'BundleName', traits: {"smithy.api#documentation" => "<p>The name of the bundle.</p>", "smithy.api#required" => {}}))
    CreateWorkspaceBundleRequest.add_member(:bundle_description, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceBundleDescription, location_name: 'BundleDescription', traits: {"smithy.api#documentation" => "<p>The description of the bundle.</p>", "smithy.api#required" => {}}))
    CreateWorkspaceBundleRequest.add_member(:image_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceImageId, location_name: 'ImageId', traits: {"smithy.api#documentation" => "<p>The identifier of the image that is used to create the bundle.</p>", "smithy.api#required" => {}}))
    CreateWorkspaceBundleRequest.add_member(:compute_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeType, location_name: 'ComputeType', traits: {"smithy.api#required" => {}}))
    CreateWorkspaceBundleRequest.add_member(:user_storage, Smithy::Schema::Shapes::ShapeRef.new(shape: UserStorage, location_name: 'UserStorage', traits: {"smithy.api#required" => {}}))
    CreateWorkspaceBundleRequest.add_member(:root_storage, Smithy::Schema::Shapes::ShapeRef.new(shape: RootStorage, location_name: 'RootStorage'))
    CreateWorkspaceBundleRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags associated with the bundle.</p>\n         <note>\n            <p>To add tags at the same time when you're creating the bundle, you must create an IAM policy that \n            grants your IAM user permissions to use <code>workspaces:CreateTags</code>. </p>\n         </note>"}))
    CreateWorkspaceBundleRequest.type = Types::CreateWorkspaceBundleRequest
    CreateWorkspaceBundleResult.add_member(:workspace_bundle, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceBundle, location_name: 'WorkspaceBundle'))
    CreateWorkspaceBundleResult.type = Types::CreateWorkspaceBundleResult
    CreateWorkspaceImageRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceImageName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the new WorkSpace image.</p>", "smithy.api#required" => {}}))
    CreateWorkspaceImageRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceImageDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the new WorkSpace image.</p>", "smithy.api#required" => {}}))
    CreateWorkspaceImageRequest.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'WorkspaceId', traits: {"smithy.api#documentation" => "<p>The identifier of the source WorkSpace</p>", "smithy.api#required" => {}}))
    CreateWorkspaceImageRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags that you want to add to the new WorkSpace image. \n         To add tags when you're creating the image, you must create an IAM policy that grants \n         your IAM user permission to use <code>workspaces:CreateTags</code>.</p>"}))
    CreateWorkspaceImageRequest.type = Types::CreateWorkspaceImageRequest
    CreateWorkspaceImageResult.add_member(:image_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceImageId, location_name: 'ImageId', traits: {"smithy.api#documentation" => "<p>The identifier of the new WorkSpace image.</p>"}))
    CreateWorkspaceImageResult.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceImageName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the image.</p>"}))
    CreateWorkspaceImageResult.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceImageDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the image.</p>"}))
    CreateWorkspaceImageResult.add_member(:operating_system, Smithy::Schema::Shapes::ShapeRef.new(shape: OperatingSystem, location_name: 'OperatingSystem', traits: {"smithy.api#documentation" => "<p>The operating system that the image is running.</p>"}))
    CreateWorkspaceImageResult.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceImageState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The availability status of the image.</p>"}))
    CreateWorkspaceImageResult.add_member(:required_tenancy, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceImageRequiredTenancy, location_name: 'RequiredTenancy', traits: {"smithy.api#documentation" => "<p>Specifies whether the image is running on dedicated hardware. \n         When Bring Your Own License (BYOL) is enabled, this value is set \n         to DEDICATED. For more information, see \n         <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.htm\">\n            Bring Your Own Windows Desktop Images.</a>.</p>"}))
    CreateWorkspaceImageResult.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'Created', traits: {"smithy.api#documentation" => "<p>The date when the image was created.</p>"}))
    CreateWorkspaceImageResult.add_member(:owner_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccount, location_name: 'OwnerAccountId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Web Services account that owns the image.</p>"}))
    CreateWorkspaceImageResult.type = Types::CreateWorkspaceImageResult
    CreateWorkspacesPoolRequest.add_member(:pool_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspacesPoolName, location_name: 'PoolName', traits: {"smithy.api#documentation" => "<p>The name of the pool.</p>", "smithy.api#required" => {}}))
    CreateWorkspacesPoolRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The pool description.</p>", "smithy.api#required" => {}}))
    CreateWorkspacesPoolRequest.add_member(:bundle_id, Smithy::Schema::Shapes::ShapeRef.new(shape: BundleId, location_name: 'BundleId', traits: {"smithy.api#documentation" => "<p>The identifier of the bundle for the pool.</p>", "smithy.api#required" => {}}))
    CreateWorkspacesPoolRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the directory for the pool.</p>", "smithy.api#required" => {}}))
    CreateWorkspacesPoolRequest.add_member(:capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: Capacity, location_name: 'Capacity', traits: {"smithy.api#documentation" => "<p>The user capacity of the pool.</p>", "smithy.api#required" => {}}))
    CreateWorkspacesPoolRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags for the pool.</p>"}))
    CreateWorkspacesPoolRequest.add_member(:application_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSettingsRequest, location_name: 'ApplicationSettings', traits: {"smithy.api#documentation" => "<p>Indicates the application settings of the pool.</p>"}))
    CreateWorkspacesPoolRequest.add_member(:timeout_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeoutSettings, location_name: 'TimeoutSettings', traits: {"smithy.api#documentation" => "<p>Indicates the timeout settings of the pool.</p>"}))
    CreateWorkspacesPoolRequest.add_member(:running_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: PoolsRunningMode, location_name: 'RunningMode', traits: {"smithy.api#documentation" => "<p>The running mode for the pool.</p>"}))
    CreateWorkspacesPoolRequest.type = Types::CreateWorkspacesPoolRequest
    CreateWorkspacesPoolResult.add_member(:workspaces_pool, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspacesPool, location_name: 'WorkspacesPool', traits: {"smithy.api#documentation" => "<p>Indicates the pool to create.</p>"}))
    CreateWorkspacesPoolResult.type = Types::CreateWorkspacesPoolResult
    CreateWorkspacesRequest.add_member(:workspaces, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceRequestList, location_name: 'Workspaces', traits: {"smithy.api#documentation" => "<p>The WorkSpaces to create. You can specify up to 25 WorkSpaces.</p>", "smithy.api#required" => {}}))
    CreateWorkspacesRequest.type = Types::CreateWorkspacesRequest
    CreateWorkspacesResult.add_member(:failed_requests, Smithy::Schema::Shapes::ShapeRef.new(shape: FailedCreateWorkspaceRequests, location_name: 'FailedRequests', traits: {"smithy.api#documentation" => "<p>Information about the WorkSpaces that could not be created.</p>"}))
    CreateWorkspacesResult.add_member(:pending_requests, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceList, location_name: 'PendingRequests', traits: {"smithy.api#documentation" => "<p>Information about the WorkSpaces that were created.</p>\n         <p>Because this operation is asynchronous, the identifier returned is not immediately\n         available for use with other operations. For example, if you call <a>DescribeWorkspaces</a> before the WorkSpace is created, the information returned\n         can be incomplete.</p>"}))
    CreateWorkspacesResult.type = Types::CreateWorkspacesResult
    DataReplication.add_member(:no_replication, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NO_REPLICATION', traits: {"smithy.api#enumValue" => "NO_REPLICATION"}))
    DataReplication.add_member(:primary_as_source, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRIMARY_AS_SOURCE', traits: {"smithy.api#enumValue" => "PRIMARY_AS_SOURCE"}))
    DataReplicationSettings.add_member(:data_replication, Smithy::Schema::Shapes::ShapeRef.new(shape: DataReplication, location_name: 'DataReplication', traits: {"smithy.api#documentation" => "<p>Indicates whether data replication is enabled, and if enabled, the type of data replication.</p>"}))
    DataReplicationSettings.add_member(:recovery_snapshot_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'RecoverySnapshotTime', traits: {"smithy.api#documentation" => "<p>The date and time at which the last successful snapshot was taken of the \n         primary WorkSpace used for replicating data.</p>"}))
    DataReplicationSettings.type = Types::DataReplicationSettings
    DedicatedTenancyAccountType.add_member(:source_account, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SOURCE_ACCOUNT', traits: {"smithy.api#enumValue" => "SOURCE_ACCOUNT"}))
    DedicatedTenancyAccountType.add_member(:target_account, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TARGET_ACCOUNT', traits: {"smithy.api#enumValue" => "TARGET_ACCOUNT"}))
    DedicatedTenancyCidrRangeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DedicatedTenancyManagementCidrRange)
    DedicatedTenancyModificationStateEnum.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    DedicatedTenancyModificationStateEnum.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    DedicatedTenancyModificationStateEnum.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    DedicatedTenancySupportEnum.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    DedicatedTenancySupportResultEnum.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    DedicatedTenancySupportResultEnum.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    DefaultClientBrandingAttributes.add_member(:logo_url, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientUrl, location_name: 'LogoUrl', traits: {"smithy.api#documentation" => "<p>The logo. The only image format accepted is a binary data object that is converted from a <code>.png</code> file.</p>"}))
    DefaultClientBrandingAttributes.add_member(:support_email, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientEmail, location_name: 'SupportEmail', traits: {"smithy.api#documentation" => "<p>The support email. The company's customer support email address.</p>\n         <note>\n            <ul>\n               <li>\n                  <p>In each platform type, the <code>SupportEmail</code> and\n                     <code>SupportLink</code> parameters are mutually exclusive. You can specify one\n                  parameter for each platform type, but not both.</p>\n               </li>\n               <li>\n                  <p>The default email is <code>workspaces-feedback@amazon.com</code>.</p>\n               </li>\n            </ul>\n         </note>"}))
    DefaultClientBrandingAttributes.add_member(:support_link, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientUrl, location_name: 'SupportLink', traits: {"smithy.api#documentation" => "<p>The support link. The link for the company's customer support page for their\n         WorkSpace.</p>\n         <note>\n            <ul>\n               <li>\n                  <p>In each platform type, the <code>SupportEmail</code> and\n                     <code>SupportLink</code> parameters are mutually exclusive.You can specify one\n                  parameter for each platform type, but not both.</p>\n               </li>\n               <li>\n                  <p>The default support link is <code>workspaces-feedback@amazon.com</code>.</p>\n               </li>\n            </ul>\n         </note>"}))
    DefaultClientBrandingAttributes.add_member(:forgot_password_link, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientUrl, location_name: 'ForgotPasswordLink', traits: {"smithy.api#documentation" => "<p>The forgotten password link. This is the web address that users can go to if they forget\n         the password for their WorkSpace.</p>"}))
    DefaultClientBrandingAttributes.add_member(:login_message, Smithy::Schema::Shapes::ShapeRef.new(shape: LoginMessage, location_name: 'LoginMessage', traits: {"smithy.api#documentation" => "<p>The login message. Specified as a key value pair, in which the key is a locale and the\n         value is the localized message for that locale. The only key supported is\n         <code>en_US</code>. The HTML tags supported include the following: <code>a, b, blockquote, br, cite, code, dd, dl, dt, div, em, \n            i, li, ol, p, pre, q, small, span, strike, strong, sub, sup, u, ul</code>.</p>"}))
    DefaultClientBrandingAttributes.type = Types::DefaultClientBrandingAttributes
    DefaultImportClientBrandingAttributes.add_member(:logo, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultLogo, location_name: 'Logo', traits: {"smithy.api#documentation" => "<p>The logo. The only image format accepted is a binary data object that is converted from a <code>.png</code> file.</p>"}))
    DefaultImportClientBrandingAttributes.add_member(:support_email, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientEmail, location_name: 'SupportEmail', traits: {"smithy.api#documentation" => "<p>The support email. The company's customer support email address.</p>\n         <note>\n            <ul>\n               <li>\n                  <p>In each platform type, the <code>SupportEmail</code> and\n                     <code>SupportLink</code> parameters are mutually exclusive. You can specify one\n                  parameter for each platform type, but not both.</p>\n               </li>\n               <li>\n                  <p>The default email is <code>workspaces-feedback@amazon.com</code>.</p>\n               </li>\n            </ul>\n         </note>"}))
    DefaultImportClientBrandingAttributes.add_member(:support_link, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientUrl, location_name: 'SupportLink', traits: {"smithy.api#documentation" => "<p>The support link. The link for the company's customer support page for their\n         WorkSpace.</p>\n         <note>\n            <ul>\n               <li>\n                  <p>In each platform type, the <code>SupportEmail</code> and\n                     <code>SupportLink</code> parameters are mutually exclusive. You can specify one\n                  parameter for each platform type, but not both.</p>\n               </li>\n               <li>\n                  <p>The default support link is <code>workspaces-feedback@amazon.com</code>.</p>\n               </li>\n            </ul>\n         </note>"}))
    DefaultImportClientBrandingAttributes.add_member(:forgot_password_link, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientUrl, location_name: 'ForgotPasswordLink', traits: {"smithy.api#documentation" => "<p>The forgotten password link. This is the web address that users can go to if they forget\n         the password for their WorkSpace.</p>"}))
    DefaultImportClientBrandingAttributes.add_member(:login_message, Smithy::Schema::Shapes::ShapeRef.new(shape: LoginMessage, location_name: 'LoginMessage', traits: {"smithy.api#documentation" => "<p>The login message. Specified as a key value pair, in which the key is a locale and the\n         value is the localized message for that locale. The only key supported is\n         <code>en_US</code>. The HTML tags supported include the following: <code>a, b, blockquote, br, cite, code, dd, dl, dt, div, em, \n            i, li, ol, p, pre, q, small, span, strike, strong, sub, sup, u, ul</code>.</p>"}))
    DefaultImportClientBrandingAttributes.type = Types::DefaultImportClientBrandingAttributes
    DefaultWorkspaceCreationProperties.add_member(:enable_internet_access, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'EnableInternetAccess', traits: {"smithy.api#documentation" => "<p>Specifies whether to automatically assign an Elastic public IP address to WorkSpaces in\n         this directory by default. If enabled, the Elastic public IP address allows outbound\n         internet access from your WorkSpaces when you’re using an internet gateway in the Amazon\n         VPC in which your WorkSpaces are located. If you're using a Network Address Translation\n         (NAT) gateway for outbound internet access from your VPC, or if your WorkSpaces are in\n         public subnets and you manually assign them Elastic IP addresses, you should disable this\n         setting. This setting applies to new WorkSpaces that you launch or to existing WorkSpaces\n         that you rebuild. For more information, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/amazon-workspaces-vpc.html\"> Configure a VPC for\n            Amazon WorkSpaces</a>.</p>"}))
    DefaultWorkspaceCreationProperties.add_member(:default_ou, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultOu, location_name: 'DefaultOu', traits: {"smithy.api#documentation" => "<p>The organizational unit (OU) in the directory for the WorkSpace machine accounts.</p>"}))
    DefaultWorkspaceCreationProperties.add_member(:custom_security_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupId, location_name: 'CustomSecurityGroupId', traits: {"smithy.api#documentation" => "<p>The identifier of the default security group to apply to WorkSpaces when they are\n         created. For more information, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/amazon-workspaces-security-groups.html\"> Security\n            Groups for Your WorkSpaces</a>.</p>"}))
    DefaultWorkspaceCreationProperties.add_member(:user_enabled_as_local_administrator, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'UserEnabledAsLocalAdministrator', traits: {"smithy.api#documentation" => "<p>Specifies whether WorkSpace users are local administrators on their WorkSpaces.</p>"}))
    DefaultWorkspaceCreationProperties.add_member(:enable_maintenance_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'EnableMaintenanceMode', traits: {"smithy.api#documentation" => "<p>Specifies whether maintenance mode is enabled for WorkSpaces. For more information, see\n            <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/workspace-maintenance.html\">WorkSpace\n            Maintenance</a>.</p>"}))
    DefaultWorkspaceCreationProperties.add_member(:instance_iam_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'InstanceIamRoleArn', traits: {"smithy.api#documentation" => "<p>Indicates the IAM role ARN of the instance.</p>"}))
    DefaultWorkspaceCreationProperties.type = Types::DefaultWorkspaceCreationProperties
    DeletableCertificateBasedAuthPropertiesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletableCertificateBasedAuthProperty)
    DeletableCertificateBasedAuthProperty.add_member(:certificate_based_auth_properties_certificate_authority_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CERTIFICATE_BASED_AUTH_PROPERTIES_CERTIFICATE_AUTHORITY_ARN', traits: {"smithy.api#enumValue" => "CERTIFICATE_BASED_AUTH_PROPERTIES_CERTIFICATE_AUTHORITY_ARN"}))
    DeletableSamlPropertiesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletableSamlProperty)
    DeletableSamlProperty.add_member(:saml_properties_user_access_url, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SAML_PROPERTIES_USER_ACCESS_URL', traits: {"smithy.api#enumValue" => "SAML_PROPERTIES_USER_ACCESS_URL"}))
    DeletableSamlProperty.add_member(:saml_properties_relay_state_parameter_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SAML_PROPERTIES_RELAY_STATE_PARAMETER_NAME', traits: {"smithy.api#enumValue" => "SAML_PROPERTIES_RELAY_STATE_PARAMETER_NAME"}))
    DeleteAccountLinkInvitationRequest.add_member(:link_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkId, location_name: 'LinkId', traits: {"smithy.api#documentation" => "<p>The identifier of the account link.</p>", "smithy.api#required" => {}}))
    DeleteAccountLinkInvitationRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>A string of up to 64 ASCII characters that Amazon WorkSpaces uses to ensure idempotent creation.</p>"}))
    DeleteAccountLinkInvitationRequest.type = Types::DeleteAccountLinkInvitationRequest
    DeleteAccountLinkInvitationResult.add_member(:account_link, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountLink, location_name: 'AccountLink', traits: {"smithy.api#documentation" => "<p>Information about the account link.</p>"}))
    DeleteAccountLinkInvitationResult.type = Types::DeleteAccountLinkInvitationResult
    DeleteClientBrandingRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The directory identifier of the WorkSpace for which you want to delete client\n         branding.</p>", "smithy.api#required" => {}}))
    DeleteClientBrandingRequest.add_member(:platforms, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientDeviceTypeList, location_name: 'Platforms', traits: {"smithy.api#documentation" => "<p>The device type for which you want to delete client branding.</p>", "smithy.api#required" => {}}))
    DeleteClientBrandingRequest.type = Types::DeleteClientBrandingRequest
    DeleteClientBrandingResult.type = Types::DeleteClientBrandingResult
    DeleteConnectClientAddInRequest.add_member(:add_in_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonUuid, location_name: 'AddInId', traits: {"smithy.api#documentation" => "<p>The identifier of the client add-in to delete.</p>", "smithy.api#required" => {}}))
    DeleteConnectClientAddInRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The directory identifier for which the client add-in is configured.</p>", "smithy.api#required" => {}}))
    DeleteConnectClientAddInRequest.type = Types::DeleteConnectClientAddInRequest
    DeleteConnectClientAddInResult.type = Types::DeleteConnectClientAddInResult
    DeleteConnectionAliasRequest.add_member(:alias_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionAliasId, location_name: 'AliasId', traits: {"smithy.api#documentation" => "<p>The identifier of the connection alias to delete.</p>", "smithy.api#required" => {}}))
    DeleteConnectionAliasRequest.type = Types::DeleteConnectionAliasRequest
    DeleteConnectionAliasResult.type = Types::DeleteConnectionAliasResult
    DeleteIpGroupRequest.add_member(:group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IpGroupId, location_name: 'GroupId', traits: {"smithy.api#documentation" => "<p>The identifier of the IP access control group.</p>", "smithy.api#required" => {}}))
    DeleteIpGroupRequest.type = Types::DeleteIpGroupRequest
    DeleteIpGroupResult.type = Types::DeleteIpGroupResult
    DeleteTagsRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The identifier of the WorkSpaces resource. The supported resource types are WorkSpaces,\n         registered directories, images, custom bundles, IP access control groups, and connection\n         aliases.</p>", "smithy.api#required" => {}}))
    DeleteTagsRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>The tag keys.</p>", "smithy.api#required" => {}}))
    DeleteTagsRequest.type = Types::DeleteTagsRequest
    DeleteTagsResult.type = Types::DeleteTagsResult
    DeleteWorkspaceBundleRequest.add_member(:bundle_id, Smithy::Schema::Shapes::ShapeRef.new(shape: BundleId, location_name: 'BundleId', traits: {"smithy.api#documentation" => "<p>The identifier of the bundle.</p>"}))
    DeleteWorkspaceBundleRequest.type = Types::DeleteWorkspaceBundleRequest
    DeleteWorkspaceBundleResult.type = Types::DeleteWorkspaceBundleResult
    DeleteWorkspaceImageRequest.add_member(:image_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceImageId, location_name: 'ImageId', traits: {"smithy.api#documentation" => "<p>The identifier of the image.</p>", "smithy.api#required" => {}}))
    DeleteWorkspaceImageRequest.type = Types::DeleteWorkspaceImageRequest
    DeleteWorkspaceImageResult.type = Types::DeleteWorkspaceImageResult
    DeployWorkspaceApplicationsRequest.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'WorkspaceId', traits: {"smithy.api#documentation" => "<p>The identifier of the WorkSpace.</p>", "smithy.api#required" => {}}))
    DeployWorkspaceApplicationsRequest.add_member(:force, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'Force', traits: {"smithy.api#documentation" => "<p>Indicates whether the force flag is applied for the specified WorkSpace. When the force flag is enabled, \n         it allows previously failed deployments to be retried.</p>"}))
    DeployWorkspaceApplicationsRequest.type = Types::DeployWorkspaceApplicationsRequest
    DeployWorkspaceApplicationsResult.add_member(:deployment, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkSpaceApplicationDeployment, location_name: 'Deployment', traits: {"smithy.api#documentation" => "<p>The list of deployed associations and information about them.</p>"}))
    DeployWorkspaceApplicationsResult.type = Types::DeployWorkspaceApplicationsResult
    DeregisterWorkspaceDirectoryRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the directory. If any WorkSpaces are registered to this directory, you\n         must remove them before you deregister the directory, or you will receive an\n         OperationNotSupportedException error.</p>", "smithy.api#required" => {}}))
    DeregisterWorkspaceDirectoryRequest.type = Types::DeregisterWorkspaceDirectoryRequest
    DeregisterWorkspaceDirectoryResult.type = Types::DeregisterWorkspaceDirectoryResult
    DescribeAccountModificationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If you received a <code>NextToken</code> from a previous call that was paginated,\n         provide this token to receive the next set of results.</p>"}))
    DescribeAccountModificationsRequest.type = Types::DescribeAccountModificationsRequest
    DescribeAccountModificationsResult.add_member(:account_modifications, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountModificationList, location_name: 'AccountModifications', traits: {"smithy.api#documentation" => "<p>The list of modifications to the configuration of BYOL.</p>"}))
    DescribeAccountModificationsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to use to retrieve the next page of results. This value is null when there are\n         no more results to return. </p>"}))
    DescribeAccountModificationsResult.type = Types::DescribeAccountModificationsResult
    DescribeAccountRequest.type = Types::DescribeAccountRequest
    DescribeAccountResult.add_member(:dedicated_tenancy_support, Smithy::Schema::Shapes::ShapeRef.new(shape: DedicatedTenancySupportResultEnum, location_name: 'DedicatedTenancySupport', traits: {"smithy.api#documentation" => "<p>The status of BYOL (whether BYOL is enabled or disabled).</p>"}))
    DescribeAccountResult.add_member(:dedicated_tenancy_management_cidr_range, Smithy::Schema::Shapes::ShapeRef.new(shape: DedicatedTenancyManagementCidrRange, location_name: 'DedicatedTenancyManagementCidrRange', traits: {"smithy.api#documentation" => "<p>The IP address range, specified as an IPv4 CIDR block, used for the management network\n         interface.</p>\n         <p>The management network interface is connected to a secure Amazon WorkSpaces management\n         network. It is used for interactive streaming of the WorkSpace desktop to Amazon WorkSpaces\n         clients, and to allow Amazon WorkSpaces to manage the WorkSpace.</p>"}))
    DescribeAccountResult.add_member(:dedicated_tenancy_account_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DedicatedTenancyAccountType, location_name: 'DedicatedTenancyAccountType', traits: {"smithy.api#documentation" => "<p>The type of linked account.</p>"}))
    DescribeAccountResult.type = Types::DescribeAccountResult
    DescribeApplicationAssociationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Limit, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of associations to return.</p>"}))
    DescribeApplicationAssociationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If you received a <code>NextToken</code> from a previous call that was paginated, provide this token to receive the next set of results.</p>"}))
    DescribeApplicationAssociationsRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkSpaceApplicationId, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the specified application.</p>", "smithy.api#required" => {}}))
    DescribeApplicationAssociationsRequest.add_member(:associated_resource_types, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationAssociatedResourceTypeList, location_name: 'AssociatedResourceTypes', traits: {"smithy.api#documentation" => "<p>The resource type of the associated resources.</p>", "smithy.api#required" => {}}))
    DescribeApplicationAssociationsRequest.type = Types::DescribeApplicationAssociationsRequest
    DescribeApplicationAssociationsResult.add_member(:associations, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationResourceAssociationList, location_name: 'Associations', traits: {"smithy.api#documentation" => "<p>List of associations and information about them.</p>"}))
    DescribeApplicationAssociationsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If you received a <code>NextToken</code> from a previous call that was paginated, provide this token to receive the next set of results.</p>"}))
    DescribeApplicationAssociationsResult.type = Types::DescribeApplicationAssociationsResult
    DescribeApplicationsRequest.add_member(:application_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkSpaceApplicationIdList, location_name: 'ApplicationIds', traits: {"smithy.api#documentation" => "<p>The identifiers of one or more applications.</p>"}))
    DescribeApplicationsRequest.add_member(:compute_type_names, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeList, location_name: 'ComputeTypeNames', traits: {"smithy.api#documentation" => "<p>The compute types supported by the applications.</p>"}))
    DescribeApplicationsRequest.add_member(:license_type, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkSpaceApplicationLicenseType, location_name: 'LicenseType', traits: {"smithy.api#documentation" => "<p>The license availability for the applications.</p>"}))
    DescribeApplicationsRequest.add_member(:operating_system_names, Smithy::Schema::Shapes::ShapeRef.new(shape: OperatingSystemNameList, location_name: 'OperatingSystemNames', traits: {"smithy.api#documentation" => "<p>The operating systems supported by the applications.</p>"}))
    DescribeApplicationsRequest.add_member(:owner, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkSpaceApplicationOwner, location_name: 'Owner', traits: {"smithy.api#documentation" => "<p>The owner of the applications.</p>"}))
    DescribeApplicationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Limit, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of applications to return.</p>"}))
    DescribeApplicationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If you received a <code>NextToken</code> from a previous call that was paginated, provide this token to receive the next set of results.</p>"}))
    DescribeApplicationsRequest.type = Types::DescribeApplicationsRequest
    DescribeApplicationsResult.add_member(:applications, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkSpaceApplicationList, location_name: 'Applications', traits: {"smithy.api#documentation" => "<p>List of information about the specified applications.</p>"}))
    DescribeApplicationsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If you received a <code>NextToken</code> from a previous call that was paginated, provide this token to receive the next set of results.</p>"}))
    DescribeApplicationsResult.type = Types::DescribeApplicationsResult
    DescribeBundleAssociationsRequest.add_member(:bundle_id, Smithy::Schema::Shapes::ShapeRef.new(shape: BundleId, location_name: 'BundleId', traits: {"smithy.api#documentation" => "<p>The identifier of the bundle.</p>", "smithy.api#required" => {}}))
    DescribeBundleAssociationsRequest.add_member(:associated_resource_types, Smithy::Schema::Shapes::ShapeRef.new(shape: BundleAssociatedResourceTypeList, location_name: 'AssociatedResourceTypes', traits: {"smithy.api#documentation" => "<p>The resource types of the associated resource.</p>", "smithy.api#required" => {}}))
    DescribeBundleAssociationsRequest.type = Types::DescribeBundleAssociationsRequest
    DescribeBundleAssociationsResult.add_member(:associations, Smithy::Schema::Shapes::ShapeRef.new(shape: BundleResourceAssociationList, location_name: 'Associations', traits: {"smithy.api#documentation" => "<p>List of information about the specified associations.</p>"}))
    DescribeBundleAssociationsResult.type = Types::DescribeBundleAssociationsResult
    DescribeClientBrandingRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The directory identifier of the WorkSpace for which you want to view client branding\n         information.</p>", "smithy.api#required" => {}}))
    DescribeClientBrandingRequest.type = Types::DescribeClientBrandingRequest
    DescribeClientBrandingResult.add_member(:device_type_windows, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultClientBrandingAttributes, location_name: 'DeviceTypeWindows', traits: {"smithy.api#documentation" => "<p>The branding information for Windows devices.</p>"}))
    DescribeClientBrandingResult.add_member(:device_type_osx, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultClientBrandingAttributes, location_name: 'DeviceTypeOsx', traits: {"smithy.api#documentation" => "<p>The branding information for macOS devices.</p>"}))
    DescribeClientBrandingResult.add_member(:device_type_android, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultClientBrandingAttributes, location_name: 'DeviceTypeAndroid', traits: {"smithy.api#documentation" => "<p>The branding information for Android devices.</p>"}))
    DescribeClientBrandingResult.add_member(:device_type_ios, Smithy::Schema::Shapes::ShapeRef.new(shape: IosClientBrandingAttributes, location_name: 'DeviceTypeIos', traits: {"smithy.api#documentation" => "<p>The branding information for iOS devices.</p>"}))
    DescribeClientBrandingResult.add_member(:device_type_linux, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultClientBrandingAttributes, location_name: 'DeviceTypeLinux', traits: {"smithy.api#documentation" => "<p>The branding information for Linux devices.</p>"}))
    DescribeClientBrandingResult.add_member(:device_type_web, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultClientBrandingAttributes, location_name: 'DeviceTypeWeb', traits: {"smithy.api#documentation" => "<p>The branding information for Web access.</p>"}))
    DescribeClientBrandingResult.type = Types::DescribeClientBrandingResult
    DescribeClientPropertiesRequest.add_member(:resource_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdList, location_name: 'ResourceIds', traits: {"smithy.api#documentation" => "<p>The resource identifier, in the form of directory IDs.</p>", "smithy.api#required" => {}}))
    DescribeClientPropertiesRequest.type = Types::DescribeClientPropertiesRequest
    DescribeClientPropertiesResult.add_member(:client_properties_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientPropertiesList, location_name: 'ClientPropertiesList', traits: {"smithy.api#documentation" => "<p>Information about the specified Amazon WorkSpaces clients.</p>"}))
    DescribeClientPropertiesResult.type = Types::DescribeClientPropertiesResult
    DescribeConnectClientAddInsRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The directory identifier for which the client add-in is configured.</p>", "smithy.api#required" => {}}))
    DescribeConnectClientAddInsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If you received a <code>NextToken</code> from a previous call that was paginated,\n         provide this token to receive the next set of results.</p>"}))
    DescribeConnectClientAddInsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Limit, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of items to return.</p>"}))
    DescribeConnectClientAddInsRequest.type = Types::DescribeConnectClientAddInsRequest
    DescribeConnectClientAddInsResult.add_member(:add_ins, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectClientAddInList, location_name: 'AddIns', traits: {"smithy.api#documentation" => "<p>Information about client add-ins.</p>"}))
    DescribeConnectClientAddInsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to use to retrieve the next page of results. This value is null when there are\n         no more results to return. </p>"}))
    DescribeConnectClientAddInsResult.type = Types::DescribeConnectClientAddInsResult
    DescribeConnectionAliasPermissionsRequest.add_member(:alias_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionAliasId, location_name: 'AliasId', traits: {"smithy.api#documentation" => "<p>The identifier of the connection alias.</p>", "smithy.api#required" => {}}))
    DescribeConnectionAliasPermissionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If you received a <code>NextToken</code> from a previous call that was paginated,\n         provide this token to receive the next set of results. </p>"}))
    DescribeConnectionAliasPermissionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Limit, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return.</p>"}))
    DescribeConnectionAliasPermissionsRequest.type = Types::DescribeConnectionAliasPermissionsRequest
    DescribeConnectionAliasPermissionsResult.add_member(:alias_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionAliasId, location_name: 'AliasId', traits: {"smithy.api#documentation" => "<p>The identifier of the connection alias.</p>"}))
    DescribeConnectionAliasPermissionsResult.add_member(:connection_alias_permissions, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionAliasPermissions, location_name: 'ConnectionAliasPermissions', traits: {"smithy.api#documentation" => "<p>The permissions associated with a connection alias.</p>"}))
    DescribeConnectionAliasPermissionsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to use to retrieve the next page of results. This value is null when there are\n         no more results to return. </p>"}))
    DescribeConnectionAliasPermissionsResult.type = Types::DescribeConnectionAliasPermissionsResult
    DescribeConnectionAliasesRequest.add_member(:alias_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionAliasIdList, location_name: 'AliasIds', traits: {"smithy.api#documentation" => "<p>The identifiers of the connection aliases to describe.</p>"}))
    DescribeConnectionAliasesRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The identifier of the directory associated with the connection alias.</p>"}))
    DescribeConnectionAliasesRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: Limit, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>The maximum number of connection aliases to return.</p>"}))
    DescribeConnectionAliasesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If you received a <code>NextToken</code> from a previous call that was paginated,\n         provide this token to receive the next set of results. </p>"}))
    DescribeConnectionAliasesRequest.type = Types::DescribeConnectionAliasesRequest
    DescribeConnectionAliasesResult.add_member(:connection_aliases, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionAliasList, location_name: 'ConnectionAliases', traits: {"smithy.api#documentation" => "<p>Information about the specified connection aliases.</p>"}))
    DescribeConnectionAliasesResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to use to retrieve the next page of results. This value is null when there are\n         no more results to return. </p>"}))
    DescribeConnectionAliasesResult.type = Types::DescribeConnectionAliasesResult
    DescribeImageAssociationsRequest.add_member(:image_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceImageId, location_name: 'ImageId', traits: {"smithy.api#documentation" => "<p>The identifier of the image.</p>", "smithy.api#required" => {}}))
    DescribeImageAssociationsRequest.add_member(:associated_resource_types, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageAssociatedResourceTypeList, location_name: 'AssociatedResourceTypes', traits: {"smithy.api#documentation" => "<p>The resource types of the associated resource.</p>", "smithy.api#required" => {}}))
    DescribeImageAssociationsRequest.type = Types::DescribeImageAssociationsRequest
    DescribeImageAssociationsResult.add_member(:associations, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageResourceAssociationList, location_name: 'Associations', traits: {"smithy.api#documentation" => "<p>List of information about the specified associations.</p>"}))
    DescribeImageAssociationsResult.type = Types::DescribeImageAssociationsResult
    DescribeIpGroupsRequest.add_member(:group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: IpGroupIdList, location_name: 'GroupIds', traits: {"smithy.api#documentation" => "<p>The identifiers of one or more IP access control groups.</p>"}))
    DescribeIpGroupsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If you received a <code>NextToken</code> from a previous call that was paginated,\n         provide this token to receive the next set of results.</p>"}))
    DescribeIpGroupsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Limit, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of items to return.</p>"}))
    DescribeIpGroupsRequest.type = Types::DescribeIpGroupsRequest
    DescribeIpGroupsResult.add_member(:result, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspacesIpGroupsList, location_name: 'Result', traits: {"smithy.api#documentation" => "<p>Information about the IP access control groups.</p>"}))
    DescribeIpGroupsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to use to retrieve the next page of results. This value is null when there are\n         no more results to return. </p>"}))
    DescribeIpGroupsResult.type = Types::DescribeIpGroupsResult
    DescribeTagsRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The identifier of the WorkSpaces resource. The supported resource types are WorkSpaces,\n         registered directories, images, custom bundles, IP access control groups, and connection\n         aliases.</p>", "smithy.api#required" => {}}))
    DescribeTagsRequest.type = Types::DescribeTagsRequest
    DescribeTagsResult.add_member(:tag_list, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'TagList', traits: {"smithy.api#documentation" => "<p>The tags.</p>"}))
    DescribeTagsResult.type = Types::DescribeTagsResult
    DescribeWorkspaceAssociationsRequest.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'WorkspaceId', traits: {"smithy.api#documentation" => "<p>The identifier of the WorkSpace.</p>", "smithy.api#required" => {}}))
    DescribeWorkspaceAssociationsRequest.add_member(:associated_resource_types, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkSpaceAssociatedResourceTypeList, location_name: 'AssociatedResourceTypes', traits: {"smithy.api#documentation" => "<p>The resource types of the associated resources.</p>", "smithy.api#required" => {}}))
    DescribeWorkspaceAssociationsRequest.type = Types::DescribeWorkspaceAssociationsRequest
    DescribeWorkspaceAssociationsResult.add_member(:associations, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceResourceAssociationList, location_name: 'Associations', traits: {"smithy.api#documentation" => "<p>List of information about the specified associations.</p>"}))
    DescribeWorkspaceAssociationsResult.type = Types::DescribeWorkspaceAssociationsResult
    DescribeWorkspaceBundlesRequest.add_member(:bundle_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: BundleIdList, location_name: 'BundleIds', traits: {"smithy.api#documentation" => "<p>The identifiers of the bundles. You cannot combine this parameter with any other filter.</p>"}))
    DescribeWorkspaceBundlesRequest.add_member(:owner, Smithy::Schema::Shapes::ShapeRef.new(shape: BundleOwner, location_name: 'Owner', traits: {"smithy.api#documentation" => "<p>The owner of the bundles. You cannot combine this parameter with any other filter.</p>\n         <p>To describe the bundles provided by Amazon Web Services, specify <code>AMAZON</code>. \n         To describe the bundles that belong to your account, don't specify a value.</p>"}))
    DescribeWorkspaceBundlesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. (You received this token from a previous call.)</p>"}))
    DescribeWorkspaceBundlesRequest.type = Types::DescribeWorkspaceBundlesRequest
    DescribeWorkspaceBundlesResult.add_member(:bundles, Smithy::Schema::Shapes::ShapeRef.new(shape: BundleList, location_name: 'Bundles', traits: {"smithy.api#documentation" => "<p>Information about the bundles.</p>"}))
    DescribeWorkspaceBundlesResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to use to retrieve the next page of results. This value is null when there are no more \n         results to return. This token is valid for one day and must be used within that time\n         frame.</p>"}))
    DescribeWorkspaceBundlesResult.type = Types::DescribeWorkspaceBundlesResult
    DescribeWorkspaceDirectoriesFilter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkspaceDirectoriesFilterName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the WorkSpaces to filter.</p>", "smithy.api#required" => {}}))
    DescribeWorkspaceDirectoriesFilter.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkspaceDirectoriesFilterValues, location_name: 'Values', traits: {"smithy.api#documentation" => "<p>The values for filtering WorkSpaces</p>", "smithy.api#required" => {}}))
    DescribeWorkspaceDirectoriesFilter.type = Types::DescribeWorkspaceDirectoriesFilter
    DescribeWorkspaceDirectoriesFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkspaceDirectoriesFilter)
    DescribeWorkspaceDirectoriesFilterName.add_member(:user_identity_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USER_IDENTITY_TYPE', traits: {"smithy.api#enumValue" => "USER_IDENTITY_TYPE"}))
    DescribeWorkspaceDirectoriesFilterName.add_member(:workspace_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WORKSPACE_TYPE', traits: {"smithy.api#enumValue" => "WORKSPACE_TYPE"}))
    DescribeWorkspaceDirectoriesFilterValues.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkspaceDirectoriesFilterValue)
    DescribeWorkspaceDirectoriesRequest.add_member(:directory_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryIdList, location_name: 'DirectoryIds', traits: {"smithy.api#documentation" => "<p>The identifiers of the directories. If the value is null, all directories are\n         retrieved.</p>"}))
    DescribeWorkspaceDirectoriesRequest.add_member(:workspace_directory_names, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceDirectoryNameList, location_name: 'WorkspaceDirectoryNames', traits: {"smithy.api#documentation" => "<p>The names of the WorkSpace directories.</p>"}))
    DescribeWorkspaceDirectoriesRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: Limit, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>The maximum number of directories to return.</p>"}))
    DescribeWorkspaceDirectoriesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If you received a <code>NextToken</code> from a previous call that was paginated,\n         provide this token to receive the next set of results.</p>"}))
    DescribeWorkspaceDirectoriesRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkspaceDirectoriesFilterList, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>The filter condition for the WorkSpaces.</p>"}))
    DescribeWorkspaceDirectoriesRequest.type = Types::DescribeWorkspaceDirectoriesRequest
    DescribeWorkspaceDirectoriesResult.add_member(:directories, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryList, location_name: 'Directories', traits: {"smithy.api#documentation" => "<p>Information about the directories.</p>"}))
    DescribeWorkspaceDirectoriesResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to use to retrieve the next page of results. This value is null when there are\n         no more results to return. </p>"}))
    DescribeWorkspaceDirectoriesResult.type = Types::DescribeWorkspaceDirectoriesResult
    DescribeWorkspaceImagePermissionsRequest.add_member(:image_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceImageId, location_name: 'ImageId', traits: {"smithy.api#documentation" => "<p>The identifier of the image.</p>", "smithy.api#required" => {}}))
    DescribeWorkspaceImagePermissionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If you received a <code>NextToken</code> from a previous call that was paginated,\n         provide this token to receive the next set of results.</p>"}))
    DescribeWorkspaceImagePermissionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Limit, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of items to return.</p>"}))
    DescribeWorkspaceImagePermissionsRequest.type = Types::DescribeWorkspaceImagePermissionsRequest
    DescribeWorkspaceImagePermissionsResult.add_member(:image_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceImageId, location_name: 'ImageId', traits: {"smithy.api#documentation" => "<p>The identifier of the image.</p>"}))
    DescribeWorkspaceImagePermissionsResult.add_member(:image_permissions, Smithy::Schema::Shapes::ShapeRef.new(shape: ImagePermissions, location_name: 'ImagePermissions', traits: {"smithy.api#documentation" => "<p>The identifiers of the Amazon Web Services accounts that the image has been shared\n         with.</p>"}))
    DescribeWorkspaceImagePermissionsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to use to retrieve the next page of results. This value is null when there are\n         no more results to return. </p>"}))
    DescribeWorkspaceImagePermissionsResult.type = Types::DescribeWorkspaceImagePermissionsResult
    DescribeWorkspaceImagesRequest.add_member(:image_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceImageIdList, location_name: 'ImageIds', traits: {"smithy.api#documentation" => "<p>The identifier of the image.</p>"}))
    DescribeWorkspaceImagesRequest.add_member(:image_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageType, location_name: 'ImageType', traits: {"smithy.api#documentation" => "<p>The type (owned or shared) of the image.</p>"}))
    DescribeWorkspaceImagesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If you received a <code>NextToken</code> from a previous call that was paginated,\n         provide this token to receive the next set of results.</p>"}))
    DescribeWorkspaceImagesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Limit, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of items to return.</p>"}))
    DescribeWorkspaceImagesRequest.type = Types::DescribeWorkspaceImagesRequest
    DescribeWorkspaceImagesResult.add_member(:images, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceImageList, location_name: 'Images', traits: {"smithy.api#documentation" => "<p>Information about the images.</p>"}))
    DescribeWorkspaceImagesResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to use to retrieve the next page of results. This value is null when there are\n         no more results to return. </p>"}))
    DescribeWorkspaceImagesResult.type = Types::DescribeWorkspaceImagesResult
    DescribeWorkspaceSnapshotsRequest.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'WorkspaceId', traits: {"smithy.api#documentation" => "<p>The identifier of the WorkSpace.</p>", "smithy.api#required" => {}}))
    DescribeWorkspaceSnapshotsRequest.type = Types::DescribeWorkspaceSnapshotsRequest
    DescribeWorkspaceSnapshotsResult.add_member(:rebuild_snapshots, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotList, location_name: 'RebuildSnapshots', traits: {"smithy.api#documentation" => "<p>Information about the snapshots that can be used to rebuild a WorkSpace. These snapshots\n         include the user volume.</p>"}))
    DescribeWorkspaceSnapshotsResult.add_member(:restore_snapshots, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotList, location_name: 'RestoreSnapshots', traits: {"smithy.api#documentation" => "<p>Information about the snapshots that can be used to restore a WorkSpace. These snapshots\n         include both the root volume and the user volume.</p>"}))
    DescribeWorkspaceSnapshotsResult.type = Types::DescribeWorkspaceSnapshotsResult
    DescribeWorkspacesConnectionStatusRequest.add_member(:workspace_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceIdList, location_name: 'WorkspaceIds', traits: {"smithy.api#documentation" => "<p>The identifiers of the WorkSpaces. You can specify up to 25 WorkSpaces.</p>"}))
    DescribeWorkspacesConnectionStatusRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If you received a <code>NextToken</code> from a previous call that was paginated,\n         provide this token to receive the next set of results.</p>"}))
    DescribeWorkspacesConnectionStatusRequest.type = Types::DescribeWorkspacesConnectionStatusRequest
    DescribeWorkspacesConnectionStatusResult.add_member(:workspaces_connection_status, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceConnectionStatusList, location_name: 'WorkspacesConnectionStatus', traits: {"smithy.api#documentation" => "<p>Information about the connection status of the WorkSpace.</p>"}))
    DescribeWorkspacesConnectionStatusResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to use to retrieve the next page of results. This value is null when there are\n         no more results to return. </p>"}))
    DescribeWorkspacesConnectionStatusResult.type = Types::DescribeWorkspacesConnectionStatusResult
    DescribeWorkspacesPoolSessionsRequest.add_member(:pool_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspacesPoolId, location_name: 'PoolId', traits: {"smithy.api#documentation" => "<p>The identifier of the pool.</p>", "smithy.api#required" => {}}))
    DescribeWorkspacesPoolSessionsRequest.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspacesPoolUserId, location_name: 'UserId', traits: {"smithy.api#documentation" => "<p>The identifier of the user.</p>"}))
    DescribeWorkspacesPoolSessionsRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: Limit50, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>The maximum size of each page of results. The default value is 20 and the maximum value\n         is 50.</p>"}))
    DescribeWorkspacesPoolSessionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If you received a <code>NextToken</code> from a previous call that was paginated, \n         provide this token to receive the next set of results.</p>"}))
    DescribeWorkspacesPoolSessionsRequest.type = Types::DescribeWorkspacesPoolSessionsRequest
    DescribeWorkspacesPoolSessionsResult.add_member(:sessions, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspacesPoolSessions, location_name: 'Sessions', traits: {"smithy.api#documentation" => "<p>Describes the pool sessions.</p>"}))
    DescribeWorkspacesPoolSessionsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If you received a <code>NextToken</code> from a previous call that was paginated, \n         provide this token to receive the next set of results.</p>"}))
    DescribeWorkspacesPoolSessionsResult.type = Types::DescribeWorkspacesPoolSessionsResult
    DescribeWorkspacesPoolsFilter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkspacesPoolsFilterName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the pool to filter.</p>", "smithy.api#required" => {}}))
    DescribeWorkspacesPoolsFilter.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkspacesPoolsFilterValues, location_name: 'Values', traits: {"smithy.api#documentation" => "<p>The values for filtering WorkSpaces Pools.</p>", "smithy.api#required" => {}}))
    DescribeWorkspacesPoolsFilter.add_member(:operator, Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkspacesPoolsFilterOperator, location_name: 'Operator', traits: {"smithy.api#documentation" => "<p>The operator values for filtering WorkSpaces Pools.</p>", "smithy.api#required" => {}}))
    DescribeWorkspacesPoolsFilter.type = Types::DescribeWorkspacesPoolsFilter
    DescribeWorkspacesPoolsFilterName.add_member(:poolname, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POOLNAME', traits: {"smithy.api#enumValue" => "PoolName"}))
    DescribeWorkspacesPoolsFilterOperator.add_member(:equals, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EQUALS', traits: {"smithy.api#enumValue" => "EQUALS"}))
    DescribeWorkspacesPoolsFilterOperator.add_member(:notequals, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOTEQUALS', traits: {"smithy.api#enumValue" => "NOTEQUALS"}))
    DescribeWorkspacesPoolsFilterOperator.add_member(:contains, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTAINS', traits: {"smithy.api#enumValue" => "CONTAINS"}))
    DescribeWorkspacesPoolsFilterOperator.add_member(:notcontains, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOTCONTAINS', traits: {"smithy.api#enumValue" => "NOTCONTAINS"}))
    DescribeWorkspacesPoolsFilterValues.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkspacesPoolsFilterValue)
    DescribeWorkspacesPoolsFilters.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkspacesPoolsFilter)
    DescribeWorkspacesPoolsRequest.add_member(:pool_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspacesPoolIds, location_name: 'PoolIds', traits: {"smithy.api#documentation" => "<p>The identifier of the WorkSpaces Pools.</p>"}))
    DescribeWorkspacesPoolsRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkspacesPoolsFilters, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>The filter conditions for the WorkSpaces Pool to return.</p>"}))
    DescribeWorkspacesPoolsRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: Limit, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>The maximum number of items to return.</p>"}))
    DescribeWorkspacesPoolsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If you received a <code>NextToken</code> from a previous call that was paginated, \n         provide this token to receive the next set of results.</p>"}))
    DescribeWorkspacesPoolsRequest.type = Types::DescribeWorkspacesPoolsRequest
    DescribeWorkspacesPoolsResult.add_member(:workspaces_pools, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspacesPools, location_name: 'WorkspacesPools', traits: {"smithy.api#documentation" => "<p>Information about the WorkSpaces Pools.</p>"}))
    DescribeWorkspacesPoolsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If you received a <code>NextToken</code> from a previous call that was paginated, \n         provide this token to receive the next set of results.</p>"}))
    DescribeWorkspacesPoolsResult.type = Types::DescribeWorkspacesPoolsResult
    DescribeWorkspacesRequest.add_member(:workspace_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceIdList, location_name: 'WorkspaceIds', traits: {"smithy.api#documentation" => "<p>The identifiers of the WorkSpaces. You cannot combine this parameter with any other\n         filter.</p>\n         <p>Because the <a>CreateWorkspaces</a> operation is asynchronous, the identifier\n         it returns is not immediately available. If you immediately call <a>DescribeWorkspaces</a> with this identifier, no information is returned.</p>"}))
    DescribeWorkspacesRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the directory. In addition, you can optionally specify a specific\n         directory user (see <code>UserName</code>). You cannot combine this parameter with any\n         other filter.</p>"}))
    DescribeWorkspacesRequest.add_member(:user_name, Smithy::Schema::Shapes::ShapeRef.new(shape: UserName, location_name: 'UserName', traits: {"smithy.api#documentation" => "<p>The name of the directory user. You must specify this parameter with\n            <code>DirectoryId</code>.</p>"}))
    DescribeWorkspacesRequest.add_member(:bundle_id, Smithy::Schema::Shapes::ShapeRef.new(shape: BundleId, location_name: 'BundleId', traits: {"smithy.api#documentation" => "<p>The identifier of the bundle. All WorkSpaces that are created from this bundle are\n         retrieved. You cannot combine this parameter with any other filter.</p>"}))
    DescribeWorkspacesRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: Limit, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>The maximum number of items to return.</p>"}))
    DescribeWorkspacesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If you received a <code>NextToken</code> from a previous call that was paginated,\n         provide this token to receive the next set of results.</p>"}))
    DescribeWorkspacesRequest.add_member(:workspace_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceName, location_name: 'WorkspaceName', traits: {"smithy.api#documentation" => "<p>The name of the user-decoupled WorkSpace.</p>"}))
    DescribeWorkspacesRequest.type = Types::DescribeWorkspacesRequest
    DescribeWorkspacesResult.add_member(:workspaces, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceList, location_name: 'Workspaces', traits: {"smithy.api#documentation" => "<p>Information about the WorkSpaces.</p>\n         <p>Because <a>CreateWorkspaces</a> is an asynchronous operation, some of the\n         returned information could be incomplete.</p>"}))
    DescribeWorkspacesResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to use to retrieve the next page of results. This value is null when there are\n         no more results to return. </p>"}))
    DescribeWorkspacesResult.type = Types::DescribeWorkspacesResult
    DirectoryIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId)
    DirectoryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceDirectory)
    DisassociateConnectionAliasRequest.add_member(:alias_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionAliasId, location_name: 'AliasId', traits: {"smithy.api#documentation" => "<p>The identifier of the connection alias to disassociate.</p>", "smithy.api#required" => {}}))
    DisassociateConnectionAliasRequest.type = Types::DisassociateConnectionAliasRequest
    DisassociateConnectionAliasResult.type = Types::DisassociateConnectionAliasResult
    DisassociateIpGroupsRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the directory.</p>", "smithy.api#required" => {}}))
    DisassociateIpGroupsRequest.add_member(:group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: IpGroupIdList, location_name: 'GroupIds', traits: {"smithy.api#documentation" => "<p>The identifiers of one or more IP access control groups.</p>", "smithy.api#required" => {}}))
    DisassociateIpGroupsRequest.type = Types::DisassociateIpGroupsRequest
    DisassociateIpGroupsResult.type = Types::DisassociateIpGroupsResult
    DisassociateWorkspaceApplicationRequest.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'WorkspaceId', traits: {"smithy.api#documentation" => "<p>The identifier of the WorkSpace.</p>", "smithy.api#required" => {}}))
    DisassociateWorkspaceApplicationRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkSpaceApplicationId, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the application.</p>", "smithy.api#required" => {}}))
    DisassociateWorkspaceApplicationRequest.type = Types::DisassociateWorkspaceApplicationRequest
    DisassociateWorkspaceApplicationResult.add_member(:association, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceResourceAssociation, location_name: 'Association', traits: {"smithy.api#documentation" => "<p>Information about the targeted association.</p>"}))
    DisassociateWorkspaceApplicationResult.type = Types::DisassociateWorkspaceApplicationResult
    DnsIpAddresses.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddress)
    EndpointEncryptionMode.add_member(:standard_tls, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STANDARD_TLS', traits: {"smithy.api#enumValue" => "STANDARD_TLS"}))
    EndpointEncryptionMode.add_member(:fips_validated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIPS_VALIDATED', traits: {"smithy.api#enumValue" => "FIPS_VALIDATED"}))
    ErrorDetails.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceImageErrorDetailCode, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>Indicates the error code returned.</p>"}))
    ErrorDetails.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>The text of the error message related the error code.</p>"}))
    ErrorDetails.type = Types::ErrorDetails
    ErrorDetailsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDetails)
    FailedCreateStandbyWorkspacesRequest.add_member(:standby_workspace_request, Smithy::Schema::Shapes::ShapeRef.new(shape: StandbyWorkspace, location_name: 'StandbyWorkspaceRequest', traits: {"smithy.api#documentation" => "<p>Information about the standby WorkSpace that could not be created.</p>"}))
    FailedCreateStandbyWorkspacesRequest.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>The error code that is returned if the standby WorkSpace could not be created.</p>"}))
    FailedCreateStandbyWorkspacesRequest.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>The text of the error message that is returned if the standby WorkSpace could not be created.</p>"}))
    FailedCreateStandbyWorkspacesRequest.type = Types::FailedCreateStandbyWorkspacesRequest
    FailedCreateStandbyWorkspacesRequestList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FailedCreateStandbyWorkspacesRequest)
    FailedCreateWorkspaceRequest.add_member(:workspace_request, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceRequest, location_name: 'WorkspaceRequest', traits: {"smithy.api#documentation" => "<p>Information about the WorkSpace.</p>"}))
    FailedCreateWorkspaceRequest.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorType, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>The error code that is returned if the WorkSpace cannot be created.</p>"}))
    FailedCreateWorkspaceRequest.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>The text of the error message that is returned if the WorkSpace cannot be\n         created.</p>"}))
    FailedCreateWorkspaceRequest.type = Types::FailedCreateWorkspaceRequest
    FailedCreateWorkspaceRequests.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FailedCreateWorkspaceRequest)
    FailedRebootWorkspaceRequests.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FailedWorkspaceChangeRequest)
    FailedRebuildWorkspaceRequests.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FailedWorkspaceChangeRequest)
    FailedStartWorkspaceRequests.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FailedWorkspaceChangeRequest)
    FailedStopWorkspaceRequests.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FailedWorkspaceChangeRequest)
    FailedTerminateWorkspaceRequests.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FailedWorkspaceChangeRequest)
    FailedWorkspaceChangeRequest.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'WorkspaceId', traits: {"smithy.api#documentation" => "<p>The identifier of the WorkSpace.</p>"}))
    FailedWorkspaceChangeRequest.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorType, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>The error code that is returned if the WorkSpace cannot be rebooted.</p>"}))
    FailedWorkspaceChangeRequest.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>The text of the error message that is returned if the WorkSpace cannot be\n         rebooted.</p>"}))
    FailedWorkspaceChangeRequest.type = Types::FailedWorkspaceChangeRequest
    GetAccountLinkRequest.add_member(:link_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkId, location_name: 'LinkId', traits: {"smithy.api#documentation" => "<p>The identifier of the account to link.</p>"}))
    GetAccountLinkRequest.add_member(:linked_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccount, location_name: 'LinkedAccountId', traits: {"smithy.api#documentation" => "<p>The identifier of the account link</p>"}))
    GetAccountLinkRequest.type = Types::GetAccountLinkRequest
    GetAccountLinkResult.add_member(:account_link, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountLink, location_name: 'AccountLink', traits: {"smithy.api#documentation" => "<p>The account link of the account link to retrieve.</p>"}))
    GetAccountLinkResult.type = Types::GetAccountLinkResult
    GlobalAcceleratorForDirectory.add_member(:mode, Smithy::Schema::Shapes::ShapeRef.new(shape: AGAModeForDirectoryEnum, location_name: 'Mode', traits: {"smithy.api#documentation" => "<p>Indicates if Global Accelerator for directory is enabled or disabled.</p>", "smithy.api#required" => {}}))
    GlobalAcceleratorForDirectory.add_member(:preferred_protocol, Smithy::Schema::Shapes::ShapeRef.new(shape: AGAPreferredProtocolForDirectory, location_name: 'PreferredProtocol', traits: {"smithy.api#documentation" => "<p>Indicates the preferred protocol for Global Accelerator.</p>"}))
    GlobalAcceleratorForDirectory.type = Types::GlobalAcceleratorForDirectory
    GlobalAcceleratorForWorkSpace.add_member(:mode, Smithy::Schema::Shapes::ShapeRef.new(shape: AGAModeForWorkSpaceEnum, location_name: 'Mode', traits: {"smithy.api#documentation" => "<p>Indicates if Global Accelerator for WorkSpaces is enabled, disabled, \n         or the same mode as the associated directory.</p>", "smithy.api#required" => {}}))
    GlobalAcceleratorForWorkSpace.add_member(:preferred_protocol, Smithy::Schema::Shapes::ShapeRef.new(shape: AGAPreferredProtocolForWorkSpace, location_name: 'PreferredProtocol', traits: {"smithy.api#documentation" => "<p>Indicates the preferred protocol for Global Accelerator.</p>"}))
    GlobalAcceleratorForWorkSpace.type = Types::GlobalAcceleratorForWorkSpace
    IDCConfig.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'InstanceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the identity center instance.</p>"}))
    IDCConfig.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ApplicationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the application.</p>"}))
    IDCConfig.type = Types::IDCConfig
    ImageAssociatedResourceType.add_member(:application, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPLICATION', traits: {"smithy.api#enumValue" => "APPLICATION"}))
    ImageAssociatedResourceTypeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ImageAssociatedResourceType)
    ImagePermission.add_member(:shared_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccount, location_name: 'SharedAccountId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Web Services account that an image has been shared\n         with.</p>"}))
    ImagePermission.type = Types::ImagePermission
    ImagePermissions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ImagePermission)
    ImageResourceAssociation.add_member(:associated_resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'AssociatedResourceId', traits: {"smithy.api#documentation" => "<p>The identifier of the associated resource.</p>"}))
    ImageResourceAssociation.add_member(:associated_resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageAssociatedResourceType, location_name: 'AssociatedResourceType', traits: {"smithy.api#documentation" => "<p>The resource type of the associated resources.</p>"}))
    ImageResourceAssociation.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'Created', traits: {"smithy.api#documentation" => "<p>The time the association is created.</p>"}))
    ImageResourceAssociation.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedTime', traits: {"smithy.api#documentation" => "<p>The time the association status was last updated.</p>"}))
    ImageResourceAssociation.add_member(:image_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceImageId, location_name: 'ImageId', traits: {"smithy.api#documentation" => "<p>The identifier of the image.</p>"}))
    ImageResourceAssociation.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: AssociationState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The status of the image resource association.</p>"}))
    ImageResourceAssociation.add_member(:state_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: AssociationStateReason, location_name: 'StateReason', traits: {"smithy.api#documentation" => "<p>The reason the association deployment failed.</p>"}))
    ImageResourceAssociation.type = Types::ImageResourceAssociation
    ImageResourceAssociationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ImageResourceAssociation)
    ImageType.add_member(:owned, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OWNED', traits: {"smithy.api#enumValue" => "OWNED"}))
    ImageType.add_member(:shared, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHARED', traits: {"smithy.api#enumValue" => "SHARED"}))
    ImportClientBrandingRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The directory identifier of the WorkSpace for which you want to import client\n         branding.</p>", "smithy.api#required" => {}}))
    ImportClientBrandingRequest.add_member(:device_type_windows, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultImportClientBrandingAttributes, location_name: 'DeviceTypeWindows', traits: {"smithy.api#documentation" => "<p>The branding information to import for Windows devices.</p>"}))
    ImportClientBrandingRequest.add_member(:device_type_osx, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultImportClientBrandingAttributes, location_name: 'DeviceTypeOsx', traits: {"smithy.api#documentation" => "<p>The branding information to import for macOS devices.</p>"}))
    ImportClientBrandingRequest.add_member(:device_type_android, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultImportClientBrandingAttributes, location_name: 'DeviceTypeAndroid', traits: {"smithy.api#documentation" => "<p>The branding information to import for Android devices.</p>"}))
    ImportClientBrandingRequest.add_member(:device_type_ios, Smithy::Schema::Shapes::ShapeRef.new(shape: IosImportClientBrandingAttributes, location_name: 'DeviceTypeIos', traits: {"smithy.api#documentation" => "<p>The branding information to import for iOS devices.</p>"}))
    ImportClientBrandingRequest.add_member(:device_type_linux, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultImportClientBrandingAttributes, location_name: 'DeviceTypeLinux', traits: {"smithy.api#documentation" => "<p>The branding information to import for Linux devices.</p>"}))
    ImportClientBrandingRequest.add_member(:device_type_web, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultImportClientBrandingAttributes, location_name: 'DeviceTypeWeb', traits: {"smithy.api#documentation" => "<p>The branding information to import for web access.</p>"}))
    ImportClientBrandingRequest.type = Types::ImportClientBrandingRequest
    ImportClientBrandingResult.add_member(:device_type_windows, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultClientBrandingAttributes, location_name: 'DeviceTypeWindows', traits: {"smithy.api#documentation" => "<p>The branding information configured for Windows devices.</p>"}))
    ImportClientBrandingResult.add_member(:device_type_osx, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultClientBrandingAttributes, location_name: 'DeviceTypeOsx', traits: {"smithy.api#documentation" => "<p>The branding information configured for macOS devices.</p>"}))
    ImportClientBrandingResult.add_member(:device_type_android, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultClientBrandingAttributes, location_name: 'DeviceTypeAndroid', traits: {"smithy.api#documentation" => "<p>The branding information configured for Android devices.</p>"}))
    ImportClientBrandingResult.add_member(:device_type_ios, Smithy::Schema::Shapes::ShapeRef.new(shape: IosClientBrandingAttributes, location_name: 'DeviceTypeIos', traits: {"smithy.api#documentation" => "<p>The branding information configured for iOS devices.</p>"}))
    ImportClientBrandingResult.add_member(:device_type_linux, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultClientBrandingAttributes, location_name: 'DeviceTypeLinux', traits: {"smithy.api#documentation" => "<p>The branding information configured for Linux devices.</p>"}))
    ImportClientBrandingResult.add_member(:device_type_web, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultClientBrandingAttributes, location_name: 'DeviceTypeWeb', traits: {"smithy.api#documentation" => "<p>The branding information configured for web access.</p>"}))
    ImportClientBrandingResult.type = Types::ImportClientBrandingResult
    ImportWorkspaceImageRequest.add_member(:ec2_image_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Ec2ImageId, location_name: 'Ec2ImageId', traits: {"smithy.api#documentation" => "<p>The identifier of the EC2 image.</p>", "smithy.api#required" => {}}))
    ImportWorkspaceImageRequest.add_member(:ingestion_process, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceImageIngestionProcess, location_name: 'IngestionProcess', traits: {"smithy.api#documentation" => "<p>The ingestion process to be used when importing the image, depending on which protocol\n         you want to use for your BYOL Workspace image, either PCoIP, WSP, or \n         bring your own protocol (BYOP). To use DCV, specify a value that ends in \n         <code>_WSP</code>. To use PCoIP, specify a value that does not end in <code>_WSP</code>. \n         To use BYOP, specify a value that ends in <code>_BYOP</code>.</p>\n         <p>For non-GPU-enabled bundles (bundles other than Graphics or GraphicsPro), specify \n         <code>BYOL_REGULAR</code>, <code>BYOL_REGULAR_WSP</code>, or <code>BYOL_REGULAR_BYOP</code>, \n         depending on the protocol.</p>\n         <note>\n            <p>The <code>BYOL_REGULAR_BYOP</code> and <code>BYOL_GRAPHICS_G4DN_BYOP</code> values\n            are only supported by Amazon WorkSpaces Core. Contact your account team to be\n            allow-listed to use these values. For more information, see <a href=\"http://aws.amazon.com/workspaces/core/\">Amazon WorkSpaces Core</a>.</p>\n         </note>", "smithy.api#required" => {}}))
    ImportWorkspaceImageRequest.add_member(:image_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceImageName, location_name: 'ImageName', traits: {"smithy.api#documentation" => "<p>The name of the WorkSpace image.</p>", "smithy.api#required" => {}}))
    ImportWorkspaceImageRequest.add_member(:image_description, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceImageDescription, location_name: 'ImageDescription', traits: {"smithy.api#documentation" => "<p>The description of the WorkSpace image.</p>", "smithy.api#required" => {}}))
    ImportWorkspaceImageRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags. Each WorkSpaces resource can have a maximum of 50 tags.</p>"}))
    ImportWorkspaceImageRequest.add_member(:applications, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationList, location_name: 'Applications', traits: {"smithy.api#documentation" => "<p>If specified, the version of Microsoft Office to subscribe to. Valid only for Windows 10 and 11\n         BYOL images. For more information about subscribing to Office for BYOL images, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html\"> Bring\n            Your Own Windows Desktop Licenses</a>.</p>\n         <note>\n            <ul>\n               <li>\n                  <p>Although this parameter is an array, only one item is allowed at this\n                  time.</p>\n               </li>\n               <li>\n                  <p>During the image import process, non-GPU DCV (formerly WSP) WorkSpaces with Windows 11 support\n                  only <code>Microsoft_Office_2019</code>. GPU DCV (formerly WSP) WorkSpaces with Windows 11 do not\n                  support Office installation.</p>\n               </li>\n            </ul>\n         </note>"}))
    ImportWorkspaceImageRequest.type = Types::ImportWorkspaceImageRequest
    ImportWorkspaceImageResult.add_member(:image_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceImageId, location_name: 'ImageId', traits: {"smithy.api#documentation" => "<p>The identifier of the WorkSpace image.</p>"}))
    ImportWorkspaceImageResult.type = Types::ImportWorkspaceImageResult
    IncompatibleApplicationsException.type = Types::IncompatibleApplicationsException
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InternalServerException.type = Types::InternalServerException
    InternetFallbackProtocol.add_member(:pcoip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PCOIP', traits: {"smithy.api#enumValue" => "PCOIP"}))
    InternetFallbackProtocolList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InternetFallbackProtocol)
    InvalidParameterCombinationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The exception error message.</p>"}))
    InvalidParameterCombinationException.type = Types::InvalidParameterCombinationException
    InvalidParameterValuesException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The exception error message.</p>"}))
    InvalidParameterValuesException.type = Types::InvalidParameterValuesException
    InvalidResourceStateException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidResourceStateException.type = Types::InvalidResourceStateException
    IosClientBrandingAttributes.add_member(:logo_url, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientUrl, location_name: 'LogoUrl', traits: {"smithy.api#documentation" => "<p>The logo. This is the standard-resolution display that has a 1:1 pixel density \n         (or @1x), where one pixel is equal\n         to one point. The only image format accepted is a binary data object that is converted from \n         a <code>.png</code> file.</p>"}))
    IosClientBrandingAttributes.add_member(:logo2x_url, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientUrl, location_name: 'Logo2xUrl', traits: {"smithy.api#documentation" => "<p>The @2x version of the logo. This is the higher resolution display that offers a scale\n         factor of 2.0 (or @2x). The only image format accepted is a binary data object that is \n         converted from a <code>.png</code> file.</p>\n         <note>\n            <p> For more information about iOS image size and resolution, see <a href=\"https://developer.apple.com/design/human-interface-guidelines/ios/icons-and-images/image-size-and-resolution/\">Image Size and Resolution </a> in the <i>Apple Human Interface\n               Guidelines</i>.</p>\n         </note>"}))
    IosClientBrandingAttributes.add_member(:logo3x_url, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientUrl, location_name: 'Logo3xUrl', traits: {"smithy.api#documentation" => "<p>The @3x version of the logo. This is the higher resolution display that offers a scale\n         factor of 3.0 (or @3x).The only image format accepted is a binary data object that is \n         converted from a <code>.png</code> file.</p>\n         <note>\n            <p> For more information about iOS image size and resolution, see <a href=\"https://developer.apple.com/design/human-interface-guidelines/ios/icons-and-images/image-size-and-resolution/\">Image Size and Resolution </a> in the <i>Apple Human Interface\n               Guidelines</i>.</p>\n         </note>"}))
    IosClientBrandingAttributes.add_member(:support_email, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientEmail, location_name: 'SupportEmail', traits: {"smithy.api#documentation" => "<p>The support email. The company's customer support email address.</p>\n         <note>\n            <ul>\n               <li>\n                  <p>In each platform type, the <code>SupportEmail</code> and\n                     <code>SupportLink</code> parameters are mutually exclusive. You can specify one\n                  parameter for each platform type, but not both.</p>\n               </li>\n               <li>\n                  <p>The default email is <code>workspaces-feedback@amazon.com</code>.</p>\n               </li>\n            </ul>\n         </note>"}))
    IosClientBrandingAttributes.add_member(:support_link, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientUrl, location_name: 'SupportLink', traits: {"smithy.api#documentation" => "<p>The support link. The link for the company's customer support page for their\n         WorkSpace.</p>\n         <note>\n            <ul>\n               <li>\n                  <p>In each platform type, the <code>SupportEmail</code> and\n                     <code>SupportLink</code> parameters are mutually exclusive. You can specify one\n                  parameter for each platform type, but not both.</p>\n               </li>\n               <li>\n                  <p>The default support link is <code>workspaces-feedback@amazon.com</code>.</p>\n               </li>\n            </ul>\n         </note>"}))
    IosClientBrandingAttributes.add_member(:forgot_password_link, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientUrl, location_name: 'ForgotPasswordLink', traits: {"smithy.api#documentation" => "<p>The forgotten password link. This is the web address that users can go to if they forget\n         the password for their WorkSpace.</p>"}))
    IosClientBrandingAttributes.add_member(:login_message, Smithy::Schema::Shapes::ShapeRef.new(shape: LoginMessage, location_name: 'LoginMessage', traits: {"smithy.api#documentation" => "<p>The login message. Specified as a key value pair, in which the key is a locale and the\n         value is the localized message for that locale. The only key supported is\n         <code>en_US</code>. The HTML tags supported include the following: <code>a, b, blockquote, br, cite, code, dd, dl, dt, div, em, \n            i, li, ol, p, pre, q, small, span, strike, strong, sub, sup, u, ul</code>.</p>"}))
    IosClientBrandingAttributes.type = Types::IosClientBrandingAttributes
    IosImportClientBrandingAttributes.add_member(:logo, Smithy::Schema::Shapes::ShapeRef.new(shape: IosLogo, location_name: 'Logo', traits: {"smithy.api#documentation" => "<p>The logo. This is the\n         standard-resolution display that has a 1:1 pixel density (or @1x), where one pixel is equal\n         to one point. The only image format accepted is a binary data object that is converted \n         from a <code>.png</code> file.</p>"}))
    IosImportClientBrandingAttributes.add_member(:logo2x, Smithy::Schema::Shapes::ShapeRef.new(shape: Ios2XLogo, location_name: 'Logo2x', traits: {"smithy.api#documentation" => "<p>The @2x version of the logo. This is the higher resolution display that offers a scale\n         factor of 2.0 (or @2x). The only image format accepted is a binary data object that is \n         converted from a <code>.png</code> file.</p>\n         <note>\n            <p> For more information about iOS image size and resolution, see <a href=\"https://developer.apple.com/design/human-interface-guidelines/ios/icons-and-images/image-size-and-resolution/\">Image Size and Resolution </a> in the <i>Apple Human Interface\n               Guidelines</i>.</p>\n         </note>"}))
    IosImportClientBrandingAttributes.add_member(:logo3x, Smithy::Schema::Shapes::ShapeRef.new(shape: Ios3XLogo, location_name: 'Logo3x', traits: {"smithy.api#documentation" => "<p>The @3x version of the logo. This is the higher resolution display that offers a scale\n         factor of 3.0 (or @3x). The only image format accepted is a binary data object that is \n         converted from a <code>.png</code> file.</p>\n         <note>\n            <p> For more information about iOS image size and resolution, see <a href=\"https://developer.apple.com/design/human-interface-guidelines/ios/icons-and-images/image-size-and-resolution/\">Image Size and Resolution </a> in the <i>Apple Human Interface\n               Guidelines</i>.</p>\n         </note>"}))
    IosImportClientBrandingAttributes.add_member(:support_email, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientEmail, location_name: 'SupportEmail', traits: {"smithy.api#documentation" => "<p>The support email. The company's customer support email address.</p>\n         <note>\n            <ul>\n               <li>\n                  <p>In each platform type, the <code>SupportEmail</code> and\n                     <code>SupportLink</code> parameters are mutually exclusive. You can specify one\n                  parameter for each platform type, but not both.</p>\n               </li>\n               <li>\n                  <p>The default email is <code>workspaces-feedback@amazon.com</code>.</p>\n               </li>\n            </ul>\n         </note>"}))
    IosImportClientBrandingAttributes.add_member(:support_link, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientUrl, location_name: 'SupportLink', traits: {"smithy.api#documentation" => "<p>The support link. The link for the company's customer support page for their\n         WorkSpace.</p>\n         <note>\n            <ul>\n               <li>\n                  <p>In each platform type, the <code>SupportEmail</code> and\n                     <code>SupportLink</code> parameters are mutually exclusive. You can specify one\n                  parameter for each platform type, but not both.</p>\n               </li>\n               <li>\n                  <p>The default support link is <code>workspaces-feedback@amazon.com</code>.</p>\n               </li>\n            </ul>\n         </note>"}))
    IosImportClientBrandingAttributes.add_member(:forgot_password_link, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientUrl, location_name: 'ForgotPasswordLink', traits: {"smithy.api#documentation" => "<p>The forgotten password link. This is the web address that users can go to if they forget\n         the password for their WorkSpace.</p>"}))
    IosImportClientBrandingAttributes.add_member(:login_message, Smithy::Schema::Shapes::ShapeRef.new(shape: LoginMessage, location_name: 'LoginMessage', traits: {"smithy.api#documentation" => "<p>The login message. Specified as a key value pair, in which the key is a locale and the\n         value is the localized message for that locale. The only key supported is\n         <code>en_US</code>. The HTML tags supported include the following: <code>a, b, blockquote, br, cite, code, dd, dl, dt, div, em, \n            i, li, ol, p, pre, q, small, span, strike, strong, sub, sup, u, ul</code>.</p>"}))
    IosImportClientBrandingAttributes.type = Types::IosImportClientBrandingAttributes
    IpGroupIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IpGroupId)
    IpRevokedRuleList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IpRule)
    IpRuleItem.add_member(:ip_rule, Smithy::Schema::Shapes::ShapeRef.new(shape: IpRule, location_name: 'ipRule', traits: {"smithy.api#documentation" => "<p>The IP address range, in CIDR notation.</p>"}))
    IpRuleItem.add_member(:rule_desc, Smithy::Schema::Shapes::ShapeRef.new(shape: IpRuleDesc, location_name: 'ruleDesc', traits: {"smithy.api#documentation" => "<p>The description.</p>"}))
    IpRuleItem.type = Types::IpRuleItem
    IpRuleList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IpRuleItem)
    LinkStatusFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AccountLinkStatusEnum)
    ListAccountLinksRequest.add_member(:link_status_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkStatusFilterList, location_name: 'LinkStatusFilter', traits: {"smithy.api#documentation" => "<p>Filters the account based on their link status.</p>"}))
    ListAccountLinksRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to use to retrieve the next page of results. This value is null when there are no more results to return.</p>"}))
    ListAccountLinksRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Limit, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of accounts to return.</p>"}))
    ListAccountLinksRequest.type = Types::ListAccountLinksRequest
    ListAccountLinksResult.add_member(:account_links, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountLinkList, location_name: 'AccountLinks', traits: {"smithy.api#documentation" => "<p>Information about the account links.</p>"}))
    ListAccountLinksResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to use to retrieve the next page of results. This value is null when there are no more results to return.</p>"}))
    ListAccountLinksResult.type = Types::ListAccountLinksResult
    ListAvailableManagementCidrRangesRequest.add_member(:management_cidr_range_constraint, Smithy::Schema::Shapes::ShapeRef.new(shape: ManagementCidrRangeConstraint, location_name: 'ManagementCidrRangeConstraint', traits: {"smithy.api#documentation" => "<p>The IP address range to search. Specify an IP address range that is compatible with your\n         network and in CIDR notation (that is, specify the range as an IPv4 CIDR block).</p>", "smithy.api#required" => {}}))
    ListAvailableManagementCidrRangesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ManagementCidrRangeMaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of items to return.</p>"}))
    ListAvailableManagementCidrRangesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If you received a <code>NextToken</code> from a previous call that was paginated,\n         provide this token to receive the next set of results.</p>"}))
    ListAvailableManagementCidrRangesRequest.type = Types::ListAvailableManagementCidrRangesRequest
    ListAvailableManagementCidrRangesResult.add_member(:management_cidr_ranges, Smithy::Schema::Shapes::ShapeRef.new(shape: DedicatedTenancyCidrRangeList, location_name: 'ManagementCidrRanges', traits: {"smithy.api#documentation" => "<p>The list of available IP address ranges, specified as IPv4 CIDR blocks.</p>"}))
    ListAvailableManagementCidrRangesResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to use to retrieve the next page of results. This value is null when there are\n         no more results to return. </p>"}))
    ListAvailableManagementCidrRangesResult.type = Types::ListAvailableManagementCidrRangesResult
    LogUploadEnum.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    LogUploadEnum.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    LoginMessage.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLocale)
    LoginMessage.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ClientLoginMessage)
    MicrosoftEntraConfig.add_member(:tenant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: MicrosoftEntraConfigTenantId, location_name: 'TenantId', traits: {"smithy.api#documentation" => "<p>The identifier of the tenant.</p>"}))
    MicrosoftEntraConfig.add_member(:application_config_secret_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SecretsManagerArn, location_name: 'ApplicationConfigSecretArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the application config.</p>"}))
    MicrosoftEntraConfig.type = Types::MicrosoftEntraConfig
    MigrateWorkspaceRequest.add_member(:source_workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'SourceWorkspaceId', traits: {"smithy.api#documentation" => "<p>The identifier of the WorkSpace to migrate from.</p>", "smithy.api#required" => {}}))
    MigrateWorkspaceRequest.add_member(:bundle_id, Smithy::Schema::Shapes::ShapeRef.new(shape: BundleId, location_name: 'BundleId', traits: {"smithy.api#documentation" => "<p>The identifier of the target bundle type to migrate the WorkSpace to.</p>", "smithy.api#required" => {}}))
    MigrateWorkspaceRequest.type = Types::MigrateWorkspaceRequest
    MigrateWorkspaceResult.add_member(:source_workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'SourceWorkspaceId', traits: {"smithy.api#documentation" => "<p>The original identifier of the WorkSpace that is being migrated.</p>"}))
    MigrateWorkspaceResult.add_member(:target_workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'TargetWorkspaceId', traits: {"smithy.api#documentation" => "<p>The new identifier of the WorkSpace that is being migrated. If the migration does not\n         succeed, the target WorkSpace ID will not be used, and the WorkSpace will still have the\n         original WorkSpace ID.</p>"}))
    MigrateWorkspaceResult.type = Types::MigrateWorkspaceResult
    ModificationResourceEnum.add_member(:root_volume, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROOT_VOLUME', traits: {"smithy.api#enumValue" => "ROOT_VOLUME"}))
    ModificationResourceEnum.add_member(:user_volume, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USER_VOLUME', traits: {"smithy.api#enumValue" => "USER_VOLUME"}))
    ModificationResourceEnum.add_member(:compute_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPUTE_TYPE', traits: {"smithy.api#enumValue" => "COMPUTE_TYPE"}))
    ModificationState.add_member(:resource, Smithy::Schema::Shapes::ShapeRef.new(shape: ModificationResourceEnum, location_name: 'Resource', traits: {"smithy.api#documentation" => "<p>The resource.</p>"}))
    ModificationState.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ModificationStateEnum, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The modification state.</p>"}))
    ModificationState.type = Types::ModificationState
    ModificationStateEnum.add_member(:update_initiated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_INITIATED', traits: {"smithy.api#enumValue" => "UPDATE_INITIATED"}))
    ModificationStateEnum.add_member(:update_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "UPDATE_IN_PROGRESS"}))
    ModificationStateList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ModificationState)
    ModifyAccountRequest.add_member(:dedicated_tenancy_support, Smithy::Schema::Shapes::ShapeRef.new(shape: DedicatedTenancySupportEnum, location_name: 'DedicatedTenancySupport', traits: {"smithy.api#documentation" => "<p>The status of BYOL.</p>"}))
    ModifyAccountRequest.add_member(:dedicated_tenancy_management_cidr_range, Smithy::Schema::Shapes::ShapeRef.new(shape: DedicatedTenancyManagementCidrRange, location_name: 'DedicatedTenancyManagementCidrRange', traits: {"smithy.api#documentation" => "<p>The IP address range, specified as an IPv4 CIDR block, for the management network\n         interface. Specify an IP address range that is compatible with your network and in CIDR\n         notation (that is, specify the range as an IPv4 CIDR block). The CIDR block size must be\n         /16 (for example, 203.0.113.25/16). It must also be specified as available by the\n            <code>ListAvailableManagementCidrRanges</code> operation.</p>"}))
    ModifyAccountRequest.type = Types::ModifyAccountRequest
    ModifyAccountResult.type = Types::ModifyAccountResult
    ModifyCertificateBasedAuthPropertiesRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The resource identifiers, in the form of directory IDs.</p>", "smithy.api#required" => {}}))
    ModifyCertificateBasedAuthPropertiesRequest.add_member(:certificate_based_auth_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateBasedAuthProperties, location_name: 'CertificateBasedAuthProperties', traits: {"smithy.api#documentation" => "<p>The properties of the certificate-based authentication.</p>"}))
    ModifyCertificateBasedAuthPropertiesRequest.add_member(:properties_to_delete, Smithy::Schema::Shapes::ShapeRef.new(shape: DeletableCertificateBasedAuthPropertiesList, location_name: 'PropertiesToDelete', traits: {"smithy.api#documentation" => "<p>The properties of the certificate-based authentication you want to delete.</p>"}))
    ModifyCertificateBasedAuthPropertiesRequest.type = Types::ModifyCertificateBasedAuthPropertiesRequest
    ModifyCertificateBasedAuthPropertiesResult.type = Types::ModifyCertificateBasedAuthPropertiesResult
    ModifyClientPropertiesRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The resource identifiers, in the form of directory IDs.</p>", "smithy.api#required" => {}}))
    ModifyClientPropertiesRequest.add_member(:client_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientProperties, location_name: 'ClientProperties', traits: {"smithy.api#documentation" => "<p>Information about the Amazon WorkSpaces client.</p>", "smithy.api#required" => {}}))
    ModifyClientPropertiesRequest.type = Types::ModifyClientPropertiesRequest
    ModifyClientPropertiesResult.type = Types::ModifyClientPropertiesResult
    ModifyEndpointEncryptionModeRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p> The identifier of the directory.</p>", "smithy.api#required" => {}}))
    ModifyEndpointEncryptionModeRequest.add_member(:endpoint_encryption_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointEncryptionMode, location_name: 'EndpointEncryptionMode', traits: {"smithy.api#documentation" => "<p>The encryption mode used for endpoint connections when streaming to WorkSpaces Personal\n         or WorkSpace Pools.</p>", "smithy.api#required" => {}}))
    ModifyEndpointEncryptionModeRequest.type = Types::ModifyEndpointEncryptionModeRequest
    ModifyEndpointEncryptionModeResponse.type = Types::ModifyEndpointEncryptionModeResponse
    ModifySamlPropertiesRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The directory identifier for which you want to configure SAML properties.</p>", "smithy.api#required" => {}}))
    ModifySamlPropertiesRequest.add_member(:saml_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: SamlProperties, location_name: 'SamlProperties', traits: {"smithy.api#documentation" => "<p>The properties for configuring SAML 2.0 authentication.</p>"}))
    ModifySamlPropertiesRequest.add_member(:properties_to_delete, Smithy::Schema::Shapes::ShapeRef.new(shape: DeletableSamlPropertiesList, location_name: 'PropertiesToDelete', traits: {"smithy.api#documentation" => "<p>The SAML properties to delete as part of your request.</p>\n         <p>Specify one of the following options:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>SAML_PROPERTIES_USER_ACCESS_URL</code> to delete the user access URL.</p>\n            </li>\n            <li>\n               <p>\n                  <code>SAML_PROPERTIES_RELAY_STATE_PARAMETER_NAME</code> to delete the\n               relay state parameter name.</p>\n            </li>\n         </ul>"}))
    ModifySamlPropertiesRequest.type = Types::ModifySamlPropertiesRequest
    ModifySamlPropertiesResult.type = Types::ModifySamlPropertiesResult
    ModifySelfservicePermissionsRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The identifier of the directory.</p>", "smithy.api#required" => {}}))
    ModifySelfservicePermissionsRequest.add_member(:selfservice_permissions, Smithy::Schema::Shapes::ShapeRef.new(shape: SelfservicePermissions, location_name: 'SelfservicePermissions', traits: {"smithy.api#documentation" => "<p>The permissions to enable or disable self-service capabilities.</p>", "smithy.api#required" => {}}))
    ModifySelfservicePermissionsRequest.type = Types::ModifySelfservicePermissionsRequest
    ModifySelfservicePermissionsResult.type = Types::ModifySelfservicePermissionsResult
    ModifyStreamingPropertiesRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The identifier of the resource.</p>", "smithy.api#required" => {}}))
    ModifyStreamingPropertiesRequest.add_member(:streaming_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamingProperties, location_name: 'StreamingProperties', traits: {"smithy.api#documentation" => "<p>The streaming properties to configure.</p>"}))
    ModifyStreamingPropertiesRequest.type = Types::ModifyStreamingPropertiesRequest
    ModifyStreamingPropertiesResult.type = Types::ModifyStreamingPropertiesResult
    ModifyWorkspaceAccessPropertiesRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The identifier of the directory.</p>", "smithy.api#required" => {}}))
    ModifyWorkspaceAccessPropertiesRequest.add_member(:workspace_access_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceAccessProperties, location_name: 'WorkspaceAccessProperties', traits: {"smithy.api#documentation" => "<p>The device types and operating systems to enable or disable for access.</p>", "smithy.api#required" => {}}))
    ModifyWorkspaceAccessPropertiesRequest.type = Types::ModifyWorkspaceAccessPropertiesRequest
    ModifyWorkspaceAccessPropertiesResult.type = Types::ModifyWorkspaceAccessPropertiesResult
    ModifyWorkspaceCreationPropertiesRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The identifier of the directory.</p>", "smithy.api#required" => {}}))
    ModifyWorkspaceCreationPropertiesRequest.add_member(:workspace_creation_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceCreationProperties, location_name: 'WorkspaceCreationProperties', traits: {"smithy.api#documentation" => "<p>The default properties for creating WorkSpaces.</p>", "smithy.api#required" => {}}))
    ModifyWorkspaceCreationPropertiesRequest.type = Types::ModifyWorkspaceCreationPropertiesRequest
    ModifyWorkspaceCreationPropertiesResult.type = Types::ModifyWorkspaceCreationPropertiesResult
    ModifyWorkspacePropertiesRequest.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'WorkspaceId', traits: {"smithy.api#documentation" => "<p>The identifier of the WorkSpace.</p>", "smithy.api#required" => {}}))
    ModifyWorkspacePropertiesRequest.add_member(:workspace_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceProperties, location_name: 'WorkspaceProperties', traits: {"smithy.api#documentation" => "<p>The properties of the WorkSpace.</p>"}))
    ModifyWorkspacePropertiesRequest.add_member(:data_replication, Smithy::Schema::Shapes::ShapeRef.new(shape: DataReplication, location_name: 'DataReplication', traits: {"smithy.api#documentation" => "<p>Indicates the data replication status.</p>"}))
    ModifyWorkspacePropertiesRequest.type = Types::ModifyWorkspacePropertiesRequest
    ModifyWorkspacePropertiesResult.type = Types::ModifyWorkspacePropertiesResult
    ModifyWorkspaceStateRequest.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'WorkspaceId', traits: {"smithy.api#documentation" => "<p>The identifier of the WorkSpace.</p>", "smithy.api#required" => {}}))
    ModifyWorkspaceStateRequest.add_member(:workspace_state, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetWorkspaceState, location_name: 'WorkspaceState', traits: {"smithy.api#documentation" => "<p>The WorkSpace state.</p>", "smithy.api#required" => {}}))
    ModifyWorkspaceStateRequest.type = Types::ModifyWorkspaceStateRequest
    ModifyWorkspaceStateResult.type = Types::ModifyWorkspaceStateResult
    NetworkAccessConfiguration.add_member(:eni_private_ip_address, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'EniPrivateIpAddress', traits: {"smithy.api#documentation" => "<p>The private IP address of the elastic network interface that is attached to instances in your VPC.</p>"}))
    NetworkAccessConfiguration.add_member(:eni_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'EniId', traits: {"smithy.api#documentation" => "<p>The resource identifier of the elastic network interface that is attached to instances in your \n         VPC. All network interfaces have the eni-xxxxxxxx resource identifier.</p>"}))
    NetworkAccessConfiguration.type = Types::NetworkAccessConfiguration
    OperatingSystem.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: OperatingSystemType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The operating system.</p>"}))
    OperatingSystem.type = Types::OperatingSystem
    OperatingSystemName.add_member(:amazon_linux_2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AMAZON_LINUX_2', traits: {"smithy.api#enumValue" => "AMAZON_LINUX_2"}))
    OperatingSystemName.add_member(:ubuntu_18_04, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UBUNTU_18_04', traits: {"smithy.api#enumValue" => "UBUNTU_18_04"}))
    OperatingSystemName.add_member(:ubuntu_20_04, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UBUNTU_20_04', traits: {"smithy.api#enumValue" => "UBUNTU_20_04"}))
    OperatingSystemName.add_member(:ubuntu_22_04, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UBUNTU_22_04', traits: {"smithy.api#enumValue" => "UBUNTU_22_04"}))
    OperatingSystemName.add_member(:unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN', traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    OperatingSystemName.add_member(:windows_10, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WINDOWS_10', traits: {"smithy.api#enumValue" => "WINDOWS_10"}))
    OperatingSystemName.add_member(:windows_11, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WINDOWS_11', traits: {"smithy.api#enumValue" => "WINDOWS_11"}))
    OperatingSystemName.add_member(:windows_7, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WINDOWS_7', traits: {"smithy.api#enumValue" => "WINDOWS_7"}))
    OperatingSystemName.add_member(:windows_server_2016, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WINDOWS_SERVER_2016', traits: {"smithy.api#enumValue" => "WINDOWS_SERVER_2016"}))
    OperatingSystemName.add_member(:windows_server_2019, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WINDOWS_SERVER_2019', traits: {"smithy.api#enumValue" => "WINDOWS_SERVER_2019"}))
    OperatingSystemName.add_member(:windows_server_2022, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WINDOWS_SERVER_2022', traits: {"smithy.api#enumValue" => "WINDOWS_SERVER_2022"}))
    OperatingSystemName.add_member(:rhel_8, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RHEL_8', traits: {"smithy.api#enumValue" => "RHEL_8"}))
    OperatingSystemName.add_member(:rocky_8, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROCKY_8', traits: {"smithy.api#enumValue" => "ROCKY_8"}))
    OperatingSystemNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: OperatingSystemName)
    OperatingSystemNotCompatibleException.type = Types::OperatingSystemNotCompatibleException
    OperatingSystemType.add_member(:windows, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WINDOWS', traits: {"smithy.api#enumValue" => "WINDOWS"}))
    OperatingSystemType.add_member(:linux, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LINUX', traits: {"smithy.api#enumValue" => "LINUX"}))
    OperationInProgressException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    OperationInProgressException.type = Types::OperationInProgressException
    OperationNotSupportedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The exception error message.</p>"}))
    OperationNotSupportedException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionErrorCode, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>The exception error reason.</p>"}))
    OperationNotSupportedException.type = Types::OperationNotSupportedException
    PendingCreateStandbyWorkspacesRequest.add_member(:user_name, Smithy::Schema::Shapes::ShapeRef.new(shape: UserName, location_name: 'UserName', traits: {"smithy.api#documentation" => "<p>Describes the standby WorkSpace that was created.</p>\n         <p>Because this operation is asynchronous, the identifier returned is not immediately \n         available for use with other operations. For example, if you call \n         <a href=\"https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeWorkspaces.html\">\n            DescribeWorkspaces</a> \n         before the WorkSpace is created, the information returned can be incomplete. </p>"}))
    PendingCreateStandbyWorkspacesRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the directory for the standby WorkSpace.</p>"}))
    PendingCreateStandbyWorkspacesRequest.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The operational state of the standby WorkSpace.</p>"}))
    PendingCreateStandbyWorkspacesRequest.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'WorkspaceId', traits: {"smithy.api#documentation" => "<p>The identifier of the standby WorkSpace.</p>"}))
    PendingCreateStandbyWorkspacesRequest.type = Types::PendingCreateStandbyWorkspacesRequest
    PendingCreateStandbyWorkspacesRequestList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PendingCreateStandbyWorkspacesRequest)
    PoolsRunningMode.add_member(:auto_stop, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTO_STOP', traits: {"smithy.api#enumValue" => "AUTO_STOP"}))
    PoolsRunningMode.add_member(:always_on, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALWAYS_ON', traits: {"smithy.api#enumValue" => "ALWAYS_ON"}))
    Protocol.add_member(:pcoip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PCOIP', traits: {"smithy.api#enumValue" => "PCOIP"}))
    Protocol.add_member(:wsp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WSP', traits: {"smithy.api#enumValue" => "WSP"}))
    ProtocolList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Protocol)
    RebootRequest.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'WorkspaceId', traits: {"smithy.api#documentation" => "<p>The identifier of the WorkSpace.</p>", "smithy.api#required" => {}}))
    RebootRequest.type = Types::RebootRequest
    RebootWorkspaceRequests.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RebootRequest)
    RebootWorkspacesRequest.add_member(:reboot_workspace_requests, Smithy::Schema::Shapes::ShapeRef.new(shape: RebootWorkspaceRequests, location_name: 'RebootWorkspaceRequests', traits: {"smithy.api#documentation" => "<p>The WorkSpaces to reboot. You can specify up to 25 WorkSpaces.</p>", "smithy.api#required" => {}}))
    RebootWorkspacesRequest.type = Types::RebootWorkspacesRequest
    RebootWorkspacesResult.add_member(:failed_requests, Smithy::Schema::Shapes::ShapeRef.new(shape: FailedRebootWorkspaceRequests, location_name: 'FailedRequests', traits: {"smithy.api#documentation" => "<p>Information about the WorkSpaces that could not be rebooted.</p>"}))
    RebootWorkspacesResult.type = Types::RebootWorkspacesResult
    RebuildRequest.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'WorkspaceId', traits: {"smithy.api#documentation" => "<p>The identifier of the WorkSpace.</p>", "smithy.api#required" => {}}))
    RebuildRequest.type = Types::RebuildRequest
    RebuildWorkspaceRequests.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RebuildRequest)
    RebuildWorkspacesRequest.add_member(:rebuild_workspace_requests, Smithy::Schema::Shapes::ShapeRef.new(shape: RebuildWorkspaceRequests, location_name: 'RebuildWorkspaceRequests', traits: {"smithy.api#documentation" => "<p>The WorkSpace to rebuild. You can specify a single WorkSpace.</p>", "smithy.api#required" => {}}))
    RebuildWorkspacesRequest.type = Types::RebuildWorkspacesRequest
    RebuildWorkspacesResult.add_member(:failed_requests, Smithy::Schema::Shapes::ShapeRef.new(shape: FailedRebuildWorkspaceRequests, location_name: 'FailedRequests', traits: {"smithy.api#documentation" => "<p>Information about the WorkSpace that could not be rebuilt.</p>"}))
    RebuildWorkspacesResult.type = Types::RebuildWorkspacesResult
    ReconnectEnum.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    ReconnectEnum.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    RegisterWorkspaceDirectoryRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the directory. You cannot register a directory if it does not have a\n         status of Active. If the directory does not have a status of Active, you will receive an\n         InvalidResourceStateException error. If you have already registered the maximum number of\n         directories that you can register with Amazon WorkSpaces, you will receive a\n         ResourceLimitExceededException error. Deregister directories that you are not using for\n         WorkSpaces, and try again.</p>"}))
    RegisterWorkspaceDirectoryRequest.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIds, location_name: 'SubnetIds', traits: {"smithy.api#documentation" => "<p>The identifiers of the subnets for your virtual private cloud (VPC). Make sure that the\n         subnets are in supported Availability Zones. The subnets must also be in separate\n         Availability Zones. If these conditions are not met, you will receive an\n         OperationNotSupportedException error.</p>"}))
    RegisterWorkspaceDirectoryRequest.add_member(:enable_self_service, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'EnableSelfService', traits: {"smithy.api#documentation" => "<p>Indicates whether self-service capabilities are enabled or disabled.</p>"}))
    RegisterWorkspaceDirectoryRequest.add_member(:tenancy, Smithy::Schema::Shapes::ShapeRef.new(shape: Tenancy, location_name: 'Tenancy', traits: {"smithy.api#documentation" => "<p>Indicates whether your WorkSpace directory is dedicated or shared. To use Bring Your Own\n         License (BYOL) images, this value must be set to <code>DEDICATED</code> and your Amazon Web Services account must be enabled for BYOL. If your account has not been enabled for\n         BYOL, you will receive an InvalidParameterValuesException error. For more information about\n         BYOL images, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html\">Bring Your Own Windows\n            Desktop Images</a>.</p>"}))
    RegisterWorkspaceDirectoryRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags associated with the directory.</p>"}))
    RegisterWorkspaceDirectoryRequest.add_member(:workspace_directory_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceDirectoryName, location_name: 'WorkspaceDirectoryName', traits: {"smithy.api#documentation" => "<p>The name of the directory to register.</p>"}))
    RegisterWorkspaceDirectoryRequest.add_member(:workspace_directory_description, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceDirectoryDescription, location_name: 'WorkspaceDirectoryDescription', traits: {"smithy.api#documentation" => "<p>Description of the directory to register.</p>"}))
    RegisterWorkspaceDirectoryRequest.add_member(:user_identity_type, Smithy::Schema::Shapes::ShapeRef.new(shape: UserIdentityType, location_name: 'UserIdentityType', traits: {"smithy.api#documentation" => "<p>The type of identity management the user is using.</p>"}))
    RegisterWorkspaceDirectoryRequest.add_member(:idc_instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'IdcInstanceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the identity center instance.</p>"}))
    RegisterWorkspaceDirectoryRequest.add_member(:microsoft_entra_config, Smithy::Schema::Shapes::ShapeRef.new(shape: MicrosoftEntraConfig, location_name: 'MicrosoftEntraConfig', traits: {"smithy.api#documentation" => "<p>The details about Microsoft Entra config.</p>"}))
    RegisterWorkspaceDirectoryRequest.add_member(:workspace_type, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceType, location_name: 'WorkspaceType', traits: {"smithy.api#documentation" => "<p>Indicates whether the directory's WorkSpace type is personal or pools.</p>"}))
    RegisterWorkspaceDirectoryRequest.add_member(:active_directory_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ActiveDirectoryConfig, location_name: 'ActiveDirectoryConfig', traits: {"smithy.api#documentation" => "<p>The active directory config of the directory.</p>"}))
    RegisterWorkspaceDirectoryRequest.type = Types::RegisterWorkspaceDirectoryRequest
    RegisterWorkspaceDirectoryResult.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the directory.</p>"}))
    RegisterWorkspaceDirectoryResult.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceDirectoryState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The registration status of the WorkSpace directory.</p>"}))
    RegisterWorkspaceDirectoryResult.type = Types::RegisterWorkspaceDirectoryResult
    RejectAccountLinkInvitationRequest.add_member(:link_id, Smithy::Schema::Shapes::ShapeRef.new(shape: LinkId, location_name: 'LinkId', traits: {"smithy.api#documentation" => "<p>The identifier of the account link</p>", "smithy.api#required" => {}}))
    RejectAccountLinkInvitationRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>The client token of the account link invitation to reject.</p>"}))
    RejectAccountLinkInvitationRequest.type = Types::RejectAccountLinkInvitationRequest
    RejectAccountLinkInvitationResult.add_member(:account_link, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountLink, location_name: 'AccountLink', traits: {"smithy.api#documentation" => "<p>Information about the account link.</p>"}))
    RejectAccountLinkInvitationResult.type = Types::RejectAccountLinkInvitationResult
    RelatedWorkspaceProperties.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'WorkspaceId', traits: {"smithy.api#documentation" => "<p>The identifier of the related WorkSpace.</p>"}))
    RelatedWorkspaceProperties.add_member(:region, Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'Region', traits: {"smithy.api#documentation" => "<p>The Region of the related WorkSpace.</p>"}))
    RelatedWorkspaceProperties.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>Indicates the state of the WorkSpace.</p>"}))
    RelatedWorkspaceProperties.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: StandbyWorkspaceRelationshipType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>Indicates the type of WorkSpace.</p>"}))
    RelatedWorkspaceProperties.type = Types::RelatedWorkspaceProperties
    RelatedWorkspaces.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RelatedWorkspaceProperties)
    ResourceAlreadyExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ResourceAlreadyExistsException.type = Types::ResourceAlreadyExistsException
    ResourceAssociatedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ResourceAssociatedException.type = Types::ResourceAssociatedException
    ResourceCreationFailedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ResourceCreationFailedException.type = Types::ResourceCreationFailedException
    ResourceIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    ResourceInUseException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ResourceInUseException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The ID of the resource that is in use.</p>"}))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The exception error message.</p>"}))
    ResourceLimitExceededException.type = Types::ResourceLimitExceededException
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The resource could not be found.</p>"}))
    ResourceNotFoundException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The ID of the resource that could not be found.</p>"}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceUnavailableException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The exception error message.</p>"}))
    ResourceUnavailableException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The identifier of the resource that is not available.</p>"}))
    ResourceUnavailableException.type = Types::ResourceUnavailableException
    RestoreWorkspaceRequest.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'WorkspaceId', traits: {"smithy.api#documentation" => "<p>The identifier of the WorkSpace.</p>", "smithy.api#required" => {}}))
    RestoreWorkspaceRequest.type = Types::RestoreWorkspaceRequest
    RestoreWorkspaceResult.type = Types::RestoreWorkspaceResult
    RevokeIpRulesRequest.add_member(:group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IpGroupId, location_name: 'GroupId', traits: {"smithy.api#documentation" => "<p>The identifier of the group.</p>", "smithy.api#required" => {}}))
    RevokeIpRulesRequest.add_member(:user_rules, Smithy::Schema::Shapes::ShapeRef.new(shape: IpRevokedRuleList, location_name: 'UserRules', traits: {"smithy.api#documentation" => "<p>The rules to remove from the group.</p>", "smithy.api#required" => {}}))
    RevokeIpRulesRequest.type = Types::RevokeIpRulesRequest
    RevokeIpRulesResult.type = Types::RevokeIpRulesResult
    RootStorage.add_member(:capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'Capacity', traits: {"smithy.api#documentation" => "<p>The size of the root volume.</p>", "smithy.api#required" => {}}))
    RootStorage.type = Types::RootStorage
    RunningMode.add_member(:auto_stop, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTO_STOP', traits: {"smithy.api#enumValue" => "AUTO_STOP"}))
    RunningMode.add_member(:always_on, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALWAYS_ON', traits: {"smithy.api#enumValue" => "ALWAYS_ON"}))
    RunningMode.add_member(:manual, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MANUAL', traits: {"smithy.api#enumValue" => "MANUAL"}))
    SamlProperties.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: SamlStatusEnum, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Indicates the status of SAML 2.0 authentication. These statuses include the following.</p>\n         <ul>\n            <li>\n               <p>If the setting is <code>DISABLED</code>, end users will be directed to login with their directory credentials.</p>\n            </li>\n            <li>\n               <p>If the setting is <code>ENABLED</code>, end users will be directed to login via the user access URL. Users attempting \n               to connect to WorkSpaces from a client application that does not support SAML 2.0 authentication will not be able to \n               connect.</p>\n            </li>\n            <li>\n               <p>If the setting is <code>ENABLED_WITH_DIRECTORY_LOGIN_FALLBACK</code>, end users will be directed to login via the user \n               access URL on supported client applications, but will not prevent clients that do not support SAML 2.0 authentication \n               from connecting as if SAML 2.0 authentication was disabled.</p>\n            </li>\n         </ul>"}))
    SamlProperties.add_member(:user_access_url, Smithy::Schema::Shapes::ShapeRef.new(shape: SamlUserAccessUrl, location_name: 'UserAccessUrl', traits: {"smithy.api#documentation" => "<p>The SAML 2.0 identity provider (IdP) user access URL is the URL a user would navigate to in their web browser in \n         order to federate from the IdP and directly access the application, without any SAML 2.0 service provider (SP) \n         bindings.</p>"}))
    SamlProperties.add_member(:relay_state_parameter_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'RelayStateParameterName', traits: {"smithy.api#documentation" => "<p>The relay state parameter name supported by the SAML 2.0 identity provider (IdP). When the end user is redirected to \n         the user access URL from the WorkSpaces client application, this relay state parameter name is appended as a query \n         parameter to the URL along with the relay state endpoint to return the user to the client application session.</p>\n         <p>To use SAML 2.0 authentication with WorkSpaces, the IdP must support IdP-initiated deep linking for the relay state \n         URL. Consult your IdP documentation for more information.</p>"}))
    SamlProperties.type = Types::SamlProperties
    SamlStatusEnum.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    SamlStatusEnum.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    SamlStatusEnum.add_member(:enabled_with_directory_login_fallback, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED_WITH_DIRECTORY_LOGIN_FALLBACK', traits: {"smithy.api#enumValue" => "ENABLED_WITH_DIRECTORY_LOGIN_FALLBACK"}))
    SelfservicePermissions.add_member(:restart_workspace, Smithy::Schema::Shapes::ShapeRef.new(shape: ReconnectEnum, location_name: 'RestartWorkspace', traits: {"smithy.api#documentation" => "<p>Specifies whether users can restart their WorkSpace.</p>"}))
    SelfservicePermissions.add_member(:increase_volume_size, Smithy::Schema::Shapes::ShapeRef.new(shape: ReconnectEnum, location_name: 'IncreaseVolumeSize', traits: {"smithy.api#documentation" => "<p>Specifies whether users can increase the volume size of the drives on their\n         WorkSpace.</p>"}))
    SelfservicePermissions.add_member(:change_compute_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ReconnectEnum, location_name: 'ChangeComputeType', traits: {"smithy.api#documentation" => "<p>Specifies whether users can change the compute type (bundle) for their WorkSpace.</p>"}))
    SelfservicePermissions.add_member(:switch_running_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ReconnectEnum, location_name: 'SwitchRunningMode', traits: {"smithy.api#documentation" => "<p>Specifies whether users can switch the running mode of their WorkSpace.</p>"}))
    SelfservicePermissions.add_member(:rebuild_workspace, Smithy::Schema::Shapes::ShapeRef.new(shape: ReconnectEnum, location_name: 'RebuildWorkspace', traits: {"smithy.api#documentation" => "<p>Specifies whether users can rebuild the operating system of a WorkSpace to its original\n         state.</p>"}))
    SelfservicePermissions.type = Types::SelfservicePermissions
    SessionConnectionState.add_member(:connected, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONNECTED', traits: {"smithy.api#enumValue" => "CONNECTED"}))
    SessionConnectionState.add_member(:not_connected, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_CONNECTED', traits: {"smithy.api#enumValue" => "NOT_CONNECTED"}))
    Snapshot.add_member(:snapshot_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SnapshotTime', traits: {"smithy.api#documentation" => "<p>The time when the snapshot was created.</p>"}))
    Snapshot.type = Types::Snapshot
    SnapshotList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Snapshot)
    StandbyWorkspace.add_member(:primary_workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'PrimaryWorkspaceId', traits: {"smithy.api#documentation" => "<p>The identifier of the standby WorkSpace.</p>", "smithy.api#required" => {}}))
    StandbyWorkspace.add_member(:volume_encryption_key, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeEncryptionKey, location_name: 'VolumeEncryptionKey', traits: {"smithy.api#documentation" => "<p>The volume encryption key of the standby WorkSpace.</p>"}))
    StandbyWorkspace.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the directory for the standby WorkSpace.</p>", "smithy.api#required" => {}}))
    StandbyWorkspace.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags associated with the standby WorkSpace.</p>"}))
    StandbyWorkspace.add_member(:data_replication, Smithy::Schema::Shapes::ShapeRef.new(shape: DataReplication, location_name: 'DataReplication', traits: {"smithy.api#documentation" => "<p>Indicates whether data replication is enabled, and if enabled, the type of data replication.</p>"}))
    StandbyWorkspace.type = Types::StandbyWorkspace
    StandbyWorkspaceRelationshipType.add_member(:primary, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRIMARY', traits: {"smithy.api#enumValue" => "PRIMARY"}))
    StandbyWorkspaceRelationshipType.add_member(:standby, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STANDBY', traits: {"smithy.api#enumValue" => "STANDBY"}))
    StandbyWorkspacesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StandbyWorkspace)
    StandbyWorkspacesProperties.add_member(:standby_workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'StandbyWorkspaceId', traits: {"smithy.api#documentation" => "<p>The identifier of the standby WorkSpace</p>"}))
    StandbyWorkspacesProperties.add_member(:data_replication, Smithy::Schema::Shapes::ShapeRef.new(shape: DataReplication, location_name: 'DataReplication', traits: {"smithy.api#documentation" => "<p>Indicates whether data replication is enabled, and if enabled, the type of data replication.</p>"}))
    StandbyWorkspacesProperties.add_member(:recovery_snapshot_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'RecoverySnapshotTime', traits: {"smithy.api#documentation" => "<p>The date and time at which the last successful snapshot was taken of the \n         primary WorkSpace used for replicating data.</p>"}))
    StandbyWorkspacesProperties.type = Types::StandbyWorkspacesProperties
    StandbyWorkspacesPropertiesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StandbyWorkspacesProperties)
    StartRequest.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'WorkspaceId', traits: {"smithy.api#documentation" => "<p>The identifier of the WorkSpace.</p>"}))
    StartRequest.type = Types::StartRequest
    StartWorkspaceRequests.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StartRequest)
    StartWorkspacesPoolRequest.add_member(:pool_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspacesPoolId, location_name: 'PoolId', traits: {"smithy.api#documentation" => "<p>The identifier of the pool.</p>", "smithy.api#required" => {}}))
    StartWorkspacesPoolRequest.type = Types::StartWorkspacesPoolRequest
    StartWorkspacesPoolResult.type = Types::StartWorkspacesPoolResult
    StartWorkspacesRequest.add_member(:start_workspace_requests, Smithy::Schema::Shapes::ShapeRef.new(shape: StartWorkspaceRequests, location_name: 'StartWorkspaceRequests', traits: {"smithy.api#documentation" => "<p>The WorkSpaces to start. You can specify up to 25 WorkSpaces.</p>", "smithy.api#required" => {}}))
    StartWorkspacesRequest.type = Types::StartWorkspacesRequest
    StartWorkspacesResult.add_member(:failed_requests, Smithy::Schema::Shapes::ShapeRef.new(shape: FailedStartWorkspaceRequests, location_name: 'FailedRequests', traits: {"smithy.api#documentation" => "<p>Information about the WorkSpaces that could not be started.</p>"}))
    StartWorkspacesResult.type = Types::StartWorkspacesResult
    StopRequest.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'WorkspaceId', traits: {"smithy.api#documentation" => "<p>The identifier of the WorkSpace.</p>"}))
    StopRequest.type = Types::StopRequest
    StopWorkspaceRequests.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StopRequest)
    StopWorkspacesPoolRequest.add_member(:pool_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspacesPoolId, location_name: 'PoolId', traits: {"smithy.api#documentation" => "<p>The identifier of the pool.</p>", "smithy.api#required" => {}}))
    StopWorkspacesPoolRequest.type = Types::StopWorkspacesPoolRequest
    StopWorkspacesPoolResult.type = Types::StopWorkspacesPoolResult
    StopWorkspacesRequest.add_member(:stop_workspace_requests, Smithy::Schema::Shapes::ShapeRef.new(shape: StopWorkspaceRequests, location_name: 'StopWorkspaceRequests', traits: {"smithy.api#documentation" => "<p>The WorkSpaces to stop. You can specify up to 25 WorkSpaces.</p>", "smithy.api#required" => {}}))
    StopWorkspacesRequest.type = Types::StopWorkspacesRequest
    StopWorkspacesResult.add_member(:failed_requests, Smithy::Schema::Shapes::ShapeRef.new(shape: FailedStopWorkspaceRequests, location_name: 'FailedRequests', traits: {"smithy.api#documentation" => "<p>Information about the WorkSpaces that could not be stopped.</p>"}))
    StopWorkspacesResult.type = Types::StopWorkspacesResult
    StorageConnector.add_member(:connector_type, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageConnectorTypeEnum, location_name: 'ConnectorType', traits: {"smithy.api#documentation" => "<p>The type of connector used to save user files.</p>", "smithy.api#required" => {}}))
    StorageConnector.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageConnectorStatusEnum, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Indicates if the storage connetor is enabled or disabled.</p>", "smithy.api#required" => {}}))
    StorageConnector.type = Types::StorageConnector
    StorageConnectorStatusEnum.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    StorageConnectorStatusEnum.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    StorageConnectorTypeEnum.add_member(:home_folder, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HOME_FOLDER', traits: {"smithy.api#enumValue" => "HOME_FOLDER"}))
    StorageConnectors.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StorageConnector)
    StreamingExperiencePreferredProtocolEnum.add_member(:tcp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TCP', traits: {"smithy.api#enumValue" => "TCP"}))
    StreamingExperiencePreferredProtocolEnum.add_member(:udp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UDP', traits: {"smithy.api#enumValue" => "UDP"}))
    StreamingProperties.add_member(:streaming_experience_preferred_protocol, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamingExperiencePreferredProtocolEnum, location_name: 'StreamingExperiencePreferredProtocol', traits: {"smithy.api#documentation" => "<p>Indicates the type of preferred protocol for the streaming experience.</p>"}))
    StreamingProperties.add_member(:user_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: UserSettings, location_name: 'UserSettings', traits: {"smithy.api#documentation" => "<p>Indicates the permission settings asscoiated with the user.</p>"}))
    StreamingProperties.add_member(:storage_connectors, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageConnectors, location_name: 'StorageConnectors', traits: {"smithy.api#documentation" => "<p>Indicates the storage connector used </p>"}))
    StreamingProperties.add_member(:global_accelerator, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalAcceleratorForDirectory, location_name: 'GlobalAccelerator', traits: {"smithy.api#documentation" => "<p>Indicates the Global Accelerator properties.</p>"}))
    StreamingProperties.type = Types::StreamingProperties
    SubnetIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId)
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The key of the tag.</p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value of the tag.</p>"}))
    Tag.type = Types::Tag
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TargetWorkspaceState.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    TargetWorkspaceState.add_member(:admin_maintenance, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADMIN_MAINTENANCE', traits: {"smithy.api#enumValue" => "ADMIN_MAINTENANCE"}))
    Tenancy.add_member(:dedicated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEDICATED', traits: {"smithy.api#enumValue" => "DEDICATED"}))
    Tenancy.add_member(:shared, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHARED', traits: {"smithy.api#enumValue" => "SHARED"}))
    TerminateRequest.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'WorkspaceId', traits: {"smithy.api#documentation" => "<p>The identifier of the WorkSpace.</p>", "smithy.api#required" => {}}))
    TerminateRequest.type = Types::TerminateRequest
    TerminateWorkspaceRequests.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TerminateRequest)
    TerminateWorkspacesPoolRequest.add_member(:pool_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspacesPoolId, location_name: 'PoolId', traits: {"smithy.api#documentation" => "<p>The identifier of the pool.</p>", "smithy.api#required" => {}}))
    TerminateWorkspacesPoolRequest.type = Types::TerminateWorkspacesPoolRequest
    TerminateWorkspacesPoolResult.type = Types::TerminateWorkspacesPoolResult
    TerminateWorkspacesPoolSessionRequest.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonUuid, location_name: 'SessionId', traits: {"smithy.api#documentation" => "<p>The identifier of the pool session.</p>", "smithy.api#required" => {}}))
    TerminateWorkspacesPoolSessionRequest.type = Types::TerminateWorkspacesPoolSessionRequest
    TerminateWorkspacesPoolSessionResult.type = Types::TerminateWorkspacesPoolSessionResult
    TerminateWorkspacesRequest.add_member(:terminate_workspace_requests, Smithy::Schema::Shapes::ShapeRef.new(shape: TerminateWorkspaceRequests, location_name: 'TerminateWorkspaceRequests', traits: {"smithy.api#documentation" => "<p>The WorkSpaces to terminate. You can specify up to 25 WorkSpaces.</p>", "smithy.api#required" => {}}))
    TerminateWorkspacesRequest.type = Types::TerminateWorkspacesRequest
    TerminateWorkspacesResult.add_member(:failed_requests, Smithy::Schema::Shapes::ShapeRef.new(shape: FailedTerminateWorkspaceRequests, location_name: 'FailedRequests', traits: {"smithy.api#documentation" => "<p>Information about the WorkSpaces that could not be terminated.</p>"}))
    TerminateWorkspacesResult.type = Types::TerminateWorkspacesResult
    TimeoutSettings.add_member(:disconnect_timeout_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: DisconnectTimeoutInSeconds, location_name: 'DisconnectTimeoutInSeconds', traits: {"smithy.api#documentation" => "<p>Specifies the amount of time, in seconds, that a streaming session remains active after users disconnect. \n         If users try to reconnect to the streaming session after a disconnection or network interruption \n         within the time set, they are connected to their previous session. Otherwise, they are connected \n         to a new session with a new streaming instance.</p>"}))
    TimeoutSettings.add_member(:idle_disconnect_timeout_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: IdleDisconnectTimeoutInSeconds, location_name: 'IdleDisconnectTimeoutInSeconds', traits: {"smithy.api#documentation" => "<p>The amount of time in seconds a connection will stay active while idle.</p>"}))
    TimeoutSettings.add_member(:max_user_duration_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxUserDurationInSeconds, location_name: 'MaxUserDurationInSeconds', traits: {"smithy.api#documentation" => "<p>Specifies the maximum amount of time, in seconds, that a streaming session can remain active. \n         If users are still connected to a streaming instance five minutes before this limit is reached, \n         they are prompted to save any open documents before being disconnected. After this time elapses, \n         the instance is terminated and replaced by a new instance.</p>"}))
    TimeoutSettings.type = Types::TimeoutSettings
    UnsupportedNetworkConfigurationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    UnsupportedNetworkConfigurationException.type = Types::UnsupportedNetworkConfigurationException
    UnsupportedWorkspaceConfigurationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    UnsupportedWorkspaceConfigurationException.type = Types::UnsupportedWorkspaceConfigurationException
    UpdateConnectClientAddInRequest.add_member(:add_in_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonUuid, location_name: 'AddInId', traits: {"smithy.api#documentation" => "<p>The identifier of the client add-in to update.</p>", "smithy.api#required" => {}}))
    UpdateConnectClientAddInRequest.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The directory identifier for which the client add-in is configured.</p>", "smithy.api#required" => {}}))
    UpdateConnectClientAddInRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AddInName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the client add-in.</p>"}))
    UpdateConnectClientAddInRequest.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: AddInUrl, location_name: 'URL', traits: {"smithy.api#documentation" => "<p>The endpoint URL of the Amazon Connect client add-in.</p>"}))
    UpdateConnectClientAddInRequest.type = Types::UpdateConnectClientAddInRequest
    UpdateConnectClientAddInResult.type = Types::UpdateConnectClientAddInResult
    UpdateConnectionAliasPermissionRequest.add_member(:alias_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionAliasId, location_name: 'AliasId', traits: {"smithy.api#documentation" => "<p>The identifier of the connection alias that you want to update permissions for.</p>", "smithy.api#required" => {}}))
    UpdateConnectionAliasPermissionRequest.add_member(:connection_alias_permission, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionAliasPermission, location_name: 'ConnectionAliasPermission', traits: {"smithy.api#documentation" => "<p>Indicates whether to share or unshare the connection alias with the specified Amazon Web Services account.</p>", "smithy.api#required" => {}}))
    UpdateConnectionAliasPermissionRequest.type = Types::UpdateConnectionAliasPermissionRequest
    UpdateConnectionAliasPermissionResult.type = Types::UpdateConnectionAliasPermissionResult
    UpdateResult.add_member(:update_available, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'UpdateAvailable', traits: {"smithy.api#documentation" => "<p>Indicates whether updated drivers or other components are available for the specified\n         WorkSpace image.</p>"}))
    UpdateResult.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of whether updates for the WorkSpace image are pending or\n         available.</p>"}))
    UpdateResult.type = Types::UpdateResult
    UpdateRulesOfIpGroupRequest.add_member(:group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IpGroupId, location_name: 'GroupId', traits: {"smithy.api#documentation" => "<p>The identifier of the group.</p>", "smithy.api#required" => {}}))
    UpdateRulesOfIpGroupRequest.add_member(:user_rules, Smithy::Schema::Shapes::ShapeRef.new(shape: IpRuleList, location_name: 'UserRules', traits: {"smithy.api#documentation" => "<p>One or more rules.</p>", "smithy.api#required" => {}}))
    UpdateRulesOfIpGroupRequest.type = Types::UpdateRulesOfIpGroupRequest
    UpdateRulesOfIpGroupResult.type = Types::UpdateRulesOfIpGroupResult
    UpdateWorkspaceBundleRequest.add_member(:bundle_id, Smithy::Schema::Shapes::ShapeRef.new(shape: BundleId, location_name: 'BundleId', traits: {"smithy.api#documentation" => "<p>The identifier of the bundle.</p>"}))
    UpdateWorkspaceBundleRequest.add_member(:image_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceImageId, location_name: 'ImageId', traits: {"smithy.api#documentation" => "<p>The identifier of the image.</p>"}))
    UpdateWorkspaceBundleRequest.type = Types::UpdateWorkspaceBundleRequest
    UpdateWorkspaceBundleResult.type = Types::UpdateWorkspaceBundleResult
    UpdateWorkspaceImagePermissionRequest.add_member(:image_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceImageId, location_name: 'ImageId', traits: {"smithy.api#documentation" => "<p>The identifier of the image.</p>", "smithy.api#required" => {}}))
    UpdateWorkspaceImagePermissionRequest.add_member(:allow_copy_image, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'AllowCopyImage', traits: {"smithy.api#documentation" => "<p>The permission to copy the image. This permission can be revoked only after an image has\n         been shared.</p>", "smithy.api#required" => {}}))
    UpdateWorkspaceImagePermissionRequest.add_member(:shared_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccount, location_name: 'SharedAccountId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Web Services account to share or unshare the image\n         with.</p>\n         <important>\n            <p>Before sharing the image, confirm that you are sharing to the correct Amazon Web Services account ID.</p>\n         </important>", "smithy.api#required" => {}}))
    UpdateWorkspaceImagePermissionRequest.type = Types::UpdateWorkspaceImagePermissionRequest
    UpdateWorkspaceImagePermissionResult.type = Types::UpdateWorkspaceImagePermissionResult
    UpdateWorkspacesPoolRequest.add_member(:pool_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspacesPoolId, location_name: 'PoolId', traits: {"smithy.api#documentation" => "<p>The identifier of the specified pool to update.</p>", "smithy.api#required" => {}}))
    UpdateWorkspacesPoolRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>Describes the specified pool to update.</p>"}))
    UpdateWorkspacesPoolRequest.add_member(:bundle_id, Smithy::Schema::Shapes::ShapeRef.new(shape: BundleId, location_name: 'BundleId', traits: {"smithy.api#documentation" => "<p>The identifier of the bundle.</p>"}))
    UpdateWorkspacesPoolRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the directory.</p>"}))
    UpdateWorkspacesPoolRequest.add_member(:capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: Capacity, location_name: 'Capacity', traits: {"smithy.api#documentation" => "<p>The desired capacity for the pool.</p>"}))
    UpdateWorkspacesPoolRequest.add_member(:application_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSettingsRequest, location_name: 'ApplicationSettings', traits: {"smithy.api#documentation" => "<p>The persistent application settings for users in the pool.</p>"}))
    UpdateWorkspacesPoolRequest.add_member(:timeout_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeoutSettings, location_name: 'TimeoutSettings', traits: {"smithy.api#documentation" => "<p>Indicates the timeout settings of the specified pool.</p>"}))
    UpdateWorkspacesPoolRequest.add_member(:running_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: PoolsRunningMode, location_name: 'RunningMode', traits: {"smithy.api#documentation" => "<p>The desired running mode for the pool. The running mode can only be updated when the pool is in a stopped state.</p>"}))
    UpdateWorkspacesPoolRequest.type = Types::UpdateWorkspacesPoolRequest
    UpdateWorkspacesPoolResult.add_member(:workspaces_pool, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspacesPool, location_name: 'WorkspacesPool', traits: {"smithy.api#documentation" => "<p>Describes the specified pool.</p>"}))
    UpdateWorkspacesPoolResult.type = Types::UpdateWorkspacesPoolResult
    UserIdentityType.add_member(:customer_managed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOMER_MANAGED', traits: {"smithy.api#enumValue" => "CUSTOMER_MANAGED"}))
    UserIdentityType.add_member(:aws_directory_service, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_DIRECTORY_SERVICE', traits: {"smithy.api#enumValue" => "AWS_DIRECTORY_SERVICE"}))
    UserIdentityType.add_member(:aws_iam_identity_center, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_IAM_IDENTITY_CENTER', traits: {"smithy.api#enumValue" => "AWS_IAM_IDENTITY_CENTER"}))
    UserSetting.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: UserSettingActionEnum, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>Indicates the type of action.</p>", "smithy.api#required" => {}}))
    UserSetting.add_member(:permission, Smithy::Schema::Shapes::ShapeRef.new(shape: UserSettingPermissionEnum, location_name: 'Permission', traits: {"smithy.api#documentation" => "<p>Indicates if the setting is enabled or disabled.</p>", "smithy.api#required" => {}}))
    UserSetting.add_member(:maximum_length, Smithy::Schema::Shapes::ShapeRef.new(shape: MaximumLength, location_name: 'MaximumLength', traits: {"smithy.api#documentation" => "<p>Indicates the maximum character length for the specified user setting.</p>"}))
    UserSetting.type = Types::UserSetting
    UserSettingActionEnum.add_member(:clipboard_copy_from_local_device, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLIPBOARD_COPY_FROM_LOCAL_DEVICE', traits: {"smithy.api#enumValue" => "CLIPBOARD_COPY_FROM_LOCAL_DEVICE"}))
    UserSettingActionEnum.add_member(:clipboard_copy_to_local_device, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLIPBOARD_COPY_TO_LOCAL_DEVICE', traits: {"smithy.api#enumValue" => "CLIPBOARD_COPY_TO_LOCAL_DEVICE"}))
    UserSettingActionEnum.add_member(:printing_to_local_device, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRINTING_TO_LOCAL_DEVICE', traits: {"smithy.api#enumValue" => "PRINTING_TO_LOCAL_DEVICE"}))
    UserSettingActionEnum.add_member(:smart_card, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SMART_CARD', traits: {"smithy.api#enumValue" => "SMART_CARD"}))
    UserSettingPermissionEnum.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    UserSettingPermissionEnum.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    UserSettings.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UserSetting)
    UserStorage.add_member(:capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'Capacity', traits: {"smithy.api#documentation" => "<p>The size of the user volume.</p>", "smithy.api#required" => {}}))
    UserStorage.type = Types::UserStorage
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ValidationException.type = Types::ValidationException
    WorkSpaceApplication.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkSpaceApplicationId, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The identifier of the application.</p>"}))
    WorkSpaceApplication.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'Created', traits: {"smithy.api#documentation" => "<p>The time the application is created.</p>"}))
    WorkSpaceApplication.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String2048, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the WorkSpace application.</p>"}))
    WorkSpaceApplication.add_member(:license_type, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkSpaceApplicationLicenseType, location_name: 'LicenseType', traits: {"smithy.api#documentation" => "<p>The license availability for the applications.</p>"}))
    WorkSpaceApplication.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the WorkSpace application.</p>"}))
    WorkSpaceApplication.add_member(:owner, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkSpaceApplicationOwner, location_name: 'Owner', traits: {"smithy.api#documentation" => "<p>The owner of the WorkSpace application.</p>"}))
    WorkSpaceApplication.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkSpaceApplicationState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The status of WorkSpace application.</p>"}))
    WorkSpaceApplication.add_member(:supported_compute_type_names, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeList, location_name: 'SupportedComputeTypeNames', traits: {"smithy.api#documentation" => "<p>The supported compute types of the WorkSpace application.</p>"}))
    WorkSpaceApplication.add_member(:supported_operating_system_names, Smithy::Schema::Shapes::ShapeRef.new(shape: OperatingSystemNameList, location_name: 'SupportedOperatingSystemNames', traits: {"smithy.api#documentation" => "<p>The supported operating systems of the WorkSpace application.</p>"}))
    WorkSpaceApplication.type = Types::WorkSpaceApplication
    WorkSpaceApplicationDeployment.add_member(:associations, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceResourceAssociationList, location_name: 'Associations', traits: {"smithy.api#documentation" => "<p>The associations between the applications and the associated resources.</p>"}))
    WorkSpaceApplicationDeployment.type = Types::WorkSpaceApplicationDeployment
    WorkSpaceApplicationIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WorkSpaceApplicationId)
    WorkSpaceApplicationLicenseType.add_member(:licensed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LICENSED', traits: {"smithy.api#enumValue" => "LICENSED"}))
    WorkSpaceApplicationLicenseType.add_member(:unlicensed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNLICENSED', traits: {"smithy.api#enumValue" => "UNLICENSED"}))
    WorkSpaceApplicationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WorkSpaceApplication)
    WorkSpaceApplicationState.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    WorkSpaceApplicationState.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    WorkSpaceApplicationState.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    WorkSpaceApplicationState.add_member(:uninstall_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNINSTALL_ONLY', traits: {"smithy.api#enumValue" => "UNINSTALL_ONLY"}))
    WorkSpaceAssociatedResourceType.add_member(:application, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPLICATION', traits: {"smithy.api#enumValue" => "APPLICATION"}))
    WorkSpaceAssociatedResourceTypeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WorkSpaceAssociatedResourceType)
    Workspace.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'WorkspaceId', traits: {"smithy.api#documentation" => "<p>The identifier of the WorkSpace.</p>"}))
    Workspace.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the Directory Service directory for the WorkSpace.</p>"}))
    Workspace.add_member(:user_name, Smithy::Schema::Shapes::ShapeRef.new(shape: UserName, location_name: 'UserName', traits: {"smithy.api#documentation" => "<p>The user for the WorkSpace.</p>"}))
    Workspace.add_member(:ip_address, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddress, location_name: 'IpAddress', traits: {"smithy.api#documentation" => "<p>The IP address of the WorkSpace.</p>"}))
    Workspace.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The operational state of the WorkSpace.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>PENDING</code> – The WorkSpace is in a waiting state (for example, the WorkSpace is being created).</p>\n            </li>\n            <li>\n               <p>\n                  <code>AVAILABLE</code> – The WorkSpace is running and has passed the health checks.</p>\n            </li>\n            <li>\n               <p>\n                  <code>IMPAIRED</code> – Refer to <code>UNHEALTHY</code> state.</p>\n            </li>\n            <li>\n               <p>\n                  <code>UNHEALTHY</code> – The WorkSpace is not responding to health checks.</p>\n            </li>\n            <li>\n               <p>\n                  <code>REBOOTING</code> – The WorkSpace is being rebooted (restarted).</p>\n            </li>\n            <li>\n               <p>\n                  <code>STARTING</code> – The WorkSpace is starting up and health checks are being run.</p>\n            </li>\n            <li>\n               <p>\n                  <code>REBUILDING</code> – The WorkSpace is being rebuilt.</p>\n            </li>\n            <li>\n               <p>\n                  <code>RESTORING</code> – The WorkSpace is being restored.</p>\n            </li>\n            <li>\n               <p>\n                  <code>MAINTENANCE</code> – The WorkSpace is undergoing scheduled maintenance by Amazon Web Services.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ADMIN_MAINTENANCE</code>  – The WorkSpace is undergoing maintenance by the WorkSpaces administrator.</p>\n            </li>\n            <li>\n               <p>\n                  <code>TERMINATING</code> – The WorkSpace is being deleted.</p>\n            </li>\n            <li>\n               <p>\n                  <code>TERMINATED</code> – The WorkSpace has been deleted.</p>\n            </li>\n            <li>\n               <p>\n                  <code>SUSPENDED</code> – The WorkSpace has been suspended for image creation.</p>\n            </li>\n            <li>\n               <p>\n                  <code>UPDATING</code> – The WorkSpace is undergoing an update.</p>\n            </li>\n            <li>\n               <p>\n                  <code>STOPPING</code> – The WorkSpace is being stopped.</p>\n            </li>\n            <li>\n               <p>\n                  <code>STOPPED</code> – The WorkSpace has been stopped.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ERROR </code> – The WorkSpace is an error state (for example, an error occurred during startup).</p>\n            </li>\n         </ul>\n         <note>\n            <p>After a WorkSpace is terminated, the <code>TERMINATED</code> state is returned only\n            briefly before the WorkSpace directory metadata is cleaned up, so this state is rarely\n            returned. To confirm that a WorkSpace is terminated, check for the WorkSpace ID by using\n               <a href=\"https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeWorkspaces.html\">\n               DescribeWorkSpaces</a>. If the WorkSpace ID isn't returned, then the WorkSpace\n            has been successfully terminated.</p>\n         </note>"}))
    Workspace.add_member(:bundle_id, Smithy::Schema::Shapes::ShapeRef.new(shape: BundleId, location_name: 'BundleId', traits: {"smithy.api#documentation" => "<p>The identifier of the bundle used to create the WorkSpace.</p>"}))
    Workspace.add_member(:subnet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId, location_name: 'SubnetId', traits: {"smithy.api#documentation" => "<p>The identifier of the subnet for the WorkSpace.</p>"}))
    Workspace.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>The text of the error message that is returned if the WorkSpace cannot be\n         created.</p>"}))
    Workspace.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>The error code that is returned if the WorkSpace cannot be created.</p>"}))
    Workspace.add_member(:computer_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputerName, location_name: 'ComputerName', traits: {"smithy.api#documentation" => "<p>The name of the WorkSpace, as seen by the operating system. The format of this name\n         varies. For more information, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/launch-workspaces-tutorials.html\"> Launch a\n            WorkSpace</a>. </p>"}))
    Workspace.add_member(:volume_encryption_key, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeEncryptionKey, location_name: 'VolumeEncryptionKey', traits: {"smithy.api#documentation" => "<p>The ARN of the symmetric KMS key used to encrypt data stored on your WorkSpace.\n         Amazon WorkSpaces does not support asymmetric KMS keys.</p>"}))
    Workspace.add_member(:user_volume_encryption_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'UserVolumeEncryptionEnabled', traits: {"smithy.api#documentation" => "<p>Indicates whether the data stored on the user volume is encrypted.</p>"}))
    Workspace.add_member(:root_volume_encryption_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'RootVolumeEncryptionEnabled', traits: {"smithy.api#documentation" => "<p>Indicates whether the data stored on the root volume is encrypted.</p>"}))
    Workspace.add_member(:workspace_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceName, location_name: 'WorkspaceName', traits: {"smithy.api#documentation" => "<p>The name of the user-decoupled WorkSpace.</p>"}))
    Workspace.add_member(:workspace_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceProperties, location_name: 'WorkspaceProperties', traits: {"smithy.api#documentation" => "<p>The properties of the WorkSpace.</p>"}))
    Workspace.add_member(:modification_states, Smithy::Schema::Shapes::ShapeRef.new(shape: ModificationStateList, location_name: 'ModificationStates', traits: {"smithy.api#documentation" => "<p>The modification states of the WorkSpace.</p>"}))
    Workspace.add_member(:related_workspaces, Smithy::Schema::Shapes::ShapeRef.new(shape: RelatedWorkspaces, location_name: 'RelatedWorkspaces', traits: {"smithy.api#documentation" => "<p>The standby WorkSpace or primary WorkSpace related to the specified WorkSpace.</p>"}))
    Workspace.add_member(:data_replication_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: DataReplicationSettings, location_name: 'DataReplicationSettings', traits: {"smithy.api#documentation" => "<p>Indicates the settings of the data replication.</p>"}))
    Workspace.add_member(:standby_workspaces_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: StandbyWorkspacesPropertiesList, location_name: 'StandbyWorkspacesProperties', traits: {"smithy.api#documentation" => "<p>The properties of the standby WorkSpace</p>"}))
    Workspace.type = Types::Workspace
    WorkspaceAccessProperties.add_member(:device_type_windows, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPropertyValue, location_name: 'DeviceTypeWindows', traits: {"smithy.api#documentation" => "<p>Indicates whether users can use Windows clients to access their WorkSpaces.</p>"}))
    WorkspaceAccessProperties.add_member(:device_type_osx, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPropertyValue, location_name: 'DeviceTypeOsx', traits: {"smithy.api#documentation" => "<p>Indicates whether users can use macOS clients to access their WorkSpaces.</p>"}))
    WorkspaceAccessProperties.add_member(:device_type_web, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPropertyValue, location_name: 'DeviceTypeWeb', traits: {"smithy.api#documentation" => "<p>Indicates whether users can access their WorkSpaces through a web browser.</p>"}))
    WorkspaceAccessProperties.add_member(:device_type_ios, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPropertyValue, location_name: 'DeviceTypeIos', traits: {"smithy.api#documentation" => "<p>Indicates whether users can use iOS devices to access their WorkSpaces.</p>"}))
    WorkspaceAccessProperties.add_member(:device_type_android, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPropertyValue, location_name: 'DeviceTypeAndroid', traits: {"smithy.api#documentation" => "<p>Indicates whether users can use Android and Android-compatible Chrome OS devices to\n         access their WorkSpaces.</p>"}))
    WorkspaceAccessProperties.add_member(:device_type_chrome_os, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPropertyValue, location_name: 'DeviceTypeChromeOs', traits: {"smithy.api#documentation" => "<p>Indicates whether users can use Chromebooks to access their WorkSpaces.</p>"}))
    WorkspaceAccessProperties.add_member(:device_type_zero_client, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPropertyValue, location_name: 'DeviceTypeZeroClient', traits: {"smithy.api#documentation" => "<p>Indicates whether users can use zero client devices to access their WorkSpaces.</p>"}))
    WorkspaceAccessProperties.add_member(:device_type_linux, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPropertyValue, location_name: 'DeviceTypeLinux', traits: {"smithy.api#documentation" => "<p>Indicates whether users can use Linux clients to access their WorkSpaces.</p>"}))
    WorkspaceAccessProperties.add_member(:device_type_work_spaces_thin_client, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPropertyValue, location_name: 'DeviceTypeWorkSpacesThinClient', traits: {"smithy.api#documentation" => "<p>Indicates whether users can access their WorkSpaces through a WorkSpaces Thin Client.</p>"}))
    WorkspaceAccessProperties.add_member(:access_endpoint_config, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessEndpointConfig, location_name: 'AccessEndpointConfig', traits: {"smithy.api#documentation" => "<p>Specifies the configuration for accessing the WorkSpace.</p>"}))
    WorkspaceAccessProperties.type = Types::WorkspaceAccessProperties
    WorkspaceBundle.add_member(:bundle_id, Smithy::Schema::Shapes::ShapeRef.new(shape: BundleId, location_name: 'BundleId', traits: {"smithy.api#documentation" => "<p>The identifier of the bundle.</p>"}))
    WorkspaceBundle.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the bundle.</p>"}))
    WorkspaceBundle.add_member(:owner, Smithy::Schema::Shapes::ShapeRef.new(shape: BundleOwner, location_name: 'Owner', traits: {"smithy.api#documentation" => "<p>The owner of the bundle. This is the account identifier of the owner, or\n         <code>AMAZON</code> if the bundle is provided by Amazon Web Services.</p>"}))
    WorkspaceBundle.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the bundle.</p>"}))
    WorkspaceBundle.add_member(:image_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceImageId, location_name: 'ImageId', traits: {"smithy.api#documentation" => "<p>The identifier of the image that was used to create the bundle.</p>"}))
    WorkspaceBundle.add_member(:root_storage, Smithy::Schema::Shapes::ShapeRef.new(shape: RootStorage, location_name: 'RootStorage', traits: {"smithy.api#documentation" => "<p>The size of the root volume.</p>"}))
    WorkspaceBundle.add_member(:user_storage, Smithy::Schema::Shapes::ShapeRef.new(shape: UserStorage, location_name: 'UserStorage', traits: {"smithy.api#documentation" => "<p>The size of the user volume.</p>"}))
    WorkspaceBundle.add_member(:compute_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeType, location_name: 'ComputeType', traits: {"smithy.api#documentation" => "<p>The compute type of the bundle. For more information, see \n         <a href=\"http://aws.amazon.com/workspaces/details/#Amazon_WorkSpaces_Bundles\">Amazon WorkSpaces Bundles</a>.</p>"}))
    WorkspaceBundle.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedTime', traits: {"smithy.api#documentation" => "<p>The last time that the bundle was updated.</p>"}))
    WorkspaceBundle.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The time when the bundle was created.</p>"}))
    WorkspaceBundle.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceBundleState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the WorkSpace bundle.</p>"}))
    WorkspaceBundle.add_member(:bundle_type, Smithy::Schema::Shapes::ShapeRef.new(shape: BundleType, location_name: 'BundleType', traits: {"smithy.api#documentation" => "<p>The type of WorkSpace bundle.</p>"}))
    WorkspaceBundle.type = Types::WorkspaceBundle
    WorkspaceBundleState.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    WorkspaceBundleState.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    WorkspaceBundleState.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    WorkspaceConnectionStatus.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'WorkspaceId', traits: {"smithy.api#documentation" => "<p>The identifier of the WorkSpace.</p>"}))
    WorkspaceConnectionStatus.add_member(:connection_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionState, location_name: 'ConnectionState', traits: {"smithy.api#documentation" => "<p>The connection state of the WorkSpace. The connection state is unknown if the WorkSpace\n         is stopped.</p>"}))
    WorkspaceConnectionStatus.add_member(:connection_state_check_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ConnectionStateCheckTimestamp', traits: {"smithy.api#documentation" => "<p>The timestamp of the connection status check.</p>"}))
    WorkspaceConnectionStatus.add_member(:last_known_user_connection_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastKnownUserConnectionTimestamp', traits: {"smithy.api#documentation" => "<p>The timestamp of the last known user connection.</p>"}))
    WorkspaceConnectionStatus.type = Types::WorkspaceConnectionStatus
    WorkspaceConnectionStatusList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceConnectionStatus)
    WorkspaceCreationProperties.add_member(:enable_internet_access, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'EnableInternetAccess', traits: {"smithy.api#documentation" => "<p>Indicates whether internet access is enabled for your WorkSpaces.</p>"}))
    WorkspaceCreationProperties.add_member(:default_ou, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultOu, location_name: 'DefaultOu', traits: {"smithy.api#documentation" => "<p>The default organizational unit (OU) for your WorkSpaces directories. This string must\n         be the full Lightweight Directory Access Protocol (LDAP) distinguished name for the target\n         domain and OU. It must be in the form\n               <code>\"OU=<i>value</i>,DC=<i>value</i>,DC=<i>value</i>\"</code>,\n         where <i>value</i> is any string of characters, and the number of domain\n         components (DCs) is two or more. For example,\n            <code>OU=WorkSpaces_machines,DC=machines,DC=example,DC=com</code>. </p>\n         <important>\n            <ul>\n               <li>\n                  <p>To avoid errors, certain characters in the distinguished name must be escaped.\n                  For more information, see <a href=\"https://docs.microsoft.com/previous-versions/windows/desktop/ldap/distinguished-names\"> Distinguished Names</a> in the Microsoft documentation.</p>\n               </li>\n               <li>\n                  <p>The API doesn't validate whether the OU exists.</p>\n               </li>\n            </ul>\n         </important>"}))
    WorkspaceCreationProperties.add_member(:custom_security_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupId, location_name: 'CustomSecurityGroupId', traits: {"smithy.api#documentation" => "<p>The identifier of your custom security group.</p>"}))
    WorkspaceCreationProperties.add_member(:user_enabled_as_local_administrator, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'UserEnabledAsLocalAdministrator', traits: {"smithy.api#documentation" => "<p>Indicates whether users are local administrators of their WorkSpaces.</p>"}))
    WorkspaceCreationProperties.add_member(:enable_maintenance_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'EnableMaintenanceMode', traits: {"smithy.api#documentation" => "<p>Indicates whether maintenance mode is enabled for your WorkSpaces. For more information,\n         see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/workspace-maintenance.html\">WorkSpace\n            Maintenance</a>. </p>"}))
    WorkspaceCreationProperties.add_member(:instance_iam_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'InstanceIamRoleArn', traits: {"smithy.api#documentation" => "<p>Indicates the IAM role ARN of the instance.</p>"}))
    WorkspaceCreationProperties.type = Types::WorkspaceCreationProperties
    WorkspaceDirectory.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The directory identifier.</p>"}))
    WorkspaceDirectory.add_member(:alias, Smithy::Schema::Shapes::ShapeRef.new(shape: Alias, location_name: 'Alias', traits: {"smithy.api#documentation" => "<p>The directory alias.</p>"}))
    WorkspaceDirectory.add_member(:directory_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryName, location_name: 'DirectoryName', traits: {"smithy.api#documentation" => "<p>The name of the directory.</p>"}))
    WorkspaceDirectory.add_member(:registration_code, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationCode, location_name: 'RegistrationCode', traits: {"smithy.api#documentation" => "<p>The registration code for the directory. This is the code that users enter in their\n         Amazon WorkSpaces client application to connect to the directory.</p>"}))
    WorkspaceDirectory.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIds, location_name: 'SubnetIds', traits: {"smithy.api#documentation" => "<p>The identifiers of the subnets used with the directory.</p>"}))
    WorkspaceDirectory.add_member(:dns_ip_addresses, Smithy::Schema::Shapes::ShapeRef.new(shape: DnsIpAddresses, location_name: 'DnsIpAddresses', traits: {"smithy.api#documentation" => "<p>The IP addresses of the DNS servers for the directory.</p>"}))
    WorkspaceDirectory.add_member(:customer_user_name, Smithy::Schema::Shapes::ShapeRef.new(shape: UserName, location_name: 'CustomerUserName', traits: {"smithy.api#documentation" => "<p>The user name for the service account.</p>"}))
    WorkspaceDirectory.add_member(:iam_role_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'IamRoleId', traits: {"smithy.api#documentation" => "<p>The identifier of the IAM role. This is the role that allows Amazon WorkSpaces to make\n         calls to other services, such as Amazon EC2, on your behalf.</p>"}))
    WorkspaceDirectory.add_member(:directory_type, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceDirectoryType, location_name: 'DirectoryType', traits: {"smithy.api#documentation" => "<p>The directory type.</p>"}))
    WorkspaceDirectory.add_member(:workspace_security_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupId, location_name: 'WorkspaceSecurityGroupId', traits: {"smithy.api#documentation" => "<p>The identifier of the security group that is assigned to new WorkSpaces.</p>"}))
    WorkspaceDirectory.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceDirectoryState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the directory's registration with Amazon WorkSpaces. After a directory is\n         deregistered, the <code>DEREGISTERED</code> state is returned very briefly before the\n         directory metadata is cleaned up, so this state is rarely returned. To confirm that a\n         directory is deregistered, check for the directory ID by using <a href=\"https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeWorkspaceDirectories.html\">\n            DescribeWorkspaceDirectories</a>. If the directory ID isn't returned, then the\n         directory has been successfully deregistered.</p>"}))
    WorkspaceDirectory.add_member(:workspace_creation_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultWorkspaceCreationProperties, location_name: 'WorkspaceCreationProperties', traits: {"smithy.api#documentation" => "<p>The default creation properties for all WorkSpaces in the directory.</p>"}))
    WorkspaceDirectory.add_member(:ip_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: IpGroupIdList, location_name: 'ipGroupIds', traits: {"smithy.api#documentation" => "<p>The identifiers of the IP access control groups associated with the directory.</p>"}))
    WorkspaceDirectory.add_member(:workspace_access_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceAccessProperties, location_name: 'WorkspaceAccessProperties', traits: {"smithy.api#documentation" => "<p>The devices and operating systems that users can use to access WorkSpaces.</p>"}))
    WorkspaceDirectory.add_member(:tenancy, Smithy::Schema::Shapes::ShapeRef.new(shape: Tenancy, location_name: 'Tenancy', traits: {"smithy.api#documentation" => "<p>Specifies whether the directory is dedicated or shared. To use Bring Your Own License\n         (BYOL), this value must be set to <code>DEDICATED</code>. For more information, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html\">Bring\n            Your Own Windows Desktop Images</a>.</p>"}))
    WorkspaceDirectory.add_member(:selfservice_permissions, Smithy::Schema::Shapes::ShapeRef.new(shape: SelfservicePermissions, location_name: 'SelfservicePermissions', traits: {"smithy.api#documentation" => "<p>The default self-service permissions for WorkSpaces in the directory.</p>"}))
    WorkspaceDirectory.add_member(:saml_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: SamlProperties, location_name: 'SamlProperties', traits: {"smithy.api#documentation" => "<p>Describes the enablement status, user access URL, and relay state parameter name that are used for configuring \n         federation with an SAML 2.0 identity provider.</p>"}))
    WorkspaceDirectory.add_member(:certificate_based_auth_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateBasedAuthProperties, location_name: 'CertificateBasedAuthProperties', traits: {"smithy.api#documentation" => "<p>The certificate-based authentication properties used to authenticate SAML 2.0 Identity Provider (IdP)\n         user identities to Active Directory for WorkSpaces login.</p>"}))
    WorkspaceDirectory.add_member(:endpoint_encryption_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointEncryptionMode, location_name: 'EndpointEncryptionMode', traits: {"smithy.api#documentation" => "<p>Endpoint encryption mode that allows you to configure the specified directory between\n         Standard TLS and FIPS 140-2 validated mode.</p>"}))
    WorkspaceDirectory.add_member(:microsoft_entra_config, Smithy::Schema::Shapes::ShapeRef.new(shape: MicrosoftEntraConfig, location_name: 'MicrosoftEntraConfig', traits: {"smithy.api#documentation" => "<p>Specifies details about Microsoft Entra configurations.</p>"}))
    WorkspaceDirectory.add_member(:workspace_directory_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceDirectoryName, location_name: 'WorkspaceDirectoryName', traits: {"smithy.api#documentation" => "<p>The name fo the WorkSpace directory.</p>"}))
    WorkspaceDirectory.add_member(:workspace_directory_description, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceDirectoryDescription, location_name: 'WorkspaceDirectoryDescription', traits: {"smithy.api#documentation" => "<p>The description of the WorkSpace directory</p>"}))
    WorkspaceDirectory.add_member(:user_identity_type, Smithy::Schema::Shapes::ShapeRef.new(shape: UserIdentityType, location_name: 'UserIdentityType', traits: {"smithy.api#documentation" => "<p>Indicates the identity type of the specifired user.</p>"}))
    WorkspaceDirectory.add_member(:workspace_type, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceType, location_name: 'WorkspaceType', traits: {"smithy.api#documentation" => "<p>Indicates whether the directory's WorkSpace type is personal or pools.</p>"}))
    WorkspaceDirectory.add_member(:idc_config, Smithy::Schema::Shapes::ShapeRef.new(shape: IDCConfig, location_name: 'IDCConfig', traits: {"smithy.api#documentation" => "<p>Specifies details about identity center configurations.</p>"}))
    WorkspaceDirectory.add_member(:active_directory_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ActiveDirectoryConfig, location_name: 'ActiveDirectoryConfig', traits: {"smithy.api#documentation" => "<p>Information about the Active Directory config.</p>"}))
    WorkspaceDirectory.add_member(:streaming_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamingProperties, location_name: 'StreamingProperties', traits: {"smithy.api#documentation" => "<p>The streaming properties to configure.</p>"}))
    WorkspaceDirectory.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>The error message returned.</p>"}))
    WorkspaceDirectory.type = Types::WorkspaceDirectory
    WorkspaceDirectoryNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceDirectoryName)
    WorkspaceDirectoryState.add_member(:registering, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REGISTERING', traits: {"smithy.api#enumValue" => "REGISTERING"}))
    WorkspaceDirectoryState.add_member(:registered, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REGISTERED', traits: {"smithy.api#enumValue" => "REGISTERED"}))
    WorkspaceDirectoryState.add_member(:deregistering, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEREGISTERING', traits: {"smithy.api#enumValue" => "DEREGISTERING"}))
    WorkspaceDirectoryState.add_member(:deregistered, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEREGISTERED', traits: {"smithy.api#enumValue" => "DEREGISTERED"}))
    WorkspaceDirectoryState.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    WorkspaceDirectoryType.add_member(:simple_ad, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SIMPLE_AD', traits: {"smithy.api#enumValue" => "SIMPLE_AD"}))
    WorkspaceDirectoryType.add_member(:ad_connector, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AD_CONNECTOR', traits: {"smithy.api#enumValue" => "AD_CONNECTOR"}))
    WorkspaceDirectoryType.add_member(:customer_managed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOMER_MANAGED', traits: {"smithy.api#enumValue" => "CUSTOMER_MANAGED"}))
    WorkspaceDirectoryType.add_member(:aws_iam_identity_center, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_IAM_IDENTITY_CENTER', traits: {"smithy.api#enumValue" => "AWS_IAM_IDENTITY_CENTER"}))
    WorkspaceIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId)
    WorkspaceImage.add_member(:image_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceImageId, location_name: 'ImageId', traits: {"smithy.api#documentation" => "<p>The identifier of the image.</p>"}))
    WorkspaceImage.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceImageName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the image.</p>"}))
    WorkspaceImage.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceImageDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the image.</p>"}))
    WorkspaceImage.add_member(:operating_system, Smithy::Schema::Shapes::ShapeRef.new(shape: OperatingSystem, location_name: 'OperatingSystem', traits: {"smithy.api#documentation" => "<p>The operating system that the image is running. </p>"}))
    WorkspaceImage.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceImageState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The status of the image.</p>"}))
    WorkspaceImage.add_member(:required_tenancy, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceImageRequiredTenancy, location_name: 'RequiredTenancy', traits: {"smithy.api#documentation" => "<p>Specifies whether the image is running on dedicated hardware. When Bring Your Own\n         License (BYOL) is enabled, this value is set to <code>DEDICATED</code>. For more\n         information, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html\">Bring Your Own Windows\n            Desktop Images</a>.</p>"}))
    WorkspaceImage.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceImageErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>The error code that is returned for the image.</p>"}))
    WorkspaceImage.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>The text of the error message that is returned for the image.</p>"}))
    WorkspaceImage.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'Created', traits: {"smithy.api#documentation" => "<p>The date when the image was created. If the image has been shared, the Amazon Web Services account that the image has been shared with sees the original creation date\n         of the image.</p>"}))
    WorkspaceImage.add_member(:owner_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccount, location_name: 'OwnerAccountId', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Web Services account that owns the image.</p>"}))
    WorkspaceImage.add_member(:updates, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateResult, location_name: 'Updates', traits: {"smithy.api#documentation" => "<p>The updates (if any) that are available for the specified image.</p>"}))
    WorkspaceImage.add_member(:error_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDetailsList, location_name: 'ErrorDetails', traits: {"smithy.api#documentation" => "<p>Additional details of the error returned for the image, including the \n         possible causes of the errors and troubleshooting information.</p>"}))
    WorkspaceImage.type = Types::WorkspaceImage
    WorkspaceImageErrorDetailCode.add_member(:outdated_powershell_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OUTDATED_POWERSHELL_VERSION', traits: {"smithy.api#enumValue" => "OutdatedPowershellVersion"}))
    WorkspaceImageErrorDetailCode.add_member(:office_installed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OFFICE_INSTALLED', traits: {"smithy.api#enumValue" => "OfficeInstalled"}))
    WorkspaceImageErrorDetailCode.add_member(:pcoip_agent_installed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PCOIP_AGENT_INSTALLED', traits: {"smithy.api#enumValue" => "PCoIPAgentInstalled"}))
    WorkspaceImageErrorDetailCode.add_member(:windows_updates_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WINDOWS_UPDATES_ENABLED', traits: {"smithy.api#enumValue" => "WindowsUpdatesEnabled"}))
    WorkspaceImageErrorDetailCode.add_member(:auto_mount_disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTO_MOUNT_DISABLED', traits: {"smithy.api#enumValue" => "AutoMountDisabled"}))
    WorkspaceImageErrorDetailCode.add_member(:workspaces_byol_account_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WORKSPACES_BYOL_ACCOUNT_NOT_FOUND', traits: {"smithy.api#enumValue" => "WorkspacesBYOLAccountNotFound"}))
    WorkspaceImageErrorDetailCode.add_member(:workspaces_byol_account_disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WORKSPACES_BYOL_ACCOUNT_DISABLED', traits: {"smithy.api#enumValue" => "WorkspacesBYOLAccountDisabled"}))
    WorkspaceImageErrorDetailCode.add_member(:dhcp_disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DHCP_DISABLED', traits: {"smithy.api#enumValue" => "DHCPDisabled"}))
    WorkspaceImageErrorDetailCode.add_member(:disk_free_space, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISK_FREE_SPACE', traits: {"smithy.api#enumValue" => "DiskFreeSpace"}))
    WorkspaceImageErrorDetailCode.add_member(:additional_drives_attached, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADDITIONAL_DRIVES_ATTACHED', traits: {"smithy.api#enumValue" => "AdditionalDrivesAttached"}))
    WorkspaceImageErrorDetailCode.add_member(:os_not_supported, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OS_NOT_SUPPORTED', traits: {"smithy.api#enumValue" => "OSNotSupported"}))
    WorkspaceImageErrorDetailCode.add_member(:domain_joined, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOMAIN_JOINED', traits: {"smithy.api#enumValue" => "DomainJoined"}))
    WorkspaceImageErrorDetailCode.add_member(:azure_domain_joined, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AZURE_DOMAIN_JOINED', traits: {"smithy.api#enumValue" => "AzureDomainJoined"}))
    WorkspaceImageErrorDetailCode.add_member(:firewall_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIREWALL_ENABLED', traits: {"smithy.api#enumValue" => "FirewallEnabled"}))
    WorkspaceImageErrorDetailCode.add_member(:vmware_tools_installed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VMWARE_TOOLS_INSTALLED', traits: {"smithy.api#enumValue" => "VMWareToolsInstalled"}))
    WorkspaceImageErrorDetailCode.add_member(:disk_size_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISK_SIZE_EXCEEDED', traits: {"smithy.api#enumValue" => "DiskSizeExceeded"}))
    WorkspaceImageErrorDetailCode.add_member(:incompatible_partitioning, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INCOMPATIBLE_PARTITIONING', traits: {"smithy.api#enumValue" => "IncompatiblePartitioning"}))
    WorkspaceImageErrorDetailCode.add_member(:pending_reboot, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_REBOOT', traits: {"smithy.api#enumValue" => "PendingReboot"}))
    WorkspaceImageErrorDetailCode.add_member(:auto_logon_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTO_LOGON_ENABLED', traits: {"smithy.api#enumValue" => "AutoLogonEnabled"}))
    WorkspaceImageErrorDetailCode.add_member(:realtime_universal_disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REALTIME_UNIVERSAL_DISABLED', traits: {"smithy.api#enumValue" => "RealTimeUniversalDisabled"}))
    WorkspaceImageErrorDetailCode.add_member(:multiple_boot_partition, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MULTIPLE_BOOT_PARTITION', traits: {"smithy.api#enumValue" => "MultipleBootPartition"}))
    WorkspaceImageErrorDetailCode.add_member(:sixty_four_bit_os, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SIXTY_FOUR_BIT_OS', traits: {"smithy.api#enumValue" => "Requires64BitOS"}))
    WorkspaceImageErrorDetailCode.add_member(:zero_rearm_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ZERO_REARM_COUNT', traits: {"smithy.api#enumValue" => "ZeroRearmCount"}))
    WorkspaceImageErrorDetailCode.add_member(:in_place_upgrade, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PLACE_UPGRADE', traits: {"smithy.api#enumValue" => "InPlaceUpgrade"}))
    WorkspaceImageErrorDetailCode.add_member(:anti_virus_installed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ANTI_VIRUS_INSTALLED', traits: {"smithy.api#enumValue" => "AntiVirusInstalled"}))
    WorkspaceImageErrorDetailCode.add_member(:uefi_not_supported, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UEFI_NOT_SUPPORTED', traits: {"smithy.api#enumValue" => "UEFINotSupported"}))
    WorkspaceImageErrorDetailCode.add_member(:unknown_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN_ERROR', traits: {"smithy.api#enumValue" => "UnknownError"}))
    WorkspaceImageErrorDetailCode.add_member(:appx_packages_installed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPX_PACKAGES_INSTALLED', traits: {"smithy.api#enumValue" => "AppXPackagesInstalled"}))
    WorkspaceImageErrorDetailCode.add_member(:reserved_storage_in_use, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESERVED_STORAGE_IN_USE', traits: {"smithy.api#enumValue" => "ReservedStorageInUse"}))
    WorkspaceImageErrorDetailCode.add_member(:additional_drives_present, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADDITIONAL_DRIVES_PRESENT', traits: {"smithy.api#enumValue" => "AdditionalDrivesPresent"}))
    WorkspaceImageErrorDetailCode.add_member(:windows_updates_required, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WINDOWS_UPDATES_REQUIRED', traits: {"smithy.api#enumValue" => "WindowsUpdatesRequired"}))
    WorkspaceImageErrorDetailCode.add_member(:sysprep_file_missing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SYSPREP_FILE_MISSING', traits: {"smithy.api#enumValue" => "SysPrepFileMissing"}))
    WorkspaceImageErrorDetailCode.add_member(:user_profile_missing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USER_PROFILE_MISSING', traits: {"smithy.api#enumValue" => "UserProfileMissing"}))
    WorkspaceImageErrorDetailCode.add_member(:insufficient_disk_space, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSUFFICIENT_DISK_SPACE', traits: {"smithy.api#enumValue" => "InsufficientDiskSpace"}))
    WorkspaceImageErrorDetailCode.add_member(:environment_variables_path_missing_entries, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENVIRONMENT_VARIABLES_PATH_MISSING_ENTRIES', traits: {"smithy.api#enumValue" => "EnvironmentVariablesPathMissingEntries"}))
    WorkspaceImageErrorDetailCode.add_member(:domain_account_services_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOMAIN_ACCOUNT_SERVICES_FOUND', traits: {"smithy.api#enumValue" => "DomainAccountServicesFound"}))
    WorkspaceImageErrorDetailCode.add_member(:invalid_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_IP', traits: {"smithy.api#enumValue" => "InvalidIp"}))
    WorkspaceImageErrorDetailCode.add_member(:remote_desktop_services_disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REMOTE_DESKTOP_SERVICES_DISABLED', traits: {"smithy.api#enumValue" => "RemoteDesktopServicesDisabled"}))
    WorkspaceImageErrorDetailCode.add_member(:windows_modules_installer_disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WINDOWS_MODULES_INSTALLER_DISABLED', traits: {"smithy.api#enumValue" => "WindowsModulesInstallerDisabled"}))
    WorkspaceImageErrorDetailCode.add_member(:amazon_ssm_agent_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AMAZON_SSM_AGENT_ENABLED', traits: {"smithy.api#enumValue" => "AmazonSsmAgentEnabled"}))
    WorkspaceImageErrorDetailCode.add_member(:unsupported_security_protocol, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNSUPPORTED_SECURITY_PROTOCOL', traits: {"smithy.api#enumValue" => "UnsupportedSecurityProtocol"}))
    WorkspaceImageErrorDetailCode.add_member(:multiple_user_profiles, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MULTIPLE_USER_PROFILES', traits: {"smithy.api#enumValue" => "MultipleUserProfiles"}))
    WorkspaceImageErrorDetailCode.add_member(:staged_appx_package, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STAGED_APPX_PACKAGE', traits: {"smithy.api#enumValue" => "StagedAppxPackage"}))
    WorkspaceImageErrorDetailCode.add_member(:unsupported_os_upgrade, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNSUPPORTED_OS_UPGRADE', traits: {"smithy.api#enumValue" => "UnsupportedOsUpgrade"}))
    WorkspaceImageErrorDetailCode.add_member(:insufficient_rearm_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSUFFICIENT_REARM_COUNT', traits: {"smithy.api#enumValue" => "InsufficientRearmCount"}))
    WorkspaceImageErrorDetailCode.add_member(:incompatible_protocol, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INCOMPATIBLE_PROTOCOL', traits: {"smithy.api#enumValue" => "ProtocolOSIncompatibility"}))
    WorkspaceImageErrorDetailCode.add_member(:incompatible_memory_integrity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INCOMPATIBLE_MEMORY_INTEGRITY', traits: {"smithy.api#enumValue" => "MemoryIntegrityIncompatibility"}))
    WorkspaceImageErrorDetailCode.add_member(:restricted_drive_letter, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESTRICTED_DRIVE_LETTER', traits: {"smithy.api#enumValue" => "RestrictedDriveLetterInUse"}))
    WorkspaceImageIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceImageId)
    WorkspaceImageIngestionProcess.add_member(:byol_regular, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BYOL_REGULAR', traits: {"smithy.api#enumValue" => "BYOL_REGULAR"}))
    WorkspaceImageIngestionProcess.add_member(:byol_graphics, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BYOL_GRAPHICS', traits: {"smithy.api#enumValue" => "BYOL_GRAPHICS"}))
    WorkspaceImageIngestionProcess.add_member(:byol_graphicspro, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BYOL_GRAPHICSPRO', traits: {"smithy.api#enumValue" => "BYOL_GRAPHICSPRO"}))
    WorkspaceImageIngestionProcess.add_member(:byol_graphics_g4_dn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BYOL_GRAPHICS_G4DN', traits: {"smithy.api#enumValue" => "BYOL_GRAPHICS_G4DN"}))
    WorkspaceImageIngestionProcess.add_member(:byol_regular_wsp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BYOL_REGULAR_WSP', traits: {"smithy.api#enumValue" => "BYOL_REGULAR_WSP"}))
    WorkspaceImageIngestionProcess.add_member(:byol_graphics_g4_dn_wsp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BYOL_GRAPHICS_G4DN_WSP', traits: {"smithy.api#enumValue" => "BYOL_GRAPHICS_G4DN_WSP"}))
    WorkspaceImageIngestionProcess.add_member(:byol_regular_byop, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BYOL_REGULAR_BYOP', traits: {"smithy.api#enumValue" => "BYOL_REGULAR_BYOP"}))
    WorkspaceImageIngestionProcess.add_member(:byol_graphics_g4_dn_byop, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BYOL_GRAPHICS_G4DN_BYOP', traits: {"smithy.api#enumValue" => "BYOL_GRAPHICS_G4DN_BYOP"}))
    WorkspaceImageList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceImage)
    WorkspaceImageRequiredTenancy.add_member(:default, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEFAULT', traits: {"smithy.api#enumValue" => "DEFAULT"}))
    WorkspaceImageRequiredTenancy.add_member(:dedicated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEDICATED', traits: {"smithy.api#enumValue" => "DEDICATED"}))
    WorkspaceImageState.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    WorkspaceImageState.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    WorkspaceImageState.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    WorkspaceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Workspace)
    WorkspaceProperties.add_member(:running_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: RunningMode, location_name: 'RunningMode', traits: {"smithy.api#documentation" => "<p>The running mode. For more information, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/running-mode.html\">Manage the WorkSpace Running\n         Mode</a>.</p>\n         <note>\n            <p>The <code>MANUAL</code> value is only supported by Amazon WorkSpaces Core. Contact\n            your account team to be allow-listed to use this value. For more information, see\n            <a href=\"http://aws.amazon.com/workspaces/core/\">Amazon WorkSpaces Core</a>.</p>\n         </note>\n         <p>Review your running mode to ensure you are using one that is optimal for your needs and\n         budget. For more information on switching running modes, see <a href=\"http://aws.amazon.com/workspaces-family/workspaces/faqs/#:~:text=Can%20I%20switch%20between%20hourly%20and%20monthly%20billing%20on%20WorkSpaces%20Personal%3F\"> Can I switch between hourly and monthly billing?</a>\n         </p>"}))
    WorkspaceProperties.add_member(:running_mode_auto_stop_timeout_in_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: RunningModeAutoStopTimeoutInMinutes, location_name: 'RunningModeAutoStopTimeoutInMinutes', traits: {"smithy.api#documentation" => "<p>The time after a user logs off when WorkSpaces are automatically stopped. Configured in\n         60-minute intervals.</p>"}))
    WorkspaceProperties.add_member(:root_volume_size_gib, Smithy::Schema::Shapes::ShapeRef.new(shape: RootVolumeSizeGib, location_name: 'RootVolumeSizeGib', traits: {"smithy.api#documentation" => "<p>The size of the root volume. For important information about how to modify the size of\n         the root and user volumes, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/modify-workspaces.html\">Modify a\n         WorkSpace</a>.</p>"}))
    WorkspaceProperties.add_member(:user_volume_size_gib, Smithy::Schema::Shapes::ShapeRef.new(shape: UserVolumeSizeGib, location_name: 'UserVolumeSizeGib', traits: {"smithy.api#documentation" => "<p>The size of the user storage. For important information about how to modify the size of\n         the root and user volumes, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/modify-workspaces.html\">Modify a\n         WorkSpace</a>.</p>"}))
    WorkspaceProperties.add_member(:compute_type_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Compute, location_name: 'ComputeTypeName', traits: {"smithy.api#documentation" => "<p>The compute type. For more information, see <a href=\"http://aws.amazon.com/workspaces/details/#Amazon_WorkSpaces_Bundles\">Amazon WorkSpaces\n         Bundles</a>.</p>"}))
    WorkspaceProperties.add_member(:protocols, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtocolList, location_name: 'Protocols', traits: {"smithy.api#documentation" => "<p>The protocol. For more information, see \n         <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/amazon-workspaces-protocols.html\">\n            Protocols for Amazon WorkSpaces</a>.</p>\n         <note>\n            <ul>\n               <li>\n                  <p>Only available for WorkSpaces created with PCoIP bundles.</p>\n               </li>\n               <li>\n                  <p>The <code>Protocols</code> property is case sensitive. Ensure you use <code>PCOIP</code> or <code>DCV</code> (formerly WSP).</p>\n               </li>\n               <li>\n                  <p>Unavailable for Windows 7 WorkSpaces and WorkSpaces using GPU-based bundles \n               (Graphics, GraphicsPro, Graphics.g4dn, and GraphicsPro.g4dn).</p>\n               </li>\n            </ul>\n         </note>"}))
    WorkspaceProperties.add_member(:operating_system_name, Smithy::Schema::Shapes::ShapeRef.new(shape: OperatingSystemName, location_name: 'OperatingSystemName', traits: {"smithy.api#documentation" => "<p>The name of the operating system.</p>"}))
    WorkspaceProperties.add_member(:global_accelerator, Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalAcceleratorForWorkSpace, location_name: 'GlobalAccelerator', traits: {"smithy.api#documentation" => "<p>Indicates the Global Accelerator properties.</p>"}))
    WorkspaceProperties.type = Types::WorkspaceProperties
    WorkspaceRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the Directory Service directory for the WorkSpace. You can use <a>DescribeWorkspaceDirectories</a> to list the available directories.</p>", "smithy.api#required" => {}}))
    WorkspaceRequest.add_member(:user_name, Smithy::Schema::Shapes::ShapeRef.new(shape: UserName, location_name: 'UserName', traits: {"smithy.api#documentation" => "<p>The user name of the user for the WorkSpace. This user name must exist in the Directory Service directory for the WorkSpace.</p>\n         <p>The username is not case-sensitive, but we recommend matching the case in the Directory Service directory to avoid potential incompatibilities.</p>\n         <p>The reserved keyword, <code>[UNDEFINED]</code>, is used when creating user-decoupled WorkSpaces.</p>", "smithy.api#required" => {}}))
    WorkspaceRequest.add_member(:bundle_id, Smithy::Schema::Shapes::ShapeRef.new(shape: BundleId, location_name: 'BundleId', traits: {"smithy.api#documentation" => "<p>The identifier of the bundle for the WorkSpace. You can use <a>DescribeWorkspaceBundles</a> to list the available bundles.</p>", "smithy.api#required" => {}}))
    WorkspaceRequest.add_member(:volume_encryption_key, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeEncryptionKey, location_name: 'VolumeEncryptionKey', traits: {"smithy.api#documentation" => "<p>The ARN of the symmetric KMS key used to encrypt data stored on your WorkSpace.\n         Amazon WorkSpaces does not support asymmetric KMS keys.</p>"}))
    WorkspaceRequest.add_member(:user_volume_encryption_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'UserVolumeEncryptionEnabled', traits: {"smithy.api#documentation" => "<p>Indicates whether the data stored on the user volume is encrypted.</p>"}))
    WorkspaceRequest.add_member(:root_volume_encryption_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'RootVolumeEncryptionEnabled', traits: {"smithy.api#documentation" => "<p>Indicates whether the data stored on the root volume is encrypted.</p>"}))
    WorkspaceRequest.add_member(:workspace_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceProperties, location_name: 'WorkspaceProperties', traits: {"smithy.api#documentation" => "<p>The WorkSpace properties.</p>"}))
    WorkspaceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags for the WorkSpace.</p>"}))
    WorkspaceRequest.add_member(:workspace_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceName, location_name: 'WorkspaceName', traits: {"smithy.api#documentation" => "<p>The name of the user-decoupled WorkSpace.</p>\n         <note>\n            <p>\n               <code>WorkspaceName</code> is required if <code>UserName</code> is\n            <code>[UNDEFINED]</code> for user-decoupled WorkSpaces.\n            <code>WorkspaceName</code> is not applicable if <code>UserName</code> is specified\n            for user-assigned WorkSpaces.</p>\n         </note>"}))
    WorkspaceRequest.type = Types::WorkspaceRequest
    WorkspaceRequestList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceRequest)
    WorkspaceResourceAssociation.add_member(:associated_resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'AssociatedResourceId', traits: {"smithy.api#documentation" => "<p>The identifier of the associated resource.</p>"}))
    WorkspaceResourceAssociation.add_member(:associated_resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkSpaceAssociatedResourceType, location_name: 'AssociatedResourceType', traits: {"smithy.api#documentation" => "<p>The resource types of the associated resource.</p>"}))
    WorkspaceResourceAssociation.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'Created', traits: {"smithy.api#documentation" => "<p>The time the association is created.</p>"}))
    WorkspaceResourceAssociation.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastUpdatedTime', traits: {"smithy.api#documentation" => "<p>The time the association status was last updated.</p>"}))
    WorkspaceResourceAssociation.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: AssociationState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The status of the WorkSpace resource association.</p>"}))
    WorkspaceResourceAssociation.add_member(:state_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: AssociationStateReason, location_name: 'StateReason', traits: {"smithy.api#documentation" => "<p>The reason the association deployment failed.</p>"}))
    WorkspaceResourceAssociation.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'WorkspaceId', traits: {"smithy.api#documentation" => "<p>The identifier of the WorkSpace.</p>"}))
    WorkspaceResourceAssociation.type = Types::WorkspaceResourceAssociation
    WorkspaceResourceAssociationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceResourceAssociation)
    WorkspaceState.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    WorkspaceState.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    WorkspaceState.add_member(:impaired, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMPAIRED', traits: {"smithy.api#enumValue" => "IMPAIRED"}))
    WorkspaceState.add_member(:unhealthy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNHEALTHY', traits: {"smithy.api#enumValue" => "UNHEALTHY"}))
    WorkspaceState.add_member(:rebooting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REBOOTING', traits: {"smithy.api#enumValue" => "REBOOTING"}))
    WorkspaceState.add_member(:starting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STARTING', traits: {"smithy.api#enumValue" => "STARTING"}))
    WorkspaceState.add_member(:rebuilding, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REBUILDING', traits: {"smithy.api#enumValue" => "REBUILDING"}))
    WorkspaceState.add_member(:restoring, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESTORING', traits: {"smithy.api#enumValue" => "RESTORING"}))
    WorkspaceState.add_member(:maintenance, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MAINTENANCE', traits: {"smithy.api#enumValue" => "MAINTENANCE"}))
    WorkspaceState.add_member(:admin_maintenance, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADMIN_MAINTENANCE', traits: {"smithy.api#enumValue" => "ADMIN_MAINTENANCE"}))
    WorkspaceState.add_member(:terminating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERMINATING', traits: {"smithy.api#enumValue" => "TERMINATING"}))
    WorkspaceState.add_member(:terminated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERMINATED', traits: {"smithy.api#enumValue" => "TERMINATED"}))
    WorkspaceState.add_member(:suspended, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUSPENDED', traits: {"smithy.api#enumValue" => "SUSPENDED"}))
    WorkspaceState.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    WorkspaceState.add_member(:stopping, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPING', traits: {"smithy.api#enumValue" => "STOPPING"}))
    WorkspaceState.add_member(:stopped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPED', traits: {"smithy.api#enumValue" => "STOPPED"}))
    WorkspaceState.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    WorkspaceType.add_member(:personal, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PERSONAL', traits: {"smithy.api#enumValue" => "PERSONAL"}))
    WorkspaceType.add_member(:pools, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POOLS', traits: {"smithy.api#enumValue" => "POOLS"}))
    WorkspacesDefaultRoleNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    WorkspacesDefaultRoleNotFoundException.type = Types::WorkspacesDefaultRoleNotFoundException
    WorkspacesIpGroup.add_member(:group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IpGroupId, location_name: 'groupId', traits: {"smithy.api#documentation" => "<p>The identifier of the group.</p>"}))
    WorkspacesIpGroup.add_member(:group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: IpGroupName, location_name: 'groupName', traits: {"smithy.api#documentation" => "<p>The name of the group.</p>"}))
    WorkspacesIpGroup.add_member(:group_desc, Smithy::Schema::Shapes::ShapeRef.new(shape: IpGroupDesc, location_name: 'groupDesc', traits: {"smithy.api#documentation" => "<p>The description of the group.</p>"}))
    WorkspacesIpGroup.add_member(:user_rules, Smithy::Schema::Shapes::ShapeRef.new(shape: IpRuleList, location_name: 'userRules', traits: {"smithy.api#documentation" => "<p>The rules.</p>"}))
    WorkspacesIpGroup.type = Types::WorkspacesIpGroup
    WorkspacesIpGroupsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspacesIpGroup)
    WorkspacesPool.add_member(:pool_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspacesPoolId, location_name: 'PoolId', traits: {"smithy.api#documentation" => "<p>The identifier of a pool.</p>", "smithy.api#required" => {}}))
    WorkspacesPool.add_member(:pool_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'PoolArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the pool.</p>", "smithy.api#required" => {}}))
    WorkspacesPool.add_member(:capacity_status, Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityStatus, location_name: 'CapacityStatus', traits: {"smithy.api#documentation" => "<p>The capacity status for the pool</p>", "smithy.api#required" => {}}))
    WorkspacesPool.add_member(:pool_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspacesPoolName, location_name: 'PoolName', traits: {"smithy.api#documentation" => "<p>The name of the pool.</p>", "smithy.api#required" => {}}))
    WorkspacesPool.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the pool.</p>"}))
    WorkspacesPool.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspacesPoolState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The current state of the pool.</p>", "smithy.api#required" => {}}))
    WorkspacesPool.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The time the pool was created.</p>", "smithy.api#required" => {}}))
    WorkspacesPool.add_member(:bundle_id, Smithy::Schema::Shapes::ShapeRef.new(shape: BundleId, location_name: 'BundleId', traits: {"smithy.api#documentation" => "<p>The identifier of the bundle used by the pool.</p>", "smithy.api#required" => {}}))
    WorkspacesPool.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The identifier of the directory used by the pool.</p>", "smithy.api#required" => {}}))
    WorkspacesPool.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspacesPoolErrors, location_name: 'Errors', traits: {"smithy.api#documentation" => "<p>The pool errors.</p>"}))
    WorkspacesPool.add_member(:application_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSettingsResponse, location_name: 'ApplicationSettings', traits: {"smithy.api#documentation" => "<p>The persistent application settings for users of the pool.</p>"}))
    WorkspacesPool.add_member(:timeout_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeoutSettings, location_name: 'TimeoutSettings', traits: {"smithy.api#documentation" => "<p>The amount of time that a pool session remains active after users disconnect. \n         If they try to reconnect to the pool session after a disconnection or network interruption \n         within this time interval, they are connected to their previous session. \n         Otherwise, they are connected to a new session with a new pool instance.</p>"}))
    WorkspacesPool.add_member(:running_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: PoolsRunningMode, location_name: 'RunningMode', traits: {"smithy.api#default" => "AUTO_STOP", "smithy.api#documentation" => "<p>The running mode of the pool.</p>", "smithy.api#required" => {}}))
    WorkspacesPool.type = Types::WorkspacesPool
    WorkspacesPoolError.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspacesPoolErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>The error code.</p>"}))
    WorkspacesPoolError.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>The error message.</p>"}))
    WorkspacesPoolError.type = Types::WorkspacesPoolError
    WorkspacesPoolErrorCode.add_member(:iam_service_role_is_missing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IAM_SERVICE_ROLE_IS_MISSING', traits: {"smithy.api#enumValue" => "IAM_SERVICE_ROLE_IS_MISSING"}))
    WorkspacesPoolErrorCode.add_member(:iam_service_role_missing_eni_describe_action, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION', traits: {"smithy.api#enumValue" => "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION"}))
    WorkspacesPoolErrorCode.add_member(:iam_service_role_missing_eni_create_action, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION', traits: {"smithy.api#enumValue" => "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION"}))
    WorkspacesPoolErrorCode.add_member(:iam_service_role_missing_eni_delete_action, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION', traits: {"smithy.api#enumValue" => "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION"}))
    WorkspacesPoolErrorCode.add_member(:network_interface_limit_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NETWORK_INTERFACE_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "NETWORK_INTERFACE_LIMIT_EXCEEDED"}))
    WorkspacesPoolErrorCode.add_member(:internal_service_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_SERVICE_ERROR', traits: {"smithy.api#enumValue" => "INTERNAL_SERVICE_ERROR"}))
    WorkspacesPoolErrorCode.add_member(:machine_role_is_missing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MACHINE_ROLE_IS_MISSING', traits: {"smithy.api#enumValue" => "MACHINE_ROLE_IS_MISSING"}))
    WorkspacesPoolErrorCode.add_member(:sts_disabled_in_region, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STS_DISABLED_IN_REGION', traits: {"smithy.api#enumValue" => "STS_DISABLED_IN_REGION"}))
    WorkspacesPoolErrorCode.add_member(:subnet_has_insufficient_ip_addresses, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES', traits: {"smithy.api#enumValue" => "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES"}))
    WorkspacesPoolErrorCode.add_member(:iam_service_role_missing_describe_subnet_action, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION', traits: {"smithy.api#enumValue" => "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION"}))
    WorkspacesPoolErrorCode.add_member(:subnet_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUBNET_NOT_FOUND', traits: {"smithy.api#enumValue" => "SUBNET_NOT_FOUND"}))
    WorkspacesPoolErrorCode.add_member(:image_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMAGE_NOT_FOUND', traits: {"smithy.api#enumValue" => "IMAGE_NOT_FOUND"}))
    WorkspacesPoolErrorCode.add_member(:invalid_subnet_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_SUBNET_CONFIGURATION', traits: {"smithy.api#enumValue" => "INVALID_SUBNET_CONFIGURATION"}))
    WorkspacesPoolErrorCode.add_member(:security_groups_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SECURITY_GROUPS_NOT_FOUND', traits: {"smithy.api#enumValue" => "SECURITY_GROUPS_NOT_FOUND"}))
    WorkspacesPoolErrorCode.add_member(:igw_not_attached, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IGW_NOT_ATTACHED', traits: {"smithy.api#enumValue" => "IGW_NOT_ATTACHED"}))
    WorkspacesPoolErrorCode.add_member(:iam_service_role_missing_describe_security_groups_action, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION', traits: {"smithy.api#enumValue" => "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION"}))
    WorkspacesPoolErrorCode.add_member(:workspaces_pool_stopped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WORKSPACES_POOL_STOPPED', traits: {"smithy.api#enumValue" => "WORKSPACES_POOL_STOPPED"}))
    WorkspacesPoolErrorCode.add_member(:workspaces_pool_instance_provisioning_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WORKSPACES_POOL_INSTANCE_PROVISIONING_FAILURE', traits: {"smithy.api#enumValue" => "WORKSPACES_POOL_INSTANCE_PROVISIONING_FAILURE"}))
    WorkspacesPoolErrorCode.add_member(:domain_join_error_file_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOMAIN_JOIN_ERROR_FILE_NOT_FOUND', traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND"}))
    WorkspacesPoolErrorCode.add_member(:domain_join_error_access_denied, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOMAIN_JOIN_ERROR_ACCESS_DENIED', traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_ERROR_ACCESS_DENIED"}))
    WorkspacesPoolErrorCode.add_member(:domain_join_error_logon_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOMAIN_JOIN_ERROR_LOGON_FAILURE', traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_ERROR_LOGON_FAILURE"}))
    WorkspacesPoolErrorCode.add_member(:domain_join_error_invalid_parameter, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOMAIN_JOIN_ERROR_INVALID_PARAMETER', traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_ERROR_INVALID_PARAMETER"}))
    WorkspacesPoolErrorCode.add_member(:domain_join_error_more_data, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOMAIN_JOIN_ERROR_MORE_DATA', traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_ERROR_MORE_DATA"}))
    WorkspacesPoolErrorCode.add_member(:domain_join_error_no_such_domain, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN', traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN"}))
    WorkspacesPoolErrorCode.add_member(:domain_join_error_not_supported, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOMAIN_JOIN_ERROR_NOT_SUPPORTED', traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_ERROR_NOT_SUPPORTED"}))
    WorkspacesPoolErrorCode.add_member(:domain_join_nerr_invalid_workgroup_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME', traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME"}))
    WorkspacesPoolErrorCode.add_member(:domain_join_nerr_workstation_not_started, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED', traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED"}))
    WorkspacesPoolErrorCode.add_member(:domain_join_error_ds_machine_account_quota_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED', traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED"}))
    WorkspacesPoolErrorCode.add_member(:domain_join_nerr_password_expired, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOMAIN_JOIN_NERR_PASSWORD_EXPIRED', traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED"}))
    WorkspacesPoolErrorCode.add_member(:domain_join_internal_service_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOMAIN_JOIN_INTERNAL_SERVICE_ERROR', traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"}))
    WorkspacesPoolErrorCode.add_member(:domain_join_error_secret_action_permission_is_missing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOMAIN_JOIN_ERROR_SECRET_ACTION_PERMISSION_IS_MISSING', traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_ERROR_SECRET_ACTION_PERMISSION_IS_MISSING"}))
    WorkspacesPoolErrorCode.add_member(:domain_join_error_secret_decryption_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOMAIN_JOIN_ERROR_SECRET_DECRYPTION_FAILURE', traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_ERROR_SECRET_DECRYPTION_FAILURE"}))
    WorkspacesPoolErrorCode.add_member(:domain_join_error_secret_state_invalid, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOMAIN_JOIN_ERROR_SECRET_STATE_INVALID', traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_ERROR_SECRET_STATE_INVALID"}))
    WorkspacesPoolErrorCode.add_member(:domain_join_error_secret_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOMAIN_JOIN_ERROR_SECRET_NOT_FOUND', traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_ERROR_SECRET_NOT_FOUND"}))
    WorkspacesPoolErrorCode.add_member(:domain_join_error_secret_value_key_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOMAIN_JOIN_ERROR_SECRET_VALUE_KEY_NOT_FOUND', traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_ERROR_SECRET_VALUE_KEY_NOT_FOUND"}))
    WorkspacesPoolErrorCode.add_member(:domain_join_error_secret_invalid, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOMAIN_JOIN_ERROR_SECRET_INVALID', traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_ERROR_SECRET_INVALID"}))
    WorkspacesPoolErrorCode.add_member(:bundle_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BUNDLE_NOT_FOUND', traits: {"smithy.api#enumValue" => "BUNDLE_NOT_FOUND"}))
    WorkspacesPoolErrorCode.add_member(:directory_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIRECTORY_NOT_FOUND', traits: {"smithy.api#enumValue" => "DIRECTORY_NOT_FOUND"}))
    WorkspacesPoolErrorCode.add_member(:insufficient_permissions_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSUFFICIENT_PERMISSIONS_ERROR', traits: {"smithy.api#enumValue" => "INSUFFICIENT_PERMISSIONS_ERROR"}))
    WorkspacesPoolErrorCode.add_member(:default_ou_is_missing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEFAULT_OU_IS_MISSING', traits: {"smithy.api#enumValue" => "DEFAULT_OU_IS_MISSING"}))
    WorkspacesPoolErrors.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspacesPoolError)
    WorkspacesPoolIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspacesPoolId)
    WorkspacesPoolSession.add_member(:authentication_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationType, location_name: 'AuthenticationType', traits: {"smithy.api#documentation" => "<p>The authentication method. The user is authenticated using a \n         WorkSpaces Pools URL (API) or SAML 2.0 federation (SAML).</p>"}))
    WorkspacesPoolSession.add_member(:connection_state, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionConnectionState, location_name: 'ConnectionState', traits: {"smithy.api#documentation" => "<p>Specifies whether a user is connected to the pool session.</p>"}))
    WorkspacesPoolSession.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonUuid, location_name: 'SessionId', traits: {"smithy.api#documentation" => "<p>The identifier of the session.</p>", "smithy.api#required" => {}}))
    WorkspacesPoolSession.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionInstanceId, location_name: 'InstanceId', traits: {"smithy.api#documentation" => "<p>The identifier for the instance hosting the session.</p>"}))
    WorkspacesPoolSession.add_member(:pool_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspacesPoolId, location_name: 'PoolId', traits: {"smithy.api#documentation" => "<p>The identifier of the pool.</p>", "smithy.api#required" => {}}))
    WorkspacesPoolSession.add_member(:expiration_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ExpirationTime', traits: {"smithy.api#documentation" => "<p>The time that the pool session ended.</p>"}))
    WorkspacesPoolSession.add_member(:network_access_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkAccessConfiguration, location_name: 'NetworkAccessConfiguration', traits: {"smithy.api#documentation" => "<p>Describes the network details of the pool.</p>"}))
    WorkspacesPoolSession.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The time that the pool sission started.</p>"}))
    WorkspacesPoolSession.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspacesPoolUserId, location_name: 'UserId', traits: {"smithy.api#documentation" => "<p>The identifier of the user.</p>", "smithy.api#required" => {}}))
    WorkspacesPoolSession.type = Types::WorkspacesPoolSession
    WorkspacesPoolSessions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspacesPoolSession)
    WorkspacesPoolState.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    WorkspacesPoolState.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    WorkspacesPoolState.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    WorkspacesPoolState.add_member(:starting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STARTING', traits: {"smithy.api#enumValue" => "STARTING"}))
    WorkspacesPoolState.add_member(:stopped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPED', traits: {"smithy.api#enumValue" => "STOPPED"}))
    WorkspacesPoolState.add_member(:stopping, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPING', traits: {"smithy.api#enumValue" => "STOPPING"}))
    WorkspacesPoolState.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    WorkspacesPools.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspacesPool)

    WorkspacesService = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.workspaces#WorkspacesService"
      service.name = "WorkspacesService"
      service.version = "2015-04-08"
      service.traits = {"aws.api#service" => {"sdkId" => "WorkSpaces", "arnNamespace" => "workspaces", "cloudFormationName" => "WorkSpaces", "cloudTrailEventSource" => "workspaces.amazonaws.com", "endpointPrefix" => "workspaces"}, "aws.auth#sigv4" => {"name" => "workspaces"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon WorkSpaces", "smithy.api#xmlNamespace" => {"uri" => "http://workspaces.amazonaws.com/api/v1"}}
      service.add_operation(:accept_account_link_invitation, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#AcceptAccountLinkInvitation"
        operation.name = "AcceptAccountLinkInvitation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptAccountLinkInvitationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptAccountLinkInvitationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:associate_connection_alias, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#AssociateConnectionAlias"
        operation.name = "AssociateConnectionAlias"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateConnectionAliasRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateConnectionAliasResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAssociatedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:associate_ip_groups, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#AssociateIpGroups"
        operation.name = "AssociateIpGroups"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateIpGroupsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateIpGroupsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:associate_workspace_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#AssociateWorkspaceApplication"
        operation.name = "AssociateWorkspaceApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateWorkspaceApplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateWorkspaceApplicationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeNotCompatibleException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IncompatibleApplicationsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperatingSystemNotCompatibleException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:authorize_ip_rules, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#AuthorizeIpRules"
        operation.name = "AuthorizeIpRules"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizeIpRulesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizeIpRulesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:copy_workspace_image, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#CopyWorkspaceImage"
        operation.name = "CopyWorkspaceImage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CopyWorkspaceImageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CopyWorkspaceImageResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:create_account_link_invitation, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#CreateAccountLinkInvitation"
        operation.name = "CreateAccountLinkInvitation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccountLinkInvitationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccountLinkInvitationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_connect_client_add_in, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#CreateConnectClientAddIn"
        operation.name = "CreateConnectClientAddIn"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConnectClientAddInRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConnectClientAddInResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceCreationFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:create_connection_alias, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#CreateConnectionAlias"
        operation.name = "CreateConnectionAlias"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConnectionAliasRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConnectionAliasResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.traits = {}
      end)
      service.add_operation(:create_ip_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#CreateIpGroup"
        operation.name = "CreateIpGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIpGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIpGroupResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceCreationFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.traits = {}
      end)
      service.add_operation(:create_standby_workspaces, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#CreateStandbyWorkspaces"
        operation.name = "CreateStandbyWorkspaces"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateStandbyWorkspacesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateStandbyWorkspacesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:create_tags, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#CreateTags"
        operation.name = "CreateTags"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTagsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTagsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:create_updated_workspace_image, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#CreateUpdatedWorkspaceImage"
        operation.name = "CreateUpdatedWorkspaceImage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUpdatedWorkspaceImageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUpdatedWorkspaceImageResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:create_workspace_bundle, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#CreateWorkspaceBundle"
        operation.name = "CreateWorkspaceBundle"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkspaceBundleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkspaceBundleResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:create_workspace_image, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#CreateWorkspaceImage"
        operation.name = "CreateWorkspaceImage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkspaceImageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkspaceImageResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:create_workspaces, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#CreateWorkspaces"
        operation.name = "CreateWorkspaces"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkspacesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkspacesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.traits = {}
      end)
      service.add_operation(:create_workspaces_pool, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#CreateWorkspacesPool"
        operation.name = "CreateWorkspacesPool"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkspacesPoolRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkspacesPoolResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_account_link_invitation, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DeleteAccountLinkInvitation"
        operation.name = "DeleteAccountLinkInvitation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAccountLinkInvitationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAccountLinkInvitationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_client_branding, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DeleteClientBranding"
        operation.name = "DeleteClientBranding"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteClientBrandingRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteClientBrandingResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_connect_client_add_in, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DeleteConnectClientAddIn"
        operation.name = "DeleteConnectClientAddIn"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConnectClientAddInRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConnectClientAddInResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_connection_alias, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DeleteConnectionAlias"
        operation.name = "DeleteConnectionAlias"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConnectionAliasRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConnectionAliasResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAssociatedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_ip_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DeleteIpGroup"
        operation.name = "DeleteIpGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIpGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIpGroupResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAssociatedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_tags, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DeleteTags"
        operation.name = "DeleteTags"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTagsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTagsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_workspace_bundle, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DeleteWorkspaceBundle"
        operation.name = "DeleteWorkspaceBundle"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWorkspaceBundleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWorkspaceBundleResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAssociatedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_workspace_image, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DeleteWorkspaceImage"
        operation.name = "DeleteWorkspaceImage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWorkspaceImageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWorkspaceImageResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAssociatedException)
        operation.traits = {}
      end)
      service.add_operation(:deploy_workspace_applications, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DeployWorkspaceApplications"
        operation.name = "DeployWorkspaceApplications"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeployWorkspaceApplicationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeployWorkspaceApplicationsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IncompatibleApplicationsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:deregister_workspace_directory, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DeregisterWorkspaceDirectory"
        operation.name = "DeregisterWorkspaceDirectory"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterWorkspaceDirectoryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterWorkspaceDirectoryResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_account, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DescribeAccount"
        operation.name = "DescribeAccount"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAccountRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAccountResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.traits = {}
      end)
      service.add_operation(:describe_account_modifications, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DescribeAccountModifications"
        operation.name = "DescribeAccountModifications"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAccountModificationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAccountModificationsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.traits = {}
      end)
      service.add_operation(:describe_application_associations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DescribeApplicationAssociations"
        operation.name = "DescribeApplicationAssociations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeApplicationAssociationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeApplicationAssociationsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeApplicationAssociations.new
      end)
      service.add_operation(:describe_applications, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DescribeApplications"
        operation.name = "DescribeApplications"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeApplicationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeApplicationsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeApplications.new
      end)
      service.add_operation(:describe_bundle_associations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DescribeBundleAssociations"
        operation.name = "DescribeBundleAssociations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBundleAssociationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBundleAssociationsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_client_branding, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DescribeClientBranding"
        operation.name = "DescribeClientBranding"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeClientBrandingRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeClientBrandingResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_client_properties, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DescribeClientProperties"
        operation.name = "DescribeClientProperties"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeClientPropertiesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeClientPropertiesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_connect_client_add_ins, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DescribeConnectClientAddIns"
        operation.name = "DescribeConnectClientAddIns"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeConnectClientAddInsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeConnectClientAddInsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_connection_alias_permissions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DescribeConnectionAliasPermissions"
        operation.name = "DescribeConnectionAliasPermissions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeConnectionAliasPermissionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeConnectionAliasPermissionsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_connection_aliases, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DescribeConnectionAliases"
        operation.name = "DescribeConnectionAliases"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeConnectionAliasesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeConnectionAliasesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        operation.traits = {}
      end)
      service.add_operation(:describe_image_associations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DescribeImageAssociations"
        operation.name = "DescribeImageAssociations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeImageAssociationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeImageAssociationsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_ip_groups, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DescribeIpGroups"
        operation.name = "DescribeIpGroups"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeIpGroupsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeIpGroupsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.traits = {}
      end)
      service.add_operation(:describe_tags, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DescribeTags"
        operation.name = "DescribeTags"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTagsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTagsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_workspace_associations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DescribeWorkspaceAssociations"
        operation.name = "DescribeWorkspaceAssociations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkspaceAssociationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkspaceAssociationsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_workspace_bundles, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DescribeWorkspaceBundles"
        operation.name = "DescribeWorkspaceBundles"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkspaceBundlesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkspaceBundlesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeWorkspaceBundles.new
      end)
      service.add_operation(:describe_workspace_directories, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DescribeWorkspaceDirectories"
        operation.name = "DescribeWorkspaceDirectories"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkspaceDirectoriesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkspaceDirectoriesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeWorkspaceDirectories.new
      end)
      service.add_operation(:describe_workspace_image_permissions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DescribeWorkspaceImagePermissions"
        operation.name = "DescribeWorkspaceImagePermissions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkspaceImagePermissionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkspaceImagePermissionsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_workspace_images, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DescribeWorkspaceImages"
        operation.name = "DescribeWorkspaceImages"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkspaceImagesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkspaceImagesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.traits = {}
      end)
      service.add_operation(:describe_workspace_snapshots, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DescribeWorkspaceSnapshots"
        operation.name = "DescribeWorkspaceSnapshots"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkspaceSnapshotsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkspaceSnapshotsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_workspaces, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DescribeWorkspaces"
        operation.name = "DescribeWorkspaces"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkspacesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkspacesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "DescribeWorkspacesSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::DescribeWorkspaces.new
      end)
      service.add_operation(:describe_workspaces_connection_status, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DescribeWorkspacesConnectionStatus"
        operation.name = "DescribeWorkspacesConnectionStatus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkspacesConnectionStatusRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkspacesConnectionStatusResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.traits = {}
      end)
      service.add_operation(:describe_workspaces_pool_sessions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DescribeWorkspacesPoolSessions"
        operation.name = "DescribeWorkspacesPoolSessions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkspacesPoolSessionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkspacesPoolSessionsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_workspaces_pools, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DescribeWorkspacesPools"
        operation.name = "DescribeWorkspacesPools"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkspacesPoolsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkspacesPoolsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:disassociate_connection_alias, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DisassociateConnectionAlias"
        operation.name = "DisassociateConnectionAlias"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateConnectionAliasRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateConnectionAliasResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:disassociate_ip_groups, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DisassociateIpGroups"
        operation.name = "DisassociateIpGroups"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateIpGroupsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateIpGroupsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:disassociate_workspace_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DisassociateWorkspaceApplication"
        operation.name = "DisassociateWorkspaceApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateWorkspaceApplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateWorkspaceApplicationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_account_link, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#GetAccountLink"
        operation.name = "GetAccountLink"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccountLinkRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccountLinkResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:import_client_branding, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#ImportClientBranding"
        operation.name = "ImportClientBranding"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportClientBrandingRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportClientBrandingResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:import_workspace_image, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#ImportWorkspaceImage"
        operation.name = "ImportWorkspaceImage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportWorkspaceImageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportWorkspaceImageResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:list_account_links, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#ListAccountLinks"
        operation.name = "ListAccountLinks"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccountLinksRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccountLinksResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListAccountLinks.new
      end)
      service.add_operation(:list_available_management_cidr_ranges, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#ListAvailableManagementCidrRanges"
        operation.name = "ListAvailableManagementCidrRanges"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAvailableManagementCidrRangesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAvailableManagementCidrRangesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.traits = {}
      end)
      service.add_operation(:migrate_workspace, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#MigrateWorkspace"
        operation.name = "MigrateWorkspace"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: MigrateWorkspaceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: MigrateWorkspaceResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationInProgressException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:modify_account, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#ModifyAccount"
        operation.name = "ModifyAccount"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyAccountRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyAccountResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:modify_certificate_based_auth_properties, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#ModifyCertificateBasedAuthProperties"
        operation.name = "ModifyCertificateBasedAuthProperties"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyCertificateBasedAuthPropertiesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyCertificateBasedAuthPropertiesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:modify_client_properties, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#ModifyClientProperties"
        operation.name = "ModifyClientProperties"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyClientPropertiesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyClientPropertiesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:modify_endpoint_encryption_mode, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#ModifyEndpointEncryptionMode"
        operation.name = "ModifyEndpointEncryptionMode"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyEndpointEncryptionModeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyEndpointEncryptionModeResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:modify_saml_properties, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#ModifySamlProperties"
        operation.name = "ModifySamlProperties"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifySamlPropertiesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifySamlPropertiesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:modify_selfservice_permissions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#ModifySelfservicePermissions"
        operation.name = "ModifySelfservicePermissions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifySelfservicePermissionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifySelfservicePermissionsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:modify_streaming_properties, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#ModifyStreamingProperties"
        operation.name = "ModifyStreamingProperties"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyStreamingPropertiesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyStreamingPropertiesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:modify_workspace_access_properties, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#ModifyWorkspaceAccessProperties"
        operation.name = "ModifyWorkspaceAccessProperties"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyWorkspaceAccessPropertiesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyWorkspaceAccessPropertiesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:modify_workspace_creation_properties, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#ModifyWorkspaceCreationProperties"
        operation.name = "ModifyWorkspaceCreationProperties"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyWorkspaceCreationPropertiesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyWorkspaceCreationPropertiesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:modify_workspace_properties, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#ModifyWorkspaceProperties"
        operation.name = "ModifyWorkspaceProperties"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyWorkspacePropertiesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyWorkspacePropertiesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationInProgressException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedWorkspaceConfigurationException)
        operation.traits = {}
      end)
      service.add_operation(:modify_workspace_state, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#ModifyWorkspaceState"
        operation.name = "ModifyWorkspaceState"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyWorkspaceStateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyWorkspaceStateResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:reboot_workspaces, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#RebootWorkspaces"
        operation.name = "RebootWorkspaces"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RebootWorkspacesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RebootWorkspacesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        operation.traits = {}
      end)
      service.add_operation(:rebuild_workspaces, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#RebuildWorkspaces"
        operation.name = "RebuildWorkspaces"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RebuildWorkspacesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RebuildWorkspacesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        operation.traits = {}
      end)
      service.add_operation(:register_workspace_directory, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#RegisterWorkspaceDirectory"
        operation.name = "RegisterWorkspaceDirectory"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterWorkspaceDirectoryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterWorkspaceDirectoryResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedNetworkConfigurationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspacesDefaultRoleNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:reject_account_link_invitation, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#RejectAccountLinkInvitation"
        operation.name = "RejectAccountLinkInvitation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RejectAccountLinkInvitationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RejectAccountLinkInvitationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:restore_workspace, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#RestoreWorkspace"
        operation.name = "RestoreWorkspace"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreWorkspaceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreWorkspaceResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:revoke_ip_rules, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#RevokeIpRules"
        operation.name = "RevokeIpRules"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RevokeIpRulesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RevokeIpRulesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:start_workspaces, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#StartWorkspaces"
        operation.name = "StartWorkspaces"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartWorkspacesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartWorkspacesResult)
        operation.traits = {}
      end)
      service.add_operation(:start_workspaces_pool, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#StartWorkspacesPool"
        operation.name = "StartWorkspacesPool"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartWorkspacesPoolRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartWorkspacesPoolResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationInProgressException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:stop_workspaces, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#StopWorkspaces"
        operation.name = "StopWorkspaces"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopWorkspacesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopWorkspacesResult)
        operation.traits = {}
      end)
      service.add_operation(:stop_workspaces_pool, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#StopWorkspacesPool"
        operation.name = "StopWorkspacesPool"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopWorkspacesPoolRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopWorkspacesPoolResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationInProgressException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:terminate_workspaces, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#TerminateWorkspaces"
        operation.name = "TerminateWorkspaces"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TerminateWorkspacesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TerminateWorkspacesResult)
        operation.traits = {}
      end)
      service.add_operation(:terminate_workspaces_pool, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#TerminateWorkspacesPool"
        operation.name = "TerminateWorkspacesPool"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TerminateWorkspacesPoolRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TerminateWorkspacesPoolResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationInProgressException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:terminate_workspaces_pool_session, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#TerminateWorkspacesPoolSession"
        operation.name = "TerminateWorkspacesPoolSession"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TerminateWorkspacesPoolSessionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TerminateWorkspacesPoolSessionResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationInProgressException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_connect_client_add_in, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#UpdateConnectClientAddIn"
        operation.name = "UpdateConnectClientAddIn"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConnectClientAddInRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConnectClientAddInResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_connection_alias_permission, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#UpdateConnectionAliasPermission"
        operation.name = "UpdateConnectionAliasPermission"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConnectionAliasPermissionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConnectionAliasPermissionResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAssociatedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_rules_of_ip_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#UpdateRulesOfIpGroup"
        operation.name = "UpdateRulesOfIpGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRulesOfIpGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRulesOfIpGroupResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_workspace_bundle, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#UpdateWorkspaceBundle"
        operation.name = "UpdateWorkspaceBundle"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorkspaceBundleRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorkspaceBundleResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:update_workspace_image_permission, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#UpdateWorkspaceImagePermission"
        operation.name = "UpdateWorkspaceImagePermission"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorkspaceImagePermissionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorkspaceImagePermissionResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        operation.traits = {}
      end)
      service.add_operation(:update_workspaces_pool, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#UpdateWorkspacesPool"
        operation.name = "UpdateWorkspacesPool"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorkspacesPoolRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorkspacesPoolResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValuesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationInProgressException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
