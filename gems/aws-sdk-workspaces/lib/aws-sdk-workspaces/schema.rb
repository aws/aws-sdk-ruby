# frozen_string_literal: true

# This is generated code!

module Aws::WorkSpaces
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AGAModeForDirectoryEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#AGAModeForDirectoryEnum", name: "AGAModeForDirectoryEnum")
    AGAModeForWorkSpaceEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#AGAModeForWorkSpaceEnum", name: "AGAModeForWorkSpaceEnum")
    AGAPreferredProtocolForDirectory = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#AGAPreferredProtocolForDirectory", name: "AGAPreferredProtocolForDirectory")
    AGAPreferredProtocolForWorkSpace = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#AGAPreferredProtocolForWorkSpace", name: "AGAPreferredProtocolForWorkSpace")
    ARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#ARN", name: "ARN", traits: {"smithy.api#pattern" => "^arn:aws[a-z-]{0,7}:[A-Za-z0-9][A-za-z0-9_/.-]{0,62}:[A-za-z0-9_/.-]{0,63}:[A-za-z0-9_/.-]{0,63}:[A-Za-z0-9][A-Za-z0-9:_/+=,@.\\\\-]{0,1023}$"})
    AcceptAccountLinkInvitationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#AcceptAccountLinkInvitationRequest", name: "AcceptAccountLinkInvitationRequest")
    AcceptAccountLinkInvitationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#AcceptAccountLinkInvitationResult", name: "AcceptAccountLinkInvitationResult")
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client"})
    AccessEndpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#AccessEndpoint", name: "AccessEndpoint")
    AccessEndpointConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#AccessEndpointConfig", name: "AccessEndpointConfig")
    AccessEndpointList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#AccessEndpointList", name: "AccessEndpointList")
    AccessEndpointType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#AccessEndpointType", name: "AccessEndpointType")
    AccessPropertyValue = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#AccessPropertyValue", name: "AccessPropertyValue")
    AccountLink = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#AccountLink", name: "AccountLink")
    AccountLinkList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#AccountLinkList", name: "AccountLinkList")
    AccountLinkStatusEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#AccountLinkStatusEnum", name: "AccountLinkStatusEnum")
    AccountModification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#AccountModification", name: "AccountModification")
    AccountModificationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#AccountModificationList", name: "AccountModificationList")
    ActiveDirectoryConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#ActiveDirectoryConfig", name: "ActiveDirectoryConfig")
    ActiveUserSessions = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.workspaces#ActiveUserSessions", name: "ActiveUserSessions", traits: {"smithy.api#range" => {"min" => 0}})
    ActualUserSessions = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.workspaces#ActualUserSessions", name: "ActualUserSessions", traits: {"smithy.api#range" => {"min" => 0}})
    AddInName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#AddInName", name: "AddInName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^.*$"})
    AddInUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#AddInUrl", name: "AddInUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^(http|https)\\://\\S+$"})
    Alias = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#Alias", name: "Alias")
    AlphanumericDashUnderscoreNonEmptyString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#AlphanumericDashUnderscoreNonEmptyString", name: "AlphanumericDashUnderscoreNonEmptyString", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9\\_\\-]{1,1000}$"})
    AmazonUuid = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#AmazonUuid", name: "AmazonUuid", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    Application = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#Application", name: "Application")
    ApplicationAssociatedResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#ApplicationAssociatedResourceType", name: "ApplicationAssociatedResourceType")
    ApplicationAssociatedResourceTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#ApplicationAssociatedResourceTypeList", name: "ApplicationAssociatedResourceTypeList")
    ApplicationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#ApplicationList", name: "ApplicationList", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    ApplicationNotSupportedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#ApplicationNotSupportedException", name: "ApplicationNotSupportedException", traits: {"smithy.api#error" => "client"})
    ApplicationResourceAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#ApplicationResourceAssociation", name: "ApplicationResourceAssociation")
    ApplicationResourceAssociationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#ApplicationResourceAssociationList", name: "ApplicationResourceAssociationList")
    ApplicationSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#ApplicationSettingsRequest", name: "ApplicationSettingsRequest")
    ApplicationSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#ApplicationSettingsResponse", name: "ApplicationSettingsResponse")
    ApplicationSettingsStatusEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#ApplicationSettingsStatusEnum", name: "ApplicationSettingsStatusEnum")
    AssociateConnectionAliasRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#AssociateConnectionAliasRequest", name: "AssociateConnectionAliasRequest")
    AssociateConnectionAliasResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#AssociateConnectionAliasResult", name: "AssociateConnectionAliasResult")
    AssociateIpGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#AssociateIpGroupsRequest", name: "AssociateIpGroupsRequest")
    AssociateIpGroupsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#AssociateIpGroupsResult", name: "AssociateIpGroupsResult")
    AssociateWorkspaceApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#AssociateWorkspaceApplicationRequest", name: "AssociateWorkspaceApplicationRequest")
    AssociateWorkspaceApplicationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#AssociateWorkspaceApplicationResult", name: "AssociateWorkspaceApplicationResult")
    AssociationErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#AssociationErrorCode", name: "AssociationErrorCode")
    AssociationState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#AssociationState", name: "AssociationState")
    AssociationStateReason = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#AssociationStateReason", name: "AssociationStateReason")
    AssociationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#AssociationStatus", name: "AssociationStatus")
    AuthenticationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#AuthenticationType", name: "AuthenticationType")
    AuthorizeIpRulesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#AuthorizeIpRulesRequest", name: "AuthorizeIpRulesRequest")
    AuthorizeIpRulesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#AuthorizeIpRulesResult", name: "AuthorizeIpRulesResult")
    AvailableUserSessions = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.workspaces#AvailableUserSessions", name: "AvailableUserSessions", traits: {"smithy.api#range" => {"min" => 0}})
    AwsAccount = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#AwsAccount", name: "AwsAccount", traits: {"smithy.api#pattern" => "^\\d{12}$"})
    BooleanObject = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.workspaces#BooleanObject", name: "BooleanObject")
    BundleAssociatedResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#BundleAssociatedResourceType", name: "BundleAssociatedResourceType")
    BundleAssociatedResourceTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#BundleAssociatedResourceTypeList", name: "BundleAssociatedResourceTypeList")
    BundleId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#BundleId", name: "BundleId", traits: {"smithy.api#pattern" => "^wsb-[0-9a-z]{8,63}$"})
    BundleIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#BundleIdList", name: "BundleIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    BundleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#BundleList", name: "BundleList")
    BundleOwner = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#BundleOwner", name: "BundleOwner")
    BundleResourceAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#BundleResourceAssociation", name: "BundleResourceAssociation")
    BundleResourceAssociationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#BundleResourceAssociationList", name: "BundleResourceAssociationList")
    BundleType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#BundleType", name: "BundleType")
    Capacity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#Capacity", name: "Capacity")
    CapacityStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#CapacityStatus", name: "CapacityStatus")
    CertificateAuthorityArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#CertificateAuthorityArn", name: "CertificateAuthorityArn", traits: {"smithy.api#length" => {"min" => 5, "max" => 200}, "smithy.api#pattern" => "^arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]*:[\\w+=,.@-]+(/[\\w+=,.@-]+)*$"})
    CertificateBasedAuthProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#CertificateBasedAuthProperties", name: "CertificateBasedAuthProperties")
    CertificateBasedAuthStatusEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#CertificateBasedAuthStatusEnum", name: "CertificateBasedAuthStatusEnum")
    ClientDeviceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#ClientDeviceType", name: "ClientDeviceType")
    ClientDeviceTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#ClientDeviceTypeList", name: "ClientDeviceTypeList", traits: {"smithy.api#length" => {"min" => 1, "max" => 6}})
    ClientEmail = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#ClientEmail", name: "ClientEmail", traits: {"smithy.api#length" => {"min" => 6, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,4}$"})
    ClientLocale = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#ClientLocale", name: "ClientLocale", traits: {"smithy.api#length" => {"min" => 5, "max" => 5}, "smithy.api#pattern" => "^[a-z]{2}_[A-Z]{2}$"})
    ClientLoginMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#ClientLoginMessage", name: "ClientLoginMessage", traits: {"smithy.api#length" => {"min" => 0, "max" => 2000}, "smithy.api#pattern" => "^.*$"})
    ClientProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#ClientProperties", name: "ClientProperties")
    ClientPropertiesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#ClientPropertiesList", name: "ClientPropertiesList")
    ClientPropertiesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#ClientPropertiesResult", name: "ClientPropertiesResult")
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#ClientToken", name: "ClientToken", traits: {"smithy.api#pattern" => "^.{1,64}$"})
    ClientUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#ClientUrl", name: "ClientUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^(http|https)\\://\\S+$"})
    Compute = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#Compute", name: "Compute")
    ComputeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#ComputeList", name: "ComputeList")
    ComputeNotCompatibleException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#ComputeNotCompatibleException", name: "ComputeNotCompatibleException", traits: {"smithy.api#error" => "client"})
    ComputeType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#ComputeType", name: "ComputeType")
    ComputerName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#ComputerName", name: "ComputerName")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client"})
    ConnectClientAddIn = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#ConnectClientAddIn", name: "ConnectClientAddIn")
    ConnectClientAddInList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#ConnectClientAddInList", name: "ConnectClientAddInList")
    ConnectionAlias = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#ConnectionAlias", name: "ConnectionAlias")
    ConnectionAliasAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#ConnectionAliasAssociation", name: "ConnectionAliasAssociation")
    ConnectionAliasAssociationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#ConnectionAliasAssociationList", name: "ConnectionAliasAssociationList", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    ConnectionAliasId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#ConnectionAliasId", name: "ConnectionAliasId", traits: {"smithy.api#length" => {"min" => 13, "max" => 68}, "smithy.api#pattern" => "^wsca-[0-9a-z]{8,63}$"})
    ConnectionAliasIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#ConnectionAliasIdList", name: "ConnectionAliasIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    ConnectionAliasList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#ConnectionAliasList", name: "ConnectionAliasList", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    ConnectionAliasPermission = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#ConnectionAliasPermission", name: "ConnectionAliasPermission")
    ConnectionAliasPermissions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#ConnectionAliasPermissions", name: "ConnectionAliasPermissions", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    ConnectionAliasState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#ConnectionAliasState", name: "ConnectionAliasState")
    ConnectionIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#ConnectionIdentifier", name: "ConnectionIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#pattern" => "^[a-zA-Z0-9]+$"})
    ConnectionState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#ConnectionState", name: "ConnectionState")
    ConnectionString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#ConnectionString", name: "ConnectionString", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[.0-9a-zA-Z\\-]{1,255}$"})
    CopyWorkspaceImageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#CopyWorkspaceImageRequest", name: "CopyWorkspaceImageRequest")
    CopyWorkspaceImageResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#CopyWorkspaceImageResult", name: "CopyWorkspaceImageResult")
    CreateAccountLinkInvitationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#CreateAccountLinkInvitationRequest", name: "CreateAccountLinkInvitationRequest")
    CreateAccountLinkInvitationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#CreateAccountLinkInvitationResult", name: "CreateAccountLinkInvitationResult")
    CreateConnectClientAddInRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#CreateConnectClientAddInRequest", name: "CreateConnectClientAddInRequest")
    CreateConnectClientAddInResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#CreateConnectClientAddInResult", name: "CreateConnectClientAddInResult")
    CreateConnectionAliasRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#CreateConnectionAliasRequest", name: "CreateConnectionAliasRequest")
    CreateConnectionAliasResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#CreateConnectionAliasResult", name: "CreateConnectionAliasResult")
    CreateIpGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#CreateIpGroupRequest", name: "CreateIpGroupRequest")
    CreateIpGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#CreateIpGroupResult", name: "CreateIpGroupResult")
    CreateStandbyWorkspacesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#CreateStandbyWorkspacesRequest", name: "CreateStandbyWorkspacesRequest")
    CreateStandbyWorkspacesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#CreateStandbyWorkspacesResult", name: "CreateStandbyWorkspacesResult")
    CreateTagsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#CreateTagsRequest", name: "CreateTagsRequest")
    CreateTagsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#CreateTagsResult", name: "CreateTagsResult")
    CreateUpdatedWorkspaceImageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#CreateUpdatedWorkspaceImageRequest", name: "CreateUpdatedWorkspaceImageRequest")
    CreateUpdatedWorkspaceImageResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#CreateUpdatedWorkspaceImageResult", name: "CreateUpdatedWorkspaceImageResult")
    CreateWorkspaceBundleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#CreateWorkspaceBundleRequest", name: "CreateWorkspaceBundleRequest")
    CreateWorkspaceBundleResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#CreateWorkspaceBundleResult", name: "CreateWorkspaceBundleResult")
    CreateWorkspaceImageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#CreateWorkspaceImageRequest", name: "CreateWorkspaceImageRequest")
    CreateWorkspaceImageResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#CreateWorkspaceImageResult", name: "CreateWorkspaceImageResult")
    CreateWorkspacesPoolRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#CreateWorkspacesPoolRequest", name: "CreateWorkspacesPoolRequest")
    CreateWorkspacesPoolResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#CreateWorkspacesPoolResult", name: "CreateWorkspacesPoolResult")
    CreateWorkspacesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#CreateWorkspacesRequest", name: "CreateWorkspacesRequest")
    CreateWorkspacesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#CreateWorkspacesResult", name: "CreateWorkspacesResult")
    CustomImageProtocol = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#CustomImageProtocol", name: "CustomImageProtocol")
    CustomWorkspaceImageImportErrorDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#CustomWorkspaceImageImportErrorDetails", name: "CustomWorkspaceImageImportErrorDetails")
    CustomWorkspaceImageImportErrorDetailsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#CustomWorkspaceImageImportErrorDetailsList", name: "CustomWorkspaceImageImportErrorDetailsList")
    CustomWorkspaceImageImportState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#CustomWorkspaceImageImportState", name: "CustomWorkspaceImageImportState")
    DataReplication = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#DataReplication", name: "DataReplication")
    DataReplicationSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DataReplicationSettings", name: "DataReplicationSettings")
    DedicatedTenancyAccountType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#DedicatedTenancyAccountType", name: "DedicatedTenancyAccountType")
    DedicatedTenancyCidrRangeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#DedicatedTenancyCidrRangeList", name: "DedicatedTenancyCidrRangeList")
    DedicatedTenancyManagementCidrRange = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#DedicatedTenancyManagementCidrRange", name: "DedicatedTenancyManagementCidrRange", traits: {"smithy.api#pattern" => "^(^([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\\.([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\\.0\\.0)(\\/(16$))$"})
    DedicatedTenancyModificationStateEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#DedicatedTenancyModificationStateEnum", name: "DedicatedTenancyModificationStateEnum")
    DedicatedTenancySupportEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#DedicatedTenancySupportEnum", name: "DedicatedTenancySupportEnum")
    DedicatedTenancySupportResultEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#DedicatedTenancySupportResultEnum", name: "DedicatedTenancySupportResultEnum")
    DefaultClientBrandingAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DefaultClientBrandingAttributes", name: "DefaultClientBrandingAttributes")
    DefaultImportClientBrandingAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DefaultImportClientBrandingAttributes", name: "DefaultImportClientBrandingAttributes")
    DefaultLogo = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.workspaces#DefaultLogo", name: "DefaultLogo", traits: {"smithy.api#length" => {"min" => 1, "max" => 1500000}})
    DefaultOu = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#DefaultOu", name: "DefaultOu")
    DefaultWorkspaceCreationProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DefaultWorkspaceCreationProperties", name: "DefaultWorkspaceCreationProperties")
    DeletableCertificateBasedAuthPropertiesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#DeletableCertificateBasedAuthPropertiesList", name: "DeletableCertificateBasedAuthPropertiesList")
    DeletableCertificateBasedAuthProperty = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#DeletableCertificateBasedAuthProperty", name: "DeletableCertificateBasedAuthProperty")
    DeletableSamlPropertiesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#DeletableSamlPropertiesList", name: "DeletableSamlPropertiesList")
    DeletableSamlProperty = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#DeletableSamlProperty", name: "DeletableSamlProperty")
    DeleteAccountLinkInvitationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DeleteAccountLinkInvitationRequest", name: "DeleteAccountLinkInvitationRequest")
    DeleteAccountLinkInvitationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DeleteAccountLinkInvitationResult", name: "DeleteAccountLinkInvitationResult")
    DeleteClientBrandingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DeleteClientBrandingRequest", name: "DeleteClientBrandingRequest")
    DeleteClientBrandingResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DeleteClientBrandingResult", name: "DeleteClientBrandingResult")
    DeleteConnectClientAddInRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DeleteConnectClientAddInRequest", name: "DeleteConnectClientAddInRequest")
    DeleteConnectClientAddInResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DeleteConnectClientAddInResult", name: "DeleteConnectClientAddInResult")
    DeleteConnectionAliasRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DeleteConnectionAliasRequest", name: "DeleteConnectionAliasRequest")
    DeleteConnectionAliasResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DeleteConnectionAliasResult", name: "DeleteConnectionAliasResult")
    DeleteIpGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DeleteIpGroupRequest", name: "DeleteIpGroupRequest")
    DeleteIpGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DeleteIpGroupResult", name: "DeleteIpGroupResult")
    DeleteTagsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DeleteTagsRequest", name: "DeleteTagsRequest")
    DeleteTagsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DeleteTagsResult", name: "DeleteTagsResult")
    DeleteWorkspaceBundleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DeleteWorkspaceBundleRequest", name: "DeleteWorkspaceBundleRequest")
    DeleteWorkspaceBundleResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DeleteWorkspaceBundleResult", name: "DeleteWorkspaceBundleResult")
    DeleteWorkspaceImageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DeleteWorkspaceImageRequest", name: "DeleteWorkspaceImageRequest")
    DeleteWorkspaceImageResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DeleteWorkspaceImageResult", name: "DeleteWorkspaceImageResult")
    DeployWorkspaceApplicationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DeployWorkspaceApplicationsRequest", name: "DeployWorkspaceApplicationsRequest")
    DeployWorkspaceApplicationsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DeployWorkspaceApplicationsResult", name: "DeployWorkspaceApplicationsResult")
    DeregisterWorkspaceDirectoryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DeregisterWorkspaceDirectoryRequest", name: "DeregisterWorkspaceDirectoryRequest")
    DeregisterWorkspaceDirectoryResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DeregisterWorkspaceDirectoryResult", name: "DeregisterWorkspaceDirectoryResult")
    DescribeAccountModificationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DescribeAccountModificationsRequest", name: "DescribeAccountModificationsRequest")
    DescribeAccountModificationsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DescribeAccountModificationsResult", name: "DescribeAccountModificationsResult")
    DescribeAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DescribeAccountRequest", name: "DescribeAccountRequest")
    DescribeAccountResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DescribeAccountResult", name: "DescribeAccountResult")
    DescribeApplicationAssociationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DescribeApplicationAssociationsRequest", name: "DescribeApplicationAssociationsRequest")
    DescribeApplicationAssociationsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DescribeApplicationAssociationsResult", name: "DescribeApplicationAssociationsResult")
    DescribeApplicationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DescribeApplicationsRequest", name: "DescribeApplicationsRequest")
    DescribeApplicationsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DescribeApplicationsResult", name: "DescribeApplicationsResult")
    DescribeBundleAssociationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DescribeBundleAssociationsRequest", name: "DescribeBundleAssociationsRequest")
    DescribeBundleAssociationsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DescribeBundleAssociationsResult", name: "DescribeBundleAssociationsResult")
    DescribeClientBrandingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DescribeClientBrandingRequest", name: "DescribeClientBrandingRequest")
    DescribeClientBrandingResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DescribeClientBrandingResult", name: "DescribeClientBrandingResult")
    DescribeClientPropertiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DescribeClientPropertiesRequest", name: "DescribeClientPropertiesRequest")
    DescribeClientPropertiesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DescribeClientPropertiesResult", name: "DescribeClientPropertiesResult")
    DescribeConnectClientAddInsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DescribeConnectClientAddInsRequest", name: "DescribeConnectClientAddInsRequest")
    DescribeConnectClientAddInsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DescribeConnectClientAddInsResult", name: "DescribeConnectClientAddInsResult")
    DescribeConnectionAliasPermissionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DescribeConnectionAliasPermissionsRequest", name: "DescribeConnectionAliasPermissionsRequest")
    DescribeConnectionAliasPermissionsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DescribeConnectionAliasPermissionsResult", name: "DescribeConnectionAliasPermissionsResult")
    DescribeConnectionAliasesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DescribeConnectionAliasesRequest", name: "DescribeConnectionAliasesRequest")
    DescribeConnectionAliasesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DescribeConnectionAliasesResult", name: "DescribeConnectionAliasesResult")
    DescribeCustomWorkspaceImageImportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DescribeCustomWorkspaceImageImportRequest", name: "DescribeCustomWorkspaceImageImportRequest")
    DescribeCustomWorkspaceImageImportResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DescribeCustomWorkspaceImageImportResult", name: "DescribeCustomWorkspaceImageImportResult")
    DescribeImageAssociationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DescribeImageAssociationsRequest", name: "DescribeImageAssociationsRequest")
    DescribeImageAssociationsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DescribeImageAssociationsResult", name: "DescribeImageAssociationsResult")
    DescribeIpGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DescribeIpGroupsRequest", name: "DescribeIpGroupsRequest")
    DescribeIpGroupsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DescribeIpGroupsResult", name: "DescribeIpGroupsResult")
    DescribeTagsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DescribeTagsRequest", name: "DescribeTagsRequest")
    DescribeTagsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DescribeTagsResult", name: "DescribeTagsResult")
    DescribeWorkspaceAssociationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DescribeWorkspaceAssociationsRequest", name: "DescribeWorkspaceAssociationsRequest")
    DescribeWorkspaceAssociationsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DescribeWorkspaceAssociationsResult", name: "DescribeWorkspaceAssociationsResult")
    DescribeWorkspaceBundlesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DescribeWorkspaceBundlesRequest", name: "DescribeWorkspaceBundlesRequest")
    DescribeWorkspaceBundlesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DescribeWorkspaceBundlesResult", name: "DescribeWorkspaceBundlesResult")
    DescribeWorkspaceDirectoriesFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DescribeWorkspaceDirectoriesFilter", name: "DescribeWorkspaceDirectoriesFilter")
    DescribeWorkspaceDirectoriesFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#DescribeWorkspaceDirectoriesFilterList", name: "DescribeWorkspaceDirectoriesFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    DescribeWorkspaceDirectoriesFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#DescribeWorkspaceDirectoriesFilterName", name: "DescribeWorkspaceDirectoriesFilterName")
    DescribeWorkspaceDirectoriesFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#DescribeWorkspaceDirectoriesFilterValue", name: "DescribeWorkspaceDirectoriesFilterValue", traits: {"smithy.api#pattern" => "^[0-9a-zA-Z\\*\\.\\\\/\\?-_]{0,64}$"})
    DescribeWorkspaceDirectoriesFilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#DescribeWorkspaceDirectoriesFilterValues", name: "DescribeWorkspaceDirectoriesFilterValues", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    DescribeWorkspaceDirectoriesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DescribeWorkspaceDirectoriesRequest", name: "DescribeWorkspaceDirectoriesRequest")
    DescribeWorkspaceDirectoriesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DescribeWorkspaceDirectoriesResult", name: "DescribeWorkspaceDirectoriesResult")
    DescribeWorkspaceImagePermissionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DescribeWorkspaceImagePermissionsRequest", name: "DescribeWorkspaceImagePermissionsRequest")
    DescribeWorkspaceImagePermissionsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DescribeWorkspaceImagePermissionsResult", name: "DescribeWorkspaceImagePermissionsResult")
    DescribeWorkspaceImagesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DescribeWorkspaceImagesRequest", name: "DescribeWorkspaceImagesRequest")
    DescribeWorkspaceImagesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DescribeWorkspaceImagesResult", name: "DescribeWorkspaceImagesResult")
    DescribeWorkspaceSnapshotsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DescribeWorkspaceSnapshotsRequest", name: "DescribeWorkspaceSnapshotsRequest")
    DescribeWorkspaceSnapshotsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DescribeWorkspaceSnapshotsResult", name: "DescribeWorkspaceSnapshotsResult")
    DescribeWorkspacesConnectionStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DescribeWorkspacesConnectionStatusRequest", name: "DescribeWorkspacesConnectionStatusRequest")
    DescribeWorkspacesConnectionStatusResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DescribeWorkspacesConnectionStatusResult", name: "DescribeWorkspacesConnectionStatusResult")
    DescribeWorkspacesPoolSessionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DescribeWorkspacesPoolSessionsRequest", name: "DescribeWorkspacesPoolSessionsRequest")
    DescribeWorkspacesPoolSessionsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DescribeWorkspacesPoolSessionsResult", name: "DescribeWorkspacesPoolSessionsResult")
    DescribeWorkspacesPoolsFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DescribeWorkspacesPoolsFilter", name: "DescribeWorkspacesPoolsFilter")
    DescribeWorkspacesPoolsFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#DescribeWorkspacesPoolsFilterName", name: "DescribeWorkspacesPoolsFilterName")
    DescribeWorkspacesPoolsFilterOperator = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#DescribeWorkspacesPoolsFilterOperator", name: "DescribeWorkspacesPoolsFilterOperator")
    DescribeWorkspacesPoolsFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#DescribeWorkspacesPoolsFilterValue", name: "DescribeWorkspacesPoolsFilterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[A-Za-z0-9][A-Za-z0-9_.-]+$"})
    DescribeWorkspacesPoolsFilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#DescribeWorkspacesPoolsFilterValues", name: "DescribeWorkspacesPoolsFilterValues", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    DescribeWorkspacesPoolsFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#DescribeWorkspacesPoolsFilters", name: "DescribeWorkspacesPoolsFilters", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    DescribeWorkspacesPoolsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DescribeWorkspacesPoolsRequest", name: "DescribeWorkspacesPoolsRequest")
    DescribeWorkspacesPoolsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DescribeWorkspacesPoolsResult", name: "DescribeWorkspacesPoolsResult")
    DescribeWorkspacesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DescribeWorkspacesRequest", name: "DescribeWorkspacesRequest")
    DescribeWorkspacesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DescribeWorkspacesResult", name: "DescribeWorkspacesResult")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#Description", name: "Description")
    DesiredUserSessions = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.workspaces#DesiredUserSessions", name: "DesiredUserSessions", traits: {"smithy.api#range" => {"min" => 0}})
    DirectoryId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#DirectoryId", name: "DirectoryId", traits: {"smithy.api#length" => {"min" => 10, "max" => 65}, "smithy.api#pattern" => "^(d-[0-9a-f]{8,63}$)|(wsd-[0-9a-z]{8,63}$)$"})
    DirectoryIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#DirectoryIdList", name: "DirectoryIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    DirectoryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#DirectoryList", name: "DirectoryList")
    DirectoryName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#DirectoryName", name: "DirectoryName")
    DisassociateConnectionAliasRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DisassociateConnectionAliasRequest", name: "DisassociateConnectionAliasRequest")
    DisassociateConnectionAliasResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DisassociateConnectionAliasResult", name: "DisassociateConnectionAliasResult")
    DisassociateIpGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DisassociateIpGroupsRequest", name: "DisassociateIpGroupsRequest")
    DisassociateIpGroupsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DisassociateIpGroupsResult", name: "DisassociateIpGroupsResult")
    DisassociateWorkspaceApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DisassociateWorkspaceApplicationRequest", name: "DisassociateWorkspaceApplicationRequest")
    DisassociateWorkspaceApplicationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#DisassociateWorkspaceApplicationResult", name: "DisassociateWorkspaceApplicationResult")
    DisconnectTimeoutInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.workspaces#DisconnectTimeoutInSeconds", name: "DisconnectTimeoutInSeconds", traits: {"smithy.api#range" => {"min" => 60, "max" => 36000}})
    DnsIpAddresses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#DnsIpAddresses", name: "DnsIpAddresses")
    DomainName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#DomainName", name: "DomainName", traits: {"smithy.api#pattern" => "^([a-zA-Z0-9]+[.-])+([a-zA-Z0-9])+$"})
    Ec2ImageId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#Ec2ImageId", name: "Ec2ImageId", traits: {"smithy.api#pattern" => "^ami\\-([a-f0-9]{8}|[a-f0-9]{17})$"})
    Ec2ImportTaskId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#Ec2ImportTaskId", name: "Ec2ImportTaskId", traits: {"smithy.api#length" => {"min" => 19, "max" => 28}, "smithy.api#pattern" => "^import-ami\\-([a-zA-Z0-9]{8}|[a-zA-Z0-9]{17})$"})
    EndpointEncryptionMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#EndpointEncryptionMode", name: "EndpointEncryptionMode")
    ErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#ErrorCode", name: "ErrorCode", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    ErrorDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#ErrorDetails", name: "ErrorDetails")
    ErrorDetailsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#ErrorDetailsList", name: "ErrorDetailsList")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#ErrorMessage", name: "ErrorMessage")
    ErrorType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#ErrorType", name: "ErrorType")
    ExceptionErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#ExceptionErrorCode", name: "ExceptionErrorCode")
    ExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#ExceptionMessage", name: "ExceptionMessage")
    FailedCreateStandbyWorkspacesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#FailedCreateStandbyWorkspacesRequest", name: "FailedCreateStandbyWorkspacesRequest")
    FailedCreateStandbyWorkspacesRequestList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#FailedCreateStandbyWorkspacesRequestList", name: "FailedCreateStandbyWorkspacesRequestList")
    FailedCreateWorkspaceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#FailedCreateWorkspaceRequest", name: "FailedCreateWorkspaceRequest")
    FailedCreateWorkspaceRequests = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#FailedCreateWorkspaceRequests", name: "FailedCreateWorkspaceRequests")
    FailedRebootWorkspaceRequests = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#FailedRebootWorkspaceRequests", name: "FailedRebootWorkspaceRequests")
    FailedRebuildWorkspaceRequests = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#FailedRebuildWorkspaceRequests", name: "FailedRebuildWorkspaceRequests")
    FailedStartWorkspaceRequests = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#FailedStartWorkspaceRequests", name: "FailedStartWorkspaceRequests")
    FailedStopWorkspaceRequests = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#FailedStopWorkspaceRequests", name: "FailedStopWorkspaceRequests")
    FailedTerminateWorkspaceRequests = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#FailedTerminateWorkspaceRequests", name: "FailedTerminateWorkspaceRequests")
    FailedWorkspaceChangeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#FailedWorkspaceChangeRequest", name: "FailedWorkspaceChangeRequest")
    GetAccountLinkRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#GetAccountLinkRequest", name: "GetAccountLinkRequest")
    GetAccountLinkResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#GetAccountLinkResult", name: "GetAccountLinkResult")
    GlobalAcceleratorForDirectory = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#GlobalAcceleratorForDirectory", name: "GlobalAcceleratorForDirectory")
    GlobalAcceleratorForWorkSpace = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#GlobalAcceleratorForWorkSpace", name: "GlobalAcceleratorForWorkSpace")
    IDCConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#IDCConfig", name: "IDCConfig")
    IdleDisconnectTimeoutInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.workspaces#IdleDisconnectTimeoutInSeconds", name: "IdleDisconnectTimeoutInSeconds", traits: {"smithy.api#range" => {"min" => 0, "max" => 36000}})
    ImageAssociatedResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#ImageAssociatedResourceType", name: "ImageAssociatedResourceType")
    ImageAssociatedResourceTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#ImageAssociatedResourceTypeList", name: "ImageAssociatedResourceTypeList")
    ImageBuildVersionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#ImageBuildVersionArn", name: "ImageBuildVersionArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[^:]*:imagebuilder:[^:]+:(?:[0-9]{12}|aws(?:-[a-z-]+)?):image/[a-z0-9-_]+/(?:(?:([0-9]+|x)\\.([0-9]+|x)\\.([0-9]+|x))|(?:[0-9]+\\.[0-9]+\\.[0-9]+/[0-9]+))$"})
    ImageComputeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#ImageComputeType", name: "ImageComputeType")
    ImageErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#ImageErrorMessage", name: "ImageErrorMessage", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    ImagePermission = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#ImagePermission", name: "ImagePermission")
    ImagePermissions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#ImagePermissions", name: "ImagePermissions")
    ImageResourceAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#ImageResourceAssociation", name: "ImageResourceAssociation")
    ImageResourceAssociationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#ImageResourceAssociationList", name: "ImageResourceAssociationList")
    ImageSourceIdentifier = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.workspaces#ImageSourceIdentifier", name: "ImageSourceIdentifier")
    ImageType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#ImageType", name: "ImageType")
    ImportClientBrandingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#ImportClientBrandingRequest", name: "ImportClientBrandingRequest")
    ImportClientBrandingResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#ImportClientBrandingResult", name: "ImportClientBrandingResult")
    ImportCustomWorkspaceImageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#ImportCustomWorkspaceImageRequest", name: "ImportCustomWorkspaceImageRequest")
    ImportCustomWorkspaceImageResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#ImportCustomWorkspaceImageResult", name: "ImportCustomWorkspaceImageResult")
    ImportWorkspaceImageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#ImportWorkspaceImageRequest", name: "ImportWorkspaceImageRequest")
    ImportWorkspaceImageResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#ImportWorkspaceImageResult", name: "ImportWorkspaceImageResult")
    IncompatibleApplicationsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#IncompatibleApplicationsException", name: "IncompatibleApplicationsException", traits: {"smithy.api#error" => "client"})
    InfrastructureConfigurationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#InfrastructureConfigurationArn", name: "InfrastructureConfigurationArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[^:]*:imagebuilder:[^:]+:(?:[0-9]{12}|aws):infrastructure-configuration/[a-z0-9-_]+$"})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "client"})
    InternetFallbackProtocol = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#InternetFallbackProtocol", name: "InternetFallbackProtocol")
    InternetFallbackProtocolList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#InternetFallbackProtocolList", name: "InternetFallbackProtocolList")
    InvalidParameterCombinationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#InvalidParameterCombinationException", name: "InvalidParameterCombinationException", traits: {"smithy.api#error" => "client"})
    InvalidParameterValuesException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#InvalidParameterValuesException", name: "InvalidParameterValuesException", traits: {"smithy.api#error" => "client"})
    InvalidResourceStateException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#InvalidResourceStateException", name: "InvalidResourceStateException", traits: {"smithy.api#error" => "client"})
    Ios2XLogo = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.workspaces#Ios2XLogo", name: "Ios2XLogo", traits: {"smithy.api#length" => {"min" => 1, "max" => 1770000}})
    Ios3XLogo = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.workspaces#Ios3XLogo", name: "Ios3XLogo", traits: {"smithy.api#length" => {"min" => 1, "max" => 1770000}})
    IosClientBrandingAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#IosClientBrandingAttributes", name: "IosClientBrandingAttributes")
    IosImportClientBrandingAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#IosImportClientBrandingAttributes", name: "IosImportClientBrandingAttributes")
    IosLogo = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.workspaces#IosLogo", name: "IosLogo", traits: {"smithy.api#length" => {"min" => 1, "max" => 447000}})
    IpAddress = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#IpAddress", name: "IpAddress")
    IpGroupDesc = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#IpGroupDesc", name: "IpGroupDesc")
    IpGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#IpGroupId", name: "IpGroupId", traits: {"smithy.api#pattern" => "^wsipg-[0-9a-z]{8,63}$"})
    IpGroupIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#IpGroupIdList", name: "IpGroupIdList")
    IpGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#IpGroupName", name: "IpGroupName")
    IpRevokedRuleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#IpRevokedRuleList", name: "IpRevokedRuleList")
    IpRule = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#IpRule", name: "IpRule")
    IpRuleDesc = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#IpRuleDesc", name: "IpRuleDesc")
    IpRuleItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#IpRuleItem", name: "IpRuleItem")
    IpRuleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#IpRuleList", name: "IpRuleList")
    Limit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.workspaces#Limit", name: "Limit", traits: {"smithy.api#range" => {"min" => 1, "max" => 25}})
    Limit50 = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.workspaces#Limit50", name: "Limit50", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    LinkId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#LinkId", name: "LinkId", traits: {"smithy.api#pattern" => "^link-.{8,24}$"})
    LinkStatusFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#LinkStatusFilterList", name: "LinkStatusFilterList")
    ListAccountLinksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#ListAccountLinksRequest", name: "ListAccountLinksRequest")
    ListAccountLinksResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#ListAccountLinksResult", name: "ListAccountLinksResult")
    ListAvailableManagementCidrRangesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#ListAvailableManagementCidrRangesRequest", name: "ListAvailableManagementCidrRangesRequest")
    ListAvailableManagementCidrRangesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#ListAvailableManagementCidrRangesResult", name: "ListAvailableManagementCidrRangesResult")
    LogUploadEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#LogUploadEnum", name: "LogUploadEnum")
    LoginMessage = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.workspaces#LoginMessage", name: "LoginMessage")
    ManagementCidrRangeConstraint = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#ManagementCidrRangeConstraint", name: "ManagementCidrRangeConstraint", traits: {"smithy.api#pattern" => "^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])(\\/(3[0-2]|[1-2][0-9]|[0-9]))$"})
    ManagementCidrRangeMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.workspaces#ManagementCidrRangeMaxResults", name: "ManagementCidrRangeMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 5}})
    MaxUserDurationInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.workspaces#MaxUserDurationInSeconds", name: "MaxUserDurationInSeconds", traits: {"smithy.api#range" => {"min" => 600, "max" => 432000}})
    MaximumLength = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.workspaces#MaximumLength", name: "MaximumLength", traits: {"smithy.api#range" => {"min" => 0}})
    Message = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#Message", name: "Message")
    MicrosoftEntraConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#MicrosoftEntraConfig", name: "MicrosoftEntraConfig")
    MicrosoftEntraConfigTenantId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#MicrosoftEntraConfigTenantId", name: "MicrosoftEntraConfigTenantId", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9-]{1,100}$"})
    MigrateWorkspaceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#MigrateWorkspaceRequest", name: "MigrateWorkspaceRequest")
    MigrateWorkspaceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#MigrateWorkspaceResult", name: "MigrateWorkspaceResult")
    ModificationResourceEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#ModificationResourceEnum", name: "ModificationResourceEnum")
    ModificationState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#ModificationState", name: "ModificationState")
    ModificationStateEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#ModificationStateEnum", name: "ModificationStateEnum")
    ModificationStateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#ModificationStateList", name: "ModificationStateList")
    ModifyAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#ModifyAccountRequest", name: "ModifyAccountRequest")
    ModifyAccountResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#ModifyAccountResult", name: "ModifyAccountResult")
    ModifyCertificateBasedAuthPropertiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#ModifyCertificateBasedAuthPropertiesRequest", name: "ModifyCertificateBasedAuthPropertiesRequest")
    ModifyCertificateBasedAuthPropertiesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#ModifyCertificateBasedAuthPropertiesResult", name: "ModifyCertificateBasedAuthPropertiesResult")
    ModifyClientPropertiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#ModifyClientPropertiesRequest", name: "ModifyClientPropertiesRequest")
    ModifyClientPropertiesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#ModifyClientPropertiesResult", name: "ModifyClientPropertiesResult")
    ModifyEndpointEncryptionModeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#ModifyEndpointEncryptionModeRequest", name: "ModifyEndpointEncryptionModeRequest")
    ModifyEndpointEncryptionModeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#ModifyEndpointEncryptionModeResponse", name: "ModifyEndpointEncryptionModeResponse")
    ModifySamlPropertiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#ModifySamlPropertiesRequest", name: "ModifySamlPropertiesRequest")
    ModifySamlPropertiesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#ModifySamlPropertiesResult", name: "ModifySamlPropertiesResult")
    ModifySelfservicePermissionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#ModifySelfservicePermissionsRequest", name: "ModifySelfservicePermissionsRequest")
    ModifySelfservicePermissionsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#ModifySelfservicePermissionsResult", name: "ModifySelfservicePermissionsResult")
    ModifyStreamingPropertiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#ModifyStreamingPropertiesRequest", name: "ModifyStreamingPropertiesRequest")
    ModifyStreamingPropertiesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#ModifyStreamingPropertiesResult", name: "ModifyStreamingPropertiesResult")
    ModifyWorkspaceAccessPropertiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#ModifyWorkspaceAccessPropertiesRequest", name: "ModifyWorkspaceAccessPropertiesRequest")
    ModifyWorkspaceAccessPropertiesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#ModifyWorkspaceAccessPropertiesResult", name: "ModifyWorkspaceAccessPropertiesResult")
    ModifyWorkspaceCreationPropertiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#ModifyWorkspaceCreationPropertiesRequest", name: "ModifyWorkspaceCreationPropertiesRequest")
    ModifyWorkspaceCreationPropertiesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#ModifyWorkspaceCreationPropertiesResult", name: "ModifyWorkspaceCreationPropertiesResult")
    ModifyWorkspacePropertiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#ModifyWorkspacePropertiesRequest", name: "ModifyWorkspacePropertiesRequest")
    ModifyWorkspacePropertiesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#ModifyWorkspacePropertiesResult", name: "ModifyWorkspacePropertiesResult")
    ModifyWorkspaceStateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#ModifyWorkspaceStateRequest", name: "ModifyWorkspaceStateRequest")
    ModifyWorkspaceStateResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#ModifyWorkspaceStateResult", name: "ModifyWorkspaceStateResult")
    NetworkAccessConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#NetworkAccessConfiguration", name: "NetworkAccessConfiguration")
    NonEmptyString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#NonEmptyString", name: "NonEmptyString", traits: {"smithy.api#length" => {"min" => 1}})
    OSVersion = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#OSVersion", name: "OSVersion")
    OperatingSystem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#OperatingSystem", name: "OperatingSystem")
    OperatingSystemName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#OperatingSystemName", name: "OperatingSystemName")
    OperatingSystemNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#OperatingSystemNameList", name: "OperatingSystemNameList")
    OperatingSystemNotCompatibleException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#OperatingSystemNotCompatibleException", name: "OperatingSystemNotCompatibleException", traits: {"smithy.api#error" => "client"})
    OperatingSystemType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#OperatingSystemType", name: "OperatingSystemType")
    OperationInProgressException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#OperationInProgressException", name: "OperationInProgressException", traits: {"smithy.api#error" => "client"})
    OperationNotSupportedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#OperationNotSupportedException", name: "OperationNotSupportedException", traits: {"smithy.api#error" => "client"})
    PaginationToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#PaginationToken", name: "PaginationToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    PendingCreateStandbyWorkspacesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#PendingCreateStandbyWorkspacesRequest", name: "PendingCreateStandbyWorkspacesRequest")
    PendingCreateStandbyWorkspacesRequestList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#PendingCreateStandbyWorkspacesRequestList", name: "PendingCreateStandbyWorkspacesRequestList")
    Platform = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#Platform", name: "Platform")
    PoolsRunningMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#PoolsRunningMode", name: "PoolsRunningMode")
    Protocol = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#Protocol", name: "Protocol")
    ProtocolList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#ProtocolList", name: "ProtocolList")
    RebootRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#RebootRequest", name: "RebootRequest")
    RebootWorkspaceRequests = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#RebootWorkspaceRequests", name: "RebootWorkspaceRequests", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    RebootWorkspacesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#RebootWorkspacesRequest", name: "RebootWorkspacesRequest")
    RebootWorkspacesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#RebootWorkspacesResult", name: "RebootWorkspacesResult")
    RebuildRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#RebuildRequest", name: "RebuildRequest")
    RebuildWorkspaceRequests = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#RebuildWorkspaceRequests", name: "RebuildWorkspaceRequests", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    RebuildWorkspacesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#RebuildWorkspacesRequest", name: "RebuildWorkspacesRequest")
    RebuildWorkspacesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#RebuildWorkspacesResult", name: "RebuildWorkspacesResult")
    ReconnectEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#ReconnectEnum", name: "ReconnectEnum")
    Region = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#Region", name: "Region", traits: {"smithy.api#length" => {"min" => 1, "max" => 31}, "smithy.api#pattern" => "^[-0-9a-z]{1,31}$"})
    RegisterWorkspaceDirectoryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#RegisterWorkspaceDirectoryRequest", name: "RegisterWorkspaceDirectoryRequest")
    RegisterWorkspaceDirectoryResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#RegisterWorkspaceDirectoryResult", name: "RegisterWorkspaceDirectoryResult")
    RegistrationCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#RegistrationCode", name: "RegistrationCode", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    RejectAccountLinkInvitationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#RejectAccountLinkInvitationRequest", name: "RejectAccountLinkInvitationRequest")
    RejectAccountLinkInvitationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#RejectAccountLinkInvitationResult", name: "RejectAccountLinkInvitationResult")
    RelatedWorkspaceProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#RelatedWorkspaceProperties", name: "RelatedWorkspaceProperties")
    RelatedWorkspaces = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#RelatedWorkspaces", name: "RelatedWorkspaces")
    ResourceAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#ResourceAlreadyExistsException", name: "ResourceAlreadyExistsException", traits: {"smithy.api#error" => "client"})
    ResourceAssociatedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#ResourceAssociatedException", name: "ResourceAssociatedException", traits: {"smithy.api#error" => "client"})
    ResourceCreationFailedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#ResourceCreationFailedException", name: "ResourceCreationFailedException", traits: {"smithy.api#error" => "client"})
    ResourceIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#ResourceIdList", name: "ResourceIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    ResourceInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#ResourceInUseException", name: "ResourceInUseException", traits: {"smithy.api#error" => "client"})
    ResourceLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#ResourceLimitExceededException", name: "ResourceLimitExceededException", traits: {"smithy.api#error" => "client"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client"})
    ResourceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#ResourceUnavailableException", name: "ResourceUnavailableException", traits: {"smithy.api#error" => "client"})
    RestoreWorkspaceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#RestoreWorkspaceRequest", name: "RestoreWorkspaceRequest")
    RestoreWorkspaceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#RestoreWorkspaceResult", name: "RestoreWorkspaceResult")
    RevokeIpRulesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#RevokeIpRulesRequest", name: "RevokeIpRulesRequest")
    RevokeIpRulesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#RevokeIpRulesResult", name: "RevokeIpRulesResult")
    RootStorage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#RootStorage", name: "RootStorage")
    RootVolumeSizeGib = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.workspaces#RootVolumeSizeGib", name: "RootVolumeSizeGib")
    RunningMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#RunningMode", name: "RunningMode")
    RunningModeAutoStopTimeoutInMinutes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.workspaces#RunningModeAutoStopTimeoutInMinutes", name: "RunningModeAutoStopTimeoutInMinutes")
    S3BucketName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#S3BucketName", name: "S3BucketName", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9]$"})
    SamlProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#SamlProperties", name: "SamlProperties")
    SamlStatusEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#SamlStatusEnum", name: "SamlStatusEnum")
    SamlUserAccessUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#SamlUserAccessUrl", name: "SamlUserAccessUrl", traits: {"smithy.api#length" => {"min" => 8, "max" => 200}, "smithy.api#pattern" => "^(http|https)\\://\\S+$"})
    SecretsManagerArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#SecretsManagerArn", name: "SecretsManagerArn", traits: {"smithy.api#pattern" => "^arn:aws[a-z-]{0,7}:secretsmanager:[A-za-z0-9_/.-]{0,63}:[A-za-z0-9_/.-]{0,63}:secret:[A-Za-z0-9][A-za-z0-9_/.-]{8,519}$"})
    SecurityGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#SecurityGroupId", name: "SecurityGroupId", traits: {"smithy.api#length" => {"min" => 11, "max" => 20}, "smithy.api#pattern" => "^(sg-([0-9a-f]{8}|[0-9a-f]{17}))$"})
    SelfservicePermissions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#SelfservicePermissions", name: "SelfservicePermissions")
    SessionConnectionState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#SessionConnectionState", name: "SessionConnectionState")
    SessionInstanceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#SessionInstanceId", name: "SessionInstanceId", traits: {"smithy.api#pattern" => "^i-[a-f0-9]{8}(?:[a-f0-9]{9})?$"})
    SettingsGroup = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#SettingsGroup", name: "SettingsGroup", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}, "smithy.api#pattern" => "^[A-Za-z0-9_./()!*'-]+$"})
    Snapshot = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#Snapshot", name: "Snapshot")
    SnapshotList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#SnapshotList", name: "SnapshotList")
    StandbyWorkspace = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#StandbyWorkspace", name: "StandbyWorkspace")
    StandbyWorkspaceRelationshipType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#StandbyWorkspaceRelationshipType", name: "StandbyWorkspaceRelationshipType")
    StandbyWorkspacesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#StandbyWorkspacesList", name: "StandbyWorkspacesList")
    StandbyWorkspacesProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#StandbyWorkspacesProperties", name: "StandbyWorkspacesProperties")
    StandbyWorkspacesPropertiesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#StandbyWorkspacesPropertiesList", name: "StandbyWorkspacesPropertiesList")
    StartRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#StartRequest", name: "StartRequest")
    StartWorkspaceRequests = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#StartWorkspaceRequests", name: "StartWorkspaceRequests", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    StartWorkspacesPoolRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#StartWorkspacesPoolRequest", name: "StartWorkspacesPoolRequest")
    StartWorkspacesPoolResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#StartWorkspacesPoolResult", name: "StartWorkspacesPoolResult")
    StartWorkspacesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#StartWorkspacesRequest", name: "StartWorkspacesRequest")
    StartWorkspacesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#StartWorkspacesResult", name: "StartWorkspacesResult")
    StopRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#StopRequest", name: "StopRequest")
    StopWorkspaceRequests = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#StopWorkspaceRequests", name: "StopWorkspaceRequests", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    StopWorkspacesPoolRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#StopWorkspacesPoolRequest", name: "StopWorkspacesPoolRequest")
    StopWorkspacesPoolResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#StopWorkspacesPoolResult", name: "StopWorkspacesPoolResult")
    StopWorkspacesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#StopWorkspacesRequest", name: "StopWorkspacesRequest")
    StopWorkspacesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#StopWorkspacesResult", name: "StopWorkspacesResult")
    StorageConnector = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#StorageConnector", name: "StorageConnector")
    StorageConnectorStatusEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#StorageConnectorStatusEnum", name: "StorageConnectorStatusEnum")
    StorageConnectorTypeEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#StorageConnectorTypeEnum", name: "StorageConnectorTypeEnum")
    StorageConnectors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#StorageConnectors", name: "StorageConnectors", traits: {"smithy.api#length" => {"min" => 1}})
    StreamingExperiencePreferredProtocolEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#StreamingExperiencePreferredProtocolEnum", name: "StreamingExperiencePreferredProtocolEnum")
    StreamingProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#StreamingProperties", name: "StreamingProperties")
    String2048 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#String2048", name: "String2048", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    SubnetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#SubnetId", name: "SubnetId", traits: {"smithy.api#length" => {"min" => 15, "max" => 24}, "smithy.api#pattern" => "^(subnet-([0-9a-f]{8}|[0-9a-f]{17}))$"})
    SubnetIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#SubnetIds", name: "SubnetIds", traits: {"smithy.api#length" => {"min" => 0, "max" => 2}})
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 127}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#TagKeyList", name: "TagKeyList")
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#TagList", name: "TagList")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    TargetWorkspaceState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#TargetWorkspaceState", name: "TargetWorkspaceState")
    Tenancy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#Tenancy", name: "Tenancy")
    TerminateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#TerminateRequest", name: "TerminateRequest")
    TerminateWorkspaceRequests = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#TerminateWorkspaceRequests", name: "TerminateWorkspaceRequests", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    TerminateWorkspacesPoolRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#TerminateWorkspacesPoolRequest", name: "TerminateWorkspacesPoolRequest")
    TerminateWorkspacesPoolResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#TerminateWorkspacesPoolResult", name: "TerminateWorkspacesPoolResult")
    TerminateWorkspacesPoolSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#TerminateWorkspacesPoolSessionRequest", name: "TerminateWorkspacesPoolSessionRequest")
    TerminateWorkspacesPoolSessionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#TerminateWorkspacesPoolSessionResult", name: "TerminateWorkspacesPoolSessionResult")
    TerminateWorkspacesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#TerminateWorkspacesRequest", name: "TerminateWorkspacesRequest")
    TerminateWorkspacesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#TerminateWorkspacesResult", name: "TerminateWorkspacesResult")
    TimeoutSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#TimeoutSettings", name: "TimeoutSettings")
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.workspaces#Timestamp", name: "Timestamp")
    UnsupportedNetworkConfigurationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#UnsupportedNetworkConfigurationException", name: "UnsupportedNetworkConfigurationException", traits: {"smithy.api#error" => "client"})
    UnsupportedWorkspaceConfigurationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#UnsupportedWorkspaceConfigurationException", name: "UnsupportedWorkspaceConfigurationException", traits: {"smithy.api#error" => "client"})
    UpdateConnectClientAddInRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#UpdateConnectClientAddInRequest", name: "UpdateConnectClientAddInRequest")
    UpdateConnectClientAddInResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#UpdateConnectClientAddInResult", name: "UpdateConnectClientAddInResult")
    UpdateConnectionAliasPermissionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#UpdateConnectionAliasPermissionRequest", name: "UpdateConnectionAliasPermissionRequest")
    UpdateConnectionAliasPermissionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#UpdateConnectionAliasPermissionResult", name: "UpdateConnectionAliasPermissionResult")
    UpdateDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#UpdateDescription", name: "UpdateDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9_./() -]+$"})
    UpdateResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#UpdateResult", name: "UpdateResult")
    UpdateRulesOfIpGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#UpdateRulesOfIpGroupRequest", name: "UpdateRulesOfIpGroupRequest")
    UpdateRulesOfIpGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#UpdateRulesOfIpGroupResult", name: "UpdateRulesOfIpGroupResult")
    UpdateWorkspaceBundleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#UpdateWorkspaceBundleRequest", name: "UpdateWorkspaceBundleRequest")
    UpdateWorkspaceBundleResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#UpdateWorkspaceBundleResult", name: "UpdateWorkspaceBundleResult")
    UpdateWorkspaceImagePermissionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#UpdateWorkspaceImagePermissionRequest", name: "UpdateWorkspaceImagePermissionRequest")
    UpdateWorkspaceImagePermissionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#UpdateWorkspaceImagePermissionResult", name: "UpdateWorkspaceImagePermissionResult")
    UpdateWorkspacesPoolRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#UpdateWorkspacesPoolRequest", name: "UpdateWorkspacesPoolRequest")
    UpdateWorkspacesPoolResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#UpdateWorkspacesPoolResult", name: "UpdateWorkspacesPoolResult")
    UserIdentityType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#UserIdentityType", name: "UserIdentityType")
    UserName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#UserName", name: "UserName", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}})
    UserSetting = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#UserSetting", name: "UserSetting")
    UserSettingActionEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#UserSettingActionEnum", name: "UserSettingActionEnum")
    UserSettingPermissionEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#UserSettingPermissionEnum", name: "UserSettingPermissionEnum")
    UserSettings = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#UserSettings", name: "UserSettings", traits: {"smithy.api#length" => {"min" => 1}})
    UserStorage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#UserStorage", name: "UserStorage")
    UserVolumeSizeGib = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.workspaces#UserVolumeSizeGib", name: "UserVolumeSizeGib")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client"})
    VolumeEncryptionKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#VolumeEncryptionKey", name: "VolumeEncryptionKey")
    WorkSpaceApplication = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#WorkSpaceApplication", name: "WorkSpaceApplication")
    WorkSpaceApplicationDeployment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#WorkSpaceApplicationDeployment", name: "WorkSpaceApplicationDeployment")
    WorkSpaceApplicationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#WorkSpaceApplicationId", name: "WorkSpaceApplicationId", traits: {"smithy.api#pattern" => "^wsa-[0-9a-z]{8,63}$"})
    WorkSpaceApplicationIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#WorkSpaceApplicationIdList", name: "WorkSpaceApplicationIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    WorkSpaceApplicationLicenseType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#WorkSpaceApplicationLicenseType", name: "WorkSpaceApplicationLicenseType")
    WorkSpaceApplicationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#WorkSpaceApplicationList", name: "WorkSpaceApplicationList")
    WorkSpaceApplicationOwner = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#WorkSpaceApplicationOwner", name: "WorkSpaceApplicationOwner", traits: {"smithy.api#pattern" => "^\\d{12}|AMAZON$"})
    WorkSpaceApplicationState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#WorkSpaceApplicationState", name: "WorkSpaceApplicationState")
    WorkSpaceAssociatedResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#WorkSpaceAssociatedResourceType", name: "WorkSpaceAssociatedResourceType")
    WorkSpaceAssociatedResourceTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#WorkSpaceAssociatedResourceTypeList", name: "WorkSpaceAssociatedResourceTypeList")
    Workspace = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#Workspace", name: "Workspace")
    WorkspaceAccessProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#WorkspaceAccessProperties", name: "WorkspaceAccessProperties")
    WorkspaceBundle = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#WorkspaceBundle", name: "WorkspaceBundle")
    WorkspaceBundleDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#WorkspaceBundleDescription", name: "WorkspaceBundleDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9_./() -]+$"})
    WorkspaceBundleName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#WorkspaceBundleName", name: "WorkspaceBundleName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_./()\\\\-]+$"})
    WorkspaceBundleState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#WorkspaceBundleState", name: "WorkspaceBundleState")
    WorkspaceConnectionStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#WorkspaceConnectionStatus", name: "WorkspaceConnectionStatus")
    WorkspaceConnectionStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#WorkspaceConnectionStatusList", name: "WorkspaceConnectionStatusList")
    WorkspaceCreationProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#WorkspaceCreationProperties", name: "WorkspaceCreationProperties")
    WorkspaceDirectory = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#WorkspaceDirectory", name: "WorkspaceDirectory")
    WorkspaceDirectoryDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#WorkspaceDirectoryDescription", name: "WorkspaceDirectoryDescription", traits: {"smithy.api#pattern" => "^([a-zA-Z0-9_])[\\\\a-zA-Z0-9_@#%*+=:?./!\\s-]{1,255}$"})
    WorkspaceDirectoryName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#WorkspaceDirectoryName", name: "WorkspaceDirectoryName", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_.\\s-]{1,64}$"})
    WorkspaceDirectoryNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#WorkspaceDirectoryNameList", name: "WorkspaceDirectoryNameList", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    WorkspaceDirectoryState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#WorkspaceDirectoryState", name: "WorkspaceDirectoryState")
    WorkspaceDirectoryType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#WorkspaceDirectoryType", name: "WorkspaceDirectoryType")
    WorkspaceErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#WorkspaceErrorCode", name: "WorkspaceErrorCode")
    WorkspaceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#WorkspaceId", name: "WorkspaceId", traits: {"smithy.api#pattern" => "^ws-[0-9a-z]{8,63}$"})
    WorkspaceIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#WorkspaceIdList", name: "WorkspaceIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    WorkspaceImage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#WorkspaceImage", name: "WorkspaceImage")
    WorkspaceImageDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#WorkspaceImageDescription", name: "WorkspaceImageDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_./() -]+$"})
    WorkspaceImageErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#WorkspaceImageErrorCode", name: "WorkspaceImageErrorCode")
    WorkspaceImageErrorDetailCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#WorkspaceImageErrorDetailCode", name: "WorkspaceImageErrorDetailCode")
    WorkspaceImageId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#WorkspaceImageId", name: "WorkspaceImageId", traits: {"smithy.api#pattern" => "^wsi-[0-9a-z]{9,63}$"})
    WorkspaceImageIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#WorkspaceImageIdList", name: "WorkspaceImageIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    WorkspaceImageIngestionProcess = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#WorkspaceImageIngestionProcess", name: "WorkspaceImageIngestionProcess")
    WorkspaceImageList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#WorkspaceImageList", name: "WorkspaceImageList")
    WorkspaceImageName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#WorkspaceImageName", name: "WorkspaceImageName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_./()\\\\-]+$"})
    WorkspaceImageRequiredTenancy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#WorkspaceImageRequiredTenancy", name: "WorkspaceImageRequiredTenancy")
    WorkspaceImageState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#WorkspaceImageState", name: "WorkspaceImageState")
    WorkspaceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#WorkspaceList", name: "WorkspaceList")
    WorkspaceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#WorkspaceName", name: "WorkspaceName", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9_()][a-zA-Z0-9_.()-]{1,63}$"})
    WorkspaceProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#WorkspaceProperties", name: "WorkspaceProperties")
    WorkspaceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#WorkspaceRequest", name: "WorkspaceRequest")
    WorkspaceRequestList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#WorkspaceRequestList", name: "WorkspaceRequestList", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    WorkspaceResourceAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#WorkspaceResourceAssociation", name: "WorkspaceResourceAssociation")
    WorkspaceResourceAssociationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#WorkspaceResourceAssociationList", name: "WorkspaceResourceAssociationList")
    WorkspaceState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#WorkspaceState", name: "WorkspaceState")
    WorkspaceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#WorkspaceType", name: "WorkspaceType")
    WorkspacesDefaultRoleNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#WorkspacesDefaultRoleNotFoundException", name: "WorkspacesDefaultRoleNotFoundException", traits: {"smithy.api#error" => "client"})
    WorkspacesIpGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#WorkspacesIpGroup", name: "WorkspacesIpGroup")
    WorkspacesIpGroupsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#WorkspacesIpGroupsList", name: "WorkspacesIpGroupsList")
    WorkspacesPool = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#WorkspacesPool", name: "WorkspacesPool")
    WorkspacesPoolError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#WorkspacesPoolError", name: "WorkspacesPoolError")
    WorkspacesPoolErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#WorkspacesPoolErrorCode", name: "WorkspacesPoolErrorCode")
    WorkspacesPoolErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#WorkspacesPoolErrors", name: "WorkspacesPoolErrors")
    WorkspacesPoolId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#WorkspacesPoolId", name: "WorkspacesPoolId", traits: {"smithy.api#pattern" => "^wspool-[0-9a-z]{9}$"})
    WorkspacesPoolIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#WorkspacesPoolIds", name: "WorkspacesPoolIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    WorkspacesPoolName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#WorkspacesPoolName", name: "WorkspacesPoolName", traits: {"smithy.api#pattern" => "^[A-Za-z0-9][A-Za-z0-9_.-]{0,63}$"})
    WorkspacesPoolSession = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.workspaces#WorkspacesPoolSession", name: "WorkspacesPoolSession")
    WorkspacesPoolSessions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#WorkspacesPoolSessions", name: "WorkspacesPoolSessions")
    WorkspacesPoolState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.workspaces#WorkspacesPoolState", name: "WorkspacesPoolState")
    WorkspacesPoolUserId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.workspaces#WorkspacesPoolUserId", name: "WorkspacesPoolUserId", traits: {"smithy.api#length" => {"min" => 2, "max" => 128}})
    WorkspacesPools = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.workspaces#WorkspacesPools", name: "WorkspacesPools")

    AGAModeForDirectoryEnum.add_member(:enabled_auto, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED_AUTO", traits: {"smithy.api#enumValue" => "ENABLED_AUTO"}))
    AGAModeForDirectoryEnum.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    AGAModeForWorkSpaceEnum.add_member(:enabled_auto, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED_AUTO", traits: {"smithy.api#enumValue" => "ENABLED_AUTO"}))
    AGAModeForWorkSpaceEnum.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    AGAModeForWorkSpaceEnum.add_member(:inherited, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INHERITED", traits: {"smithy.api#enumValue" => "INHERITED"}))
    AGAPreferredProtocolForDirectory.add_member(:tcp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TCP", traits: {"smithy.api#enumValue" => "TCP"}))
    AGAPreferredProtocolForDirectory.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    AGAPreferredProtocolForWorkSpace.add_member(:tcp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TCP", traits: {"smithy.api#enumValue" => "TCP"}))
    AGAPreferredProtocolForWorkSpace.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    AGAPreferredProtocolForWorkSpace.add_member(:inherited, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INHERITED", traits: {"smithy.api#enumValue" => "INHERITED"}))
    AcceptAccountLinkInvitationRequest.add_member(:link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkId, location_name: "LinkId", traits: {"smithy.api#required" => {}}))
    AcceptAccountLinkInvitationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "ClientToken"))
    AcceptAccountLinkInvitationRequest.type = Types::AcceptAccountLinkInvitationRequest
    AcceptAccountLinkInvitationResult.add_member(:account_link, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountLink, location_name: "AccountLink"))
    AcceptAccountLinkInvitationResult.type = Types::AcceptAccountLinkInvitationResult
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AccessEndpoint.add_member(:access_endpoint_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessEndpointType, location_name: "AccessEndpointType"))
    AccessEndpoint.add_member(:vpc_endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AlphanumericDashUnderscoreNonEmptyString, location_name: "VpcEndpointId"))
    AccessEndpoint.type = Types::AccessEndpoint
    AccessEndpointConfig.add_member(:access_endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessEndpointList, location_name: "AccessEndpoints", traits: {"smithy.api#required" => {}}))
    AccessEndpointConfig.add_member(:internet_fallback_protocols, ::Smithy::Schema::Shapes::MemberShape.new(target: InternetFallbackProtocolList, location_name: "InternetFallbackProtocols"))
    AccessEndpointConfig.type = Types::AccessEndpointConfig
    AccessEndpointList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AccessEndpoint)
    AccessEndpointType.add_member(:streaming_wsp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STREAMING_WSP", traits: {"smithy.api#enumValue" => "STREAMING_WSP"}))
    AccessPropertyValue.add_member(:allow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALLOW", traits: {"smithy.api#enumValue" => "ALLOW"}))
    AccessPropertyValue.add_member(:deny, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DENY", traits: {"smithy.api#enumValue" => "DENY"}))
    AccountLink.add_member(:account_link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkId, location_name: "AccountLinkId"))
    AccountLink.add_member(:account_link_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountLinkStatusEnum, location_name: "AccountLinkStatus"))
    AccountLink.add_member(:source_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccount, location_name: "SourceAccountId"))
    AccountLink.add_member(:target_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccount, location_name: "TargetAccountId"))
    AccountLink.type = Types::AccountLink
    AccountLinkList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AccountLink)
    AccountLinkStatusEnum.add_member(:linked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LINKED", traits: {"smithy.api#enumValue" => "LINKED"}))
    AccountLinkStatusEnum.add_member(:linking_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LINKING_FAILED", traits: {"smithy.api#enumValue" => "LINKING_FAILED"}))
    AccountLinkStatusEnum.add_member(:link_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LINK_NOT_FOUND", traits: {"smithy.api#enumValue" => "LINK_NOT_FOUND"}))
    AccountLinkStatusEnum.add_member(:pending_acceptance_by_target_account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING_ACCEPTANCE_BY_TARGET_ACCOUNT", traits: {"smithy.api#enumValue" => "PENDING_ACCEPTANCE_BY_TARGET_ACCOUNT"}))
    AccountLinkStatusEnum.add_member(:rejected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REJECTED", traits: {"smithy.api#enumValue" => "REJECTED"}))
    AccountModification.add_member(:modification_state, ::Smithy::Schema::Shapes::MemberShape.new(target: DedicatedTenancyModificationStateEnum, location_name: "ModificationState"))
    AccountModification.add_member(:dedicated_tenancy_support, ::Smithy::Schema::Shapes::MemberShape.new(target: DedicatedTenancySupportResultEnum, location_name: "DedicatedTenancySupport"))
    AccountModification.add_member(:dedicated_tenancy_management_cidr_range, ::Smithy::Schema::Shapes::MemberShape.new(target: DedicatedTenancyManagementCidrRange, location_name: "DedicatedTenancyManagementCidrRange"))
    AccountModification.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "StartTime"))
    AccountModification.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceErrorCode, location_name: "ErrorCode"))
    AccountModification.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "ErrorMessage"))
    AccountModification.type = Types::AccountModification
    AccountModificationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AccountModification)
    ActiveDirectoryConfig.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    ActiveDirectoryConfig.add_member(:service_account_secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretsManagerArn, location_name: "ServiceAccountSecretArn", traits: {"smithy.api#required" => {}}))
    ActiveDirectoryConfig.type = Types::ActiveDirectoryConfig
    Application.add_member(:microsoft_office_2016, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Microsoft_Office_2016", traits: {"smithy.api#enumValue" => "Microsoft_Office_2016"}))
    Application.add_member(:microsoft_office_2019, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Microsoft_Office_2019", traits: {"smithy.api#enumValue" => "Microsoft_Office_2019"}))
    ApplicationAssociatedResourceType.add_member(:workspace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WORKSPACE", traits: {"smithy.api#enumValue" => "WORKSPACE"}))
    ApplicationAssociatedResourceType.add_member(:bundle, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BUNDLE", traits: {"smithy.api#enumValue" => "BUNDLE"}))
    ApplicationAssociatedResourceType.add_member(:image, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IMAGE", traits: {"smithy.api#enumValue" => "IMAGE"}))
    ApplicationAssociatedResourceTypeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationAssociatedResourceType)
    ApplicationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Application)
    ApplicationNotSupportedException.type = Types::ApplicationNotSupportedException
    ApplicationResourceAssociation.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkSpaceApplicationId, location_name: "ApplicationId"))
    ApplicationResourceAssociation.add_member(:associated_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "AssociatedResourceId"))
    ApplicationResourceAssociation.add_member(:associated_resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationAssociatedResourceType, location_name: "AssociatedResourceType"))
    ApplicationResourceAssociation.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "Created"))
    ApplicationResourceAssociation.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "LastUpdatedTime"))
    ApplicationResourceAssociation.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationState, location_name: "State"))
    ApplicationResourceAssociation.add_member(:state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationStateReason, location_name: "StateReason"))
    ApplicationResourceAssociation.type = Types::ApplicationResourceAssociation
    ApplicationResourceAssociationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationResourceAssociation)
    ApplicationSettingsRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationSettingsStatusEnum, location_name: "Status", traits: {"smithy.api#required" => {}}))
    ApplicationSettingsRequest.add_member(:settings_group, ::Smithy::Schema::Shapes::MemberShape.new(target: SettingsGroup, location_name: "SettingsGroup"))
    ApplicationSettingsRequest.type = Types::ApplicationSettingsRequest
    ApplicationSettingsResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationSettingsStatusEnum, location_name: "Status", traits: {"smithy.api#required" => {}}))
    ApplicationSettingsResponse.add_member(:settings_group, ::Smithy::Schema::Shapes::MemberShape.new(target: SettingsGroup, location_name: "SettingsGroup"))
    ApplicationSettingsResponse.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, location_name: "S3BucketName"))
    ApplicationSettingsResponse.type = Types::ApplicationSettingsResponse
    ApplicationSettingsStatusEnum.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    ApplicationSettingsStatusEnum.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    AssociateConnectionAliasRequest.add_member(:alias_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionAliasId, location_name: "AliasId", traits: {"smithy.api#required" => {}}))
    AssociateConnectionAliasRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "ResourceId", traits: {"smithy.api#required" => {}}))
    AssociateConnectionAliasRequest.type = Types::AssociateConnectionAliasRequest
    AssociateConnectionAliasResult.add_member(:connection_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionIdentifier, location_name: "ConnectionIdentifier"))
    AssociateConnectionAliasResult.type = Types::AssociateConnectionAliasResult
    AssociateIpGroupsRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, location_name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    AssociateIpGroupsRequest.add_member(:group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: IpGroupIdList, location_name: "GroupIds", traits: {"smithy.api#required" => {}}))
    AssociateIpGroupsRequest.type = Types::AssociateIpGroupsRequest
    AssociateIpGroupsResult.type = Types::AssociateIpGroupsResult
    AssociateWorkspaceApplicationRequest.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceId, location_name: "WorkspaceId", traits: {"smithy.api#required" => {}}))
    AssociateWorkspaceApplicationRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkSpaceApplicationId, location_name: "ApplicationId", traits: {"smithy.api#required" => {}}))
    AssociateWorkspaceApplicationRequest.type = Types::AssociateWorkspaceApplicationRequest
    AssociateWorkspaceApplicationResult.add_member(:association, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceResourceAssociation, location_name: "Association"))
    AssociateWorkspaceApplicationResult.type = Types::AssociateWorkspaceApplicationResult
    AssociationErrorCode.add_member(:insufficient_diskspace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INSUFFICIENT_DISKSPACE", traits: {"smithy.api#enumValue" => "ValidationError.InsufficientDiskSpace"}))
    AssociationErrorCode.add_member(:insufficient_memory, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INSUFFICIENT_MEMORY", traits: {"smithy.api#enumValue" => "ValidationError.InsufficientMemory"}))
    AssociationErrorCode.add_member(:unsupported_operating_system, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNSUPPORTED_OPERATING_SYSTEM", traits: {"smithy.api#enumValue" => "ValidationError.UnsupportedOperatingSystem"}))
    AssociationErrorCode.add_member(:internal_server_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INTERNAL_SERVER_ERROR", traits: {"smithy.api#enumValue" => "DeploymentError.InternalServerError"}))
    AssociationErrorCode.add_member(:workspace_unreachable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WORKSPACE_UNREACHABLE", traits: {"smithy.api#enumValue" => "DeploymentError.WorkspaceUnreachable"}))
    AssociationState.add_member(:pending_install, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING_INSTALL", traits: {"smithy.api#enumValue" => "PENDING_INSTALL"}))
    AssociationState.add_member(:pending_install_deployment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING_INSTALL_DEPLOYMENT", traits: {"smithy.api#enumValue" => "PENDING_INSTALL_DEPLOYMENT"}))
    AssociationState.add_member(:pending_uninstall, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING_UNINSTALL", traits: {"smithy.api#enumValue" => "PENDING_UNINSTALL"}))
    AssociationState.add_member(:pending_uninstall_deployment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING_UNINSTALL_DEPLOYMENT", traits: {"smithy.api#enumValue" => "PENDING_UNINSTALL_DEPLOYMENT"}))
    AssociationState.add_member(:installing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INSTALLING", traits: {"smithy.api#enumValue" => "INSTALLING"}))
    AssociationState.add_member(:uninstalling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNINSTALLING", traits: {"smithy.api#enumValue" => "UNINSTALLING"}))
    AssociationState.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    AssociationState.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    AssociationState.add_member(:removed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REMOVED", traits: {"smithy.api#enumValue" => "REMOVED"}))
    AssociationStateReason.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationErrorCode, location_name: "ErrorCode"))
    AssociationStateReason.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String2048, location_name: "ErrorMessage"))
    AssociationStateReason.type = Types::AssociationStateReason
    AssociationStatus.add_member(:not_associated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_ASSOCIATED", traits: {"smithy.api#enumValue" => "NOT_ASSOCIATED"}))
    AssociationStatus.add_member(:associated_with_owner_account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ASSOCIATED_WITH_OWNER_ACCOUNT", traits: {"smithy.api#enumValue" => "ASSOCIATED_WITH_OWNER_ACCOUNT"}))
    AssociationStatus.add_member(:associated_with_shared_account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ASSOCIATED_WITH_SHARED_ACCOUNT", traits: {"smithy.api#enumValue" => "ASSOCIATED_WITH_SHARED_ACCOUNT"}))
    AssociationStatus.add_member(:pending_association, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING_ASSOCIATION", traits: {"smithy.api#enumValue" => "PENDING_ASSOCIATION"}))
    AssociationStatus.add_member(:pending_disassociation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING_DISASSOCIATION", traits: {"smithy.api#enumValue" => "PENDING_DISASSOCIATION"}))
    AuthenticationType.add_member(:saml, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SAML", traits: {"smithy.api#enumValue" => "SAML"}))
    AuthorizeIpRulesRequest.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IpGroupId, location_name: "GroupId", traits: {"smithy.api#required" => {}}))
    AuthorizeIpRulesRequest.add_member(:user_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: IpRuleList, location_name: "UserRules", traits: {"smithy.api#required" => {}}))
    AuthorizeIpRulesRequest.type = Types::AuthorizeIpRulesRequest
    AuthorizeIpRulesResult.type = Types::AuthorizeIpRulesResult
    BundleAssociatedResourceType.add_member(:application, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "APPLICATION", traits: {"smithy.api#enumValue" => "APPLICATION"}))
    BundleAssociatedResourceTypeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BundleAssociatedResourceType)
    BundleIdList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BundleId)
    BundleList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceBundle)
    BundleResourceAssociation.add_member(:associated_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "AssociatedResourceId"))
    BundleResourceAssociation.add_member(:associated_resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BundleAssociatedResourceType, location_name: "AssociatedResourceType"))
    BundleResourceAssociation.add_member(:bundle_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BundleId, location_name: "BundleId"))
    BundleResourceAssociation.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "Created"))
    BundleResourceAssociation.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "LastUpdatedTime"))
    BundleResourceAssociation.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationState, location_name: "State"))
    BundleResourceAssociation.add_member(:state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationStateReason, location_name: "StateReason"))
    BundleResourceAssociation.type = Types::BundleResourceAssociation
    BundleResourceAssociationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BundleResourceAssociation)
    BundleType.add_member(:regular, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REGULAR", traits: {"smithy.api#enumValue" => "REGULAR"}))
    BundleType.add_member(:standby, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STANDBY", traits: {"smithy.api#enumValue" => "STANDBY"}))
    Capacity.add_member(:desired_user_sessions, ::Smithy::Schema::Shapes::MemberShape.new(target: DesiredUserSessions, location_name: "DesiredUserSessions", traits: {"smithy.api#required" => {}}))
    Capacity.type = Types::Capacity
    CapacityStatus.add_member(:available_user_sessions, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailableUserSessions, location_name: "AvailableUserSessions", traits: {"smithy.api#required" => {}}))
    CapacityStatus.add_member(:desired_user_sessions, ::Smithy::Schema::Shapes::MemberShape.new(target: DesiredUserSessions, location_name: "DesiredUserSessions", traits: {"smithy.api#required" => {}}))
    CapacityStatus.add_member(:actual_user_sessions, ::Smithy::Schema::Shapes::MemberShape.new(target: ActualUserSessions, location_name: "ActualUserSessions", traits: {"smithy.api#required" => {}}))
    CapacityStatus.add_member(:active_user_sessions, ::Smithy::Schema::Shapes::MemberShape.new(target: ActiveUserSessions, location_name: "ActiveUserSessions", traits: {"smithy.api#required" => {}}))
    CapacityStatus.type = Types::CapacityStatus
    CertificateBasedAuthProperties.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateBasedAuthStatusEnum, location_name: "Status"))
    CertificateBasedAuthProperties.add_member(:certificate_authority_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateAuthorityArn, location_name: "CertificateAuthorityArn"))
    CertificateBasedAuthProperties.type = Types::CertificateBasedAuthProperties
    CertificateBasedAuthStatusEnum.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    CertificateBasedAuthStatusEnum.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    ClientDeviceType.add_member(:device_type_windows, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEVICE_TYPE_WINDOWS", traits: {"smithy.api#enumValue" => "DeviceTypeWindows"}))
    ClientDeviceType.add_member(:device_type_osx, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEVICE_TYPE_OSX", traits: {"smithy.api#enumValue" => "DeviceTypeOsx"}))
    ClientDeviceType.add_member(:device_type_android, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEVICE_TYPE_ANDROID", traits: {"smithy.api#enumValue" => "DeviceTypeAndroid"}))
    ClientDeviceType.add_member(:device_type_ios, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEVICE_TYPE_IOS", traits: {"smithy.api#enumValue" => "DeviceTypeIos"}))
    ClientDeviceType.add_member(:device_type_linux, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEVICE_TYPE_LINUX", traits: {"smithy.api#enumValue" => "DeviceTypeLinux"}))
    ClientDeviceType.add_member(:device_type_web, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEVICE_TYPE_WEB", traits: {"smithy.api#enumValue" => "DeviceTypeWeb"}))
    ClientDeviceTypeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ClientDeviceType)
    ClientProperties.add_member(:reconnect_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ReconnectEnum, location_name: "ReconnectEnabled"))
    ClientProperties.add_member(:log_upload_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: LogUploadEnum, location_name: "LogUploadEnabled"))
    ClientProperties.type = Types::ClientProperties
    ClientPropertiesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ClientPropertiesResult)
    ClientPropertiesResult.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "ResourceId"))
    ClientPropertiesResult.add_member(:client_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientProperties, location_name: "ClientProperties"))
    ClientPropertiesResult.type = Types::ClientPropertiesResult
    Compute.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALUE", traits: {"smithy.api#enumValue" => "VALUE"}))
    Compute.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STANDARD", traits: {"smithy.api#enumValue" => "STANDARD"}))
    Compute.add_member(:performance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PERFORMANCE", traits: {"smithy.api#enumValue" => "PERFORMANCE"}))
    Compute.add_member(:power, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "POWER", traits: {"smithy.api#enumValue" => "POWER"}))
    Compute.add_member(:graphics, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GRAPHICS", traits: {"smithy.api#enumValue" => "GRAPHICS"}))
    Compute.add_member(:powerpro, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "POWERPRO", traits: {"smithy.api#enumValue" => "POWERPRO"}))
    Compute.add_member(:generalpurpose_4_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GENERALPURPOSE_4XLARGE", traits: {"smithy.api#enumValue" => "GENERALPURPOSE_4XLARGE"}))
    Compute.add_member(:generalpurpose_8_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GENERALPURPOSE_8XLARGE", traits: {"smithy.api#enumValue" => "GENERALPURPOSE_8XLARGE"}))
    Compute.add_member(:graphicspro, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GRAPHICSPRO", traits: {"smithy.api#enumValue" => "GRAPHICSPRO"}))
    Compute.add_member(:graphics_g4_dn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GRAPHICS_G4DN", traits: {"smithy.api#enumValue" => "GRAPHICS_G4DN"}))
    Compute.add_member(:graphicspro_g4_dn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GRAPHICSPRO_G4DN", traits: {"smithy.api#enumValue" => "GRAPHICSPRO_G4DN"}))
    ComputeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Compute)
    ComputeNotCompatibleException.type = Types::ComputeNotCompatibleException
    ComputeType.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Compute, location_name: "Name"))
    ComputeType.type = Types::ComputeType
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    ConflictException.type = Types::ConflictException
    ConnectClientAddIn.add_member(:add_in_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonUuid, location_name: "AddInId"))
    ConnectClientAddIn.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, location_name: "ResourceId"))
    ConnectClientAddIn.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AddInName, location_name: "Name"))
    ConnectClientAddIn.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: AddInUrl, location_name: "URL"))
    ConnectClientAddIn.type = Types::ConnectClientAddIn
    ConnectClientAddInList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectClientAddIn)
    ConnectionAlias.add_member(:connection_string, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionString, location_name: "ConnectionString"))
    ConnectionAlias.add_member(:alias_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionAliasId, location_name: "AliasId"))
    ConnectionAlias.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionAliasState, location_name: "State"))
    ConnectionAlias.add_member(:owner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccount, location_name: "OwnerAccountId"))
    ConnectionAlias.add_member(:associations, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionAliasAssociationList, location_name: "Associations"))
    ConnectionAlias.type = Types::ConnectionAlias
    ConnectionAliasAssociation.add_member(:association_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationStatus, location_name: "AssociationStatus"))
    ConnectionAliasAssociation.add_member(:associated_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccount, location_name: "AssociatedAccountId"))
    ConnectionAliasAssociation.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "ResourceId"))
    ConnectionAliasAssociation.add_member(:connection_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionIdentifier, location_name: "ConnectionIdentifier"))
    ConnectionAliasAssociation.type = Types::ConnectionAliasAssociation
    ConnectionAliasAssociationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionAliasAssociation)
    ConnectionAliasIdList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionAliasId)
    ConnectionAliasList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionAlias)
    ConnectionAliasPermission.add_member(:shared_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccount, location_name: "SharedAccountId", traits: {"smithy.api#required" => {}}))
    ConnectionAliasPermission.add_member(:allow_association, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, location_name: "AllowAssociation", traits: {"smithy.api#required" => {}}))
    ConnectionAliasPermission.type = Types::ConnectionAliasPermission
    ConnectionAliasPermissions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionAliasPermission)
    ConnectionAliasState.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    ConnectionAliasState.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATED", traits: {"smithy.api#enumValue" => "CREATED"}))
    ConnectionAliasState.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ConnectionState.add_member(:connected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONNECTED", traits: {"smithy.api#enumValue" => "CONNECTED"}))
    ConnectionState.add_member(:disconnected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISCONNECTED", traits: {"smithy.api#enumValue" => "DISCONNECTED"}))
    ConnectionState.add_member(:unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNKNOWN", traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    CopyWorkspaceImageRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceImageName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CopyWorkspaceImageRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceImageDescription, location_name: "Description"))
    CopyWorkspaceImageRequest.add_member(:source_image_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceImageId, location_name: "SourceImageId", traits: {"smithy.api#required" => {}}))
    CopyWorkspaceImageRequest.add_member(:source_region, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, location_name: "SourceRegion", traits: {"smithy.api#required" => {}}))
    CopyWorkspaceImageRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    CopyWorkspaceImageRequest.type = Types::CopyWorkspaceImageRequest
    CopyWorkspaceImageResult.add_member(:image_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceImageId, location_name: "ImageId"))
    CopyWorkspaceImageResult.type = Types::CopyWorkspaceImageResult
    CreateAccountLinkInvitationRequest.add_member(:target_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccount, location_name: "TargetAccountId", traits: {"smithy.api#required" => {}}))
    CreateAccountLinkInvitationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "ClientToken"))
    CreateAccountLinkInvitationRequest.type = Types::CreateAccountLinkInvitationRequest
    CreateAccountLinkInvitationResult.add_member(:account_link, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountLink, location_name: "AccountLink"))
    CreateAccountLinkInvitationResult.type = Types::CreateAccountLinkInvitationResult
    CreateConnectClientAddInRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, location_name: "ResourceId", traits: {"smithy.api#required" => {}}))
    CreateConnectClientAddInRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AddInName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreateConnectClientAddInRequest.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: AddInUrl, location_name: "URL", traits: {"smithy.api#required" => {}}))
    CreateConnectClientAddInRequest.type = Types::CreateConnectClientAddInRequest
    CreateConnectClientAddInResult.add_member(:add_in_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonUuid, location_name: "AddInId"))
    CreateConnectClientAddInResult.type = Types::CreateConnectClientAddInResult
    CreateConnectionAliasRequest.add_member(:connection_string, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionString, location_name: "ConnectionString", traits: {"smithy.api#required" => {}}))
    CreateConnectionAliasRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    CreateConnectionAliasRequest.type = Types::CreateConnectionAliasRequest
    CreateConnectionAliasResult.add_member(:alias_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionAliasId, location_name: "AliasId"))
    CreateConnectionAliasResult.type = Types::CreateConnectionAliasResult
    CreateIpGroupRequest.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IpGroupName, location_name: "GroupName", traits: {"smithy.api#required" => {}}))
    CreateIpGroupRequest.add_member(:group_desc, ::Smithy::Schema::Shapes::MemberShape.new(target: IpGroupDesc, location_name: "GroupDesc"))
    CreateIpGroupRequest.add_member(:user_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: IpRuleList, location_name: "UserRules"))
    CreateIpGroupRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    CreateIpGroupRequest.type = Types::CreateIpGroupRequest
    CreateIpGroupResult.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IpGroupId, location_name: "GroupId"))
    CreateIpGroupResult.type = Types::CreateIpGroupResult
    CreateStandbyWorkspacesRequest.add_member(:primary_region, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, location_name: "PrimaryRegion", traits: {"smithy.api#required" => {}}))
    CreateStandbyWorkspacesRequest.add_member(:standby_workspaces, ::Smithy::Schema::Shapes::MemberShape.new(target: StandbyWorkspacesList, location_name: "StandbyWorkspaces", traits: {"smithy.api#required" => {}}))
    CreateStandbyWorkspacesRequest.type = Types::CreateStandbyWorkspacesRequest
    CreateStandbyWorkspacesResult.add_member(:failed_standby_requests, ::Smithy::Schema::Shapes::MemberShape.new(target: FailedCreateStandbyWorkspacesRequestList, location_name: "FailedStandbyRequests"))
    CreateStandbyWorkspacesResult.add_member(:pending_standby_requests, ::Smithy::Schema::Shapes::MemberShape.new(target: PendingCreateStandbyWorkspacesRequestList, location_name: "PendingStandbyRequests"))
    CreateStandbyWorkspacesResult.type = Types::CreateStandbyWorkspacesResult
    CreateTagsRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "ResourceId", traits: {"smithy.api#required" => {}}))
    CreateTagsRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags", traits: {"smithy.api#required" => {}}))
    CreateTagsRequest.type = Types::CreateTagsRequest
    CreateTagsResult.type = Types::CreateTagsResult
    CreateUpdatedWorkspaceImageRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceImageName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreateUpdatedWorkspaceImageRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceImageDescription, location_name: "Description", traits: {"smithy.api#required" => {}}))
    CreateUpdatedWorkspaceImageRequest.add_member(:source_image_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceImageId, location_name: "SourceImageId", traits: {"smithy.api#required" => {}}))
    CreateUpdatedWorkspaceImageRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    CreateUpdatedWorkspaceImageRequest.type = Types::CreateUpdatedWorkspaceImageRequest
    CreateUpdatedWorkspaceImageResult.add_member(:image_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceImageId, location_name: "ImageId"))
    CreateUpdatedWorkspaceImageResult.type = Types::CreateUpdatedWorkspaceImageResult
    CreateWorkspaceBundleRequest.add_member(:bundle_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceBundleName, location_name: "BundleName", traits: {"smithy.api#required" => {}}))
    CreateWorkspaceBundleRequest.add_member(:bundle_description, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceBundleDescription, location_name: "BundleDescription", traits: {"smithy.api#required" => {}}))
    CreateWorkspaceBundleRequest.add_member(:image_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceImageId, location_name: "ImageId", traits: {"smithy.api#required" => {}}))
    CreateWorkspaceBundleRequest.add_member(:compute_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeType, location_name: "ComputeType", traits: {"smithy.api#required" => {}}))
    CreateWorkspaceBundleRequest.add_member(:user_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: UserStorage, location_name: "UserStorage", traits: {"smithy.api#required" => {}}))
    CreateWorkspaceBundleRequest.add_member(:root_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: RootStorage, location_name: "RootStorage"))
    CreateWorkspaceBundleRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    CreateWorkspaceBundleRequest.type = Types::CreateWorkspaceBundleRequest
    CreateWorkspaceBundleResult.add_member(:workspace_bundle, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceBundle, location_name: "WorkspaceBundle"))
    CreateWorkspaceBundleResult.type = Types::CreateWorkspaceBundleResult
    CreateWorkspaceImageRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceImageName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreateWorkspaceImageRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceImageDescription, location_name: "Description", traits: {"smithy.api#required" => {}}))
    CreateWorkspaceImageRequest.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceId, location_name: "WorkspaceId", traits: {"smithy.api#required" => {}}))
    CreateWorkspaceImageRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    CreateWorkspaceImageRequest.type = Types::CreateWorkspaceImageRequest
    CreateWorkspaceImageResult.add_member(:image_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceImageId, location_name: "ImageId"))
    CreateWorkspaceImageResult.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceImageName, location_name: "Name"))
    CreateWorkspaceImageResult.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceImageDescription, location_name: "Description"))
    CreateWorkspaceImageResult.add_member(:operating_system, ::Smithy::Schema::Shapes::MemberShape.new(target: OperatingSystem, location_name: "OperatingSystem"))
    CreateWorkspaceImageResult.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceImageState, location_name: "State"))
    CreateWorkspaceImageResult.add_member(:required_tenancy, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceImageRequiredTenancy, location_name: "RequiredTenancy"))
    CreateWorkspaceImageResult.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "Created"))
    CreateWorkspaceImageResult.add_member(:owner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccount, location_name: "OwnerAccountId"))
    CreateWorkspaceImageResult.type = Types::CreateWorkspaceImageResult
    CreateWorkspacesPoolRequest.add_member(:pool_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspacesPoolName, location_name: "PoolName", traits: {"smithy.api#required" => {}}))
    CreateWorkspacesPoolRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateDescription, location_name: "Description", traits: {"smithy.api#required" => {}}))
    CreateWorkspacesPoolRequest.add_member(:bundle_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BundleId, location_name: "BundleId", traits: {"smithy.api#required" => {}}))
    CreateWorkspacesPoolRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, location_name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    CreateWorkspacesPoolRequest.add_member(:capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: Capacity, location_name: "Capacity", traits: {"smithy.api#required" => {}}))
    CreateWorkspacesPoolRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    CreateWorkspacesPoolRequest.add_member(:application_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationSettingsRequest, location_name: "ApplicationSettings"))
    CreateWorkspacesPoolRequest.add_member(:timeout_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeoutSettings, location_name: "TimeoutSettings"))
    CreateWorkspacesPoolRequest.add_member(:running_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolsRunningMode, location_name: "RunningMode"))
    CreateWorkspacesPoolRequest.type = Types::CreateWorkspacesPoolRequest
    CreateWorkspacesPoolResult.add_member(:workspaces_pool, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspacesPool, location_name: "WorkspacesPool"))
    CreateWorkspacesPoolResult.type = Types::CreateWorkspacesPoolResult
    CreateWorkspacesRequest.add_member(:workspaces, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceRequestList, location_name: "Workspaces", traits: {"smithy.api#required" => {}}))
    CreateWorkspacesRequest.type = Types::CreateWorkspacesRequest
    CreateWorkspacesResult.add_member(:failed_requests, ::Smithy::Schema::Shapes::MemberShape.new(target: FailedCreateWorkspaceRequests, location_name: "FailedRequests"))
    CreateWorkspacesResult.add_member(:pending_requests, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceList, location_name: "PendingRequests"))
    CreateWorkspacesResult.type = Types::CreateWorkspacesResult
    CustomImageProtocol.add_member(:pcoip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PCOIP", traits: {"smithy.api#enumValue" => "PCOIP"}))
    CustomImageProtocol.add_member(:dcv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DCV", traits: {"smithy.api#enumValue" => "DCV"}))
    CustomImageProtocol.add_member(:byop, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BYOP", traits: {"smithy.api#enumValue" => "BYOP"}))
    CustomWorkspaceImageImportErrorDetails.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, location_name: "ErrorCode"))
    CustomWorkspaceImageImportErrorDetails.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageErrorMessage, location_name: "ErrorMessage"))
    CustomWorkspaceImageImportErrorDetails.type = Types::CustomWorkspaceImageImportErrorDetails
    CustomWorkspaceImageImportErrorDetailsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CustomWorkspaceImageImportErrorDetails)
    CustomWorkspaceImageImportState.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    CustomWorkspaceImageImportState.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    CustomWorkspaceImageImportState.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    CustomWorkspaceImageImportState.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    DataReplication.add_member(:no_replication, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NO_REPLICATION", traits: {"smithy.api#enumValue" => "NO_REPLICATION"}))
    DataReplication.add_member(:primary_as_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PRIMARY_AS_SOURCE", traits: {"smithy.api#enumValue" => "PRIMARY_AS_SOURCE"}))
    DataReplicationSettings.add_member(:data_replication, ::Smithy::Schema::Shapes::MemberShape.new(target: DataReplication, location_name: "DataReplication"))
    DataReplicationSettings.add_member(:recovery_snapshot_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "RecoverySnapshotTime"))
    DataReplicationSettings.type = Types::DataReplicationSettings
    DedicatedTenancyAccountType.add_member(:source_account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SOURCE_ACCOUNT", traits: {"smithy.api#enumValue" => "SOURCE_ACCOUNT"}))
    DedicatedTenancyAccountType.add_member(:target_account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TARGET_ACCOUNT", traits: {"smithy.api#enumValue" => "TARGET_ACCOUNT"}))
    DedicatedTenancyCidrRangeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DedicatedTenancyManagementCidrRange)
    DedicatedTenancyModificationStateEnum.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    DedicatedTenancyModificationStateEnum.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    DedicatedTenancyModificationStateEnum.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    DedicatedTenancySupportEnum.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    DedicatedTenancySupportResultEnum.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    DedicatedTenancySupportResultEnum.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    DefaultClientBrandingAttributes.add_member(:logo_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientUrl, location_name: "LogoUrl"))
    DefaultClientBrandingAttributes.add_member(:support_email, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientEmail, location_name: "SupportEmail"))
    DefaultClientBrandingAttributes.add_member(:support_link, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientUrl, location_name: "SupportLink"))
    DefaultClientBrandingAttributes.add_member(:forgot_password_link, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientUrl, location_name: "ForgotPasswordLink"))
    DefaultClientBrandingAttributes.add_member(:login_message, ::Smithy::Schema::Shapes::MemberShape.new(target: LoginMessage, location_name: "LoginMessage"))
    DefaultClientBrandingAttributes.type = Types::DefaultClientBrandingAttributes
    DefaultImportClientBrandingAttributes.add_member(:logo, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultLogo, location_name: "Logo"))
    DefaultImportClientBrandingAttributes.add_member(:support_email, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientEmail, location_name: "SupportEmail"))
    DefaultImportClientBrandingAttributes.add_member(:support_link, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientUrl, location_name: "SupportLink"))
    DefaultImportClientBrandingAttributes.add_member(:forgot_password_link, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientUrl, location_name: "ForgotPasswordLink"))
    DefaultImportClientBrandingAttributes.add_member(:login_message, ::Smithy::Schema::Shapes::MemberShape.new(target: LoginMessage, location_name: "LoginMessage"))
    DefaultImportClientBrandingAttributes.type = Types::DefaultImportClientBrandingAttributes
    DefaultWorkspaceCreationProperties.add_member(:enable_internet_access, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, location_name: "EnableInternetAccess"))
    DefaultWorkspaceCreationProperties.add_member(:default_ou, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultOu, location_name: "DefaultOu"))
    DefaultWorkspaceCreationProperties.add_member(:custom_security_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupId, location_name: "CustomSecurityGroupId"))
    DefaultWorkspaceCreationProperties.add_member(:user_enabled_as_local_administrator, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, location_name: "UserEnabledAsLocalAdministrator"))
    DefaultWorkspaceCreationProperties.add_member(:enable_maintenance_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, location_name: "EnableMaintenanceMode"))
    DefaultWorkspaceCreationProperties.add_member(:instance_iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, location_name: "InstanceIamRoleArn"))
    DefaultWorkspaceCreationProperties.type = Types::DefaultWorkspaceCreationProperties
    DeletableCertificateBasedAuthPropertiesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DeletableCertificateBasedAuthProperty)
    DeletableCertificateBasedAuthProperty.add_member(:certificate_based_auth_properties_certificate_authority_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CERTIFICATE_BASED_AUTH_PROPERTIES_CERTIFICATE_AUTHORITY_ARN", traits: {"smithy.api#enumValue" => "CERTIFICATE_BASED_AUTH_PROPERTIES_CERTIFICATE_AUTHORITY_ARN"}))
    DeletableSamlPropertiesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DeletableSamlProperty)
    DeletableSamlProperty.add_member(:saml_properties_user_access_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SAML_PROPERTIES_USER_ACCESS_URL", traits: {"smithy.api#enumValue" => "SAML_PROPERTIES_USER_ACCESS_URL"}))
    DeletableSamlProperty.add_member(:saml_properties_relay_state_parameter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SAML_PROPERTIES_RELAY_STATE_PARAMETER_NAME", traits: {"smithy.api#enumValue" => "SAML_PROPERTIES_RELAY_STATE_PARAMETER_NAME"}))
    DeleteAccountLinkInvitationRequest.add_member(:link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkId, location_name: "LinkId", traits: {"smithy.api#required" => {}}))
    DeleteAccountLinkInvitationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "ClientToken"))
    DeleteAccountLinkInvitationRequest.type = Types::DeleteAccountLinkInvitationRequest
    DeleteAccountLinkInvitationResult.add_member(:account_link, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountLink, location_name: "AccountLink"))
    DeleteAccountLinkInvitationResult.type = Types::DeleteAccountLinkInvitationResult
    DeleteClientBrandingRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, location_name: "ResourceId", traits: {"smithy.api#required" => {}}))
    DeleteClientBrandingRequest.add_member(:platforms, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientDeviceTypeList, location_name: "Platforms", traits: {"smithy.api#required" => {}}))
    DeleteClientBrandingRequest.type = Types::DeleteClientBrandingRequest
    DeleteClientBrandingResult.type = Types::DeleteClientBrandingResult
    DeleteConnectClientAddInRequest.add_member(:add_in_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonUuid, location_name: "AddInId", traits: {"smithy.api#required" => {}}))
    DeleteConnectClientAddInRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, location_name: "ResourceId", traits: {"smithy.api#required" => {}}))
    DeleteConnectClientAddInRequest.type = Types::DeleteConnectClientAddInRequest
    DeleteConnectClientAddInResult.type = Types::DeleteConnectClientAddInResult
    DeleteConnectionAliasRequest.add_member(:alias_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionAliasId, location_name: "AliasId", traits: {"smithy.api#required" => {}}))
    DeleteConnectionAliasRequest.type = Types::DeleteConnectionAliasRequest
    DeleteConnectionAliasResult.type = Types::DeleteConnectionAliasResult
    DeleteIpGroupRequest.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IpGroupId, location_name: "GroupId", traits: {"smithy.api#required" => {}}))
    DeleteIpGroupRequest.type = Types::DeleteIpGroupRequest
    DeleteIpGroupResult.type = Types::DeleteIpGroupResult
    DeleteTagsRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "ResourceId", traits: {"smithy.api#required" => {}}))
    DeleteTagsRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, location_name: "TagKeys", traits: {"smithy.api#required" => {}}))
    DeleteTagsRequest.type = Types::DeleteTagsRequest
    DeleteTagsResult.type = Types::DeleteTagsResult
    DeleteWorkspaceBundleRequest.add_member(:bundle_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BundleId, location_name: "BundleId"))
    DeleteWorkspaceBundleRequest.type = Types::DeleteWorkspaceBundleRequest
    DeleteWorkspaceBundleResult.type = Types::DeleteWorkspaceBundleResult
    DeleteWorkspaceImageRequest.add_member(:image_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceImageId, location_name: "ImageId", traits: {"smithy.api#required" => {}}))
    DeleteWorkspaceImageRequest.type = Types::DeleteWorkspaceImageRequest
    DeleteWorkspaceImageResult.type = Types::DeleteWorkspaceImageResult
    DeployWorkspaceApplicationsRequest.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceId, location_name: "WorkspaceId", traits: {"smithy.api#required" => {}}))
    DeployWorkspaceApplicationsRequest.add_member(:force, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, location_name: "Force"))
    DeployWorkspaceApplicationsRequest.type = Types::DeployWorkspaceApplicationsRequest
    DeployWorkspaceApplicationsResult.add_member(:deployment, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkSpaceApplicationDeployment, location_name: "Deployment"))
    DeployWorkspaceApplicationsResult.type = Types::DeployWorkspaceApplicationsResult
    DeregisterWorkspaceDirectoryRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, location_name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    DeregisterWorkspaceDirectoryRequest.type = Types::DeregisterWorkspaceDirectoryRequest
    DeregisterWorkspaceDirectoryResult.type = Types::DeregisterWorkspaceDirectoryResult
    DescribeAccountModificationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "NextToken"))
    DescribeAccountModificationsRequest.type = Types::DescribeAccountModificationsRequest
    DescribeAccountModificationsResult.add_member(:account_modifications, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountModificationList, location_name: "AccountModifications"))
    DescribeAccountModificationsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "NextToken"))
    DescribeAccountModificationsResult.type = Types::DescribeAccountModificationsResult
    DescribeAccountRequest.type = Types::DescribeAccountRequest
    DescribeAccountResult.add_member(:dedicated_tenancy_support, ::Smithy::Schema::Shapes::MemberShape.new(target: DedicatedTenancySupportResultEnum, location_name: "DedicatedTenancySupport"))
    DescribeAccountResult.add_member(:dedicated_tenancy_management_cidr_range, ::Smithy::Schema::Shapes::MemberShape.new(target: DedicatedTenancyManagementCidrRange, location_name: "DedicatedTenancyManagementCidrRange"))
    DescribeAccountResult.add_member(:dedicated_tenancy_account_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DedicatedTenancyAccountType, location_name: "DedicatedTenancyAccountType"))
    DescribeAccountResult.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, location_name: "Message"))
    DescribeAccountResult.type = Types::DescribeAccountResult
    DescribeApplicationAssociationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Limit, location_name: "MaxResults"))
    DescribeApplicationAssociationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "NextToken"))
    DescribeApplicationAssociationsRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkSpaceApplicationId, location_name: "ApplicationId", traits: {"smithy.api#required" => {}}))
    DescribeApplicationAssociationsRequest.add_member(:associated_resource_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationAssociatedResourceTypeList, location_name: "AssociatedResourceTypes", traits: {"smithy.api#required" => {}}))
    DescribeApplicationAssociationsRequest.type = Types::DescribeApplicationAssociationsRequest
    DescribeApplicationAssociationsResult.add_member(:associations, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationResourceAssociationList, location_name: "Associations"))
    DescribeApplicationAssociationsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "NextToken"))
    DescribeApplicationAssociationsResult.type = Types::DescribeApplicationAssociationsResult
    DescribeApplicationsRequest.add_member(:application_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkSpaceApplicationIdList, location_name: "ApplicationIds"))
    DescribeApplicationsRequest.add_member(:compute_type_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeList, location_name: "ComputeTypeNames"))
    DescribeApplicationsRequest.add_member(:license_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkSpaceApplicationLicenseType, location_name: "LicenseType"))
    DescribeApplicationsRequest.add_member(:operating_system_names, ::Smithy::Schema::Shapes::MemberShape.new(target: OperatingSystemNameList, location_name: "OperatingSystemNames"))
    DescribeApplicationsRequest.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkSpaceApplicationOwner, location_name: "Owner"))
    DescribeApplicationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Limit, location_name: "MaxResults"))
    DescribeApplicationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "NextToken"))
    DescribeApplicationsRequest.type = Types::DescribeApplicationsRequest
    DescribeApplicationsResult.add_member(:applications, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkSpaceApplicationList, location_name: "Applications"))
    DescribeApplicationsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "NextToken"))
    DescribeApplicationsResult.type = Types::DescribeApplicationsResult
    DescribeBundleAssociationsRequest.add_member(:bundle_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BundleId, location_name: "BundleId", traits: {"smithy.api#required" => {}}))
    DescribeBundleAssociationsRequest.add_member(:associated_resource_types, ::Smithy::Schema::Shapes::MemberShape.new(target: BundleAssociatedResourceTypeList, location_name: "AssociatedResourceTypes", traits: {"smithy.api#required" => {}}))
    DescribeBundleAssociationsRequest.type = Types::DescribeBundleAssociationsRequest
    DescribeBundleAssociationsResult.add_member(:associations, ::Smithy::Schema::Shapes::MemberShape.new(target: BundleResourceAssociationList, location_name: "Associations"))
    DescribeBundleAssociationsResult.type = Types::DescribeBundleAssociationsResult
    DescribeClientBrandingRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, location_name: "ResourceId", traits: {"smithy.api#required" => {}}))
    DescribeClientBrandingRequest.type = Types::DescribeClientBrandingRequest
    DescribeClientBrandingResult.add_member(:device_type_windows, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultClientBrandingAttributes, location_name: "DeviceTypeWindows"))
    DescribeClientBrandingResult.add_member(:device_type_osx, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultClientBrandingAttributes, location_name: "DeviceTypeOsx"))
    DescribeClientBrandingResult.add_member(:device_type_android, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultClientBrandingAttributes, location_name: "DeviceTypeAndroid"))
    DescribeClientBrandingResult.add_member(:device_type_ios, ::Smithy::Schema::Shapes::MemberShape.new(target: IosClientBrandingAttributes, location_name: "DeviceTypeIos"))
    DescribeClientBrandingResult.add_member(:device_type_linux, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultClientBrandingAttributes, location_name: "DeviceTypeLinux"))
    DescribeClientBrandingResult.add_member(:device_type_web, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultClientBrandingAttributes, location_name: "DeviceTypeWeb"))
    DescribeClientBrandingResult.type = Types::DescribeClientBrandingResult
    DescribeClientPropertiesRequest.add_member(:resource_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdList, location_name: "ResourceIds", traits: {"smithy.api#required" => {}}))
    DescribeClientPropertiesRequest.type = Types::DescribeClientPropertiesRequest
    DescribeClientPropertiesResult.add_member(:client_properties_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientPropertiesList, location_name: "ClientPropertiesList"))
    DescribeClientPropertiesResult.type = Types::DescribeClientPropertiesResult
    DescribeConnectClientAddInsRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, location_name: "ResourceId", traits: {"smithy.api#required" => {}}))
    DescribeConnectClientAddInsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "NextToken"))
    DescribeConnectClientAddInsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Limit, location_name: "MaxResults"))
    DescribeConnectClientAddInsRequest.type = Types::DescribeConnectClientAddInsRequest
    DescribeConnectClientAddInsResult.add_member(:add_ins, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectClientAddInList, location_name: "AddIns"))
    DescribeConnectClientAddInsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "NextToken"))
    DescribeConnectClientAddInsResult.type = Types::DescribeConnectClientAddInsResult
    DescribeConnectionAliasPermissionsRequest.add_member(:alias_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionAliasId, location_name: "AliasId", traits: {"smithy.api#required" => {}}))
    DescribeConnectionAliasPermissionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "NextToken"))
    DescribeConnectionAliasPermissionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Limit, location_name: "MaxResults"))
    DescribeConnectionAliasPermissionsRequest.type = Types::DescribeConnectionAliasPermissionsRequest
    DescribeConnectionAliasPermissionsResult.add_member(:alias_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionAliasId, location_name: "AliasId"))
    DescribeConnectionAliasPermissionsResult.add_member(:connection_alias_permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionAliasPermissions, location_name: "ConnectionAliasPermissions"))
    DescribeConnectionAliasPermissionsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "NextToken"))
    DescribeConnectionAliasPermissionsResult.type = Types::DescribeConnectionAliasPermissionsResult
    DescribeConnectionAliasesRequest.add_member(:alias_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionAliasIdList, location_name: "AliasIds"))
    DescribeConnectionAliasesRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "ResourceId"))
    DescribeConnectionAliasesRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Limit, location_name: "Limit"))
    DescribeConnectionAliasesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "NextToken"))
    DescribeConnectionAliasesRequest.type = Types::DescribeConnectionAliasesRequest
    DescribeConnectionAliasesResult.add_member(:connection_aliases, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionAliasList, location_name: "ConnectionAliases"))
    DescribeConnectionAliasesResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "NextToken"))
    DescribeConnectionAliasesResult.type = Types::DescribeConnectionAliasesResult
    DescribeCustomWorkspaceImageImportRequest.add_member(:image_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceImageId, location_name: "ImageId", traits: {"smithy.api#required" => {}}))
    DescribeCustomWorkspaceImageImportRequest.type = Types::DescribeCustomWorkspaceImageImportRequest
    DescribeCustomWorkspaceImageImportResult.add_member(:image_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceImageId, location_name: "ImageId"))
    DescribeCustomWorkspaceImageImportResult.add_member(:infrastructure_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InfrastructureConfigurationArn, location_name: "InfrastructureConfigurationArn"))
    DescribeCustomWorkspaceImageImportResult.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomWorkspaceImageImportState, location_name: "State"))
    DescribeCustomWorkspaceImageImportResult.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "Created"))
    DescribeCustomWorkspaceImageImportResult.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "LastUpdatedTime"))
    DescribeCustomWorkspaceImageImportResult.add_member(:image_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSourceIdentifier, location_name: "ImageSource"))
    DescribeCustomWorkspaceImageImportResult.add_member(:image_builder_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "ImageBuilderInstanceId"))
    DescribeCustomWorkspaceImageImportResult.add_member(:error_details, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomWorkspaceImageImportErrorDetailsList, location_name: "ErrorDetails"))
    DescribeCustomWorkspaceImageImportResult.type = Types::DescribeCustomWorkspaceImageImportResult
    DescribeImageAssociationsRequest.add_member(:image_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceImageId, location_name: "ImageId", traits: {"smithy.api#required" => {}}))
    DescribeImageAssociationsRequest.add_member(:associated_resource_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageAssociatedResourceTypeList, location_name: "AssociatedResourceTypes", traits: {"smithy.api#required" => {}}))
    DescribeImageAssociationsRequest.type = Types::DescribeImageAssociationsRequest
    DescribeImageAssociationsResult.add_member(:associations, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageResourceAssociationList, location_name: "Associations"))
    DescribeImageAssociationsResult.type = Types::DescribeImageAssociationsResult
    DescribeIpGroupsRequest.add_member(:group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: IpGroupIdList, location_name: "GroupIds"))
    DescribeIpGroupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "NextToken"))
    DescribeIpGroupsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Limit, location_name: "MaxResults"))
    DescribeIpGroupsRequest.type = Types::DescribeIpGroupsRequest
    DescribeIpGroupsResult.add_member(:result, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspacesIpGroupsList, location_name: "Result"))
    DescribeIpGroupsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "NextToken"))
    DescribeIpGroupsResult.type = Types::DescribeIpGroupsResult
    DescribeTagsRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "ResourceId", traits: {"smithy.api#required" => {}}))
    DescribeTagsRequest.type = Types::DescribeTagsRequest
    DescribeTagsResult.add_member(:tag_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "TagList"))
    DescribeTagsResult.type = Types::DescribeTagsResult
    DescribeWorkspaceAssociationsRequest.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceId, location_name: "WorkspaceId", traits: {"smithy.api#required" => {}}))
    DescribeWorkspaceAssociationsRequest.add_member(:associated_resource_types, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkSpaceAssociatedResourceTypeList, location_name: "AssociatedResourceTypes", traits: {"smithy.api#required" => {}}))
    DescribeWorkspaceAssociationsRequest.type = Types::DescribeWorkspaceAssociationsRequest
    DescribeWorkspaceAssociationsResult.add_member(:associations, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceResourceAssociationList, location_name: "Associations"))
    DescribeWorkspaceAssociationsResult.type = Types::DescribeWorkspaceAssociationsResult
    DescribeWorkspaceBundlesRequest.add_member(:bundle_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: BundleIdList, location_name: "BundleIds"))
    DescribeWorkspaceBundlesRequest.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: BundleOwner, location_name: "Owner"))
    DescribeWorkspaceBundlesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "NextToken"))
    DescribeWorkspaceBundlesRequest.type = Types::DescribeWorkspaceBundlesRequest
    DescribeWorkspaceBundlesResult.add_member(:bundles, ::Smithy::Schema::Shapes::MemberShape.new(target: BundleList, location_name: "Bundles"))
    DescribeWorkspaceBundlesResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "NextToken"))
    DescribeWorkspaceBundlesResult.type = Types::DescribeWorkspaceBundlesResult
    DescribeWorkspaceDirectoriesFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeWorkspaceDirectoriesFilterName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    DescribeWorkspaceDirectoriesFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeWorkspaceDirectoriesFilterValues, location_name: "Values", traits: {"smithy.api#required" => {}}))
    DescribeWorkspaceDirectoriesFilter.type = Types::DescribeWorkspaceDirectoriesFilter
    DescribeWorkspaceDirectoriesFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeWorkspaceDirectoriesFilter)
    DescribeWorkspaceDirectoriesFilterName.add_member(:user_identity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "USER_IDENTITY_TYPE", traits: {"smithy.api#enumValue" => "USER_IDENTITY_TYPE"}))
    DescribeWorkspaceDirectoriesFilterName.add_member(:workspace_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WORKSPACE_TYPE", traits: {"smithy.api#enumValue" => "WORKSPACE_TYPE"}))
    DescribeWorkspaceDirectoriesFilterValues.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeWorkspaceDirectoriesFilterValue)
    DescribeWorkspaceDirectoriesRequest.add_member(:directory_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryIdList, location_name: "DirectoryIds"))
    DescribeWorkspaceDirectoriesRequest.add_member(:workspace_directory_names, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceDirectoryNameList, location_name: "WorkspaceDirectoryNames"))
    DescribeWorkspaceDirectoriesRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Limit, location_name: "Limit"))
    DescribeWorkspaceDirectoriesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "NextToken"))
    DescribeWorkspaceDirectoriesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeWorkspaceDirectoriesFilterList, location_name: "Filters"))
    DescribeWorkspaceDirectoriesRequest.type = Types::DescribeWorkspaceDirectoriesRequest
    DescribeWorkspaceDirectoriesResult.add_member(:directories, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryList, location_name: "Directories"))
    DescribeWorkspaceDirectoriesResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "NextToken"))
    DescribeWorkspaceDirectoriesResult.type = Types::DescribeWorkspaceDirectoriesResult
    DescribeWorkspaceImagePermissionsRequest.add_member(:image_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceImageId, location_name: "ImageId", traits: {"smithy.api#required" => {}}))
    DescribeWorkspaceImagePermissionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "NextToken"))
    DescribeWorkspaceImagePermissionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Limit, location_name: "MaxResults"))
    DescribeWorkspaceImagePermissionsRequest.type = Types::DescribeWorkspaceImagePermissionsRequest
    DescribeWorkspaceImagePermissionsResult.add_member(:image_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceImageId, location_name: "ImageId"))
    DescribeWorkspaceImagePermissionsResult.add_member(:image_permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: ImagePermissions, location_name: "ImagePermissions"))
    DescribeWorkspaceImagePermissionsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "NextToken"))
    DescribeWorkspaceImagePermissionsResult.type = Types::DescribeWorkspaceImagePermissionsResult
    DescribeWorkspaceImagesRequest.add_member(:image_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceImageIdList, location_name: "ImageIds"))
    DescribeWorkspaceImagesRequest.add_member(:image_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageType, location_name: "ImageType"))
    DescribeWorkspaceImagesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "NextToken"))
    DescribeWorkspaceImagesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Limit, location_name: "MaxResults"))
    DescribeWorkspaceImagesRequest.type = Types::DescribeWorkspaceImagesRequest
    DescribeWorkspaceImagesResult.add_member(:images, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceImageList, location_name: "Images"))
    DescribeWorkspaceImagesResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "NextToken"))
    DescribeWorkspaceImagesResult.type = Types::DescribeWorkspaceImagesResult
    DescribeWorkspaceSnapshotsRequest.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceId, location_name: "WorkspaceId", traits: {"smithy.api#required" => {}}))
    DescribeWorkspaceSnapshotsRequest.type = Types::DescribeWorkspaceSnapshotsRequest
    DescribeWorkspaceSnapshotsResult.add_member(:rebuild_snapshots, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotList, location_name: "RebuildSnapshots"))
    DescribeWorkspaceSnapshotsResult.add_member(:restore_snapshots, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotList, location_name: "RestoreSnapshots"))
    DescribeWorkspaceSnapshotsResult.type = Types::DescribeWorkspaceSnapshotsResult
    DescribeWorkspacesConnectionStatusRequest.add_member(:workspace_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceIdList, location_name: "WorkspaceIds"))
    DescribeWorkspacesConnectionStatusRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "NextToken"))
    DescribeWorkspacesConnectionStatusRequest.type = Types::DescribeWorkspacesConnectionStatusRequest
    DescribeWorkspacesConnectionStatusResult.add_member(:workspaces_connection_status, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceConnectionStatusList, location_name: "WorkspacesConnectionStatus"))
    DescribeWorkspacesConnectionStatusResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "NextToken"))
    DescribeWorkspacesConnectionStatusResult.type = Types::DescribeWorkspacesConnectionStatusResult
    DescribeWorkspacesPoolSessionsRequest.add_member(:pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspacesPoolId, location_name: "PoolId", traits: {"smithy.api#required" => {}}))
    DescribeWorkspacesPoolSessionsRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspacesPoolUserId, location_name: "UserId"))
    DescribeWorkspacesPoolSessionsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Limit50, location_name: "Limit"))
    DescribeWorkspacesPoolSessionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "NextToken"))
    DescribeWorkspacesPoolSessionsRequest.type = Types::DescribeWorkspacesPoolSessionsRequest
    DescribeWorkspacesPoolSessionsResult.add_member(:sessions, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspacesPoolSessions, location_name: "Sessions"))
    DescribeWorkspacesPoolSessionsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "NextToken"))
    DescribeWorkspacesPoolSessionsResult.type = Types::DescribeWorkspacesPoolSessionsResult
    DescribeWorkspacesPoolsFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeWorkspacesPoolsFilterName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    DescribeWorkspacesPoolsFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeWorkspacesPoolsFilterValues, location_name: "Values", traits: {"smithy.api#required" => {}}))
    DescribeWorkspacesPoolsFilter.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeWorkspacesPoolsFilterOperator, location_name: "Operator", traits: {"smithy.api#required" => {}}))
    DescribeWorkspacesPoolsFilter.type = Types::DescribeWorkspacesPoolsFilter
    DescribeWorkspacesPoolsFilterName.add_member(:poolname, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "POOLNAME", traits: {"smithy.api#enumValue" => "PoolName"}))
    DescribeWorkspacesPoolsFilterOperator.add_member(:equals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EQUALS", traits: {"smithy.api#enumValue" => "EQUALS"}))
    DescribeWorkspacesPoolsFilterOperator.add_member(:notequals, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOTEQUALS", traits: {"smithy.api#enumValue" => "NOTEQUALS"}))
    DescribeWorkspacesPoolsFilterOperator.add_member(:contains, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONTAINS", traits: {"smithy.api#enumValue" => "CONTAINS"}))
    DescribeWorkspacesPoolsFilterOperator.add_member(:notcontains, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOTCONTAINS", traits: {"smithy.api#enumValue" => "NOTCONTAINS"}))
    DescribeWorkspacesPoolsFilterValues.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeWorkspacesPoolsFilterValue)
    DescribeWorkspacesPoolsFilters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeWorkspacesPoolsFilter)
    DescribeWorkspacesPoolsRequest.add_member(:pool_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspacesPoolIds, location_name: "PoolIds"))
    DescribeWorkspacesPoolsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeWorkspacesPoolsFilters, location_name: "Filters"))
    DescribeWorkspacesPoolsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Limit, location_name: "Limit"))
    DescribeWorkspacesPoolsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "NextToken"))
    DescribeWorkspacesPoolsRequest.type = Types::DescribeWorkspacesPoolsRequest
    DescribeWorkspacesPoolsResult.add_member(:workspaces_pools, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspacesPools, location_name: "WorkspacesPools"))
    DescribeWorkspacesPoolsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "NextToken"))
    DescribeWorkspacesPoolsResult.type = Types::DescribeWorkspacesPoolsResult
    DescribeWorkspacesRequest.add_member(:workspace_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceIdList, location_name: "WorkspaceIds"))
    DescribeWorkspacesRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, location_name: "DirectoryId"))
    DescribeWorkspacesRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserName, location_name: "UserName"))
    DescribeWorkspacesRequest.add_member(:bundle_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BundleId, location_name: "BundleId"))
    DescribeWorkspacesRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Limit, location_name: "Limit"))
    DescribeWorkspacesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "NextToken"))
    DescribeWorkspacesRequest.add_member(:workspace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceName, location_name: "WorkspaceName"))
    DescribeWorkspacesRequest.type = Types::DescribeWorkspacesRequest
    DescribeWorkspacesResult.add_member(:workspaces, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceList, location_name: "Workspaces"))
    DescribeWorkspacesResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "NextToken"))
    DescribeWorkspacesResult.type = Types::DescribeWorkspacesResult
    DirectoryIdList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId)
    DirectoryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceDirectory)
    DisassociateConnectionAliasRequest.add_member(:alias_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionAliasId, location_name: "AliasId", traits: {"smithy.api#required" => {}}))
    DisassociateConnectionAliasRequest.type = Types::DisassociateConnectionAliasRequest
    DisassociateConnectionAliasResult.type = Types::DisassociateConnectionAliasResult
    DisassociateIpGroupsRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, location_name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    DisassociateIpGroupsRequest.add_member(:group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: IpGroupIdList, location_name: "GroupIds", traits: {"smithy.api#required" => {}}))
    DisassociateIpGroupsRequest.type = Types::DisassociateIpGroupsRequest
    DisassociateIpGroupsResult.type = Types::DisassociateIpGroupsResult
    DisassociateWorkspaceApplicationRequest.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceId, location_name: "WorkspaceId", traits: {"smithy.api#required" => {}}))
    DisassociateWorkspaceApplicationRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkSpaceApplicationId, location_name: "ApplicationId", traits: {"smithy.api#required" => {}}))
    DisassociateWorkspaceApplicationRequest.type = Types::DisassociateWorkspaceApplicationRequest
    DisassociateWorkspaceApplicationResult.add_member(:association, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceResourceAssociation, location_name: "Association"))
    DisassociateWorkspaceApplicationResult.type = Types::DisassociateWorkspaceApplicationResult
    DnsIpAddresses.member = ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddress)
    EndpointEncryptionMode.add_member(:standard_tls, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STANDARD_TLS", traits: {"smithy.api#enumValue" => "STANDARD_TLS"}))
    EndpointEncryptionMode.add_member(:fips_validated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FIPS_VALIDATED", traits: {"smithy.api#enumValue" => "FIPS_VALIDATED"}))
    ErrorDetails.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceImageErrorDetailCode, location_name: "ErrorCode"))
    ErrorDetails.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "ErrorMessage"))
    ErrorDetails.type = Types::ErrorDetails
    ErrorDetailsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetails)
    FailedCreateStandbyWorkspacesRequest.add_member(:standby_workspace_request, ::Smithy::Schema::Shapes::MemberShape.new(target: StandbyWorkspace, location_name: "StandbyWorkspaceRequest"))
    FailedCreateStandbyWorkspacesRequest.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceErrorCode, location_name: "ErrorCode"))
    FailedCreateStandbyWorkspacesRequest.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "ErrorMessage"))
    FailedCreateStandbyWorkspacesRequest.type = Types::FailedCreateStandbyWorkspacesRequest
    FailedCreateStandbyWorkspacesRequestList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FailedCreateStandbyWorkspacesRequest)
    FailedCreateWorkspaceRequest.add_member(:workspace_request, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceRequest, location_name: "WorkspaceRequest"))
    FailedCreateWorkspaceRequest.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorType, location_name: "ErrorCode"))
    FailedCreateWorkspaceRequest.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "ErrorMessage"))
    FailedCreateWorkspaceRequest.type = Types::FailedCreateWorkspaceRequest
    FailedCreateWorkspaceRequests.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FailedCreateWorkspaceRequest)
    FailedRebootWorkspaceRequests.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FailedWorkspaceChangeRequest)
    FailedRebuildWorkspaceRequests.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FailedWorkspaceChangeRequest)
    FailedStartWorkspaceRequests.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FailedWorkspaceChangeRequest)
    FailedStopWorkspaceRequests.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FailedWorkspaceChangeRequest)
    FailedTerminateWorkspaceRequests.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FailedWorkspaceChangeRequest)
    FailedWorkspaceChangeRequest.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceId, location_name: "WorkspaceId"))
    FailedWorkspaceChangeRequest.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorType, location_name: "ErrorCode"))
    FailedWorkspaceChangeRequest.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "ErrorMessage"))
    FailedWorkspaceChangeRequest.type = Types::FailedWorkspaceChangeRequest
    GetAccountLinkRequest.add_member(:link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkId, location_name: "LinkId"))
    GetAccountLinkRequest.add_member(:linked_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccount, location_name: "LinkedAccountId"))
    GetAccountLinkRequest.type = Types::GetAccountLinkRequest
    GetAccountLinkResult.add_member(:account_link, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountLink, location_name: "AccountLink"))
    GetAccountLinkResult.type = Types::GetAccountLinkResult
    GlobalAcceleratorForDirectory.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: AGAModeForDirectoryEnum, location_name: "Mode", traits: {"smithy.api#required" => {}}))
    GlobalAcceleratorForDirectory.add_member(:preferred_protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: AGAPreferredProtocolForDirectory, location_name: "PreferredProtocol"))
    GlobalAcceleratorForDirectory.type = Types::GlobalAcceleratorForDirectory
    GlobalAcceleratorForWorkSpace.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: AGAModeForWorkSpaceEnum, location_name: "Mode", traits: {"smithy.api#required" => {}}))
    GlobalAcceleratorForWorkSpace.add_member(:preferred_protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: AGAPreferredProtocolForWorkSpace, location_name: "PreferredProtocol"))
    GlobalAcceleratorForWorkSpace.type = Types::GlobalAcceleratorForWorkSpace
    IDCConfig.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, location_name: "InstanceArn"))
    IDCConfig.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, location_name: "ApplicationArn"))
    IDCConfig.type = Types::IDCConfig
    ImageAssociatedResourceType.add_member(:application, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "APPLICATION", traits: {"smithy.api#enumValue" => "APPLICATION"}))
    ImageAssociatedResourceTypeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ImageAssociatedResourceType)
    ImageComputeType.add_member(:base, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BASE", traits: {"smithy.api#enumValue" => "BASE"}))
    ImageComputeType.add_member(:graphics_g4_dn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GRAPHICS_G4DN", traits: {"smithy.api#enumValue" => "GRAPHICS_G4DN"}))
    ImagePermission.add_member(:shared_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccount, location_name: "SharedAccountId"))
    ImagePermission.type = Types::ImagePermission
    ImagePermissions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ImagePermission)
    ImageResourceAssociation.add_member(:associated_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "AssociatedResourceId"))
    ImageResourceAssociation.add_member(:associated_resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageAssociatedResourceType, location_name: "AssociatedResourceType"))
    ImageResourceAssociation.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "Created"))
    ImageResourceAssociation.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "LastUpdatedTime"))
    ImageResourceAssociation.add_member(:image_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceImageId, location_name: "ImageId"))
    ImageResourceAssociation.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationState, location_name: "State"))
    ImageResourceAssociation.add_member(:state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationStateReason, location_name: "StateReason"))
    ImageResourceAssociation.type = Types::ImageResourceAssociation
    ImageResourceAssociationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ImageResourceAssociation)
    ImageSourceIdentifier.add_member(:ec2_import_task_id, Types::ImageSourceIdentifier::Ec2ImportTaskId, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2ImportTaskId, location_name: "Ec2ImportTaskId"))
    ImageSourceIdentifier.add_member(:image_build_version_arn, Types::ImageSourceIdentifier::ImageBuildVersionArn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuildVersionArn, location_name: "ImageBuildVersionArn"))
    ImageSourceIdentifier.add_member(:ec2_image_id, Types::ImageSourceIdentifier::Ec2ImageId, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2ImageId, location_name: "Ec2ImageId"))
    ImageSourceIdentifier.add_member(:unknown, Types::ImageSourceIdentifier::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ImageSourceIdentifier.type = Types::ImageSourceIdentifier
    ImageType.add_member(:owned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OWNED", traits: {"smithy.api#enumValue" => "OWNED"}))
    ImageType.add_member(:shared, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SHARED", traits: {"smithy.api#enumValue" => "SHARED"}))
    ImportClientBrandingRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, location_name: "ResourceId", traits: {"smithy.api#required" => {}}))
    ImportClientBrandingRequest.add_member(:device_type_windows, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultImportClientBrandingAttributes, location_name: "DeviceTypeWindows"))
    ImportClientBrandingRequest.add_member(:device_type_osx, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultImportClientBrandingAttributes, location_name: "DeviceTypeOsx"))
    ImportClientBrandingRequest.add_member(:device_type_android, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultImportClientBrandingAttributes, location_name: "DeviceTypeAndroid"))
    ImportClientBrandingRequest.add_member(:device_type_ios, ::Smithy::Schema::Shapes::MemberShape.new(target: IosImportClientBrandingAttributes, location_name: "DeviceTypeIos"))
    ImportClientBrandingRequest.add_member(:device_type_linux, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultImportClientBrandingAttributes, location_name: "DeviceTypeLinux"))
    ImportClientBrandingRequest.add_member(:device_type_web, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultImportClientBrandingAttributes, location_name: "DeviceTypeWeb"))
    ImportClientBrandingRequest.type = Types::ImportClientBrandingRequest
    ImportClientBrandingResult.add_member(:device_type_windows, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultClientBrandingAttributes, location_name: "DeviceTypeWindows"))
    ImportClientBrandingResult.add_member(:device_type_osx, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultClientBrandingAttributes, location_name: "DeviceTypeOsx"))
    ImportClientBrandingResult.add_member(:device_type_android, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultClientBrandingAttributes, location_name: "DeviceTypeAndroid"))
    ImportClientBrandingResult.add_member(:device_type_ios, ::Smithy::Schema::Shapes::MemberShape.new(target: IosClientBrandingAttributes, location_name: "DeviceTypeIos"))
    ImportClientBrandingResult.add_member(:device_type_linux, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultClientBrandingAttributes, location_name: "DeviceTypeLinux"))
    ImportClientBrandingResult.add_member(:device_type_web, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultClientBrandingAttributes, location_name: "DeviceTypeWeb"))
    ImportClientBrandingResult.type = Types::ImportClientBrandingResult
    ImportCustomWorkspaceImageRequest.add_member(:image_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceImageName, location_name: "ImageName", traits: {"smithy.api#required" => {}}))
    ImportCustomWorkspaceImageRequest.add_member(:image_description, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceImageDescription, location_name: "ImageDescription", traits: {"smithy.api#required" => {}}))
    ImportCustomWorkspaceImageRequest.add_member(:compute_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageComputeType, location_name: "ComputeType", traits: {"smithy.api#required" => {}}))
    ImportCustomWorkspaceImageRequest.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomImageProtocol, location_name: "Protocol", traits: {"smithy.api#required" => {}}))
    ImportCustomWorkspaceImageRequest.add_member(:image_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSourceIdentifier, location_name: "ImageSource", traits: {"smithy.api#required" => {}}))
    ImportCustomWorkspaceImageRequest.add_member(:infrastructure_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InfrastructureConfigurationArn, location_name: "InfrastructureConfigurationArn", traits: {"smithy.api#required" => {}}))
    ImportCustomWorkspaceImageRequest.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: Platform, location_name: "Platform", traits: {"smithy.api#required" => {}}))
    ImportCustomWorkspaceImageRequest.add_member(:os_version, ::Smithy::Schema::Shapes::MemberShape.new(target: OSVersion, location_name: "OsVersion", traits: {"smithy.api#required" => {}}))
    ImportCustomWorkspaceImageRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    ImportCustomWorkspaceImageRequest.type = Types::ImportCustomWorkspaceImageRequest
    ImportCustomWorkspaceImageResult.add_member(:image_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceImageId, location_name: "ImageId"))
    ImportCustomWorkspaceImageResult.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomWorkspaceImageImportState, location_name: "State"))
    ImportCustomWorkspaceImageResult.type = Types::ImportCustomWorkspaceImageResult
    ImportWorkspaceImageRequest.add_member(:ec2_image_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Ec2ImageId, location_name: "Ec2ImageId", traits: {"smithy.api#required" => {}}))
    ImportWorkspaceImageRequest.add_member(:ingestion_process, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceImageIngestionProcess, location_name: "IngestionProcess", traits: {"smithy.api#required" => {}}))
    ImportWorkspaceImageRequest.add_member(:image_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceImageName, location_name: "ImageName", traits: {"smithy.api#required" => {}}))
    ImportWorkspaceImageRequest.add_member(:image_description, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceImageDescription, location_name: "ImageDescription", traits: {"smithy.api#required" => {}}))
    ImportWorkspaceImageRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    ImportWorkspaceImageRequest.add_member(:applications, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationList, location_name: "Applications"))
    ImportWorkspaceImageRequest.type = Types::ImportWorkspaceImageRequest
    ImportWorkspaceImageResult.add_member(:image_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceImageId, location_name: "ImageId"))
    ImportWorkspaceImageResult.type = Types::ImportWorkspaceImageResult
    IncompatibleApplicationsException.type = Types::IncompatibleApplicationsException
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    InternalServerException.type = Types::InternalServerException
    InternetFallbackProtocol.add_member(:pcoip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PCOIP", traits: {"smithy.api#enumValue" => "PCOIP"}))
    InternetFallbackProtocolList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InternetFallbackProtocol)
    InvalidParameterCombinationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    InvalidParameterCombinationException.type = Types::InvalidParameterCombinationException
    InvalidParameterValuesException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    InvalidParameterValuesException.type = Types::InvalidParameterValuesException
    InvalidResourceStateException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    InvalidResourceStateException.type = Types::InvalidResourceStateException
    IosClientBrandingAttributes.add_member(:logo_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientUrl, location_name: "LogoUrl"))
    IosClientBrandingAttributes.add_member(:logo2x_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientUrl, location_name: "Logo2xUrl"))
    IosClientBrandingAttributes.add_member(:logo3x_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientUrl, location_name: "Logo3xUrl"))
    IosClientBrandingAttributes.add_member(:support_email, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientEmail, location_name: "SupportEmail"))
    IosClientBrandingAttributes.add_member(:support_link, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientUrl, location_name: "SupportLink"))
    IosClientBrandingAttributes.add_member(:forgot_password_link, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientUrl, location_name: "ForgotPasswordLink"))
    IosClientBrandingAttributes.add_member(:login_message, ::Smithy::Schema::Shapes::MemberShape.new(target: LoginMessage, location_name: "LoginMessage"))
    IosClientBrandingAttributes.type = Types::IosClientBrandingAttributes
    IosImportClientBrandingAttributes.add_member(:logo, ::Smithy::Schema::Shapes::MemberShape.new(target: IosLogo, location_name: "Logo"))
    IosImportClientBrandingAttributes.add_member(:logo2x, ::Smithy::Schema::Shapes::MemberShape.new(target: Ios2XLogo, location_name: "Logo2x"))
    IosImportClientBrandingAttributes.add_member(:logo3x, ::Smithy::Schema::Shapes::MemberShape.new(target: Ios3XLogo, location_name: "Logo3x"))
    IosImportClientBrandingAttributes.add_member(:support_email, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientEmail, location_name: "SupportEmail"))
    IosImportClientBrandingAttributes.add_member(:support_link, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientUrl, location_name: "SupportLink"))
    IosImportClientBrandingAttributes.add_member(:forgot_password_link, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientUrl, location_name: "ForgotPasswordLink"))
    IosImportClientBrandingAttributes.add_member(:login_message, ::Smithy::Schema::Shapes::MemberShape.new(target: LoginMessage, location_name: "LoginMessage"))
    IosImportClientBrandingAttributes.type = Types::IosImportClientBrandingAttributes
    IpGroupIdList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: IpGroupId)
    IpRevokedRuleList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: IpRule)
    IpRuleItem.add_member(:ip_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: IpRule, location_name: "ipRule"))
    IpRuleItem.add_member(:rule_desc, ::Smithy::Schema::Shapes::MemberShape.new(target: IpRuleDesc, location_name: "ruleDesc"))
    IpRuleItem.type = Types::IpRuleItem
    IpRuleList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: IpRuleItem)
    LinkStatusFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AccountLinkStatusEnum)
    ListAccountLinksRequest.add_member(:link_status_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkStatusFilterList, location_name: "LinkStatusFilter"))
    ListAccountLinksRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "NextToken"))
    ListAccountLinksRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Limit, location_name: "MaxResults"))
    ListAccountLinksRequest.type = Types::ListAccountLinksRequest
    ListAccountLinksResult.add_member(:account_links, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountLinkList, location_name: "AccountLinks"))
    ListAccountLinksResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "NextToken"))
    ListAccountLinksResult.type = Types::ListAccountLinksResult
    ListAvailableManagementCidrRangesRequest.add_member(:management_cidr_range_constraint, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagementCidrRangeConstraint, location_name: "ManagementCidrRangeConstraint", traits: {"smithy.api#required" => {}}))
    ListAvailableManagementCidrRangesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagementCidrRangeMaxResults, location_name: "MaxResults"))
    ListAvailableManagementCidrRangesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "NextToken"))
    ListAvailableManagementCidrRangesRequest.type = Types::ListAvailableManagementCidrRangesRequest
    ListAvailableManagementCidrRangesResult.add_member(:management_cidr_ranges, ::Smithy::Schema::Shapes::MemberShape.new(target: DedicatedTenancyCidrRangeList, location_name: "ManagementCidrRanges"))
    ListAvailableManagementCidrRangesResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "NextToken"))
    ListAvailableManagementCidrRangesResult.type = Types::ListAvailableManagementCidrRangesResult
    LogUploadEnum.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    LogUploadEnum.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    LoginMessage.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ClientLocale)
    LoginMessage.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ClientLoginMessage)
    MicrosoftEntraConfig.add_member(:tenant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MicrosoftEntraConfigTenantId, location_name: "TenantId"))
    MicrosoftEntraConfig.add_member(:application_config_secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretsManagerArn, location_name: "ApplicationConfigSecretArn"))
    MicrosoftEntraConfig.type = Types::MicrosoftEntraConfig
    MigrateWorkspaceRequest.add_member(:source_workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceId, location_name: "SourceWorkspaceId", traits: {"smithy.api#required" => {}}))
    MigrateWorkspaceRequest.add_member(:bundle_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BundleId, location_name: "BundleId", traits: {"smithy.api#required" => {}}))
    MigrateWorkspaceRequest.type = Types::MigrateWorkspaceRequest
    MigrateWorkspaceResult.add_member(:source_workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceId, location_name: "SourceWorkspaceId"))
    MigrateWorkspaceResult.add_member(:target_workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceId, location_name: "TargetWorkspaceId"))
    MigrateWorkspaceResult.type = Types::MigrateWorkspaceResult
    ModificationResourceEnum.add_member(:root_volume, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ROOT_VOLUME", traits: {"smithy.api#enumValue" => "ROOT_VOLUME"}))
    ModificationResourceEnum.add_member(:user_volume, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "USER_VOLUME", traits: {"smithy.api#enumValue" => "USER_VOLUME"}))
    ModificationResourceEnum.add_member(:compute_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPUTE_TYPE", traits: {"smithy.api#enumValue" => "COMPUTE_TYPE"}))
    ModificationState.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: ModificationResourceEnum, location_name: "Resource"))
    ModificationState.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ModificationStateEnum, location_name: "State"))
    ModificationState.type = Types::ModificationState
    ModificationStateEnum.add_member(:update_initiated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATE_INITIATED", traits: {"smithy.api#enumValue" => "UPDATE_INITIATED"}))
    ModificationStateEnum.add_member(:update_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "UPDATE_IN_PROGRESS"}))
    ModificationStateList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ModificationState)
    ModifyAccountRequest.add_member(:dedicated_tenancy_support, ::Smithy::Schema::Shapes::MemberShape.new(target: DedicatedTenancySupportEnum, location_name: "DedicatedTenancySupport"))
    ModifyAccountRequest.add_member(:dedicated_tenancy_management_cidr_range, ::Smithy::Schema::Shapes::MemberShape.new(target: DedicatedTenancyManagementCidrRange, location_name: "DedicatedTenancyManagementCidrRange"))
    ModifyAccountRequest.type = Types::ModifyAccountRequest
    ModifyAccountResult.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, location_name: "Message"))
    ModifyAccountResult.type = Types::ModifyAccountResult
    ModifyCertificateBasedAuthPropertiesRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, location_name: "ResourceId", traits: {"smithy.api#required" => {}}))
    ModifyCertificateBasedAuthPropertiesRequest.add_member(:certificate_based_auth_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateBasedAuthProperties, location_name: "CertificateBasedAuthProperties"))
    ModifyCertificateBasedAuthPropertiesRequest.add_member(:properties_to_delete, ::Smithy::Schema::Shapes::MemberShape.new(target: DeletableCertificateBasedAuthPropertiesList, location_name: "PropertiesToDelete"))
    ModifyCertificateBasedAuthPropertiesRequest.type = Types::ModifyCertificateBasedAuthPropertiesRequest
    ModifyCertificateBasedAuthPropertiesResult.type = Types::ModifyCertificateBasedAuthPropertiesResult
    ModifyClientPropertiesRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "ResourceId", traits: {"smithy.api#required" => {}}))
    ModifyClientPropertiesRequest.add_member(:client_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientProperties, location_name: "ClientProperties", traits: {"smithy.api#required" => {}}))
    ModifyClientPropertiesRequest.type = Types::ModifyClientPropertiesRequest
    ModifyClientPropertiesResult.type = Types::ModifyClientPropertiesResult
    ModifyEndpointEncryptionModeRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, location_name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    ModifyEndpointEncryptionModeRequest.add_member(:endpoint_encryption_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointEncryptionMode, location_name: "EndpointEncryptionMode", traits: {"smithy.api#required" => {}}))
    ModifyEndpointEncryptionModeRequest.type = Types::ModifyEndpointEncryptionModeRequest
    ModifyEndpointEncryptionModeResponse.type = Types::ModifyEndpointEncryptionModeResponse
    ModifySamlPropertiesRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, location_name: "ResourceId", traits: {"smithy.api#required" => {}}))
    ModifySamlPropertiesRequest.add_member(:saml_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: SamlProperties, location_name: "SamlProperties"))
    ModifySamlPropertiesRequest.add_member(:properties_to_delete, ::Smithy::Schema::Shapes::MemberShape.new(target: DeletableSamlPropertiesList, location_name: "PropertiesToDelete"))
    ModifySamlPropertiesRequest.type = Types::ModifySamlPropertiesRequest
    ModifySamlPropertiesResult.type = Types::ModifySamlPropertiesResult
    ModifySelfservicePermissionsRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, location_name: "ResourceId", traits: {"smithy.api#required" => {}}))
    ModifySelfservicePermissionsRequest.add_member(:selfservice_permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: SelfservicePermissions, location_name: "SelfservicePermissions", traits: {"smithy.api#required" => {}}))
    ModifySelfservicePermissionsRequest.type = Types::ModifySelfservicePermissionsRequest
    ModifySelfservicePermissionsResult.type = Types::ModifySelfservicePermissionsResult
    ModifyStreamingPropertiesRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, location_name: "ResourceId", traits: {"smithy.api#required" => {}}))
    ModifyStreamingPropertiesRequest.add_member(:streaming_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamingProperties, location_name: "StreamingProperties"))
    ModifyStreamingPropertiesRequest.type = Types::ModifyStreamingPropertiesRequest
    ModifyStreamingPropertiesResult.type = Types::ModifyStreamingPropertiesResult
    ModifyWorkspaceAccessPropertiesRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, location_name: "ResourceId", traits: {"smithy.api#required" => {}}))
    ModifyWorkspaceAccessPropertiesRequest.add_member(:workspace_access_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceAccessProperties, location_name: "WorkspaceAccessProperties", traits: {"smithy.api#required" => {}}))
    ModifyWorkspaceAccessPropertiesRequest.type = Types::ModifyWorkspaceAccessPropertiesRequest
    ModifyWorkspaceAccessPropertiesResult.type = Types::ModifyWorkspaceAccessPropertiesResult
    ModifyWorkspaceCreationPropertiesRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, location_name: "ResourceId", traits: {"smithy.api#required" => {}}))
    ModifyWorkspaceCreationPropertiesRequest.add_member(:workspace_creation_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceCreationProperties, location_name: "WorkspaceCreationProperties", traits: {"smithy.api#required" => {}}))
    ModifyWorkspaceCreationPropertiesRequest.type = Types::ModifyWorkspaceCreationPropertiesRequest
    ModifyWorkspaceCreationPropertiesResult.type = Types::ModifyWorkspaceCreationPropertiesResult
    ModifyWorkspacePropertiesRequest.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceId, location_name: "WorkspaceId", traits: {"smithy.api#required" => {}}))
    ModifyWorkspacePropertiesRequest.add_member(:workspace_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceProperties, location_name: "WorkspaceProperties"))
    ModifyWorkspacePropertiesRequest.add_member(:data_replication, ::Smithy::Schema::Shapes::MemberShape.new(target: DataReplication, location_name: "DataReplication"))
    ModifyWorkspacePropertiesRequest.type = Types::ModifyWorkspacePropertiesRequest
    ModifyWorkspacePropertiesResult.type = Types::ModifyWorkspacePropertiesResult
    ModifyWorkspaceStateRequest.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceId, location_name: "WorkspaceId", traits: {"smithy.api#required" => {}}))
    ModifyWorkspaceStateRequest.add_member(:workspace_state, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetWorkspaceState, location_name: "WorkspaceState", traits: {"smithy.api#required" => {}}))
    ModifyWorkspaceStateRequest.type = Types::ModifyWorkspaceStateRequest
    ModifyWorkspaceStateResult.type = Types::ModifyWorkspaceStateResult
    NetworkAccessConfiguration.add_member(:eni_private_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "EniPrivateIpAddress"))
    NetworkAccessConfiguration.add_member(:eni_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "EniId"))
    NetworkAccessConfiguration.type = Types::NetworkAccessConfiguration
    OSVersion.add_member(:windows_10, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Windows_10", traits: {"smithy.api#enumValue" => "Windows_10"}))
    OSVersion.add_member(:windows_11, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Windows_11", traits: {"smithy.api#enumValue" => "Windows_11"}))
    OperatingSystem.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: OperatingSystemType, location_name: "Type"))
    OperatingSystem.type = Types::OperatingSystem
    OperatingSystemName.add_member(:amazon_linux_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AMAZON_LINUX_2", traits: {"smithy.api#enumValue" => "AMAZON_LINUX_2"}))
    OperatingSystemName.add_member(:ubuntu_18_04, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UBUNTU_18_04", traits: {"smithy.api#enumValue" => "UBUNTU_18_04"}))
    OperatingSystemName.add_member(:ubuntu_20_04, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UBUNTU_20_04", traits: {"smithy.api#enumValue" => "UBUNTU_20_04"}))
    OperatingSystemName.add_member(:ubuntu_22_04, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UBUNTU_22_04", traits: {"smithy.api#enumValue" => "UBUNTU_22_04"}))
    OperatingSystemName.add_member(:unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNKNOWN", traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    OperatingSystemName.add_member(:windows_10, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WINDOWS_10", traits: {"smithy.api#enumValue" => "WINDOWS_10"}))
    OperatingSystemName.add_member(:windows_11, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WINDOWS_11", traits: {"smithy.api#enumValue" => "WINDOWS_11"}))
    OperatingSystemName.add_member(:windows_7, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WINDOWS_7", traits: {"smithy.api#enumValue" => "WINDOWS_7"}))
    OperatingSystemName.add_member(:windows_server_2016, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WINDOWS_SERVER_2016", traits: {"smithy.api#enumValue" => "WINDOWS_SERVER_2016"}))
    OperatingSystemName.add_member(:windows_server_2019, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WINDOWS_SERVER_2019", traits: {"smithy.api#enumValue" => "WINDOWS_SERVER_2019"}))
    OperatingSystemName.add_member(:windows_server_2022, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WINDOWS_SERVER_2022", traits: {"smithy.api#enumValue" => "WINDOWS_SERVER_2022"}))
    OperatingSystemName.add_member(:rhel_8, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RHEL_8", traits: {"smithy.api#enumValue" => "RHEL_8"}))
    OperatingSystemName.add_member(:rocky_8, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ROCKY_8", traits: {"smithy.api#enumValue" => "ROCKY_8"}))
    OperatingSystemNameList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OperatingSystemName)
    OperatingSystemNotCompatibleException.type = Types::OperatingSystemNotCompatibleException
    OperatingSystemType.add_member(:windows, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WINDOWS", traits: {"smithy.api#enumValue" => "WINDOWS"}))
    OperatingSystemType.add_member(:linux, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LINUX", traits: {"smithy.api#enumValue" => "LINUX"}))
    OperationInProgressException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    OperationInProgressException.type = Types::OperationInProgressException
    OperationNotSupportedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    OperationNotSupportedException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionErrorCode, location_name: "reason"))
    OperationNotSupportedException.type = Types::OperationNotSupportedException
    PendingCreateStandbyWorkspacesRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserName, location_name: "UserName"))
    PendingCreateStandbyWorkspacesRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, location_name: "DirectoryId"))
    PendingCreateStandbyWorkspacesRequest.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceState, location_name: "State"))
    PendingCreateStandbyWorkspacesRequest.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceId, location_name: "WorkspaceId"))
    PendingCreateStandbyWorkspacesRequest.type = Types::PendingCreateStandbyWorkspacesRequest
    PendingCreateStandbyWorkspacesRequestList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PendingCreateStandbyWorkspacesRequest)
    Platform.add_member(:windows, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WINDOWS", traits: {"smithy.api#enumValue" => "WINDOWS"}))
    PoolsRunningMode.add_member(:auto_stop, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AUTO_STOP", traits: {"smithy.api#enumValue" => "AUTO_STOP"}))
    PoolsRunningMode.add_member(:always_on, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALWAYS_ON", traits: {"smithy.api#enumValue" => "ALWAYS_ON"}))
    Protocol.add_member(:pcoip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PCOIP", traits: {"smithy.api#enumValue" => "PCOIP"}))
    Protocol.add_member(:wsp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WSP", traits: {"smithy.api#enumValue" => "WSP"}))
    ProtocolList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Protocol)
    RebootRequest.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceId, location_name: "WorkspaceId", traits: {"smithy.api#required" => {}}))
    RebootRequest.type = Types::RebootRequest
    RebootWorkspaceRequests.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RebootRequest)
    RebootWorkspacesRequest.add_member(:reboot_workspace_requests, ::Smithy::Schema::Shapes::MemberShape.new(target: RebootWorkspaceRequests, location_name: "RebootWorkspaceRequests", traits: {"smithy.api#required" => {}}))
    RebootWorkspacesRequest.type = Types::RebootWorkspacesRequest
    RebootWorkspacesResult.add_member(:failed_requests, ::Smithy::Schema::Shapes::MemberShape.new(target: FailedRebootWorkspaceRequests, location_name: "FailedRequests"))
    RebootWorkspacesResult.type = Types::RebootWorkspacesResult
    RebuildRequest.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceId, location_name: "WorkspaceId", traits: {"smithy.api#required" => {}}))
    RebuildRequest.type = Types::RebuildRequest
    RebuildWorkspaceRequests.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RebuildRequest)
    RebuildWorkspacesRequest.add_member(:rebuild_workspace_requests, ::Smithy::Schema::Shapes::MemberShape.new(target: RebuildWorkspaceRequests, location_name: "RebuildWorkspaceRequests", traits: {"smithy.api#required" => {}}))
    RebuildWorkspacesRequest.type = Types::RebuildWorkspacesRequest
    RebuildWorkspacesResult.add_member(:failed_requests, ::Smithy::Schema::Shapes::MemberShape.new(target: FailedRebuildWorkspaceRequests, location_name: "FailedRequests"))
    RebuildWorkspacesResult.type = Types::RebuildWorkspacesResult
    ReconnectEnum.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    ReconnectEnum.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    RegisterWorkspaceDirectoryRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, location_name: "DirectoryId"))
    RegisterWorkspaceDirectoryRequest.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIds, location_name: "SubnetIds"))
    RegisterWorkspaceDirectoryRequest.add_member(:enable_self_service, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, location_name: "EnableSelfService"))
    RegisterWorkspaceDirectoryRequest.add_member(:tenancy, ::Smithy::Schema::Shapes::MemberShape.new(target: Tenancy, location_name: "Tenancy"))
    RegisterWorkspaceDirectoryRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    RegisterWorkspaceDirectoryRequest.add_member(:workspace_directory_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceDirectoryName, location_name: "WorkspaceDirectoryName"))
    RegisterWorkspaceDirectoryRequest.add_member(:workspace_directory_description, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceDirectoryDescription, location_name: "WorkspaceDirectoryDescription"))
    RegisterWorkspaceDirectoryRequest.add_member(:user_identity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: UserIdentityType, location_name: "UserIdentityType"))
    RegisterWorkspaceDirectoryRequest.add_member(:idc_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, location_name: "IdcInstanceArn"))
    RegisterWorkspaceDirectoryRequest.add_member(:microsoft_entra_config, ::Smithy::Schema::Shapes::MemberShape.new(target: MicrosoftEntraConfig, location_name: "MicrosoftEntraConfig"))
    RegisterWorkspaceDirectoryRequest.add_member(:workspace_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceType, location_name: "WorkspaceType"))
    RegisterWorkspaceDirectoryRequest.add_member(:active_directory_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ActiveDirectoryConfig, location_name: "ActiveDirectoryConfig"))
    RegisterWorkspaceDirectoryRequest.type = Types::RegisterWorkspaceDirectoryRequest
    RegisterWorkspaceDirectoryResult.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, location_name: "DirectoryId"))
    RegisterWorkspaceDirectoryResult.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceDirectoryState, location_name: "State"))
    RegisterWorkspaceDirectoryResult.type = Types::RegisterWorkspaceDirectoryResult
    RejectAccountLinkInvitationRequest.add_member(:link_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkId, location_name: "LinkId", traits: {"smithy.api#required" => {}}))
    RejectAccountLinkInvitationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "ClientToken"))
    RejectAccountLinkInvitationRequest.type = Types::RejectAccountLinkInvitationRequest
    RejectAccountLinkInvitationResult.add_member(:account_link, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountLink, location_name: "AccountLink"))
    RejectAccountLinkInvitationResult.type = Types::RejectAccountLinkInvitationResult
    RelatedWorkspaceProperties.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceId, location_name: "WorkspaceId"))
    RelatedWorkspaceProperties.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, location_name: "Region"))
    RelatedWorkspaceProperties.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceState, location_name: "State"))
    RelatedWorkspaceProperties.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: StandbyWorkspaceRelationshipType, location_name: "Type"))
    RelatedWorkspaceProperties.type = Types::RelatedWorkspaceProperties
    RelatedWorkspaces.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RelatedWorkspaceProperties)
    ResourceAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    ResourceAlreadyExistsException.type = Types::ResourceAlreadyExistsException
    ResourceAssociatedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    ResourceAssociatedException.type = Types::ResourceAssociatedException
    ResourceCreationFailedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    ResourceCreationFailedException.type = Types::ResourceCreationFailedException
    ResourceIdList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString)
    ResourceInUseException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    ResourceInUseException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "ResourceId"))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    ResourceLimitExceededException.type = Types::ResourceLimitExceededException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "ResourceId"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    ResourceUnavailableException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "ResourceId"))
    ResourceUnavailableException.type = Types::ResourceUnavailableException
    RestoreWorkspaceRequest.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceId, location_name: "WorkspaceId", traits: {"smithy.api#required" => {}}))
    RestoreWorkspaceRequest.type = Types::RestoreWorkspaceRequest
    RestoreWorkspaceResult.type = Types::RestoreWorkspaceResult
    RevokeIpRulesRequest.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IpGroupId, location_name: "GroupId", traits: {"smithy.api#required" => {}}))
    RevokeIpRulesRequest.add_member(:user_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: IpRevokedRuleList, location_name: "UserRules", traits: {"smithy.api#required" => {}}))
    RevokeIpRulesRequest.type = Types::RevokeIpRulesRequest
    RevokeIpRulesResult.type = Types::RevokeIpRulesResult
    RootStorage.add_member(:capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "Capacity", traits: {"smithy.api#required" => {}}))
    RootStorage.type = Types::RootStorage
    RunningMode.add_member(:auto_stop, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AUTO_STOP", traits: {"smithy.api#enumValue" => "AUTO_STOP"}))
    RunningMode.add_member(:always_on, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALWAYS_ON", traits: {"smithy.api#enumValue" => "ALWAYS_ON"}))
    RunningMode.add_member(:manual, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MANUAL", traits: {"smithy.api#enumValue" => "MANUAL"}))
    SamlProperties.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SamlStatusEnum, location_name: "Status"))
    SamlProperties.add_member(:user_access_url, ::Smithy::Schema::Shapes::MemberShape.new(target: SamlUserAccessUrl, location_name: "UserAccessUrl"))
    SamlProperties.add_member(:relay_state_parameter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "RelayStateParameterName"))
    SamlProperties.type = Types::SamlProperties
    SamlStatusEnum.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    SamlStatusEnum.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    SamlStatusEnum.add_member(:enabled_with_directory_login_fallback, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED_WITH_DIRECTORY_LOGIN_FALLBACK", traits: {"smithy.api#enumValue" => "ENABLED_WITH_DIRECTORY_LOGIN_FALLBACK"}))
    SelfservicePermissions.add_member(:restart_workspace, ::Smithy::Schema::Shapes::MemberShape.new(target: ReconnectEnum, location_name: "RestartWorkspace"))
    SelfservicePermissions.add_member(:increase_volume_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ReconnectEnum, location_name: "IncreaseVolumeSize"))
    SelfservicePermissions.add_member(:change_compute_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReconnectEnum, location_name: "ChangeComputeType"))
    SelfservicePermissions.add_member(:switch_running_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ReconnectEnum, location_name: "SwitchRunningMode"))
    SelfservicePermissions.add_member(:rebuild_workspace, ::Smithy::Schema::Shapes::MemberShape.new(target: ReconnectEnum, location_name: "RebuildWorkspace"))
    SelfservicePermissions.type = Types::SelfservicePermissions
    SessionConnectionState.add_member(:connected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONNECTED", traits: {"smithy.api#enumValue" => "CONNECTED"}))
    SessionConnectionState.add_member(:not_connected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_CONNECTED", traits: {"smithy.api#enumValue" => "NOT_CONNECTED"}))
    Snapshot.add_member(:snapshot_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "SnapshotTime"))
    Snapshot.type = Types::Snapshot
    SnapshotList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Snapshot)
    StandbyWorkspace.add_member(:primary_workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceId, location_name: "PrimaryWorkspaceId", traits: {"smithy.api#required" => {}}))
    StandbyWorkspace.add_member(:volume_encryption_key, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeEncryptionKey, location_name: "VolumeEncryptionKey"))
    StandbyWorkspace.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, location_name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    StandbyWorkspace.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    StandbyWorkspace.add_member(:data_replication, ::Smithy::Schema::Shapes::MemberShape.new(target: DataReplication, location_name: "DataReplication"))
    StandbyWorkspace.type = Types::StandbyWorkspace
    StandbyWorkspaceRelationshipType.add_member(:primary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PRIMARY", traits: {"smithy.api#enumValue" => "PRIMARY"}))
    StandbyWorkspaceRelationshipType.add_member(:standby, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STANDBY", traits: {"smithy.api#enumValue" => "STANDBY"}))
    StandbyWorkspacesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StandbyWorkspace)
    StandbyWorkspacesProperties.add_member(:standby_workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceId, location_name: "StandbyWorkspaceId"))
    StandbyWorkspacesProperties.add_member(:data_replication, ::Smithy::Schema::Shapes::MemberShape.new(target: DataReplication, location_name: "DataReplication"))
    StandbyWorkspacesProperties.add_member(:recovery_snapshot_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "RecoverySnapshotTime"))
    StandbyWorkspacesProperties.type = Types::StandbyWorkspacesProperties
    StandbyWorkspacesPropertiesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StandbyWorkspacesProperties)
    StartRequest.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceId, location_name: "WorkspaceId"))
    StartRequest.type = Types::StartRequest
    StartWorkspaceRequests.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StartRequest)
    StartWorkspacesPoolRequest.add_member(:pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspacesPoolId, location_name: "PoolId", traits: {"smithy.api#required" => {}}))
    StartWorkspacesPoolRequest.type = Types::StartWorkspacesPoolRequest
    StartWorkspacesPoolResult.type = Types::StartWorkspacesPoolResult
    StartWorkspacesRequest.add_member(:start_workspace_requests, ::Smithy::Schema::Shapes::MemberShape.new(target: StartWorkspaceRequests, location_name: "StartWorkspaceRequests", traits: {"smithy.api#required" => {}}))
    StartWorkspacesRequest.type = Types::StartWorkspacesRequest
    StartWorkspacesResult.add_member(:failed_requests, ::Smithy::Schema::Shapes::MemberShape.new(target: FailedStartWorkspaceRequests, location_name: "FailedRequests"))
    StartWorkspacesResult.type = Types::StartWorkspacesResult
    StopRequest.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceId, location_name: "WorkspaceId"))
    StopRequest.type = Types::StopRequest
    StopWorkspaceRequests.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StopRequest)
    StopWorkspacesPoolRequest.add_member(:pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspacesPoolId, location_name: "PoolId", traits: {"smithy.api#required" => {}}))
    StopWorkspacesPoolRequest.type = Types::StopWorkspacesPoolRequest
    StopWorkspacesPoolResult.type = Types::StopWorkspacesPoolResult
    StopWorkspacesRequest.add_member(:stop_workspace_requests, ::Smithy::Schema::Shapes::MemberShape.new(target: StopWorkspaceRequests, location_name: "StopWorkspaceRequests", traits: {"smithy.api#required" => {}}))
    StopWorkspacesRequest.type = Types::StopWorkspacesRequest
    StopWorkspacesResult.add_member(:failed_requests, ::Smithy::Schema::Shapes::MemberShape.new(target: FailedStopWorkspaceRequests, location_name: "FailedRequests"))
    StopWorkspacesResult.type = Types::StopWorkspacesResult
    StorageConnector.add_member(:connector_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageConnectorTypeEnum, location_name: "ConnectorType", traits: {"smithy.api#required" => {}}))
    StorageConnector.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageConnectorStatusEnum, location_name: "Status", traits: {"smithy.api#required" => {}}))
    StorageConnector.type = Types::StorageConnector
    StorageConnectorStatusEnum.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    StorageConnectorStatusEnum.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    StorageConnectorTypeEnum.add_member(:home_folder, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HOME_FOLDER", traits: {"smithy.api#enumValue" => "HOME_FOLDER"}))
    StorageConnectors.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StorageConnector)
    StreamingExperiencePreferredProtocolEnum.add_member(:tcp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TCP", traits: {"smithy.api#enumValue" => "TCP"}))
    StreamingExperiencePreferredProtocolEnum.add_member(:udp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UDP", traits: {"smithy.api#enumValue" => "UDP"}))
    StreamingProperties.add_member(:streaming_experience_preferred_protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamingExperiencePreferredProtocolEnum, location_name: "StreamingExperiencePreferredProtocol"))
    StreamingProperties.add_member(:user_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: UserSettings, location_name: "UserSettings"))
    StreamingProperties.add_member(:storage_connectors, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageConnectors, location_name: "StorageConnectors"))
    StreamingProperties.add_member(:global_accelerator, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalAcceleratorForDirectory, location_name: "GlobalAccelerator"))
    StreamingProperties.type = Types::StreamingProperties
    SubnetIds.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetId)
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, location_name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, location_name: "Value"))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString)
    TagList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tag)
    TargetWorkspaceState.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    TargetWorkspaceState.add_member(:admin_maintenance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ADMIN_MAINTENANCE", traits: {"smithy.api#enumValue" => "ADMIN_MAINTENANCE"}))
    Tenancy.add_member(:dedicated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEDICATED", traits: {"smithy.api#enumValue" => "DEDICATED"}))
    Tenancy.add_member(:shared, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SHARED", traits: {"smithy.api#enumValue" => "SHARED"}))
    TerminateRequest.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceId, location_name: "WorkspaceId", traits: {"smithy.api#required" => {}}))
    TerminateRequest.type = Types::TerminateRequest
    TerminateWorkspaceRequests.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TerminateRequest)
    TerminateWorkspacesPoolRequest.add_member(:pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspacesPoolId, location_name: "PoolId", traits: {"smithy.api#required" => {}}))
    TerminateWorkspacesPoolRequest.type = Types::TerminateWorkspacesPoolRequest
    TerminateWorkspacesPoolResult.type = Types::TerminateWorkspacesPoolResult
    TerminateWorkspacesPoolSessionRequest.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonUuid, location_name: "SessionId", traits: {"smithy.api#required" => {}}))
    TerminateWorkspacesPoolSessionRequest.type = Types::TerminateWorkspacesPoolSessionRequest
    TerminateWorkspacesPoolSessionResult.type = Types::TerminateWorkspacesPoolSessionResult
    TerminateWorkspacesRequest.add_member(:terminate_workspace_requests, ::Smithy::Schema::Shapes::MemberShape.new(target: TerminateWorkspaceRequests, location_name: "TerminateWorkspaceRequests", traits: {"smithy.api#required" => {}}))
    TerminateWorkspacesRequest.type = Types::TerminateWorkspacesRequest
    TerminateWorkspacesResult.add_member(:failed_requests, ::Smithy::Schema::Shapes::MemberShape.new(target: FailedTerminateWorkspaceRequests, location_name: "FailedRequests"))
    TerminateWorkspacesResult.type = Types::TerminateWorkspacesResult
    TimeoutSettings.add_member(:disconnect_timeout_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: DisconnectTimeoutInSeconds, location_name: "DisconnectTimeoutInSeconds"))
    TimeoutSettings.add_member(:idle_disconnect_timeout_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: IdleDisconnectTimeoutInSeconds, location_name: "IdleDisconnectTimeoutInSeconds"))
    TimeoutSettings.add_member(:max_user_duration_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxUserDurationInSeconds, location_name: "MaxUserDurationInSeconds"))
    TimeoutSettings.type = Types::TimeoutSettings
    UnsupportedNetworkConfigurationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    UnsupportedNetworkConfigurationException.type = Types::UnsupportedNetworkConfigurationException
    UnsupportedWorkspaceConfigurationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    UnsupportedWorkspaceConfigurationException.type = Types::UnsupportedWorkspaceConfigurationException
    UpdateConnectClientAddInRequest.add_member(:add_in_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonUuid, location_name: "AddInId", traits: {"smithy.api#required" => {}}))
    UpdateConnectClientAddInRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, location_name: "ResourceId", traits: {"smithy.api#required" => {}}))
    UpdateConnectClientAddInRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AddInName, location_name: "Name"))
    UpdateConnectClientAddInRequest.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: AddInUrl, location_name: "URL"))
    UpdateConnectClientAddInRequest.type = Types::UpdateConnectClientAddInRequest
    UpdateConnectClientAddInResult.type = Types::UpdateConnectClientAddInResult
    UpdateConnectionAliasPermissionRequest.add_member(:alias_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionAliasId, location_name: "AliasId", traits: {"smithy.api#required" => {}}))
    UpdateConnectionAliasPermissionRequest.add_member(:connection_alias_permission, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionAliasPermission, location_name: "ConnectionAliasPermission", traits: {"smithy.api#required" => {}}))
    UpdateConnectionAliasPermissionRequest.type = Types::UpdateConnectionAliasPermissionRequest
    UpdateConnectionAliasPermissionResult.type = Types::UpdateConnectionAliasPermissionResult
    UpdateResult.add_member(:update_available, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, location_name: "UpdateAvailable"))
    UpdateResult.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateDescription, location_name: "Description"))
    UpdateResult.type = Types::UpdateResult
    UpdateRulesOfIpGroupRequest.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IpGroupId, location_name: "GroupId", traits: {"smithy.api#required" => {}}))
    UpdateRulesOfIpGroupRequest.add_member(:user_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: IpRuleList, location_name: "UserRules", traits: {"smithy.api#required" => {}}))
    UpdateRulesOfIpGroupRequest.type = Types::UpdateRulesOfIpGroupRequest
    UpdateRulesOfIpGroupResult.type = Types::UpdateRulesOfIpGroupResult
    UpdateWorkspaceBundleRequest.add_member(:bundle_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BundleId, location_name: "BundleId"))
    UpdateWorkspaceBundleRequest.add_member(:image_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceImageId, location_name: "ImageId"))
    UpdateWorkspaceBundleRequest.type = Types::UpdateWorkspaceBundleRequest
    UpdateWorkspaceBundleResult.type = Types::UpdateWorkspaceBundleResult
    UpdateWorkspaceImagePermissionRequest.add_member(:image_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceImageId, location_name: "ImageId", traits: {"smithy.api#required" => {}}))
    UpdateWorkspaceImagePermissionRequest.add_member(:allow_copy_image, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, location_name: "AllowCopyImage", traits: {"smithy.api#required" => {}}))
    UpdateWorkspaceImagePermissionRequest.add_member(:shared_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccount, location_name: "SharedAccountId", traits: {"smithy.api#required" => {}}))
    UpdateWorkspaceImagePermissionRequest.type = Types::UpdateWorkspaceImagePermissionRequest
    UpdateWorkspaceImagePermissionResult.type = Types::UpdateWorkspaceImagePermissionResult
    UpdateWorkspacesPoolRequest.add_member(:pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspacesPoolId, location_name: "PoolId", traits: {"smithy.api#required" => {}}))
    UpdateWorkspacesPoolRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateDescription, location_name: "Description"))
    UpdateWorkspacesPoolRequest.add_member(:bundle_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BundleId, location_name: "BundleId"))
    UpdateWorkspacesPoolRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, location_name: "DirectoryId"))
    UpdateWorkspacesPoolRequest.add_member(:capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: Capacity, location_name: "Capacity"))
    UpdateWorkspacesPoolRequest.add_member(:application_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationSettingsRequest, location_name: "ApplicationSettings"))
    UpdateWorkspacesPoolRequest.add_member(:timeout_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeoutSettings, location_name: "TimeoutSettings"))
    UpdateWorkspacesPoolRequest.add_member(:running_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolsRunningMode, location_name: "RunningMode"))
    UpdateWorkspacesPoolRequest.type = Types::UpdateWorkspacesPoolRequest
    UpdateWorkspacesPoolResult.add_member(:workspaces_pool, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspacesPool, location_name: "WorkspacesPool"))
    UpdateWorkspacesPoolResult.type = Types::UpdateWorkspacesPoolResult
    UserIdentityType.add_member(:customer_managed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CUSTOMER_MANAGED", traits: {"smithy.api#enumValue" => "CUSTOMER_MANAGED"}))
    UserIdentityType.add_member(:aws_directory_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_DIRECTORY_SERVICE", traits: {"smithy.api#enumValue" => "AWS_DIRECTORY_SERVICE"}))
    UserIdentityType.add_member(:aws_iam_identity_center, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_IAM_IDENTITY_CENTER", traits: {"smithy.api#enumValue" => "AWS_IAM_IDENTITY_CENTER"}))
    UserSetting.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: UserSettingActionEnum, location_name: "Action", traits: {"smithy.api#required" => {}}))
    UserSetting.add_member(:permission, ::Smithy::Schema::Shapes::MemberShape.new(target: UserSettingPermissionEnum, location_name: "Permission", traits: {"smithy.api#required" => {}}))
    UserSetting.add_member(:maximum_length, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumLength, location_name: "MaximumLength"))
    UserSetting.type = Types::UserSetting
    UserSettingActionEnum.add_member(:clipboard_copy_from_local_device, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CLIPBOARD_COPY_FROM_LOCAL_DEVICE", traits: {"smithy.api#enumValue" => "CLIPBOARD_COPY_FROM_LOCAL_DEVICE"}))
    UserSettingActionEnum.add_member(:clipboard_copy_to_local_device, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CLIPBOARD_COPY_TO_LOCAL_DEVICE", traits: {"smithy.api#enumValue" => "CLIPBOARD_COPY_TO_LOCAL_DEVICE"}))
    UserSettingActionEnum.add_member(:printing_to_local_device, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PRINTING_TO_LOCAL_DEVICE", traits: {"smithy.api#enumValue" => "PRINTING_TO_LOCAL_DEVICE"}))
    UserSettingActionEnum.add_member(:smart_card, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SMART_CARD", traits: {"smithy.api#enumValue" => "SMART_CARD"}))
    UserSettingPermissionEnum.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    UserSettingPermissionEnum.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    UserSettings.member = ::Smithy::Schema::Shapes::MemberShape.new(target: UserSetting)
    UserStorage.add_member(:capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "Capacity", traits: {"smithy.api#required" => {}}))
    UserStorage.type = Types::UserStorage
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    ValidationException.type = Types::ValidationException
    WorkSpaceApplication.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkSpaceApplicationId, location_name: "ApplicationId"))
    WorkSpaceApplication.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "Created"))
    WorkSpaceApplication.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String2048, location_name: "Description"))
    WorkSpaceApplication.add_member(:license_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkSpaceApplicationLicenseType, location_name: "LicenseType"))
    WorkSpaceApplication.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "Name"))
    WorkSpaceApplication.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkSpaceApplicationOwner, location_name: "Owner"))
    WorkSpaceApplication.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkSpaceApplicationState, location_name: "State"))
    WorkSpaceApplication.add_member(:supported_compute_type_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeList, location_name: "SupportedComputeTypeNames"))
    WorkSpaceApplication.add_member(:supported_operating_system_names, ::Smithy::Schema::Shapes::MemberShape.new(target: OperatingSystemNameList, location_name: "SupportedOperatingSystemNames"))
    WorkSpaceApplication.type = Types::WorkSpaceApplication
    WorkSpaceApplicationDeployment.add_member(:associations, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceResourceAssociationList, location_name: "Associations"))
    WorkSpaceApplicationDeployment.type = Types::WorkSpaceApplicationDeployment
    WorkSpaceApplicationIdList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WorkSpaceApplicationId)
    WorkSpaceApplicationLicenseType.add_member(:licensed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LICENSED", traits: {"smithy.api#enumValue" => "LICENSED"}))
    WorkSpaceApplicationLicenseType.add_member(:unlicensed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNLICENSED", traits: {"smithy.api#enumValue" => "UNLICENSED"}))
    WorkSpaceApplicationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WorkSpaceApplication)
    WorkSpaceApplicationState.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    WorkSpaceApplicationState.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    WorkSpaceApplicationState.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    WorkSpaceApplicationState.add_member(:uninstall_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNINSTALL_ONLY", traits: {"smithy.api#enumValue" => "UNINSTALL_ONLY"}))
    WorkSpaceAssociatedResourceType.add_member(:application, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "APPLICATION", traits: {"smithy.api#enumValue" => "APPLICATION"}))
    WorkSpaceAssociatedResourceTypeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WorkSpaceAssociatedResourceType)
    Workspace.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceId, location_name: "WorkspaceId"))
    Workspace.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, location_name: "DirectoryId"))
    Workspace.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserName, location_name: "UserName"))
    Workspace.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddress, location_name: "IpAddress"))
    Workspace.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceState, location_name: "State"))
    Workspace.add_member(:bundle_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BundleId, location_name: "BundleId"))
    Workspace.add_member(:subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetId, location_name: "SubnetId"))
    Workspace.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "ErrorMessage"))
    Workspace.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceErrorCode, location_name: "ErrorCode"))
    Workspace.add_member(:computer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputerName, location_name: "ComputerName"))
    Workspace.add_member(:volume_encryption_key, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeEncryptionKey, location_name: "VolumeEncryptionKey"))
    Workspace.add_member(:user_volume_encryption_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, location_name: "UserVolumeEncryptionEnabled"))
    Workspace.add_member(:root_volume_encryption_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, location_name: "RootVolumeEncryptionEnabled"))
    Workspace.add_member(:workspace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceName, location_name: "WorkspaceName"))
    Workspace.add_member(:workspace_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceProperties, location_name: "WorkspaceProperties"))
    Workspace.add_member(:modification_states, ::Smithy::Schema::Shapes::MemberShape.new(target: ModificationStateList, location_name: "ModificationStates"))
    Workspace.add_member(:related_workspaces, ::Smithy::Schema::Shapes::MemberShape.new(target: RelatedWorkspaces, location_name: "RelatedWorkspaces"))
    Workspace.add_member(:data_replication_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: DataReplicationSettings, location_name: "DataReplicationSettings"))
    Workspace.add_member(:standby_workspaces_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: StandbyWorkspacesPropertiesList, location_name: "StandbyWorkspacesProperties"))
    Workspace.type = Types::Workspace
    WorkspaceAccessProperties.add_member(:device_type_windows, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPropertyValue, location_name: "DeviceTypeWindows"))
    WorkspaceAccessProperties.add_member(:device_type_osx, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPropertyValue, location_name: "DeviceTypeOsx"))
    WorkspaceAccessProperties.add_member(:device_type_web, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPropertyValue, location_name: "DeviceTypeWeb"))
    WorkspaceAccessProperties.add_member(:device_type_ios, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPropertyValue, location_name: "DeviceTypeIos"))
    WorkspaceAccessProperties.add_member(:device_type_android, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPropertyValue, location_name: "DeviceTypeAndroid"))
    WorkspaceAccessProperties.add_member(:device_type_chrome_os, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPropertyValue, location_name: "DeviceTypeChromeOs"))
    WorkspaceAccessProperties.add_member(:device_type_zero_client, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPropertyValue, location_name: "DeviceTypeZeroClient"))
    WorkspaceAccessProperties.add_member(:device_type_linux, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPropertyValue, location_name: "DeviceTypeLinux"))
    WorkspaceAccessProperties.add_member(:device_type_work_spaces_thin_client, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPropertyValue, location_name: "DeviceTypeWorkSpacesThinClient"))
    WorkspaceAccessProperties.add_member(:access_endpoint_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessEndpointConfig, location_name: "AccessEndpointConfig"))
    WorkspaceAccessProperties.type = Types::WorkspaceAccessProperties
    WorkspaceBundle.add_member(:bundle_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BundleId, location_name: "BundleId"))
    WorkspaceBundle.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "Name"))
    WorkspaceBundle.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: BundleOwner, location_name: "Owner"))
    WorkspaceBundle.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "Description"))
    WorkspaceBundle.add_member(:image_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceImageId, location_name: "ImageId"))
    WorkspaceBundle.add_member(:root_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: RootStorage, location_name: "RootStorage"))
    WorkspaceBundle.add_member(:user_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: UserStorage, location_name: "UserStorage"))
    WorkspaceBundle.add_member(:compute_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeType, location_name: "ComputeType"))
    WorkspaceBundle.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "LastUpdatedTime"))
    WorkspaceBundle.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreationTime"))
    WorkspaceBundle.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceBundleState, location_name: "State"))
    WorkspaceBundle.add_member(:bundle_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BundleType, location_name: "BundleType"))
    WorkspaceBundle.type = Types::WorkspaceBundle
    WorkspaceBundleState.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    WorkspaceBundleState.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    WorkspaceBundleState.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    WorkspaceConnectionStatus.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceId, location_name: "WorkspaceId"))
    WorkspaceConnectionStatus.add_member(:connection_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionState, location_name: "ConnectionState"))
    WorkspaceConnectionStatus.add_member(:connection_state_check_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "ConnectionStateCheckTimestamp"))
    WorkspaceConnectionStatus.add_member(:last_known_user_connection_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "LastKnownUserConnectionTimestamp"))
    WorkspaceConnectionStatus.type = Types::WorkspaceConnectionStatus
    WorkspaceConnectionStatusList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceConnectionStatus)
    WorkspaceCreationProperties.add_member(:enable_internet_access, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, location_name: "EnableInternetAccess"))
    WorkspaceCreationProperties.add_member(:default_ou, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultOu, location_name: "DefaultOu"))
    WorkspaceCreationProperties.add_member(:custom_security_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupId, location_name: "CustomSecurityGroupId"))
    WorkspaceCreationProperties.add_member(:user_enabled_as_local_administrator, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, location_name: "UserEnabledAsLocalAdministrator"))
    WorkspaceCreationProperties.add_member(:enable_maintenance_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, location_name: "EnableMaintenanceMode"))
    WorkspaceCreationProperties.add_member(:instance_iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, location_name: "InstanceIamRoleArn"))
    WorkspaceCreationProperties.type = Types::WorkspaceCreationProperties
    WorkspaceDirectory.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, location_name: "DirectoryId"))
    WorkspaceDirectory.add_member(:alias, ::Smithy::Schema::Shapes::MemberShape.new(target: Alias, location_name: "Alias"))
    WorkspaceDirectory.add_member(:directory_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryName, location_name: "DirectoryName"))
    WorkspaceDirectory.add_member(:registration_code, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistrationCode, location_name: "RegistrationCode"))
    WorkspaceDirectory.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIds, location_name: "SubnetIds"))
    WorkspaceDirectory.add_member(:dns_ip_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsIpAddresses, location_name: "DnsIpAddresses"))
    WorkspaceDirectory.add_member(:customer_user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserName, location_name: "CustomerUserName"))
    WorkspaceDirectory.add_member(:iam_role_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, location_name: "IamRoleId"))
    WorkspaceDirectory.add_member(:directory_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceDirectoryType, location_name: "DirectoryType"))
    WorkspaceDirectory.add_member(:workspace_security_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupId, location_name: "WorkspaceSecurityGroupId"))
    WorkspaceDirectory.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceDirectoryState, location_name: "State"))
    WorkspaceDirectory.add_member(:workspace_creation_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultWorkspaceCreationProperties, location_name: "WorkspaceCreationProperties"))
    WorkspaceDirectory.add_member(:ip_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: IpGroupIdList, location_name: "ipGroupIds"))
    WorkspaceDirectory.add_member(:workspace_access_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceAccessProperties, location_name: "WorkspaceAccessProperties"))
    WorkspaceDirectory.add_member(:tenancy, ::Smithy::Schema::Shapes::MemberShape.new(target: Tenancy, location_name: "Tenancy"))
    WorkspaceDirectory.add_member(:selfservice_permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: SelfservicePermissions, location_name: "SelfservicePermissions"))
    WorkspaceDirectory.add_member(:saml_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: SamlProperties, location_name: "SamlProperties"))
    WorkspaceDirectory.add_member(:certificate_based_auth_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateBasedAuthProperties, location_name: "CertificateBasedAuthProperties"))
    WorkspaceDirectory.add_member(:endpoint_encryption_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointEncryptionMode, location_name: "EndpointEncryptionMode"))
    WorkspaceDirectory.add_member(:microsoft_entra_config, ::Smithy::Schema::Shapes::MemberShape.new(target: MicrosoftEntraConfig, location_name: "MicrosoftEntraConfig"))
    WorkspaceDirectory.add_member(:workspace_directory_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceDirectoryName, location_name: "WorkspaceDirectoryName"))
    WorkspaceDirectory.add_member(:workspace_directory_description, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceDirectoryDescription, location_name: "WorkspaceDirectoryDescription"))
    WorkspaceDirectory.add_member(:user_identity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: UserIdentityType, location_name: "UserIdentityType"))
    WorkspaceDirectory.add_member(:workspace_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceType, location_name: "WorkspaceType"))
    WorkspaceDirectory.add_member(:idc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: IDCConfig, location_name: "IDCConfig"))
    WorkspaceDirectory.add_member(:active_directory_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ActiveDirectoryConfig, location_name: "ActiveDirectoryConfig"))
    WorkspaceDirectory.add_member(:streaming_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamingProperties, location_name: "StreamingProperties"))
    WorkspaceDirectory.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "ErrorMessage"))
    WorkspaceDirectory.type = Types::WorkspaceDirectory
    WorkspaceDirectoryNameList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceDirectoryName)
    WorkspaceDirectoryState.add_member(:registering, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REGISTERING", traits: {"smithy.api#enumValue" => "REGISTERING"}))
    WorkspaceDirectoryState.add_member(:registered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REGISTERED", traits: {"smithy.api#enumValue" => "REGISTERED"}))
    WorkspaceDirectoryState.add_member(:deregistering, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEREGISTERING", traits: {"smithy.api#enumValue" => "DEREGISTERING"}))
    WorkspaceDirectoryState.add_member(:deregistered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEREGISTERED", traits: {"smithy.api#enumValue" => "DEREGISTERED"}))
    WorkspaceDirectoryState.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    WorkspaceDirectoryType.add_member(:simple_ad, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SIMPLE_AD", traits: {"smithy.api#enumValue" => "SIMPLE_AD"}))
    WorkspaceDirectoryType.add_member(:ad_connector, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AD_CONNECTOR", traits: {"smithy.api#enumValue" => "AD_CONNECTOR"}))
    WorkspaceDirectoryType.add_member(:customer_managed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CUSTOMER_MANAGED", traits: {"smithy.api#enumValue" => "CUSTOMER_MANAGED"}))
    WorkspaceDirectoryType.add_member(:aws_iam_identity_center, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_IAM_IDENTITY_CENTER", traits: {"smithy.api#enumValue" => "AWS_IAM_IDENTITY_CENTER"}))
    WorkspaceIdList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceId)
    WorkspaceImage.add_member(:image_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceImageId, location_name: "ImageId"))
    WorkspaceImage.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceImageName, location_name: "Name"))
    WorkspaceImage.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceImageDescription, location_name: "Description"))
    WorkspaceImage.add_member(:operating_system, ::Smithy::Schema::Shapes::MemberShape.new(target: OperatingSystem, location_name: "OperatingSystem"))
    WorkspaceImage.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceImageState, location_name: "State"))
    WorkspaceImage.add_member(:required_tenancy, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceImageRequiredTenancy, location_name: "RequiredTenancy"))
    WorkspaceImage.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceImageErrorCode, location_name: "ErrorCode"))
    WorkspaceImage.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "ErrorMessage"))
    WorkspaceImage.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "Created"))
    WorkspaceImage.add_member(:owner_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccount, location_name: "OwnerAccountId"))
    WorkspaceImage.add_member(:updates, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateResult, location_name: "Updates"))
    WorkspaceImage.add_member(:error_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetailsList, location_name: "ErrorDetails"))
    WorkspaceImage.type = Types::WorkspaceImage
    WorkspaceImageErrorDetailCode.add_member(:outdated_powershell_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OUTDATED_POWERSHELL_VERSION", traits: {"smithy.api#enumValue" => "OutdatedPowershellVersion"}))
    WorkspaceImageErrorDetailCode.add_member(:office_installed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OFFICE_INSTALLED", traits: {"smithy.api#enumValue" => "OfficeInstalled"}))
    WorkspaceImageErrorDetailCode.add_member(:pcoip_agent_installed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PCOIP_AGENT_INSTALLED", traits: {"smithy.api#enumValue" => "PCoIPAgentInstalled"}))
    WorkspaceImageErrorDetailCode.add_member(:windows_updates_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WINDOWS_UPDATES_ENABLED", traits: {"smithy.api#enumValue" => "WindowsUpdatesEnabled"}))
    WorkspaceImageErrorDetailCode.add_member(:auto_mount_disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AUTO_MOUNT_DISABLED", traits: {"smithy.api#enumValue" => "AutoMountDisabled"}))
    WorkspaceImageErrorDetailCode.add_member(:workspaces_byol_account_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WORKSPACES_BYOL_ACCOUNT_NOT_FOUND", traits: {"smithy.api#enumValue" => "WorkspacesBYOLAccountNotFound"}))
    WorkspaceImageErrorDetailCode.add_member(:workspaces_byol_account_disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WORKSPACES_BYOL_ACCOUNT_DISABLED", traits: {"smithy.api#enumValue" => "WorkspacesBYOLAccountDisabled"}))
    WorkspaceImageErrorDetailCode.add_member(:dhcp_disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DHCP_DISABLED", traits: {"smithy.api#enumValue" => "DHCPDisabled"}))
    WorkspaceImageErrorDetailCode.add_member(:disk_free_space, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISK_FREE_SPACE", traits: {"smithy.api#enumValue" => "DiskFreeSpace"}))
    WorkspaceImageErrorDetailCode.add_member(:additional_drives_attached, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ADDITIONAL_DRIVES_ATTACHED", traits: {"smithy.api#enumValue" => "AdditionalDrivesAttached"}))
    WorkspaceImageErrorDetailCode.add_member(:os_not_supported, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OS_NOT_SUPPORTED", traits: {"smithy.api#enumValue" => "OSNotSupported"}))
    WorkspaceImageErrorDetailCode.add_member(:domain_joined, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DOMAIN_JOINED", traits: {"smithy.api#enumValue" => "DomainJoined"}))
    WorkspaceImageErrorDetailCode.add_member(:azure_domain_joined, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AZURE_DOMAIN_JOINED", traits: {"smithy.api#enumValue" => "AzureDomainJoined"}))
    WorkspaceImageErrorDetailCode.add_member(:firewall_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FIREWALL_ENABLED", traits: {"smithy.api#enumValue" => "FirewallEnabled"}))
    WorkspaceImageErrorDetailCode.add_member(:vmware_tools_installed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VMWARE_TOOLS_INSTALLED", traits: {"smithy.api#enumValue" => "VMWareToolsInstalled"}))
    WorkspaceImageErrorDetailCode.add_member(:disk_size_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISK_SIZE_EXCEEDED", traits: {"smithy.api#enumValue" => "DiskSizeExceeded"}))
    WorkspaceImageErrorDetailCode.add_member(:incompatible_partitioning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INCOMPATIBLE_PARTITIONING", traits: {"smithy.api#enumValue" => "IncompatiblePartitioning"}))
    WorkspaceImageErrorDetailCode.add_member(:pending_reboot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING_REBOOT", traits: {"smithy.api#enumValue" => "PendingReboot"}))
    WorkspaceImageErrorDetailCode.add_member(:auto_logon_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AUTO_LOGON_ENABLED", traits: {"smithy.api#enumValue" => "AutoLogonEnabled"}))
    WorkspaceImageErrorDetailCode.add_member(:realtime_universal_disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REALTIME_UNIVERSAL_DISABLED", traits: {"smithy.api#enumValue" => "RealTimeUniversalDisabled"}))
    WorkspaceImageErrorDetailCode.add_member(:multiple_boot_partition, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MULTIPLE_BOOT_PARTITION", traits: {"smithy.api#enumValue" => "MultipleBootPartition"}))
    WorkspaceImageErrorDetailCode.add_member(:sixty_four_bit_os, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SIXTY_FOUR_BIT_OS", traits: {"smithy.api#enumValue" => "Requires64BitOS"}))
    WorkspaceImageErrorDetailCode.add_member(:zero_rearm_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ZERO_REARM_COUNT", traits: {"smithy.api#enumValue" => "ZeroRearmCount"}))
    WorkspaceImageErrorDetailCode.add_member(:in_place_upgrade, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PLACE_UPGRADE", traits: {"smithy.api#enumValue" => "InPlaceUpgrade"}))
    WorkspaceImageErrorDetailCode.add_member(:anti_virus_installed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ANTI_VIRUS_INSTALLED", traits: {"smithy.api#enumValue" => "AntiVirusInstalled"}))
    WorkspaceImageErrorDetailCode.add_member(:uefi_not_supported, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UEFI_NOT_SUPPORTED", traits: {"smithy.api#enumValue" => "UEFINotSupported"}))
    WorkspaceImageErrorDetailCode.add_member(:unknown_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNKNOWN_ERROR", traits: {"smithy.api#enumValue" => "UnknownError"}))
    WorkspaceImageErrorDetailCode.add_member(:appx_packages_installed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "APPX_PACKAGES_INSTALLED", traits: {"smithy.api#enumValue" => "AppXPackagesInstalled"}))
    WorkspaceImageErrorDetailCode.add_member(:reserved_storage_in_use, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RESERVED_STORAGE_IN_USE", traits: {"smithy.api#enumValue" => "ReservedStorageInUse"}))
    WorkspaceImageErrorDetailCode.add_member(:additional_drives_present, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ADDITIONAL_DRIVES_PRESENT", traits: {"smithy.api#enumValue" => "AdditionalDrivesPresent"}))
    WorkspaceImageErrorDetailCode.add_member(:windows_updates_required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WINDOWS_UPDATES_REQUIRED", traits: {"smithy.api#enumValue" => "WindowsUpdatesRequired"}))
    WorkspaceImageErrorDetailCode.add_member(:sysprep_file_missing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SYSPREP_FILE_MISSING", traits: {"smithy.api#enumValue" => "SysPrepFileMissing"}))
    WorkspaceImageErrorDetailCode.add_member(:user_profile_missing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "USER_PROFILE_MISSING", traits: {"smithy.api#enumValue" => "UserProfileMissing"}))
    WorkspaceImageErrorDetailCode.add_member(:insufficient_disk_space, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INSUFFICIENT_DISK_SPACE", traits: {"smithy.api#enumValue" => "InsufficientDiskSpace"}))
    WorkspaceImageErrorDetailCode.add_member(:environment_variables_path_missing_entries, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENVIRONMENT_VARIABLES_PATH_MISSING_ENTRIES", traits: {"smithy.api#enumValue" => "EnvironmentVariablesPathMissingEntries"}))
    WorkspaceImageErrorDetailCode.add_member(:domain_account_services_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DOMAIN_ACCOUNT_SERVICES_FOUND", traits: {"smithy.api#enumValue" => "DomainAccountServicesFound"}))
    WorkspaceImageErrorDetailCode.add_member(:invalid_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INVALID_IP", traits: {"smithy.api#enumValue" => "InvalidIp"}))
    WorkspaceImageErrorDetailCode.add_member(:remote_desktop_services_disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REMOTE_DESKTOP_SERVICES_DISABLED", traits: {"smithy.api#enumValue" => "RemoteDesktopServicesDisabled"}))
    WorkspaceImageErrorDetailCode.add_member(:windows_modules_installer_disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WINDOWS_MODULES_INSTALLER_DISABLED", traits: {"smithy.api#enumValue" => "WindowsModulesInstallerDisabled"}))
    WorkspaceImageErrorDetailCode.add_member(:amazon_ssm_agent_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AMAZON_SSM_AGENT_ENABLED", traits: {"smithy.api#enumValue" => "AmazonSsmAgentEnabled"}))
    WorkspaceImageErrorDetailCode.add_member(:unsupported_security_protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNSUPPORTED_SECURITY_PROTOCOL", traits: {"smithy.api#enumValue" => "UnsupportedSecurityProtocol"}))
    WorkspaceImageErrorDetailCode.add_member(:multiple_user_profiles, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MULTIPLE_USER_PROFILES", traits: {"smithy.api#enumValue" => "MultipleUserProfiles"}))
    WorkspaceImageErrorDetailCode.add_member(:staged_appx_package, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STAGED_APPX_PACKAGE", traits: {"smithy.api#enumValue" => "StagedAppxPackage"}))
    WorkspaceImageErrorDetailCode.add_member(:unsupported_os_upgrade, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNSUPPORTED_OS_UPGRADE", traits: {"smithy.api#enumValue" => "UnsupportedOsUpgrade"}))
    WorkspaceImageErrorDetailCode.add_member(:insufficient_rearm_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INSUFFICIENT_REARM_COUNT", traits: {"smithy.api#enumValue" => "InsufficientRearmCount"}))
    WorkspaceImageErrorDetailCode.add_member(:incompatible_protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INCOMPATIBLE_PROTOCOL", traits: {"smithy.api#enumValue" => "ProtocolOSIncompatibility"}))
    WorkspaceImageErrorDetailCode.add_member(:incompatible_memory_integrity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INCOMPATIBLE_MEMORY_INTEGRITY", traits: {"smithy.api#enumValue" => "MemoryIntegrityIncompatibility"}))
    WorkspaceImageErrorDetailCode.add_member(:restricted_drive_letter, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RESTRICTED_DRIVE_LETTER", traits: {"smithy.api#enumValue" => "RestrictedDriveLetterInUse"}))
    WorkspaceImageIdList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceImageId)
    WorkspaceImageIngestionProcess.add_member(:byol_regular, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BYOL_REGULAR", traits: {"smithy.api#enumValue" => "BYOL_REGULAR"}))
    WorkspaceImageIngestionProcess.add_member(:byol_graphics, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BYOL_GRAPHICS", traits: {"smithy.api#enumValue" => "BYOL_GRAPHICS"}))
    WorkspaceImageIngestionProcess.add_member(:byol_graphicspro, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BYOL_GRAPHICSPRO", traits: {"smithy.api#enumValue" => "BYOL_GRAPHICSPRO"}))
    WorkspaceImageIngestionProcess.add_member(:byol_graphics_g4_dn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BYOL_GRAPHICS_G4DN", traits: {"smithy.api#enumValue" => "BYOL_GRAPHICS_G4DN"}))
    WorkspaceImageIngestionProcess.add_member(:byol_regular_wsp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BYOL_REGULAR_WSP", traits: {"smithy.api#enumValue" => "BYOL_REGULAR_WSP"}))
    WorkspaceImageIngestionProcess.add_member(:byol_graphics_g4_dn_wsp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BYOL_GRAPHICS_G4DN_WSP", traits: {"smithy.api#enumValue" => "BYOL_GRAPHICS_G4DN_WSP"}))
    WorkspaceImageIngestionProcess.add_member(:byol_regular_byop, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BYOL_REGULAR_BYOP", traits: {"smithy.api#enumValue" => "BYOL_REGULAR_BYOP"}))
    WorkspaceImageIngestionProcess.add_member(:byol_graphics_g4_dn_byop, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BYOL_GRAPHICS_G4DN_BYOP", traits: {"smithy.api#enumValue" => "BYOL_GRAPHICS_G4DN_BYOP"}))
    WorkspaceImageList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceImage)
    WorkspaceImageRequiredTenancy.add_member(:default, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEFAULT", traits: {"smithy.api#enumValue" => "DEFAULT"}))
    WorkspaceImageRequiredTenancy.add_member(:dedicated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEDICATED", traits: {"smithy.api#enumValue" => "DEDICATED"}))
    WorkspaceImageState.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    WorkspaceImageState.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    WorkspaceImageState.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    WorkspaceList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Workspace)
    WorkspaceProperties.add_member(:running_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: RunningMode, location_name: "RunningMode"))
    WorkspaceProperties.add_member(:running_mode_auto_stop_timeout_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: RunningModeAutoStopTimeoutInMinutes, location_name: "RunningModeAutoStopTimeoutInMinutes"))
    WorkspaceProperties.add_member(:root_volume_size_gib, ::Smithy::Schema::Shapes::MemberShape.new(target: RootVolumeSizeGib, location_name: "RootVolumeSizeGib"))
    WorkspaceProperties.add_member(:user_volume_size_gib, ::Smithy::Schema::Shapes::MemberShape.new(target: UserVolumeSizeGib, location_name: "UserVolumeSizeGib"))
    WorkspaceProperties.add_member(:compute_type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Compute, location_name: "ComputeTypeName"))
    WorkspaceProperties.add_member(:protocols, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtocolList, location_name: "Protocols"))
    WorkspaceProperties.add_member(:operating_system_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OperatingSystemName, location_name: "OperatingSystemName"))
    WorkspaceProperties.add_member(:global_accelerator, ::Smithy::Schema::Shapes::MemberShape.new(target: GlobalAcceleratorForWorkSpace, location_name: "GlobalAccelerator"))
    WorkspaceProperties.type = Types::WorkspaceProperties
    WorkspaceRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, location_name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    WorkspaceRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserName, location_name: "UserName", traits: {"smithy.api#required" => {}}))
    WorkspaceRequest.add_member(:bundle_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BundleId, location_name: "BundleId", traits: {"smithy.api#required" => {}}))
    WorkspaceRequest.add_member(:volume_encryption_key, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeEncryptionKey, location_name: "VolumeEncryptionKey"))
    WorkspaceRequest.add_member(:user_volume_encryption_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, location_name: "UserVolumeEncryptionEnabled"))
    WorkspaceRequest.add_member(:root_volume_encryption_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, location_name: "RootVolumeEncryptionEnabled"))
    WorkspaceRequest.add_member(:workspace_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceProperties, location_name: "WorkspaceProperties"))
    WorkspaceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    WorkspaceRequest.add_member(:workspace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceName, location_name: "WorkspaceName"))
    WorkspaceRequest.type = Types::WorkspaceRequest
    WorkspaceRequestList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceRequest)
    WorkspaceResourceAssociation.add_member(:associated_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "AssociatedResourceId"))
    WorkspaceResourceAssociation.add_member(:associated_resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkSpaceAssociatedResourceType, location_name: "AssociatedResourceType"))
    WorkspaceResourceAssociation.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "Created"))
    WorkspaceResourceAssociation.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "LastUpdatedTime"))
    WorkspaceResourceAssociation.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationState, location_name: "State"))
    WorkspaceResourceAssociation.add_member(:state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationStateReason, location_name: "StateReason"))
    WorkspaceResourceAssociation.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceId, location_name: "WorkspaceId"))
    WorkspaceResourceAssociation.type = Types::WorkspaceResourceAssociation
    WorkspaceResourceAssociationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceResourceAssociation)
    WorkspaceState.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    WorkspaceState.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    WorkspaceState.add_member(:impaired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IMPAIRED", traits: {"smithy.api#enumValue" => "IMPAIRED"}))
    WorkspaceState.add_member(:unhealthy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNHEALTHY", traits: {"smithy.api#enumValue" => "UNHEALTHY"}))
    WorkspaceState.add_member(:rebooting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REBOOTING", traits: {"smithy.api#enumValue" => "REBOOTING"}))
    WorkspaceState.add_member(:starting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STARTING", traits: {"smithy.api#enumValue" => "STARTING"}))
    WorkspaceState.add_member(:rebuilding, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REBUILDING", traits: {"smithy.api#enumValue" => "REBUILDING"}))
    WorkspaceState.add_member(:restoring, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RESTORING", traits: {"smithy.api#enumValue" => "RESTORING"}))
    WorkspaceState.add_member(:maintenance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MAINTENANCE", traits: {"smithy.api#enumValue" => "MAINTENANCE"}))
    WorkspaceState.add_member(:admin_maintenance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ADMIN_MAINTENANCE", traits: {"smithy.api#enumValue" => "ADMIN_MAINTENANCE"}))
    WorkspaceState.add_member(:terminating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TERMINATING", traits: {"smithy.api#enumValue" => "TERMINATING"}))
    WorkspaceState.add_member(:terminated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TERMINATED", traits: {"smithy.api#enumValue" => "TERMINATED"}))
    WorkspaceState.add_member(:suspended, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUSPENDED", traits: {"smithy.api#enumValue" => "SUSPENDED"}))
    WorkspaceState.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    WorkspaceState.add_member(:stopping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STOPPING", traits: {"smithy.api#enumValue" => "STOPPING"}))
    WorkspaceState.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    WorkspaceState.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    WorkspaceType.add_member(:personal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PERSONAL", traits: {"smithy.api#enumValue" => "PERSONAL"}))
    WorkspaceType.add_member(:pools, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "POOLS", traits: {"smithy.api#enumValue" => "POOLS"}))
    WorkspacesDefaultRoleNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "message"))
    WorkspacesDefaultRoleNotFoundException.type = Types::WorkspacesDefaultRoleNotFoundException
    WorkspacesIpGroup.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IpGroupId, location_name: "groupId"))
    WorkspacesIpGroup.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IpGroupName, location_name: "groupName"))
    WorkspacesIpGroup.add_member(:group_desc, ::Smithy::Schema::Shapes::MemberShape.new(target: IpGroupDesc, location_name: "groupDesc"))
    WorkspacesIpGroup.add_member(:user_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: IpRuleList, location_name: "userRules"))
    WorkspacesIpGroup.type = Types::WorkspacesIpGroup
    WorkspacesIpGroupsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspacesIpGroup)
    WorkspacesPool.add_member(:pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspacesPoolId, location_name: "PoolId", traits: {"smithy.api#required" => {}}))
    WorkspacesPool.add_member(:pool_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, location_name: "PoolArn", traits: {"smithy.api#required" => {}}))
    WorkspacesPool.add_member(:capacity_status, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityStatus, location_name: "CapacityStatus", traits: {"smithy.api#required" => {}}))
    WorkspacesPool.add_member(:pool_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspacesPoolName, location_name: "PoolName", traits: {"smithy.api#required" => {}}))
    WorkspacesPool.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateDescription, location_name: "Description"))
    WorkspacesPool.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspacesPoolState, location_name: "State", traits: {"smithy.api#required" => {}}))
    WorkspacesPool.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    WorkspacesPool.add_member(:bundle_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BundleId, location_name: "BundleId", traits: {"smithy.api#required" => {}}))
    WorkspacesPool.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, location_name: "DirectoryId", traits: {"smithy.api#required" => {}}))
    WorkspacesPool.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspacesPoolErrors, location_name: "Errors"))
    WorkspacesPool.add_member(:application_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationSettingsResponse, location_name: "ApplicationSettings"))
    WorkspacesPool.add_member(:timeout_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeoutSettings, location_name: "TimeoutSettings"))
    WorkspacesPool.add_member(:running_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolsRunningMode, location_name: "RunningMode", traits: {"smithy.api#default" => "AUTO_STOP", "smithy.api#required" => {}}))
    WorkspacesPool.type = Types::WorkspacesPool
    WorkspacesPoolError.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspacesPoolErrorCode, location_name: "ErrorCode"))
    WorkspacesPoolError.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "ErrorMessage"))
    WorkspacesPoolError.type = Types::WorkspacesPoolError
    WorkspacesPoolErrorCode.add_member(:iam_service_role_is_missing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IAM_SERVICE_ROLE_IS_MISSING", traits: {"smithy.api#enumValue" => "IAM_SERVICE_ROLE_IS_MISSING"}))
    WorkspacesPoolErrorCode.add_member(:iam_service_role_missing_eni_describe_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", traits: {"smithy.api#enumValue" => "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION"}))
    WorkspacesPoolErrorCode.add_member(:iam_service_role_missing_eni_create_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", traits: {"smithy.api#enumValue" => "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION"}))
    WorkspacesPoolErrorCode.add_member(:iam_service_role_missing_eni_delete_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", traits: {"smithy.api#enumValue" => "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION"}))
    WorkspacesPoolErrorCode.add_member(:network_interface_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NETWORK_INTERFACE_LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "NETWORK_INTERFACE_LIMIT_EXCEEDED"}))
    WorkspacesPoolErrorCode.add_member(:internal_service_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INTERNAL_SERVICE_ERROR", traits: {"smithy.api#enumValue" => "INTERNAL_SERVICE_ERROR"}))
    WorkspacesPoolErrorCode.add_member(:machine_role_is_missing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MACHINE_ROLE_IS_MISSING", traits: {"smithy.api#enumValue" => "MACHINE_ROLE_IS_MISSING"}))
    WorkspacesPoolErrorCode.add_member(:sts_disabled_in_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STS_DISABLED_IN_REGION", traits: {"smithy.api#enumValue" => "STS_DISABLED_IN_REGION"}))
    WorkspacesPoolErrorCode.add_member(:subnet_has_insufficient_ip_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", traits: {"smithy.api#enumValue" => "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES"}))
    WorkspacesPoolErrorCode.add_member(:iam_service_role_missing_describe_subnet_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", traits: {"smithy.api#enumValue" => "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION"}))
    WorkspacesPoolErrorCode.add_member(:subnet_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUBNET_NOT_FOUND", traits: {"smithy.api#enumValue" => "SUBNET_NOT_FOUND"}))
    WorkspacesPoolErrorCode.add_member(:image_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IMAGE_NOT_FOUND", traits: {"smithy.api#enumValue" => "IMAGE_NOT_FOUND"}))
    WorkspacesPoolErrorCode.add_member(:invalid_subnet_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INVALID_SUBNET_CONFIGURATION", traits: {"smithy.api#enumValue" => "INVALID_SUBNET_CONFIGURATION"}))
    WorkspacesPoolErrorCode.add_member(:security_groups_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SECURITY_GROUPS_NOT_FOUND", traits: {"smithy.api#enumValue" => "SECURITY_GROUPS_NOT_FOUND"}))
    WorkspacesPoolErrorCode.add_member(:igw_not_attached, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IGW_NOT_ATTACHED", traits: {"smithy.api#enumValue" => "IGW_NOT_ATTACHED"}))
    WorkspacesPoolErrorCode.add_member(:iam_service_role_missing_describe_security_groups_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", traits: {"smithy.api#enumValue" => "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION"}))
    WorkspacesPoolErrorCode.add_member(:workspaces_pool_stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WORKSPACES_POOL_STOPPED", traits: {"smithy.api#enumValue" => "WORKSPACES_POOL_STOPPED"}))
    WorkspacesPoolErrorCode.add_member(:workspaces_pool_instance_provisioning_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WORKSPACES_POOL_INSTANCE_PROVISIONING_FAILURE", traits: {"smithy.api#enumValue" => "WORKSPACES_POOL_INSTANCE_PROVISIONING_FAILURE"}))
    WorkspacesPoolErrorCode.add_member(:domain_join_error_file_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND"}))
    WorkspacesPoolErrorCode.add_member(:domain_join_error_access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DOMAIN_JOIN_ERROR_ACCESS_DENIED", traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_ERROR_ACCESS_DENIED"}))
    WorkspacesPoolErrorCode.add_member(:domain_join_error_logon_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DOMAIN_JOIN_ERROR_LOGON_FAILURE", traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_ERROR_LOGON_FAILURE"}))
    WorkspacesPoolErrorCode.add_member(:domain_join_error_invalid_parameter, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_ERROR_INVALID_PARAMETER"}))
    WorkspacesPoolErrorCode.add_member(:domain_join_error_more_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DOMAIN_JOIN_ERROR_MORE_DATA", traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_ERROR_MORE_DATA"}))
    WorkspacesPoolErrorCode.add_member(:domain_join_error_no_such_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN"}))
    WorkspacesPoolErrorCode.add_member(:domain_join_error_not_supported, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_ERROR_NOT_SUPPORTED"}))
    WorkspacesPoolErrorCode.add_member(:domain_join_nerr_invalid_workgroup_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME"}))
    WorkspacesPoolErrorCode.add_member(:domain_join_nerr_workstation_not_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED"}))
    WorkspacesPoolErrorCode.add_member(:domain_join_error_ds_machine_account_quota_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED"}))
    WorkspacesPoolErrorCode.add_member(:domain_join_nerr_password_expired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED"}))
    WorkspacesPoolErrorCode.add_member(:domain_join_internal_service_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR", traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"}))
    WorkspacesPoolErrorCode.add_member(:domain_join_error_secret_action_permission_is_missing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DOMAIN_JOIN_ERROR_SECRET_ACTION_PERMISSION_IS_MISSING", traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_ERROR_SECRET_ACTION_PERMISSION_IS_MISSING"}))
    WorkspacesPoolErrorCode.add_member(:domain_join_error_secret_decryption_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DOMAIN_JOIN_ERROR_SECRET_DECRYPTION_FAILURE", traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_ERROR_SECRET_DECRYPTION_FAILURE"}))
    WorkspacesPoolErrorCode.add_member(:domain_join_error_secret_state_invalid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DOMAIN_JOIN_ERROR_SECRET_STATE_INVALID", traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_ERROR_SECRET_STATE_INVALID"}))
    WorkspacesPoolErrorCode.add_member(:domain_join_error_secret_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DOMAIN_JOIN_ERROR_SECRET_NOT_FOUND", traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_ERROR_SECRET_NOT_FOUND"}))
    WorkspacesPoolErrorCode.add_member(:domain_join_error_secret_value_key_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DOMAIN_JOIN_ERROR_SECRET_VALUE_KEY_NOT_FOUND", traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_ERROR_SECRET_VALUE_KEY_NOT_FOUND"}))
    WorkspacesPoolErrorCode.add_member(:domain_join_error_secret_invalid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DOMAIN_JOIN_ERROR_SECRET_INVALID", traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_ERROR_SECRET_INVALID"}))
    WorkspacesPoolErrorCode.add_member(:bundle_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BUNDLE_NOT_FOUND", traits: {"smithy.api#enumValue" => "BUNDLE_NOT_FOUND"}))
    WorkspacesPoolErrorCode.add_member(:directory_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DIRECTORY_NOT_FOUND", traits: {"smithy.api#enumValue" => "DIRECTORY_NOT_FOUND"}))
    WorkspacesPoolErrorCode.add_member(:insufficient_permissions_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INSUFFICIENT_PERMISSIONS_ERROR", traits: {"smithy.api#enumValue" => "INSUFFICIENT_PERMISSIONS_ERROR"}))
    WorkspacesPoolErrorCode.add_member(:default_ou_is_missing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEFAULT_OU_IS_MISSING", traits: {"smithy.api#enumValue" => "DEFAULT_OU_IS_MISSING"}))
    WorkspacesPoolErrors.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspacesPoolError)
    WorkspacesPoolIds.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspacesPoolId)
    WorkspacesPoolSession.add_member(:authentication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationType, location_name: "AuthenticationType"))
    WorkspacesPoolSession.add_member(:connection_state, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionConnectionState, location_name: "ConnectionState"))
    WorkspacesPoolSession.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonUuid, location_name: "SessionId", traits: {"smithy.api#required" => {}}))
    WorkspacesPoolSession.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionInstanceId, location_name: "InstanceId"))
    WorkspacesPoolSession.add_member(:pool_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspacesPoolId, location_name: "PoolId", traits: {"smithy.api#required" => {}}))
    WorkspacesPoolSession.add_member(:expiration_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "ExpirationTime"))
    WorkspacesPoolSession.add_member(:network_access_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkAccessConfiguration, location_name: "NetworkAccessConfiguration"))
    WorkspacesPoolSession.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "StartTime"))
    WorkspacesPoolSession.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspacesPoolUserId, location_name: "UserId", traits: {"smithy.api#required" => {}}))
    WorkspacesPoolSession.type = Types::WorkspacesPoolSession
    WorkspacesPoolSessions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspacesPoolSession)
    WorkspacesPoolState.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    WorkspacesPoolState.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    WorkspacesPoolState.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    WorkspacesPoolState.add_member(:starting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STARTING", traits: {"smithy.api#enumValue" => "STARTING"}))
    WorkspacesPoolState.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    WorkspacesPoolState.add_member(:stopping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STOPPING", traits: {"smithy.api#enumValue" => "STOPPING"}))
    WorkspacesPoolState.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    WorkspacesPools.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspacesPool)

    WorkspacesService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.workspaces#WorkspacesService"
      service.name = "WorkspacesService"
      service.version = "2015-04-08"
      service.traits = {"aws.api#service" => {"sdkId" => "WorkSpaces", "arnNamespace" => "workspaces", "cloudFormationName" => "WorkSpaces", "cloudTrailEventSource" => "workspaces.amazonaws.com", "endpointPrefix" => "workspaces"}, "aws.auth#sigv4" => {"name" => "workspaces"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon WorkSpaces", "smithy.api#xmlNamespace" => {"uri" => "http://workspaces.amazonaws.com/api/v1"}}
      service.add_operation(:accept_account_link_invitation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#AcceptAccountLinkInvitation"
        operation.name = "AcceptAccountLinkInvitation"
        operation.input = AcceptAccountLinkInvitationRequest
        operation.output = AcceptAccountLinkInvitationResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:associate_connection_alias, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#AssociateConnectionAlias"
        operation.name = "AssociateConnectionAlias"
        operation.input = AssociateConnectionAliasRequest
        operation.output = AssociateConnectionAliasResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << InvalidResourceStateException
        operation.errors << OperationNotSupportedException
        operation.errors << ResourceAssociatedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:associate_ip_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#AssociateIpGroups"
        operation.name = "AssociateIpGroups"
        operation.input = AssociateIpGroupsRequest
        operation.output = AssociateIpGroupsResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << InvalidResourceStateException
        operation.errors << OperationNotSupportedException
        operation.errors << ResourceLimitExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:associate_workspace_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#AssociateWorkspaceApplication"
        operation.name = "AssociateWorkspaceApplication"
        operation.input = AssociateWorkspaceApplicationRequest
        operation.output = AssociateWorkspaceApplicationResult
        operation.errors << AccessDeniedException
        operation.errors << ApplicationNotSupportedException
        operation.errors << ComputeNotCompatibleException
        operation.errors << IncompatibleApplicationsException
        operation.errors << InvalidParameterValuesException
        operation.errors << OperatingSystemNotCompatibleException
        operation.errors << OperationNotSupportedException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:authorize_ip_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#AuthorizeIpRules"
        operation.name = "AuthorizeIpRules"
        operation.input = AuthorizeIpRulesRequest
        operation.output = AuthorizeIpRulesResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << InvalidResourceStateException
        operation.errors << ResourceLimitExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:copy_workspace_image, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#CopyWorkspaceImage"
        operation.name = "CopyWorkspaceImage"
        operation.input = CopyWorkspaceImageRequest
        operation.output = CopyWorkspaceImageResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << OperationNotSupportedException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceLimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ResourceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:create_account_link_invitation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#CreateAccountLinkInvitation"
        operation.name = "CreateAccountLinkInvitation"
        operation.input = CreateAccountLinkInvitationRequest
        operation.output = CreateAccountLinkInvitationResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_connect_client_add_in, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#CreateConnectClientAddIn"
        operation.name = "CreateConnectClientAddIn"
        operation.input = CreateConnectClientAddInRequest
        operation.output = CreateConnectClientAddInResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceCreationFailedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:create_connection_alias, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#CreateConnectionAlias"
        operation.name = "CreateConnectionAlias"
        operation.input = CreateConnectionAliasRequest
        operation.output = CreateConnectionAliasResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << InvalidResourceStateException
        operation.errors << OperationNotSupportedException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceLimitExceededException
        operation.traits = {}
      end)
      service.add_operation(:create_ip_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#CreateIpGroup"
        operation.name = "CreateIpGroup"
        operation.input = CreateIpGroupRequest
        operation.output = CreateIpGroupResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceCreationFailedException
        operation.errors << ResourceLimitExceededException
        operation.traits = {}
      end)
      service.add_operation(:create_standby_workspaces, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#CreateStandbyWorkspaces"
        operation.name = "CreateStandbyWorkspaces"
        operation.input = CreateStandbyWorkspacesRequest
        operation.output = CreateStandbyWorkspacesResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << OperationNotSupportedException
        operation.errors << ResourceLimitExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:create_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#CreateTags"
        operation.name = "CreateTags"
        operation.input = CreateTagsRequest
        operation.output = CreateTagsResult
        operation.errors << InvalidParameterValuesException
        operation.errors << ResourceLimitExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:create_updated_workspace_image, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#CreateUpdatedWorkspaceImage"
        operation.name = "CreateUpdatedWorkspaceImage"
        operation.input = CreateUpdatedWorkspaceImageRequest
        operation.output = CreateUpdatedWorkspaceImageResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << InvalidResourceStateException
        operation.errors << OperationNotSupportedException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceLimitExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:create_workspace_bundle, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#CreateWorkspaceBundle"
        operation.name = "CreateWorkspaceBundle"
        operation.input = CreateWorkspaceBundleRequest
        operation.output = CreateWorkspaceBundleResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceLimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ResourceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:create_workspace_image, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#CreateWorkspaceImage"
        operation.name = "CreateWorkspaceImage"
        operation.input = CreateWorkspaceImageRequest
        operation.output = CreateWorkspaceImageResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << InvalidResourceStateException
        operation.errors << OperationNotSupportedException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceLimitExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:create_workspaces, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#CreateWorkspaces"
        operation.name = "CreateWorkspaces"
        operation.input = CreateWorkspacesRequest
        operation.output = CreateWorkspacesResult
        operation.errors << InvalidParameterValuesException
        operation.errors << ResourceLimitExceededException
        operation.traits = {}
      end)
      service.add_operation(:create_workspaces_pool, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#CreateWorkspacesPool"
        operation.name = "CreateWorkspacesPool"
        operation.input = CreateWorkspacesPoolRequest
        operation.output = CreateWorkspacesPoolResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << OperationNotSupportedException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceLimitExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_account_link_invitation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DeleteAccountLinkInvitation"
        operation.name = "DeleteAccountLinkInvitation"
        operation.input = DeleteAccountLinkInvitationRequest
        operation.output = DeleteAccountLinkInvitationResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_client_branding, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DeleteClientBranding"
        operation.name = "DeleteClientBranding"
        operation.input = DeleteClientBrandingRequest
        operation.output = DeleteClientBrandingResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_connect_client_add_in, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DeleteConnectClientAddIn"
        operation.name = "DeleteConnectClientAddIn"
        operation.input = DeleteConnectClientAddInRequest
        operation.output = DeleteConnectClientAddInResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_connection_alias, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DeleteConnectionAlias"
        operation.name = "DeleteConnectionAlias"
        operation.input = DeleteConnectionAliasRequest
        operation.output = DeleteConnectionAliasResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << InvalidResourceStateException
        operation.errors << OperationNotSupportedException
        operation.errors << ResourceAssociatedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_ip_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DeleteIpGroup"
        operation.name = "DeleteIpGroup"
        operation.input = DeleteIpGroupRequest
        operation.output = DeleteIpGroupResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << ResourceAssociatedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DeleteTags"
        operation.name = "DeleteTags"
        operation.input = DeleteTagsRequest
        operation.output = DeleteTagsResult
        operation.errors << InvalidParameterValuesException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_workspace_bundle, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DeleteWorkspaceBundle"
        operation.name = "DeleteWorkspaceBundle"
        operation.input = DeleteWorkspaceBundleRequest
        operation.output = DeleteWorkspaceBundleResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << ResourceAssociatedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_workspace_image, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DeleteWorkspaceImage"
        operation.name = "DeleteWorkspaceImage"
        operation.input = DeleteWorkspaceImageRequest
        operation.output = DeleteWorkspaceImageResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidResourceStateException
        operation.errors << ResourceAssociatedException
        operation.traits = {}
      end)
      service.add_operation(:deploy_workspace_applications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DeployWorkspaceApplications"
        operation.name = "DeployWorkspaceApplications"
        operation.input = DeployWorkspaceApplicationsRequest
        operation.output = DeployWorkspaceApplicationsResult
        operation.errors << AccessDeniedException
        operation.errors << IncompatibleApplicationsException
        operation.errors << InvalidParameterValuesException
        operation.errors << OperationNotSupportedException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:deregister_workspace_directory, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DeregisterWorkspaceDirectory"
        operation.name = "DeregisterWorkspaceDirectory"
        operation.input = DeregisterWorkspaceDirectoryRequest
        operation.output = DeregisterWorkspaceDirectoryResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << InvalidResourceStateException
        operation.errors << OperationNotSupportedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DescribeAccount"
        operation.name = "DescribeAccount"
        operation.input = DescribeAccountRequest
        operation.output = DescribeAccountResult
        operation.errors << AccessDeniedException
        operation.traits = {}
      end)
      service.add_operation(:describe_account_modifications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DescribeAccountModifications"
        operation.name = "DescribeAccountModifications"
        operation.input = DescribeAccountModificationsRequest
        operation.output = DescribeAccountModificationsResult
        operation.errors << AccessDeniedException
        operation.traits = {}
      end)
      service.add_operation(:describe_application_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DescribeApplicationAssociations"
        operation.name = "DescribeApplicationAssociations"
        operation.input = DescribeApplicationAssociationsRequest
        operation.output = DescribeApplicationAssociationsResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << OperationNotSupportedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeApplicationAssociations.new
      end)
      service.add_operation(:describe_applications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DescribeApplications"
        operation.name = "DescribeApplications"
        operation.input = DescribeApplicationsRequest
        operation.output = DescribeApplicationsResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << OperationNotSupportedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeApplications.new
      end)
      service.add_operation(:describe_bundle_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DescribeBundleAssociations"
        operation.name = "DescribeBundleAssociations"
        operation.input = DescribeBundleAssociationsRequest
        operation.output = DescribeBundleAssociationsResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << OperationNotSupportedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_client_branding, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DescribeClientBranding"
        operation.name = "DescribeClientBranding"
        operation.input = DescribeClientBrandingRequest
        operation.output = DescribeClientBrandingResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_client_properties, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DescribeClientProperties"
        operation.name = "DescribeClientProperties"
        operation.input = DescribeClientPropertiesRequest
        operation.output = DescribeClientPropertiesResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_connect_client_add_ins, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DescribeConnectClientAddIns"
        operation.name = "DescribeConnectClientAddIns"
        operation.input = DescribeConnectClientAddInsRequest
        operation.output = DescribeConnectClientAddInsResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_connection_alias_permissions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DescribeConnectionAliasPermissions"
        operation.name = "DescribeConnectionAliasPermissions"
        operation.input = DescribeConnectionAliasPermissionsRequest
        operation.output = DescribeConnectionAliasPermissionsResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << OperationNotSupportedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_connection_aliases, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DescribeConnectionAliases"
        operation.name = "DescribeConnectionAliases"
        operation.input = DescribeConnectionAliasesRequest
        operation.output = DescribeConnectionAliasesResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << OperationNotSupportedException
        operation.traits = {}
      end)
      service.add_operation(:describe_custom_workspace_image_import, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DescribeCustomWorkspaceImageImport"
        operation.name = "DescribeCustomWorkspaceImageImport"
        operation.input = DescribeCustomWorkspaceImageImportRequest
        operation.output = DescribeCustomWorkspaceImageImportResult
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_image_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DescribeImageAssociations"
        operation.name = "DescribeImageAssociations"
        operation.input = DescribeImageAssociationsRequest
        operation.output = DescribeImageAssociationsResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << OperationNotSupportedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_ip_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DescribeIpGroups"
        operation.name = "DescribeIpGroups"
        operation.input = DescribeIpGroupsRequest
        operation.output = DescribeIpGroupsResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.traits = {}
      end)
      service.add_operation(:describe_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DescribeTags"
        operation.name = "DescribeTags"
        operation.input = DescribeTagsRequest
        operation.output = DescribeTagsResult
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_workspace_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DescribeWorkspaceAssociations"
        operation.name = "DescribeWorkspaceAssociations"
        operation.input = DescribeWorkspaceAssociationsRequest
        operation.output = DescribeWorkspaceAssociationsResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << OperationNotSupportedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_workspace_bundles, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DescribeWorkspaceBundles"
        operation.name = "DescribeWorkspaceBundles"
        operation.input = DescribeWorkspaceBundlesRequest
        operation.output = DescribeWorkspaceBundlesResult
        operation.errors << InvalidParameterValuesException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeWorkspaceBundles.new
      end)
      service.add_operation(:describe_workspace_directories, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DescribeWorkspaceDirectories"
        operation.name = "DescribeWorkspaceDirectories"
        operation.input = DescribeWorkspaceDirectoriesRequest
        operation.output = DescribeWorkspaceDirectoriesResult
        operation.errors << InvalidParameterValuesException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeWorkspaceDirectories.new
      end)
      service.add_operation(:describe_workspace_image_permissions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DescribeWorkspaceImagePermissions"
        operation.name = "DescribeWorkspaceImagePermissions"
        operation.input = DescribeWorkspaceImagePermissionsRequest
        operation.output = DescribeWorkspaceImagePermissionsResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_workspace_images, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DescribeWorkspaceImages"
        operation.name = "DescribeWorkspaceImages"
        operation.input = DescribeWorkspaceImagesRequest
        operation.output = DescribeWorkspaceImagesResult
        operation.errors << AccessDeniedException
        operation.traits = {}
      end)
      service.add_operation(:describe_workspace_snapshots, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DescribeWorkspaceSnapshots"
        operation.name = "DescribeWorkspaceSnapshots"
        operation.input = DescribeWorkspaceSnapshotsRequest
        operation.output = DescribeWorkspaceSnapshotsResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_workspaces, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DescribeWorkspaces"
        operation.name = "DescribeWorkspaces"
        operation.input = DescribeWorkspacesRequest
        operation.output = DescribeWorkspacesResult
        operation.errors << InvalidParameterValuesException
        operation.errors << ResourceUnavailableException
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "DescribeWorkspacesSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::DescribeWorkspaces.new
      end)
      service.add_operation(:describe_workspaces_connection_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DescribeWorkspacesConnectionStatus"
        operation.name = "DescribeWorkspacesConnectionStatus"
        operation.input = DescribeWorkspacesConnectionStatusRequest
        operation.output = DescribeWorkspacesConnectionStatusResult
        operation.errors << InvalidParameterValuesException
        operation.traits = {}
      end)
      service.add_operation(:describe_workspaces_pool_sessions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DescribeWorkspacesPoolSessions"
        operation.name = "DescribeWorkspacesPoolSessions"
        operation.input = DescribeWorkspacesPoolSessionsRequest
        operation.output = DescribeWorkspacesPoolSessionsResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_workspaces_pools, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DescribeWorkspacesPools"
        operation.name = "DescribeWorkspacesPools"
        operation.input = DescribeWorkspacesPoolsRequest
        operation.output = DescribeWorkspacesPoolsResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:disassociate_connection_alias, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DisassociateConnectionAlias"
        operation.name = "DisassociateConnectionAlias"
        operation.input = DisassociateConnectionAliasRequest
        operation.output = DisassociateConnectionAliasResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << InvalidResourceStateException
        operation.errors << OperationNotSupportedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:disassociate_ip_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DisassociateIpGroups"
        operation.name = "DisassociateIpGroups"
        operation.input = DisassociateIpGroupsRequest
        operation.output = DisassociateIpGroupsResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << InvalidResourceStateException
        operation.errors << OperationNotSupportedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:disassociate_workspace_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#DisassociateWorkspaceApplication"
        operation.name = "DisassociateWorkspaceApplication"
        operation.input = DisassociateWorkspaceApplicationRequest
        operation.output = DisassociateWorkspaceApplicationResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << OperationNotSupportedException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:get_account_link, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#GetAccountLink"
        operation.name = "GetAccountLink"
        operation.input = GetAccountLinkRequest
        operation.output = GetAccountLinkResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:import_client_branding, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#ImportClientBranding"
        operation.name = "ImportClientBranding"
        operation.input = ImportClientBrandingRequest
        operation.output = ImportClientBrandingResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << ResourceLimitExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:import_custom_workspace_image, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#ImportCustomWorkspaceImage"
        operation.name = "ImportCustomWorkspaceImage"
        operation.input = ImportCustomWorkspaceImageRequest
        operation.output = ImportCustomWorkspaceImageResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << OperationNotSupportedException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceLimitExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:import_workspace_image, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#ImportWorkspaceImage"
        operation.name = "ImportWorkspaceImage"
        operation.input = ImportWorkspaceImageRequest
        operation.output = ImportWorkspaceImageResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << OperationNotSupportedException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceLimitExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:list_account_links, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#ListAccountLinks"
        operation.name = "ListAccountLinks"
        operation.input = ListAccountLinksRequest
        operation.output = ListAccountLinksResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListAccountLinks.new
      end)
      service.add_operation(:list_available_management_cidr_ranges, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#ListAvailableManagementCidrRanges"
        operation.name = "ListAvailableManagementCidrRanges"
        operation.input = ListAvailableManagementCidrRangesRequest
        operation.output = ListAvailableManagementCidrRangesResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.traits = {}
      end)
      service.add_operation(:migrate_workspace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#MigrateWorkspace"
        operation.name = "MigrateWorkspace"
        operation.input = MigrateWorkspaceRequest
        operation.output = MigrateWorkspaceResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << OperationInProgressException
        operation.errors << OperationNotSupportedException
        operation.errors << ResourceNotFoundException
        operation.errors << ResourceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:modify_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#ModifyAccount"
        operation.name = "ModifyAccount"
        operation.input = ModifyAccountRequest
        operation.output = ModifyAccountResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << InvalidResourceStateException
        operation.errors << ResourceNotFoundException
        operation.errors << ResourceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:modify_certificate_based_auth_properties, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#ModifyCertificateBasedAuthProperties"
        operation.name = "ModifyCertificateBasedAuthProperties"
        operation.input = ModifyCertificateBasedAuthPropertiesRequest
        operation.output = ModifyCertificateBasedAuthPropertiesResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << OperationNotSupportedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:modify_client_properties, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#ModifyClientProperties"
        operation.name = "ModifyClientProperties"
        operation.input = ModifyClientPropertiesRequest
        operation.output = ModifyClientPropertiesResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << OperationNotSupportedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:modify_endpoint_encryption_mode, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#ModifyEndpointEncryptionMode"
        operation.name = "ModifyEndpointEncryptionMode"
        operation.input = ModifyEndpointEncryptionModeRequest
        operation.output = ModifyEndpointEncryptionModeResponse
        operation.errors << AccessDeniedException
        operation.errors << OperationNotSupportedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:modify_saml_properties, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#ModifySamlProperties"
        operation.name = "ModifySamlProperties"
        operation.input = ModifySamlPropertiesRequest
        operation.output = ModifySamlPropertiesResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << OperationNotSupportedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:modify_selfservice_permissions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#ModifySelfservicePermissions"
        operation.name = "ModifySelfservicePermissions"
        operation.input = ModifySelfservicePermissionsRequest
        operation.output = ModifySelfservicePermissionsResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << OperationNotSupportedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:modify_streaming_properties, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#ModifyStreamingProperties"
        operation.name = "ModifyStreamingProperties"
        operation.input = ModifyStreamingPropertiesRequest
        operation.output = ModifyStreamingPropertiesResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << OperationNotSupportedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:modify_workspace_access_properties, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#ModifyWorkspaceAccessProperties"
        operation.name = "ModifyWorkspaceAccessProperties"
        operation.input = ModifyWorkspaceAccessPropertiesRequest
        operation.output = ModifyWorkspaceAccessPropertiesResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidParameterValuesException
        operation.errors << OperationNotSupportedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:modify_workspace_creation_properties, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#ModifyWorkspaceCreationProperties"
        operation.name = "ModifyWorkspaceCreationProperties"
        operation.input = ModifyWorkspaceCreationPropertiesRequest
        operation.output = ModifyWorkspaceCreationPropertiesResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << OperationNotSupportedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:modify_workspace_properties, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#ModifyWorkspaceProperties"
        operation.name = "ModifyWorkspaceProperties"
        operation.input = ModifyWorkspacePropertiesRequest
        operation.output = ModifyWorkspacePropertiesResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << InvalidResourceStateException
        operation.errors << OperationInProgressException
        operation.errors << ResourceNotFoundException
        operation.errors << ResourceUnavailableException
        operation.errors << UnsupportedWorkspaceConfigurationException
        operation.traits = {}
      end)
      service.add_operation(:modify_workspace_state, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#ModifyWorkspaceState"
        operation.name = "ModifyWorkspaceState"
        operation.input = ModifyWorkspaceStateRequest
        operation.output = ModifyWorkspaceStateResult
        operation.errors << InvalidParameterValuesException
        operation.errors << InvalidResourceStateException
        operation.errors << OperationNotSupportedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:reboot_workspaces, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#RebootWorkspaces"
        operation.name = "RebootWorkspaces"
        operation.input = RebootWorkspacesRequest
        operation.output = RebootWorkspacesResult
        operation.errors << OperationNotSupportedException
        operation.traits = {}
      end)
      service.add_operation(:rebuild_workspaces, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#RebuildWorkspaces"
        operation.name = "RebuildWorkspaces"
        operation.input = RebuildWorkspacesRequest
        operation.output = RebuildWorkspacesResult
        operation.errors << OperationNotSupportedException
        operation.traits = {}
      end)
      service.add_operation(:register_workspace_directory, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#RegisterWorkspaceDirectory"
        operation.name = "RegisterWorkspaceDirectory"
        operation.input = RegisterWorkspaceDirectoryRequest
        operation.output = RegisterWorkspaceDirectoryResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << InvalidResourceStateException
        operation.errors << OperationNotSupportedException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceLimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << UnsupportedNetworkConfigurationException
        operation.errors << WorkspacesDefaultRoleNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:reject_account_link_invitation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#RejectAccountLinkInvitation"
        operation.name = "RejectAccountLinkInvitation"
        operation.input = RejectAccountLinkInvitationRequest
        operation.output = RejectAccountLinkInvitationResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:restore_workspace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#RestoreWorkspace"
        operation.name = "RestoreWorkspace"
        operation.input = RestoreWorkspaceRequest
        operation.output = RestoreWorkspaceResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << OperationNotSupportedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:revoke_ip_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#RevokeIpRules"
        operation.name = "RevokeIpRules"
        operation.input = RevokeIpRulesRequest
        operation.output = RevokeIpRulesResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << InvalidResourceStateException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:start_workspaces, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#StartWorkspaces"
        operation.name = "StartWorkspaces"
        operation.input = StartWorkspacesRequest
        operation.output = StartWorkspacesResult
        operation.traits = {}
      end)
      service.add_operation(:start_workspaces_pool, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#StartWorkspacesPool"
        operation.name = "StartWorkspacesPool"
        operation.input = StartWorkspacesPoolRequest
        operation.output = StartWorkspacesPoolResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << InvalidResourceStateException
        operation.errors << OperationInProgressException
        operation.errors << OperationNotSupportedException
        operation.errors << ResourceLimitExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:stop_workspaces, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#StopWorkspaces"
        operation.name = "StopWorkspaces"
        operation.input = StopWorkspacesRequest
        operation.output = StopWorkspacesResult
        operation.traits = {}
      end)
      service.add_operation(:stop_workspaces_pool, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#StopWorkspacesPool"
        operation.name = "StopWorkspacesPool"
        operation.input = StopWorkspacesPoolRequest
        operation.output = StopWorkspacesPoolResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << InvalidResourceStateException
        operation.errors << OperationInProgressException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:terminate_workspaces, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#TerminateWorkspaces"
        operation.name = "TerminateWorkspaces"
        operation.input = TerminateWorkspacesRequest
        operation.output = TerminateWorkspacesResult
        operation.traits = {}
      end)
      service.add_operation(:terminate_workspaces_pool, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#TerminateWorkspacesPool"
        operation.name = "TerminateWorkspacesPool"
        operation.input = TerminateWorkspacesPoolRequest
        operation.output = TerminateWorkspacesPoolResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << InvalidResourceStateException
        operation.errors << OperationInProgressException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:terminate_workspaces_pool_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#TerminateWorkspacesPoolSession"
        operation.name = "TerminateWorkspacesPoolSession"
        operation.input = TerminateWorkspacesPoolSessionRequest
        operation.output = TerminateWorkspacesPoolSessionResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << OperationInProgressException
        operation.errors << OperationNotSupportedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:update_connect_client_add_in, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#UpdateConnectClientAddIn"
        operation.name = "UpdateConnectClientAddIn"
        operation.input = UpdateConnectClientAddInRequest
        operation.output = UpdateConnectClientAddInResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:update_connection_alias_permission, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#UpdateConnectionAliasPermission"
        operation.name = "UpdateConnectionAliasPermission"
        operation.input = UpdateConnectionAliasPermissionRequest
        operation.output = UpdateConnectionAliasPermissionResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << InvalidResourceStateException
        operation.errors << OperationNotSupportedException
        operation.errors << ResourceAssociatedException
        operation.errors << ResourceLimitExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:update_rules_of_ip_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#UpdateRulesOfIpGroup"
        operation.name = "UpdateRulesOfIpGroup"
        operation.input = UpdateRulesOfIpGroupRequest
        operation.output = UpdateRulesOfIpGroupResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << InvalidResourceStateException
        operation.errors << ResourceLimitExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:update_workspace_bundle, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#UpdateWorkspaceBundle"
        operation.name = "UpdateWorkspaceBundle"
        operation.input = UpdateWorkspaceBundleRequest
        operation.output = UpdateWorkspaceBundleResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << OperationNotSupportedException
        operation.errors << ResourceNotFoundException
        operation.errors << ResourceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:update_workspace_image_permission, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#UpdateWorkspaceImagePermission"
        operation.name = "UpdateWorkspaceImagePermission"
        operation.input = UpdateWorkspaceImagePermissionRequest
        operation.output = UpdateWorkspaceImagePermissionResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << OperationNotSupportedException
        operation.errors << ResourceNotFoundException
        operation.errors << ResourceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:update_workspaces_pool, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.workspaces#UpdateWorkspacesPool"
        operation.name = "UpdateWorkspacesPool"
        operation.input = UpdateWorkspacesPoolRequest
        operation.output = UpdateWorkspacesPoolResult
        operation.errors << AccessDeniedException
        operation.errors << InvalidParameterValuesException
        operation.errors << InvalidResourceStateException
        operation.errors << OperationInProgressException
        operation.errors << OperationNotSupportedException
        operation.errors << ResourceLimitExceededException
        operation.errors << ResourceNotFoundException
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
