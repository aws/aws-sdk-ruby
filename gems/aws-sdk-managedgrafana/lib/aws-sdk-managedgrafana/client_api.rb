# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ManagedGrafana
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountAccessType = Shapes::StringShape.new(name: 'AccountAccessType')
    AllowedOrganization = Shapes::StringShape.new(name: 'AllowedOrganization')
    AllowedOrganizations = Shapes::ListShape.new(name: 'AllowedOrganizations')
    AssertionAttribute = Shapes::StringShape.new(name: 'AssertionAttribute')
    AssertionAttributes = Shapes::StructureShape.new(name: 'AssertionAttributes')
    AssociateLicenseRequest = Shapes::StructureShape.new(name: 'AssociateLicenseRequest')
    AssociateLicenseResponse = Shapes::StructureShape.new(name: 'AssociateLicenseResponse')
    AuthenticationDescription = Shapes::StructureShape.new(name: 'AuthenticationDescription')
    AuthenticationProviderTypes = Shapes::StringShape.new(name: 'AuthenticationProviderTypes')
    AuthenticationProviders = Shapes::ListShape.new(name: 'AuthenticationProviders')
    AuthenticationSummary = Shapes::StructureShape.new(name: 'AuthenticationSummary')
    AwsSsoAuthentication = Shapes::StructureShape.new(name: 'AwsSsoAuthentication')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateWorkspaceRequest = Shapes::StructureShape.new(name: 'CreateWorkspaceRequest')
    CreateWorkspaceResponse = Shapes::StructureShape.new(name: 'CreateWorkspaceResponse')
    DataSourceType = Shapes::StringShape.new(name: 'DataSourceType')
    DataSourceTypesList = Shapes::ListShape.new(name: 'DataSourceTypesList')
    DeleteWorkspaceRequest = Shapes::StructureShape.new(name: 'DeleteWorkspaceRequest')
    DeleteWorkspaceResponse = Shapes::StructureShape.new(name: 'DeleteWorkspaceResponse')
    DescribeWorkspaceAuthenticationRequest = Shapes::StructureShape.new(name: 'DescribeWorkspaceAuthenticationRequest')
    DescribeWorkspaceAuthenticationResponse = Shapes::StructureShape.new(name: 'DescribeWorkspaceAuthenticationResponse')
    DescribeWorkspaceRequest = Shapes::StructureShape.new(name: 'DescribeWorkspaceRequest')
    DescribeWorkspaceResponse = Shapes::StructureShape.new(name: 'DescribeWorkspaceResponse')
    Description = Shapes::StringShape.new(name: 'Description')
    DisassociateLicenseRequest = Shapes::StructureShape.new(name: 'DisassociateLicenseRequest')
    DisassociateLicenseResponse = Shapes::StructureShape.new(name: 'DisassociateLicenseResponse')
    Endpoint = Shapes::StringShape.new(name: 'Endpoint')
    GrafanaVersion = Shapes::StringShape.new(name: 'GrafanaVersion')
    IamRoleArn = Shapes::StringShape.new(name: 'IamRoleArn')
    IdpMetadata = Shapes::UnionShape.new(name: 'IdpMetadata')
    IdpMetadataUrl = Shapes::StringShape.new(name: 'IdpMetadataUrl')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    LicenseType = Shapes::StringShape.new(name: 'LicenseType')
    ListPermissionsRequest = Shapes::StructureShape.new(name: 'ListPermissionsRequest')
    ListPermissionsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListPermissionsRequestMaxResultsInteger')
    ListPermissionsResponse = Shapes::StructureShape.new(name: 'ListPermissionsResponse')
    ListWorkspacesRequest = Shapes::StructureShape.new(name: 'ListWorkspacesRequest')
    ListWorkspacesRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListWorkspacesRequestMaxResultsInteger')
    ListWorkspacesResponse = Shapes::StructureShape.new(name: 'ListWorkspacesResponse')
    LoginValidityDuration = Shapes::IntegerShape.new(name: 'LoginValidityDuration')
    NotificationDestinationType = Shapes::StringShape.new(name: 'NotificationDestinationType')
    NotificationDestinationsList = Shapes::ListShape.new(name: 'NotificationDestinationsList')
    OrganizationRoleName = Shapes::StringShape.new(name: 'OrganizationRoleName')
    OrganizationalUnit = Shapes::StringShape.new(name: 'OrganizationalUnit')
    OrganizationalUnitList = Shapes::ListShape.new(name: 'OrganizationalUnitList')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    PermissionEntry = Shapes::StructureShape.new(name: 'PermissionEntry')
    PermissionEntryList = Shapes::ListShape.new(name: 'PermissionEntryList')
    PermissionType = Shapes::StringShape.new(name: 'PermissionType')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    Role = Shapes::StringShape.new(name: 'Role')
    RoleValue = Shapes::StringShape.new(name: 'RoleValue')
    RoleValueList = Shapes::ListShape.new(name: 'RoleValueList')
    RoleValues = Shapes::StructureShape.new(name: 'RoleValues')
    SSOClientId = Shapes::StringShape.new(name: 'SSOClientId')
    SamlAuthentication = Shapes::StructureShape.new(name: 'SamlAuthentication')
    SamlConfiguration = Shapes::StructureShape.new(name: 'SamlConfiguration')
    SamlConfigurationStatus = Shapes::StringShape.new(name: 'SamlConfigurationStatus')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SsoId = Shapes::StringShape.new(name: 'SsoId')
    StackSetName = Shapes::StringShape.new(name: 'StackSetName')
    String = Shapes::StringShape.new(name: 'String')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UpdateAction = Shapes::StringShape.new(name: 'UpdateAction')
    UpdateError = Shapes::StructureShape.new(name: 'UpdateError')
    UpdateErrorCodeInteger = Shapes::IntegerShape.new(name: 'UpdateErrorCodeInteger')
    UpdateErrorList = Shapes::ListShape.new(name: 'UpdateErrorList')
    UpdateInstruction = Shapes::StructureShape.new(name: 'UpdateInstruction')
    UpdateInstructionBatch = Shapes::ListShape.new(name: 'UpdateInstructionBatch')
    UpdatePermissionsRequest = Shapes::StructureShape.new(name: 'UpdatePermissionsRequest')
    UpdatePermissionsResponse = Shapes::StructureShape.new(name: 'UpdatePermissionsResponse')
    UpdateWorkspaceAuthenticationRequest = Shapes::StructureShape.new(name: 'UpdateWorkspaceAuthenticationRequest')
    UpdateWorkspaceAuthenticationResponse = Shapes::StructureShape.new(name: 'UpdateWorkspaceAuthenticationResponse')
    UpdateWorkspaceRequest = Shapes::StructureShape.new(name: 'UpdateWorkspaceRequest')
    UpdateWorkspaceResponse = Shapes::StructureShape.new(name: 'UpdateWorkspaceResponse')
    User = Shapes::StructureShape.new(name: 'User')
    UserList = Shapes::ListShape.new(name: 'UserList')
    UserType = Shapes::StringShape.new(name: 'UserType')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    WorkspaceDescription = Shapes::StructureShape.new(name: 'WorkspaceDescription')
    WorkspaceId = Shapes::StringShape.new(name: 'WorkspaceId')
    WorkspaceList = Shapes::ListShape.new(name: 'WorkspaceList')
    WorkspaceName = Shapes::StringShape.new(name: 'WorkspaceName')
    WorkspaceStatus = Shapes::StringShape.new(name: 'WorkspaceStatus')
    WorkspaceSummary = Shapes::StructureShape.new(name: 'WorkspaceSummary')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AllowedOrganizations.member = Shapes::ShapeRef.new(shape: AllowedOrganization)

    AssertionAttributes.add_member(:email, Shapes::ShapeRef.new(shape: AssertionAttribute, location_name: "email"))
    AssertionAttributes.add_member(:groups, Shapes::ShapeRef.new(shape: AssertionAttribute, location_name: "groups"))
    AssertionAttributes.add_member(:login, Shapes::ShapeRef.new(shape: AssertionAttribute, location_name: "login"))
    AssertionAttributes.add_member(:name, Shapes::ShapeRef.new(shape: AssertionAttribute, location_name: "name"))
    AssertionAttributes.add_member(:org, Shapes::ShapeRef.new(shape: AssertionAttribute, location_name: "org"))
    AssertionAttributes.add_member(:role, Shapes::ShapeRef.new(shape: AssertionAttribute, location_name: "role"))
    AssertionAttributes.struct_class = Types::AssertionAttributes

    AssociateLicenseRequest.add_member(:license_type, Shapes::ShapeRef.new(shape: LicenseType, required: true, location: "uri", location_name: "licenseType"))
    AssociateLicenseRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location: "uri", location_name: "workspaceId"))
    AssociateLicenseRequest.struct_class = Types::AssociateLicenseRequest

    AssociateLicenseResponse.add_member(:workspace, Shapes::ShapeRef.new(shape: WorkspaceDescription, required: true, location_name: "workspace"))
    AssociateLicenseResponse.struct_class = Types::AssociateLicenseResponse

    AuthenticationDescription.add_member(:aws_sso, Shapes::ShapeRef.new(shape: AwsSsoAuthentication, location_name: "awsSso"))
    AuthenticationDescription.add_member(:providers, Shapes::ShapeRef.new(shape: AuthenticationProviders, required: true, location_name: "providers"))
    AuthenticationDescription.add_member(:saml, Shapes::ShapeRef.new(shape: SamlAuthentication, location_name: "saml"))
    AuthenticationDescription.struct_class = Types::AuthenticationDescription

    AuthenticationProviders.member = Shapes::ShapeRef.new(shape: AuthenticationProviderTypes)

    AuthenticationSummary.add_member(:providers, Shapes::ShapeRef.new(shape: AuthenticationProviders, required: true, location_name: "providers"))
    AuthenticationSummary.add_member(:saml_configuration_status, Shapes::ShapeRef.new(shape: SamlConfigurationStatus, location_name: "samlConfigurationStatus"))
    AuthenticationSummary.struct_class = Types::AuthenticationSummary

    AwsSsoAuthentication.add_member(:sso_client_id, Shapes::ShapeRef.new(shape: SSOClientId, location_name: "ssoClientId"))
    AwsSsoAuthentication.struct_class = Types::AwsSsoAuthentication

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ConflictException.struct_class = Types::ConflictException

    CreateWorkspaceRequest.add_member(:account_access_type, Shapes::ShapeRef.new(shape: AccountAccessType, required: true, location_name: "accountAccessType"))
    CreateWorkspaceRequest.add_member(:authentication_providers, Shapes::ShapeRef.new(shape: AuthenticationProviders, required: true, location_name: "authenticationProviders"))
    CreateWorkspaceRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateWorkspaceRequest.add_member(:organization_role_name, Shapes::ShapeRef.new(shape: OrganizationRoleName, location_name: "organizationRoleName"))
    CreateWorkspaceRequest.add_member(:permission_type, Shapes::ShapeRef.new(shape: PermissionType, required: true, location_name: "permissionType"))
    CreateWorkspaceRequest.add_member(:stack_set_name, Shapes::ShapeRef.new(shape: StackSetName, location_name: "stackSetName"))
    CreateWorkspaceRequest.add_member(:workspace_data_sources, Shapes::ShapeRef.new(shape: DataSourceTypesList, location_name: "workspaceDataSources"))
    CreateWorkspaceRequest.add_member(:workspace_description, Shapes::ShapeRef.new(shape: Description, location_name: "workspaceDescription"))
    CreateWorkspaceRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, location_name: "workspaceName"))
    CreateWorkspaceRequest.add_member(:workspace_notification_destinations, Shapes::ShapeRef.new(shape: NotificationDestinationsList, location_name: "workspaceNotificationDestinations"))
    CreateWorkspaceRequest.add_member(:workspace_organizational_units, Shapes::ShapeRef.new(shape: OrganizationalUnitList, location_name: "workspaceOrganizationalUnits"))
    CreateWorkspaceRequest.add_member(:workspace_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "workspaceRoleArn"))
    CreateWorkspaceRequest.struct_class = Types::CreateWorkspaceRequest

    CreateWorkspaceResponse.add_member(:workspace, Shapes::ShapeRef.new(shape: WorkspaceDescription, required: true, location_name: "workspace"))
    CreateWorkspaceResponse.struct_class = Types::CreateWorkspaceResponse

    DataSourceTypesList.member = Shapes::ShapeRef.new(shape: DataSourceType)

    DeleteWorkspaceRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location: "uri", location_name: "workspaceId"))
    DeleteWorkspaceRequest.struct_class = Types::DeleteWorkspaceRequest

    DeleteWorkspaceResponse.add_member(:workspace, Shapes::ShapeRef.new(shape: WorkspaceDescription, required: true, location_name: "workspace"))
    DeleteWorkspaceResponse.struct_class = Types::DeleteWorkspaceResponse

    DescribeWorkspaceAuthenticationRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location: "uri", location_name: "workspaceId"))
    DescribeWorkspaceAuthenticationRequest.struct_class = Types::DescribeWorkspaceAuthenticationRequest

    DescribeWorkspaceAuthenticationResponse.add_member(:authentication, Shapes::ShapeRef.new(shape: AuthenticationDescription, required: true, location_name: "authentication"))
    DescribeWorkspaceAuthenticationResponse.struct_class = Types::DescribeWorkspaceAuthenticationResponse

    DescribeWorkspaceRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location: "uri", location_name: "workspaceId"))
    DescribeWorkspaceRequest.struct_class = Types::DescribeWorkspaceRequest

    DescribeWorkspaceResponse.add_member(:workspace, Shapes::ShapeRef.new(shape: WorkspaceDescription, required: true, location_name: "workspace"))
    DescribeWorkspaceResponse.struct_class = Types::DescribeWorkspaceResponse

    DisassociateLicenseRequest.add_member(:license_type, Shapes::ShapeRef.new(shape: LicenseType, required: true, location: "uri", location_name: "licenseType"))
    DisassociateLicenseRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location: "uri", location_name: "workspaceId"))
    DisassociateLicenseRequest.struct_class = Types::DisassociateLicenseRequest

    DisassociateLicenseResponse.add_member(:workspace, Shapes::ShapeRef.new(shape: WorkspaceDescription, required: true, location_name: "workspace"))
    DisassociateLicenseResponse.struct_class = Types::DisassociateLicenseResponse

    IdpMetadata.add_member(:url, Shapes::ShapeRef.new(shape: IdpMetadataUrl, location_name: "url"))
    IdpMetadata.add_member(:xml, Shapes::ShapeRef.new(shape: String, location_name: "xml"))
    IdpMetadata.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    IdpMetadata.add_member_subclass(:url, Types::IdpMetadata::Url)
    IdpMetadata.add_member_subclass(:xml, Types::IdpMetadata::Xml)
    IdpMetadata.add_member_subclass(:unknown, Types::IdpMetadata::Unknown)
    IdpMetadata.struct_class = Types::IdpMetadata

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    InternalServerException.struct_class = Types::InternalServerException

    ListPermissionsRequest.add_member(:group_id, Shapes::ShapeRef.new(shape: SsoId, location: "querystring", location_name: "groupId"))
    ListPermissionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListPermissionsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListPermissionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListPermissionsRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: SsoId, location: "querystring", location_name: "userId"))
    ListPermissionsRequest.add_member(:user_type, Shapes::ShapeRef.new(shape: UserType, location: "querystring", location_name: "userType"))
    ListPermissionsRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location: "uri", location_name: "workspaceId"))
    ListPermissionsRequest.struct_class = Types::ListPermissionsRequest

    ListPermissionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListPermissionsResponse.add_member(:permissions, Shapes::ShapeRef.new(shape: PermissionEntryList, required: true, location_name: "permissions"))
    ListPermissionsResponse.struct_class = Types::ListPermissionsResponse

    ListWorkspacesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListWorkspacesRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListWorkspacesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListWorkspacesRequest.struct_class = Types::ListWorkspacesRequest

    ListWorkspacesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListWorkspacesResponse.add_member(:workspaces, Shapes::ShapeRef.new(shape: WorkspaceList, required: true, location_name: "workspaces"))
    ListWorkspacesResponse.struct_class = Types::ListWorkspacesResponse

    NotificationDestinationsList.member = Shapes::ShapeRef.new(shape: NotificationDestinationType)

    OrganizationalUnitList.member = Shapes::ShapeRef.new(shape: OrganizationalUnit)

    PermissionEntry.add_member(:role, Shapes::ShapeRef.new(shape: Role, required: true, location_name: "role"))
    PermissionEntry.add_member(:user, Shapes::ShapeRef.new(shape: User, required: true, location_name: "user"))
    PermissionEntry.struct_class = Types::PermissionEntry

    PermissionEntryList.member = Shapes::ShapeRef.new(shape: PermissionEntry)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RoleValueList.member = Shapes::ShapeRef.new(shape: RoleValue)

    RoleValues.add_member(:admin, Shapes::ShapeRef.new(shape: RoleValueList, location_name: "admin"))
    RoleValues.add_member(:editor, Shapes::ShapeRef.new(shape: RoleValueList, location_name: "editor"))
    RoleValues.struct_class = Types::RoleValues

    SamlAuthentication.add_member(:configuration, Shapes::ShapeRef.new(shape: SamlConfiguration, location_name: "configuration"))
    SamlAuthentication.add_member(:status, Shapes::ShapeRef.new(shape: SamlConfigurationStatus, required: true, location_name: "status"))
    SamlAuthentication.struct_class = Types::SamlAuthentication

    SamlConfiguration.add_member(:allowed_organizations, Shapes::ShapeRef.new(shape: AllowedOrganizations, location_name: "allowedOrganizations"))
    SamlConfiguration.add_member(:assertion_attributes, Shapes::ShapeRef.new(shape: AssertionAttributes, location_name: "assertionAttributes"))
    SamlConfiguration.add_member(:idp_metadata, Shapes::ShapeRef.new(shape: IdpMetadata, required: true, location_name: "idpMetadata"))
    SamlConfiguration.add_member(:login_validity_duration, Shapes::ShapeRef.new(shape: LoginValidityDuration, location_name: "loginValidityDuration"))
    SamlConfiguration.add_member(:role_values, Shapes::ShapeRef.new(shape: RoleValues, location_name: "roleValues"))
    SamlConfiguration.struct_class = Types::SamlConfiguration

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "quotaCode"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "serviceCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "quotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "serviceCode"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UpdateError.add_member(:caused_by, Shapes::ShapeRef.new(shape: UpdateInstruction, required: true, location_name: "causedBy"))
    UpdateError.add_member(:code, Shapes::ShapeRef.new(shape: UpdateErrorCodeInteger, required: true, location_name: "code"))
    UpdateError.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    UpdateError.struct_class = Types::UpdateError

    UpdateErrorList.member = Shapes::ShapeRef.new(shape: UpdateError)

    UpdateInstruction.add_member(:action, Shapes::ShapeRef.new(shape: UpdateAction, required: true, location_name: "action"))
    UpdateInstruction.add_member(:role, Shapes::ShapeRef.new(shape: Role, required: true, location_name: "role"))
    UpdateInstruction.add_member(:users, Shapes::ShapeRef.new(shape: UserList, required: true, location_name: "users"))
    UpdateInstruction.struct_class = Types::UpdateInstruction

    UpdateInstructionBatch.member = Shapes::ShapeRef.new(shape: UpdateInstruction)

    UpdatePermissionsRequest.add_member(:update_instruction_batch, Shapes::ShapeRef.new(shape: UpdateInstructionBatch, required: true, location_name: "updateInstructionBatch"))
    UpdatePermissionsRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location: "uri", location_name: "workspaceId"))
    UpdatePermissionsRequest.struct_class = Types::UpdatePermissionsRequest

    UpdatePermissionsResponse.add_member(:errors, Shapes::ShapeRef.new(shape: UpdateErrorList, required: true, location_name: "errors"))
    UpdatePermissionsResponse.struct_class = Types::UpdatePermissionsResponse

    UpdateWorkspaceAuthenticationRequest.add_member(:authentication_providers, Shapes::ShapeRef.new(shape: AuthenticationProviders, required: true, location_name: "authenticationProviders"))
    UpdateWorkspaceAuthenticationRequest.add_member(:saml_configuration, Shapes::ShapeRef.new(shape: SamlConfiguration, location_name: "samlConfiguration"))
    UpdateWorkspaceAuthenticationRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location: "uri", location_name: "workspaceId"))
    UpdateWorkspaceAuthenticationRequest.struct_class = Types::UpdateWorkspaceAuthenticationRequest

    UpdateWorkspaceAuthenticationResponse.add_member(:authentication, Shapes::ShapeRef.new(shape: AuthenticationDescription, required: true, location_name: "authentication"))
    UpdateWorkspaceAuthenticationResponse.struct_class = Types::UpdateWorkspaceAuthenticationResponse

    UpdateWorkspaceRequest.add_member(:account_access_type, Shapes::ShapeRef.new(shape: AccountAccessType, location_name: "accountAccessType"))
    UpdateWorkspaceRequest.add_member(:organization_role_name, Shapes::ShapeRef.new(shape: OrganizationRoleName, location_name: "organizationRoleName"))
    UpdateWorkspaceRequest.add_member(:permission_type, Shapes::ShapeRef.new(shape: PermissionType, location_name: "permissionType"))
    UpdateWorkspaceRequest.add_member(:stack_set_name, Shapes::ShapeRef.new(shape: StackSetName, location_name: "stackSetName"))
    UpdateWorkspaceRequest.add_member(:workspace_data_sources, Shapes::ShapeRef.new(shape: DataSourceTypesList, location_name: "workspaceDataSources"))
    UpdateWorkspaceRequest.add_member(:workspace_description, Shapes::ShapeRef.new(shape: Description, location_name: "workspaceDescription"))
    UpdateWorkspaceRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location: "uri", location_name: "workspaceId"))
    UpdateWorkspaceRequest.add_member(:workspace_name, Shapes::ShapeRef.new(shape: WorkspaceName, location_name: "workspaceName"))
    UpdateWorkspaceRequest.add_member(:workspace_notification_destinations, Shapes::ShapeRef.new(shape: NotificationDestinationsList, location_name: "workspaceNotificationDestinations"))
    UpdateWorkspaceRequest.add_member(:workspace_organizational_units, Shapes::ShapeRef.new(shape: OrganizationalUnitList, location_name: "workspaceOrganizationalUnits"))
    UpdateWorkspaceRequest.add_member(:workspace_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "workspaceRoleArn"))
    UpdateWorkspaceRequest.struct_class = Types::UpdateWorkspaceRequest

    UpdateWorkspaceResponse.add_member(:workspace, Shapes::ShapeRef.new(shape: WorkspaceDescription, required: true, location_name: "workspace"))
    UpdateWorkspaceResponse.struct_class = Types::UpdateWorkspaceResponse

    User.add_member(:id, Shapes::ShapeRef.new(shape: SsoId, required: true, location_name: "id"))
    User.add_member(:type, Shapes::ShapeRef.new(shape: UserType, required: true, location_name: "type"))
    User.struct_class = Types::User

    UserList.member = Shapes::ShapeRef.new(shape: User)

    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, required: true, location_name: "reason"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)

    WorkspaceDescription.add_member(:account_access_type, Shapes::ShapeRef.new(shape: AccountAccessType, location_name: "accountAccessType"))
    WorkspaceDescription.add_member(:authentication, Shapes::ShapeRef.new(shape: AuthenticationSummary, required: true, location_name: "authentication"))
    WorkspaceDescription.add_member(:created, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "created"))
    WorkspaceDescription.add_member(:data_sources, Shapes::ShapeRef.new(shape: DataSourceTypesList, required: true, location_name: "dataSources"))
    WorkspaceDescription.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    WorkspaceDescription.add_member(:endpoint, Shapes::ShapeRef.new(shape: Endpoint, required: true, location_name: "endpoint"))
    WorkspaceDescription.add_member(:free_trial_consumed, Shapes::ShapeRef.new(shape: Boolean, location_name: "freeTrialConsumed"))
    WorkspaceDescription.add_member(:free_trial_expiration, Shapes::ShapeRef.new(shape: Timestamp, location_name: "freeTrialExpiration"))
    WorkspaceDescription.add_member(:grafana_version, Shapes::ShapeRef.new(shape: GrafanaVersion, required: true, location_name: "grafanaVersion"))
    WorkspaceDescription.add_member(:id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location_name: "id"))
    WorkspaceDescription.add_member(:license_expiration, Shapes::ShapeRef.new(shape: Timestamp, location_name: "licenseExpiration"))
    WorkspaceDescription.add_member(:license_type, Shapes::ShapeRef.new(shape: LicenseType, location_name: "licenseType"))
    WorkspaceDescription.add_member(:modified, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "modified"))
    WorkspaceDescription.add_member(:name, Shapes::ShapeRef.new(shape: WorkspaceName, location_name: "name"))
    WorkspaceDescription.add_member(:notification_destinations, Shapes::ShapeRef.new(shape: NotificationDestinationsList, location_name: "notificationDestinations"))
    WorkspaceDescription.add_member(:organization_role_name, Shapes::ShapeRef.new(shape: OrganizationRoleName, location_name: "organizationRoleName"))
    WorkspaceDescription.add_member(:organizational_units, Shapes::ShapeRef.new(shape: OrganizationalUnitList, location_name: "organizationalUnits"))
    WorkspaceDescription.add_member(:permission_type, Shapes::ShapeRef.new(shape: PermissionType, location_name: "permissionType"))
    WorkspaceDescription.add_member(:stack_set_name, Shapes::ShapeRef.new(shape: StackSetName, location_name: "stackSetName"))
    WorkspaceDescription.add_member(:status, Shapes::ShapeRef.new(shape: WorkspaceStatus, required: true, location_name: "status"))
    WorkspaceDescription.add_member(:workspace_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "workspaceRoleArn"))
    WorkspaceDescription.struct_class = Types::WorkspaceDescription

    WorkspaceList.member = Shapes::ShapeRef.new(shape: WorkspaceSummary)

    WorkspaceSummary.add_member(:authentication, Shapes::ShapeRef.new(shape: AuthenticationSummary, required: true, location_name: "authentication"))
    WorkspaceSummary.add_member(:created, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "created"))
    WorkspaceSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    WorkspaceSummary.add_member(:endpoint, Shapes::ShapeRef.new(shape: Endpoint, required: true, location_name: "endpoint"))
    WorkspaceSummary.add_member(:grafana_version, Shapes::ShapeRef.new(shape: GrafanaVersion, required: true, location_name: "grafanaVersion"))
    WorkspaceSummary.add_member(:id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location_name: "id"))
    WorkspaceSummary.add_member(:modified, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "modified"))
    WorkspaceSummary.add_member(:name, Shapes::ShapeRef.new(shape: WorkspaceName, location_name: "name"))
    WorkspaceSummary.add_member(:notification_destinations, Shapes::ShapeRef.new(shape: NotificationDestinationsList, location_name: "notificationDestinations"))
    WorkspaceSummary.add_member(:status, Shapes::ShapeRef.new(shape: WorkspaceStatus, required: true, location_name: "status"))
    WorkspaceSummary.struct_class = Types::WorkspaceSummary


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-08-18"

      api.metadata = {
        "apiVersion" => "2020-08-18",
        "endpointPrefix" => "grafana",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon Managed Grafana",
        "serviceId" => "grafana",
        "signatureVersion" => "v4",
        "signingName" => "grafana",
        "uid" => "grafana-2020-08-18",
      }

      api.add_operation(:associate_license, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateLicense"
        o.http_method = "POST"
        o.http_request_uri = "/workspaces/{workspaceId}/licenses/{licenseType}"
        o.input = Shapes::ShapeRef.new(shape: AssociateLicenseRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateLicenseResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_workspace, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateWorkspace"
        o.http_method = "POST"
        o.http_request_uri = "/workspaces"
        o.input = Shapes::ShapeRef.new(shape: CreateWorkspaceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateWorkspaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:delete_workspace, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteWorkspace"
        o.http_method = "DELETE"
        o.http_request_uri = "/workspaces/{workspaceId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteWorkspaceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteWorkspaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_workspace, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeWorkspace"
        o.http_method = "GET"
        o.http_request_uri = "/workspaces/{workspaceId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeWorkspaceRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeWorkspaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_workspace_authentication, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeWorkspaceAuthentication"
        o.http_method = "GET"
        o.http_request_uri = "/workspaces/{workspaceId}/authentication"
        o.input = Shapes::ShapeRef.new(shape: DescribeWorkspaceAuthenticationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeWorkspaceAuthenticationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:disassociate_license, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateLicense"
        o.http_method = "DELETE"
        o.http_request_uri = "/workspaces/{workspaceId}/licenses/{licenseType}"
        o.input = Shapes::ShapeRef.new(shape: DisassociateLicenseRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateLicenseResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_permissions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPermissions"
        o.http_method = "GET"
        o.http_request_uri = "/workspaces/{workspaceId}/permissions"
        o.input = Shapes::ShapeRef.new(shape: ListPermissionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPermissionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_workspaces, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWorkspaces"
        o.http_method = "GET"
        o.http_request_uri = "/workspaces"
        o.input = Shapes::ShapeRef.new(shape: ListWorkspacesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListWorkspacesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:update_permissions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePermissions"
        o.http_method = "PATCH"
        o.http_request_uri = "/workspaces/{workspaceId}/permissions"
        o.input = Shapes::ShapeRef.new(shape: UpdatePermissionsRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePermissionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_workspace, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateWorkspace"
        o.http_method = "PUT"
        o.http_request_uri = "/workspaces/{workspaceId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateWorkspaceRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateWorkspaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_workspace_authentication, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateWorkspaceAuthentication"
        o.http_method = "POST"
        o.http_request_uri = "/workspaces/{workspaceId}/authentication"
        o.input = Shapes::ShapeRef.new(shape: UpdateWorkspaceAuthenticationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateWorkspaceAuthenticationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
