# frozen_string_literal: true

# This is generated code!

module Aws::Grafana
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountAccessType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#AccountAccessType', name: 'AccountAccessType', traits: {"smithy.api#enum" => [{"name" => "CURRENT_ACCOUNT", "value" => "CURRENT_ACCOUNT", "documentation" => "Indicates that the customer is using Grafana to monitor resources in their current account."}, {"name" => "ORGANIZATION", "value" => "ORGANIZATION", "documentation" => "Indicates that the customer is using Grafana to monitor resources in organizational units."}]})
    AllowedOrganization = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#AllowedOrganization', name: 'AllowedOrganization', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    AllowedOrganizations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.grafana#AllowedOrganizations', name: 'AllowedOrganizations')
    ApiKeyName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#ApiKeyName', name: 'ApiKeyName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ApiKeyToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#ApiKeyToken', name: 'ApiKeyToken', traits: {"smithy.api#sensitive" => {}})
    AssertionAttribute = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#AssertionAttribute', name: 'AssertionAttribute', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    AssertionAttributes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#AssertionAttributes', name: 'AssertionAttributes')
    AssociateLicenseInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#AssociateLicenseInput', name: 'AssociateLicenseInput')
    AssociateLicenseOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#AssociateLicenseOutput', name: 'AssociateLicenseOutput')
    AuthenticationDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#AuthenticationDescription', name: 'AuthenticationDescription')
    AuthenticationProviderTypes = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#AuthenticationProviderTypes', name: 'AuthenticationProviderTypes', traits: {"smithy.api#enum" => [{"name" => "AWS_SSO", "value" => "AWS_SSO", "documentation" => "Indicates that AMG workspace has AWS SSO enabled as its authentication provider."}, {"name" => "SAML", "value" => "SAML", "documentation" => "Indicates that the AMG workspace has SAML enabled as its authentication provider."}]})
    AuthenticationProviders = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.grafana#AuthenticationProviders', name: 'AuthenticationProviders')
    AuthenticationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#AuthenticationSummary', name: 'AuthenticationSummary')
    AwsSsoAuthentication = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#AwsSsoAuthentication', name: 'AwsSsoAuthentication')
    ClientToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#ClientToken', name: 'ClientToken', traits: {"smithy.api#pattern" => "^[!-~]{1,64}$"})
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateWorkspaceApiKeyInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#CreateWorkspaceApiKeyInput', name: 'CreateWorkspaceApiKeyInput')
    CreateWorkspaceApiKeyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#CreateWorkspaceApiKeyOutput', name: 'CreateWorkspaceApiKeyOutput')
    CreateWorkspaceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#CreateWorkspaceInput', name: 'CreateWorkspaceInput')
    CreateWorkspaceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#CreateWorkspaceOutput', name: 'CreateWorkspaceOutput')
    CreateWorkspaceServiceAccountRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#CreateWorkspaceServiceAccountRequest', name: 'CreateWorkspaceServiceAccountRequest')
    CreateWorkspaceServiceAccountResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#CreateWorkspaceServiceAccountResponse', name: 'CreateWorkspaceServiceAccountResponse')
    CreateWorkspaceServiceAccountTokenRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#CreateWorkspaceServiceAccountTokenRequest', name: 'CreateWorkspaceServiceAccountTokenRequest')
    CreateWorkspaceServiceAccountTokenResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#CreateWorkspaceServiceAccountTokenResponse', name: 'CreateWorkspaceServiceAccountTokenResponse')
    DataSourceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#DataSourceType', name: 'DataSourceType', traits: {"smithy.api#enum" => [{"name" => "AMAZON_OPENSEARCH_SERVICE", "value" => "AMAZON_OPENSEARCH_SERVICE", "documentation" => "Amazon OpenSearch Service"}, {"name" => "CLOUDWATCH", "value" => "CLOUDWATCH", "documentation" => "CloudWatch Logs"}, {"name" => "PROMETHEUS", "value" => "PROMETHEUS", "documentation" => "Managed Prometheus"}, {"name" => "XRAY", "value" => "XRAY", "documentation" => "X-Ray"}, {"name" => "TIMESTREAM", "value" => "TIMESTREAM", "documentation" => "Timestream"}, {"name" => "SITEWISE", "value" => "SITEWISE", "documentation" => "IoT SiteWise"}, {"name" => "ATHENA", "value" => "ATHENA", "documentation" => "Amazon Athena"}, {"name" => "REDSHIFT", "value" => "REDSHIFT", "documentation" => "Redshift"}, {"name" => "TWINMAKER", "value" => "TWINMAKER", "documentation" => "IoT TwinMaker"}]})
    DataSourceTypesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.grafana#DataSourceTypesList', name: 'DataSourceTypesList')
    DeleteWorkspaceApiKeyInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#DeleteWorkspaceApiKeyInput', name: 'DeleteWorkspaceApiKeyInput')
    DeleteWorkspaceApiKeyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#DeleteWorkspaceApiKeyOutput', name: 'DeleteWorkspaceApiKeyOutput')
    DeleteWorkspaceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#DeleteWorkspaceInput', name: 'DeleteWorkspaceInput')
    DeleteWorkspaceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#DeleteWorkspaceOutput', name: 'DeleteWorkspaceOutput')
    DeleteWorkspaceServiceAccountRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#DeleteWorkspaceServiceAccountRequest', name: 'DeleteWorkspaceServiceAccountRequest')
    DeleteWorkspaceServiceAccountResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#DeleteWorkspaceServiceAccountResponse', name: 'DeleteWorkspaceServiceAccountResponse')
    DeleteWorkspaceServiceAccountTokenRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#DeleteWorkspaceServiceAccountTokenRequest', name: 'DeleteWorkspaceServiceAccountTokenRequest')
    DeleteWorkspaceServiceAccountTokenResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#DeleteWorkspaceServiceAccountTokenResponse', name: 'DeleteWorkspaceServiceAccountTokenResponse')
    DescribeWorkspaceAuthenticationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#DescribeWorkspaceAuthenticationInput', name: 'DescribeWorkspaceAuthenticationInput')
    DescribeWorkspaceAuthenticationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#DescribeWorkspaceAuthenticationOutput', name: 'DescribeWorkspaceAuthenticationOutput')
    DescribeWorkspaceConfigurationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#DescribeWorkspaceConfigurationInput', name: 'DescribeWorkspaceConfigurationInput')
    DescribeWorkspaceConfigurationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#DescribeWorkspaceConfigurationOutput', name: 'DescribeWorkspaceConfigurationOutput')
    DescribeWorkspaceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#DescribeWorkspaceInput', name: 'DescribeWorkspaceInput')
    DescribeWorkspaceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#DescribeWorkspaceOutput', name: 'DescribeWorkspaceOutput')
    Description = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#Description', name: 'Description', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#sensitive" => {}})
    DisassociateLicenseInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#DisassociateLicenseInput', name: 'DisassociateLicenseInput')
    DisassociateLicenseOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#DisassociateLicenseOutput', name: 'DisassociateLicenseOutput')
    Endpoint = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#Endpoint', name: 'Endpoint', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    GrafanaToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#GrafanaToken', name: 'GrafanaToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 36}})
    GrafanaVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#GrafanaVersion', name: 'GrafanaVersion', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    GrafanaVersionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.grafana#GrafanaVersionList', name: 'GrafanaVersionList')
    IamRoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#IamRoleArn', name: 'IamRoleArn', traits: {"aws.api#arnReference" => {"type" => "AWS::IAM::Role"}, "smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#sensitive" => {}})
    IdpMetadata = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.grafana#IdpMetadata', name: 'IdpMetadata')
    IdpMetadataUrl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#IdpMetadataUrl', name: 'IdpMetadataUrl', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    LicenseType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#LicenseType', name: 'LicenseType', traits: {"smithy.api#enum" => [{"name" => "ENTERPRISE", "value" => "ENTERPRISE", "documentation" => "Grafana Enterprise License."}, {"name" => "ENTERPRISE_FREE_TRIAL", "value" => "ENTERPRISE_FREE_TRIAL", "documentation" => "Grafana Enterprise Free Trial License."}]})
    ListPermissionsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#ListPermissionsInput', name: 'ListPermissionsInput')
    ListPermissionsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#ListPermissionsOutput', name: 'ListPermissionsOutput')
    ListTagsForResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    ListVersionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#ListVersionsRequest', name: 'ListVersionsRequest')
    ListVersionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#ListVersionsResponse', name: 'ListVersionsResponse')
    ListWorkspaceServiceAccountTokensRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#ListWorkspaceServiceAccountTokensRequest', name: 'ListWorkspaceServiceAccountTokensRequest')
    ListWorkspaceServiceAccountTokensResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#ListWorkspaceServiceAccountTokensResponse', name: 'ListWorkspaceServiceAccountTokensResponse')
    ListWorkspaceServiceAccountsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#ListWorkspaceServiceAccountsRequest', name: 'ListWorkspaceServiceAccountsRequest')
    ListWorkspaceServiceAccountsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#ListWorkspaceServiceAccountsResponse', name: 'ListWorkspaceServiceAccountsResponse')
    ListWorkspacesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#ListWorkspacesInput', name: 'ListWorkspacesInput')
    ListWorkspacesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#ListWorkspacesOutput', name: 'ListWorkspacesOutput')
    LoginValidityDuration = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.grafana#LoginValidityDuration', name: 'LoginValidityDuration', traits: {"smithy.api#default" => 0})
    NetworkAccessConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#NetworkAccessConfiguration', name: 'NetworkAccessConfiguration')
    NotificationDestinationType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#NotificationDestinationType', name: 'NotificationDestinationType', traits: {"smithy.api#enum" => [{"name" => "SNS", "value" => "SNS", "documentation" => "AWS Simple Notification Service"}]})
    NotificationDestinationsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.grafana#NotificationDestinationsList', name: 'NotificationDestinationsList')
    OrganizationRoleName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#OrganizationRoleName', name: 'OrganizationRoleName', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#sensitive" => {}})
    OrganizationalUnit = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#OrganizationalUnit', name: 'OrganizationalUnit')
    OrganizationalUnitList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.grafana#OrganizationalUnitList', name: 'OrganizationalUnitList', traits: {"smithy.api#sensitive" => {}})
    OverridableConfigurationJson = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#OverridableConfigurationJson', name: 'OverridableConfigurationJson', traits: {"smithy.api#length" => {"min" => 2, "max" => 65536}, "smithy.api#mediaType" => "application/json"})
    PaginationToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#PaginationToken', name: 'PaginationToken')
    PermissionEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#PermissionEntry', name: 'PermissionEntry')
    PermissionEntryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.grafana#PermissionEntryList', name: 'PermissionEntryList')
    PermissionType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#PermissionType', name: 'PermissionType', traits: {"smithy.api#enum" => [{"name" => "CUSTOMER_MANAGED", "value" => "CUSTOMER_MANAGED", "documentation" => "Customer Managed"}, {"name" => "SERVICE_MANAGED", "value" => "SERVICE_MANAGED", "documentation" => "Service Managed"}]})
    PrefixListId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#PrefixListId', name: 'PrefixListId', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    PrefixListIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.grafana#PrefixListIds', name: 'PrefixListIds')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Role = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#Role', name: 'Role', traits: {"smithy.api#enum" => [{"name" => "ADMIN", "value" => "ADMIN", "documentation" => "Role Admin."}, {"name" => "EDITOR", "value" => "EDITOR", "documentation" => "Role Editor."}, {"name" => "VIEWER", "value" => "VIEWER", "documentation" => "Role Viewer."}]})
    RoleValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#RoleValue', name: 'RoleValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    RoleValueList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.grafana#RoleValueList', name: 'RoleValueList', traits: {"smithy.api#sensitive" => {}})
    RoleValues = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#RoleValues', name: 'RoleValues')
    SSOClientId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#SSOClientId', name: 'SSOClientId')
    SamlAuthentication = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#SamlAuthentication', name: 'SamlAuthentication')
    SamlConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#SamlConfiguration', name: 'SamlConfiguration')
    SamlConfigurationStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#SamlConfigurationStatus', name: 'SamlConfigurationStatus', traits: {"smithy.api#enum" => [{"name" => "CONFIGURED", "value" => "CONFIGURED", "documentation" => "Indicates that SAML on an AMG workspace is enabled and has been configured."}, {"name" => "NOT_CONFIGURED", "value" => "NOT_CONFIGURED", "documentation" => "Indicates that SAML on an AMG workspace is enabled but has not been configured."}]})
    SecurityGroupId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#SecurityGroupId', name: 'SecurityGroupId', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    SecurityGroupIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.grafana#SecurityGroupIds', name: 'SecurityGroupIds', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    ServiceAccountList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.grafana#ServiceAccountList', name: 'ServiceAccountList')
    ServiceAccountName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#ServiceAccountName', name: 'ServiceAccountName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    ServiceAccountSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#ServiceAccountSummary', name: 'ServiceAccountSummary')
    ServiceAccountTokenKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#ServiceAccountTokenKey', name: 'ServiceAccountTokenKey', traits: {"smithy.api#sensitive" => {}})
    ServiceAccountTokenList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.grafana#ServiceAccountTokenList', name: 'ServiceAccountTokenList')
    ServiceAccountTokenName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#ServiceAccountTokenName', name: 'ServiceAccountTokenName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    ServiceAccountTokenSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#ServiceAccountTokenSummary', name: 'ServiceAccountTokenSummary')
    ServiceAccountTokenSummaryWithKey = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#ServiceAccountTokenSummaryWithKey', name: 'ServiceAccountTokenSummaryWithKey')
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SsoId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#SsoId', name: 'SsoId', traits: {"smithy.api#length" => {"min" => 1, "max" => 47}})
    StackSetName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#StackSetName', name: 'StackSetName')
    SubnetId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#SubnetId', name: 'SubnetId', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    SubnetIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.grafana#SubnetIds', name: 'SubnetIds', traits: {"smithy.api#length" => {"min" => 2, "max" => 6}})
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeys = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.grafana#TagKeys', name: 'TagKeys')
    TagMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.grafana#TagMap', name: 'TagMap', traits: {"smithy.api#length" => {"max" => 50}})
    TagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#TagResourceInput', name: 'TagResourceInput')
    TagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#TagResourceOutput', name: 'TagResourceOutput')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {}})
    UntagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#UntagResourceInput', name: 'UntagResourceInput')
    UntagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#UntagResourceOutput', name: 'UntagResourceOutput')
    UpdateAction = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#UpdateAction', name: 'UpdateAction', traits: {"smithy.api#enum" => [{"name" => "ADD", "value" => "ADD", "documentation" => "Add permissions."}, {"name" => "REVOKE", "value" => "REVOKE", "documentation" => "Revoke permissions."}]})
    UpdateError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#UpdateError', name: 'UpdateError')
    UpdateErrorList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.grafana#UpdateErrorList', name: 'UpdateErrorList')
    UpdateInstruction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#UpdateInstruction', name: 'UpdateInstruction')
    UpdateInstructionBatch = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.grafana#UpdateInstructionBatch', name: 'UpdateInstructionBatch', traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    UpdatePermissionsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#UpdatePermissionsInput', name: 'UpdatePermissionsInput')
    UpdatePermissionsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#UpdatePermissionsOutput', name: 'UpdatePermissionsOutput')
    UpdateWorkspaceAuthenticationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#UpdateWorkspaceAuthenticationInput', name: 'UpdateWorkspaceAuthenticationInput')
    UpdateWorkspaceAuthenticationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#UpdateWorkspaceAuthenticationOutput', name: 'UpdateWorkspaceAuthenticationOutput')
    UpdateWorkspaceConfigurationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#UpdateWorkspaceConfigurationInput', name: 'UpdateWorkspaceConfigurationInput')
    UpdateWorkspaceConfigurationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#UpdateWorkspaceConfigurationOutput', name: 'UpdateWorkspaceConfigurationOutput')
    UpdateWorkspaceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#UpdateWorkspaceInput', name: 'UpdateWorkspaceInput')
    UpdateWorkspaceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#UpdateWorkspaceOutput', name: 'UpdateWorkspaceOutput')
    User = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#User', name: 'User')
    UserList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.grafana#UserList', name: 'UserList')
    UserType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#UserType', name: 'UserType', traits: {"smithy.api#enum" => [{"name" => "SSO_USER", "value" => "SSO_USER", "documentation" => "SSO user."}, {"name" => "SSO_GROUP", "value" => "SSO_GROUP", "documentation" => "SSO group."}]})
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#ValidationExceptionField', name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.grafana#ValidationExceptionFieldList', name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#ValidationExceptionReason', name: 'ValidationExceptionReason', traits: {"smithy.api#enum" => [{"name" => "UNKNOWN_OPERATION", "value" => "UNKNOWN_OPERATION"}, {"name" => "CANNOT_PARSE", "value" => "CANNOT_PARSE"}, {"name" => "FIELD_VALIDATION_FAILED", "value" => "FIELD_VALIDATION_FAILED"}, {"name" => "OTHER", "value" => "OTHER"}]})
    VpcConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#VpcConfiguration', name: 'VpcConfiguration')
    VpceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#VpceId', name: 'VpceId', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    VpceIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.grafana#VpceIds', name: 'VpceIds')
    WorkspaceDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#WorkspaceDescription', name: 'WorkspaceDescription')
    WorkspaceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#WorkspaceId', name: 'WorkspaceId', traits: {"smithy.api#pattern" => "^g-[0-9a-f]{10}$"})
    WorkspaceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.grafana#WorkspaceList', name: 'WorkspaceList')
    WorkspaceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#WorkspaceName', name: 'WorkspaceName', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9-._~]{1,255}$", "smithy.api#sensitive" => {}})
    WorkspaceStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#WorkspaceStatus', name: 'WorkspaceStatus', traits: {"smithy.api#enum" => [{"name" => "ACTIVE", "value" => "ACTIVE", "documentation" => "Workspace is active."}, {"name" => "CREATING", "value" => "CREATING", "documentation" => "Workspace is being created."}, {"name" => "DELETING", "value" => "DELETING", "documentation" => "Workspace is being deleted."}, {"name" => "FAILED", "value" => "FAILED", "documentation" => "Workspace is in an invalid state, it can only and should be deleted."}, {"name" => "UPDATING", "value" => "UPDATING", "documentation" => "Workspace is being updated."}, {"name" => "UPGRADING", "value" => "UPGRADING", "documentation" => "Workspace is being upgraded to enterprise."}, {"name" => "DELETION_FAILED", "value" => "DELETION_FAILED", "documentation" => "Workspace deletion failed."}, {"name" => "CREATION_FAILED", "value" => "CREATION_FAILED", "documentation" => "Workspace creation failed."}, {"name" => "UPDATE_FAILED", "value" => "UPDATE_FAILED", "documentation" => "Workspace update failed."}, {"name" => "UPGRADE_FAILED", "value" => "UPGRADE_FAILED", "documentation" => "Workspace upgrade failed."}, {"name" => "LICENSE_REMOVAL_FAILED", "value" => "LICENSE_REMOVAL_FAILED", "documentation" => "Failed to remove enterprise license from workspace."}, {"name" => "VERSION_UPDATING", "value" => "VERSION_UPDATING", "documentation" => "Workspace version is being updated."}, {"name" => "VERSION_UPDATE_FAILED", "value" => "VERSION_UPDATE_FAILED", "documentation" => "Workspace version update failed."}]})
    WorkspaceSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#WorkspaceSummary', name: 'WorkspaceSummary')

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AllowedOrganizations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedOrganization)
    AssertionAttributes.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AssertionAttribute, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the attribute within the SAML assertion to use as the user full \"friendly\"\n            names for SAML users.</p>"}))
    AssertionAttributes.add_member(:login, Smithy::Schema::Shapes::ShapeRef.new(shape: AssertionAttribute, location_name: 'login', traits: {"smithy.api#documentation" => "<p>The name of the attribute within the SAML assertion to use as the login names for SAML\n            users.</p>"}))
    AssertionAttributes.add_member(:email, Smithy::Schema::Shapes::ShapeRef.new(shape: AssertionAttribute, location_name: 'email', traits: {"smithy.api#documentation" => "<p>The name of the attribute within the SAML assertion to use as the email names for SAML\n            users.</p>"}))
    AssertionAttributes.add_member(:groups, Smithy::Schema::Shapes::ShapeRef.new(shape: AssertionAttribute, location_name: 'groups', traits: {"smithy.api#documentation" => "<p>The name of the attribute within the SAML assertion to use as the user full \"friendly\"\n            names for user groups.</p>"}))
    AssertionAttributes.add_member(:role, Smithy::Schema::Shapes::ShapeRef.new(shape: AssertionAttribute, location_name: 'role', traits: {"smithy.api#documentation" => "<p>The name of the attribute within the SAML assertion to use as the user roles.</p>"}))
    AssertionAttributes.add_member(:org, Smithy::Schema::Shapes::ShapeRef.new(shape: AssertionAttribute, location_name: 'org', traits: {"smithy.api#documentation" => "<p>The name of the attribute within the SAML assertion to use as the user full \"friendly\"\n            names for the users' organizations.</p>"}))
    AssertionAttributes.type = Types::AssertionAttributes
    AssociateLicenseInput.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#documentation" => "<p>The ID of the workspace to associate the license with.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateLicenseInput.add_member(:license_type, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseType, location_name: 'licenseType', traits: {"smithy.api#documentation" => "<p>The type of license to associate with the workspace.</p>\n         <note>\n            <p>Amazon Managed Grafana workspaces no longer support Grafana Enterprise free trials.</p>\n         </note>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateLicenseInput.add_member(:grafana_token, Smithy::Schema::Shapes::ShapeRef.new(shape: GrafanaToken, location_name: 'grafanaToken', traits: {"smithy.api#documentation" => "<p>A token from Grafana Labs that ties your Amazon Web Services account with a Grafana \n            Labs account. For more information, see <a href=\"https://docs.aws.amazon.com/grafana/latest/userguide/upgrade-to-Grafana-Enterprise.html#AMG-workspace-register-enterprise\">Link your account with Grafana Labs</a>.</p>", "smithy.api#httpHeader" => "Grafana-Token"}))
    AssociateLicenseInput.type = Types::AssociateLicenseInput
    AssociateLicenseOutput.add_member(:workspace, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceDescription, location_name: 'workspace', traits: {"smithy.api#documentation" => "<p>A structure containing data about the workspace.</p>", "smithy.api#required" => {}}))
    AssociateLicenseOutput.type = Types::AssociateLicenseOutput
    AuthenticationDescription.add_member(:providers, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationProviders, location_name: 'providers', traits: {"smithy.api#documentation" => "<p>Specifies whether this workspace uses IAM Identity Center, SAML, or both methods to\n            authenticate users to use the Grafana console in the Amazon Managed Grafana\n            workspace.</p>", "smithy.api#required" => {}}))
    AuthenticationDescription.add_member(:saml, Smithy::Schema::Shapes::ShapeRef.new(shape: SamlAuthentication, location_name: 'saml', traits: {"smithy.api#documentation" => "<p>A structure containing information about how this workspace works with SAML, including\n            what attributes within the assertion are to be mapped to user information in the\n            workspace. </p>"}))
    AuthenticationDescription.add_member(:aws_sso, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsSsoAuthentication, location_name: 'awsSso', traits: {"smithy.api#documentation" => "<p>A structure containing information about how this workspace works with IAM Identity Center. </p>"}))
    AuthenticationDescription.type = Types::AuthenticationDescription
    AuthenticationProviders.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationProviderTypes)
    AuthenticationSummary.add_member(:providers, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationProviders, location_name: 'providers', traits: {"smithy.api#documentation" => "<p>Specifies whether the workspace uses SAML, IAM Identity Center, or both methods for\n            user authentication.</p>", "smithy.api#required" => {}}))
    AuthenticationSummary.add_member(:saml_configuration_status, Smithy::Schema::Shapes::ShapeRef.new(shape: SamlConfigurationStatus, location_name: 'samlConfigurationStatus', traits: {"smithy.api#documentation" => "<p>Specifies whether the workplace's user authentication method is fully\n            configured.</p>"}))
    AuthenticationSummary.type = Types::AuthenticationSummary
    AwsSsoAuthentication.add_member(:sso_client_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SSOClientId, location_name: 'ssoClientId', traits: {"smithy.api#documentation" => "<p>The ID of the IAM Identity Center-managed application that is created by Amazon Managed Grafana.</p>"}))
    AwsSsoAuthentication.type = Types::AwsSsoAuthentication
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A description of the error.</p>", "smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The ID of the resource that is associated with the error.</p>", "smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The type of the resource that is associated with the error.</p>", "smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CreateWorkspaceApiKeyInput.add_member(:key_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKeyName, location_name: 'keyName', traits: {"smithy.api#documentation" => "<p>Specifies the name of the key. Keynames must be unique to the workspace.</p>", "smithy.api#required" => {}}))
    CreateWorkspaceApiKeyInput.add_member(:key_role, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'keyRole', traits: {"smithy.api#documentation" => "<p>Specifies the permission level of the key.</p>\n         <p> Valid values: <code>ADMIN</code>|<code>EDITOR</code>|<code>VIEWER</code>\n         </p>", "smithy.api#required" => {}}))
    CreateWorkspaceApiKeyInput.add_member(:seconds_to_live, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'secondsToLive', traits: {"smithy.api#documentation" => "<p>Specifies the time in seconds until the key expires. Keys can be valid for up to 30\n            days.</p>", "smithy.api#range" => {"min" => 1, "max" => 2592000}, "smithy.api#required" => {}}))
    CreateWorkspaceApiKeyInput.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#documentation" => "<p>The ID of the workspace to create an API key.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateWorkspaceApiKeyInput.type = Types::CreateWorkspaceApiKeyInput
    CreateWorkspaceApiKeyOutput.add_member(:key_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKeyName, location_name: 'keyName', traits: {"smithy.api#documentation" => "<p>The name of the key that was created.</p>", "smithy.api#required" => {}}))
    CreateWorkspaceApiKeyOutput.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKeyToken, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The key token. Use this value as a bearer token to authenticate HTTP requests to the\n            workspace.</p>", "smithy.api#required" => {}}))
    CreateWorkspaceApiKeyOutput.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#documentation" => "<p>The ID of the workspace that the key is valid for.</p>", "smithy.api#required" => {}}))
    CreateWorkspaceApiKeyOutput.type = Types::CreateWorkspaceApiKeyOutput
    CreateWorkspaceInput.add_member(:account_access_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountAccessType, location_name: 'accountAccessType', traits: {"smithy.api#documentation" => "<p>Specifies whether the workspace can access Amazon Web Services resources in this\n                Amazon Web Services account only, or whether it can also access Amazon Web Services\n            resources in other accounts in the same organization. If you specify\n                <code>ORGANIZATION</code>, you must specify which organizational units the workspace\n            can access in the <code>workspaceOrganizationalUnits</code> parameter.</p>", "smithy.api#required" => {}}))
    CreateWorkspaceInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive, user-provided identifier to ensure the idempotency of the\n            request.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateWorkspaceInput.add_member(:organization_role_name, Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationRoleName, location_name: 'organizationRoleName', traits: {"smithy.api#documentation" => "<p>The name of an IAM role that already exists to use with Organizations to access Amazon Web Services data sources and notification channels in other accounts\n            in an organization.</p>"}))
    CreateWorkspaceInput.add_member(:permission_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionType, location_name: 'permissionType', traits: {"smithy.api#documentation" => "<p>When creating a workspace through the Amazon Web Services API, CLI or Amazon Web Services CloudFormation, you must manage IAM roles and provision the\n            permissions that the workspace needs to use Amazon Web Services data sources and\n            notification channels.</p>\n         <p>You must also specify a <code>workspaceRoleArn</code> for a role that you will\n            manage for the workspace to use when accessing those datasources and notification \n            channels.</p>\n         <p>The ability for Amazon Managed Grafana to create and update IAM roles on\n            behalf of the user is supported only in the Amazon Managed Grafana console, where this value\n            may be set to <code>SERVICE_MANAGED</code>.</p>\n         <note>\n            <p>Use only the <code>CUSTOMER_MANAGED</code> permission type when creating a\n                workspace with the API, CLI or Amazon Web Services CloudFormation. </p>\n         </note>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/grafana/latest/userguide/AMG-manage-permissions.html\">Amazon Managed Grafana\n                permissions and policies for Amazon Web Services data sources and notification\n                channels</a>.</p>", "smithy.api#required" => {}}))
    CreateWorkspaceInput.add_member(:stack_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StackSetName, location_name: 'stackSetName', traits: {"smithy.api#documentation" => "<p>The name of the CloudFormation stack set to use to generate IAM\n            roles to be used for this workspace.</p>"}))
    CreateWorkspaceInput.add_member(:workspace_data_sources, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceTypesList, location_name: 'workspaceDataSources', traits: {"smithy.api#documentation" => "<p>This parameter is for internal use only, and should not be used.</p>"}))
    CreateWorkspaceInput.add_member(:workspace_description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'workspaceDescription', traits: {"smithy.api#documentation" => "<p>A description for the workspace. This is used only to help you identify this\n            workspace.</p>\n         <p>Pattern: <code>^[\\\\p{L}\\\\p{Z}\\\\p{N}\\\\p{P}]{0,2048}$</code>\n         </p>"}))
    CreateWorkspaceInput.add_member(:workspace_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceName, location_name: 'workspaceName', traits: {"smithy.api#documentation" => "<p>The name for the workspace. It does not have to be unique.</p>"}))
    CreateWorkspaceInput.add_member(:workspace_notification_destinations, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationDestinationsList, location_name: 'workspaceNotificationDestinations', traits: {"smithy.api#documentation" => "<p>Specify the Amazon Web Services notification channels that you plan to use in this\n            workspace. Specifying these data sources here enables Amazon Managed Grafana to create\n                IAM roles and permissions that allow Amazon Managed Grafana to use these\n            channels.</p>"}))
    CreateWorkspaceInput.add_member(:workspace_organizational_units, Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitList, location_name: 'workspaceOrganizationalUnits', traits: {"smithy.api#documentation" => "<p>Specifies the organizational units that this workspace is allowed to use data sources\n            from, if this workspace is in an account that is part of an organization.</p>"}))
    CreateWorkspaceInput.add_member(:workspace_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'workspaceRoleArn', traits: {"smithy.api#documentation" => "<p>Specified the IAM role that grants permissions to the Amazon Web Services resources that the workspace will view data from, including both data \n            sources and notification channels. You are responsible for managing the permissions \n            for this role as new data sources or notification channels are added. </p>"}))
    CreateWorkspaceInput.add_member(:authentication_providers, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationProviders, location_name: 'authenticationProviders', traits: {"smithy.api#documentation" => "<p>Specifies whether this workspace uses SAML 2.0, IAM Identity Center, or both to\n            authenticate users for using the Grafana console within a workspace. For more\n            information, see <a href=\"https://docs.aws.amazon.com/grafana/latest/userguide/authentication-in-AMG.html\">User authentication in\n                    Amazon Managed Grafana</a>.</p>", "smithy.api#required" => {}}))
    CreateWorkspaceInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The list of tags associated with the workspace.</p>"}))
    CreateWorkspaceInput.add_member(:vpc_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfiguration, location_name: 'vpcConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration settings for an Amazon VPC that contains data sources for\n            your Grafana workspace to connect to.</p>\n         <note>\n            <p>Connecting to a private VPC is not yet available in the Asia Pacific (Seoul) \n                Region (ap-northeast-2).</p>\n         </note>"}))
    CreateWorkspaceInput.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: OverridableConfigurationJson, location_name: 'configuration', traits: {"smithy.api#documentation" => "<p>The configuration string for the workspace that you create. For more information about\n            the format and configuration options available, see <a href=\"https://docs.aws.amazon.com/grafana/latest/userguide/AMG-configure-workspace.html\">Working in your Grafana\n                workspace</a>.</p>"}))
    CreateWorkspaceInput.add_member(:network_access_control, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkAccessConfiguration, location_name: 'networkAccessControl', traits: {"smithy.api#documentation" => "<p>Configuration for network access to your workspace.</p>\n         <p>When this is configured, only listed IP addresses and VPC endpoints will be able to\n            access your workspace. Standard Grafana authentication and authorization will still be\n            required.</p>\n         <p>If this is not configured, or is removed, then all IP addresses and VPC endpoints will\n            be allowed. Standard Grafana authentication and authorization will still be\n            required.</p>"}))
    CreateWorkspaceInput.add_member(:grafana_version, Smithy::Schema::Shapes::ShapeRef.new(shape: GrafanaVersion, location_name: 'grafanaVersion', traits: {"smithy.api#documentation" => "<p>Specifies the version of Grafana to support in the new workspace. If not specified, \n            defaults to the latest version (for example, 10.4).</p>\n         <p>To get a list of supported versions, use the <code>ListVersions</code>\n            operation.</p>"}))
    CreateWorkspaceInput.type = Types::CreateWorkspaceInput
    CreateWorkspaceOutput.add_member(:workspace, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceDescription, location_name: 'workspace', traits: {"smithy.api#documentation" => "<p>A structure containing data about the workspace that was created.</p>", "smithy.api#required" => {}}))
    CreateWorkspaceOutput.type = Types::CreateWorkspaceOutput
    CreateWorkspaceServiceAccountRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A name for the service account. The name must be unique within the workspace, as it\n            determines the ID associated with the service account.</p>", "smithy.api#required" => {}}))
    CreateWorkspaceServiceAccountRequest.add_member(:grafana_role, Smithy::Schema::Shapes::ShapeRef.new(shape: Role, location_name: 'grafanaRole', traits: {"smithy.api#documentation" => "<p>The permission level to use for this service account.</p>\n         <note>\n            <p>For more information about the roles and the permissions each has, see <a href=\"https://docs.aws.amazon.com/grafana/latest/userguide/Grafana-user-roles.html\">User\n                roles</a> in the <i>Amazon Managed Grafana User Guide</i>.</p>\n         </note>", "smithy.api#required" => {}}))
    CreateWorkspaceServiceAccountRequest.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#documentation" => "<p>The ID of the workspace within which to create the service account.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateWorkspaceServiceAccountRequest.type = Types::CreateWorkspaceServiceAccountRequest
    CreateWorkspaceServiceAccountResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the service account.</p>", "smithy.api#required" => {}}))
    CreateWorkspaceServiceAccountResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the service account.</p>", "smithy.api#required" => {}}))
    CreateWorkspaceServiceAccountResponse.add_member(:grafana_role, Smithy::Schema::Shapes::ShapeRef.new(shape: Role, location_name: 'grafanaRole', traits: {"smithy.api#documentation" => "<p>The permission level given to the service account.</p>", "smithy.api#required" => {}}))
    CreateWorkspaceServiceAccountResponse.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#documentation" => "<p>The workspace with which the service account is associated.</p>", "smithy.api#required" => {}}))
    CreateWorkspaceServiceAccountResponse.type = Types::CreateWorkspaceServiceAccountResponse
    CreateWorkspaceServiceAccountTokenRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountTokenName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A name for the token to create.</p>", "smithy.api#required" => {}}))
    CreateWorkspaceServiceAccountTokenRequest.add_member(:seconds_to_live, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'secondsToLive', traits: {"smithy.api#documentation" => "<p>Sets how long the token will be valid, in seconds. You can set the time up to 30 \n            days in the future.</p>", "smithy.api#range" => {"min" => 1, "max" => 2592000}, "smithy.api#required" => {}}))
    CreateWorkspaceServiceAccountTokenRequest.add_member(:service_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'serviceAccountId', traits: {"smithy.api#documentation" => "<p>The ID of the service account for which to create a token.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateWorkspaceServiceAccountTokenRequest.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#documentation" => "<p>The ID of the workspace the service account resides within.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateWorkspaceServiceAccountTokenRequest.type = Types::CreateWorkspaceServiceAccountTokenRequest
    CreateWorkspaceServiceAccountTokenResponse.add_member(:service_account_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountTokenSummaryWithKey, location_name: 'serviceAccountToken', traits: {"smithy.api#documentation" => "<p>Information about the created token, including the key. Be sure to store the key\n            securely.</p>", "smithy.api#required" => {}}))
    CreateWorkspaceServiceAccountTokenResponse.add_member(:service_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'serviceAccountId', traits: {"smithy.api#documentation" => "<p>The ID of the service account where the token was created.</p>", "smithy.api#required" => {}}))
    CreateWorkspaceServiceAccountTokenResponse.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#documentation" => "<p>The ID of the workspace where the token was created.</p>", "smithy.api#required" => {}}))
    CreateWorkspaceServiceAccountTokenResponse.type = Types::CreateWorkspaceServiceAccountTokenResponse
    DataSourceTypesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceType)
    DeleteWorkspaceApiKeyInput.add_member(:key_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKeyName, location_name: 'keyName', traits: {"smithy.api#documentation" => "<p>The name of the API key to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWorkspaceApiKeyInput.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#documentation" => "<p>The ID of the workspace to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWorkspaceApiKeyInput.type = Types::DeleteWorkspaceApiKeyInput
    DeleteWorkspaceApiKeyOutput.add_member(:key_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKeyName, location_name: 'keyName', traits: {"smithy.api#documentation" => "<p>The name of the key that was deleted.</p>", "smithy.api#required" => {}}))
    DeleteWorkspaceApiKeyOutput.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#documentation" => "<p>The ID of the workspace where the key was deleted.</p>", "smithy.api#required" => {}}))
    DeleteWorkspaceApiKeyOutput.type = Types::DeleteWorkspaceApiKeyOutput
    DeleteWorkspaceInput.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#documentation" => "<p>The ID of the workspace to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWorkspaceInput.type = Types::DeleteWorkspaceInput
    DeleteWorkspaceOutput.add_member(:workspace, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceDescription, location_name: 'workspace', traits: {"smithy.api#documentation" => "<p>A structure containing information about the workspace that was deleted.</p>", "smithy.api#required" => {}}))
    DeleteWorkspaceOutput.type = Types::DeleteWorkspaceOutput
    DeleteWorkspaceServiceAccountRequest.add_member(:service_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'serviceAccountId', traits: {"smithy.api#documentation" => "<p>The ID of the service account to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWorkspaceServiceAccountRequest.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#documentation" => "<p>The ID of the workspace where the service account resides.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWorkspaceServiceAccountRequest.type = Types::DeleteWorkspaceServiceAccountRequest
    DeleteWorkspaceServiceAccountResponse.add_member(:service_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'serviceAccountId', traits: {"smithy.api#documentation" => "<p>The ID of the service account deleted.</p>", "smithy.api#required" => {}}))
    DeleteWorkspaceServiceAccountResponse.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#documentation" => "<p>The ID of the workspace where the service account was deleted.</p>", "smithy.api#required" => {}}))
    DeleteWorkspaceServiceAccountResponse.type = Types::DeleteWorkspaceServiceAccountResponse
    DeleteWorkspaceServiceAccountTokenRequest.add_member(:token_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'tokenId', traits: {"smithy.api#documentation" => "<p>The ID of the token to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWorkspaceServiceAccountTokenRequest.add_member(:service_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'serviceAccountId', traits: {"smithy.api#documentation" => "<p>The ID of the service account from which to delete the token.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWorkspaceServiceAccountTokenRequest.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#documentation" => "<p>The ID of the workspace from which to delete the token.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWorkspaceServiceAccountTokenRequest.type = Types::DeleteWorkspaceServiceAccountTokenRequest
    DeleteWorkspaceServiceAccountTokenResponse.add_member(:token_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'tokenId', traits: {"smithy.api#documentation" => "<p>The ID of the token that was deleted.</p>", "smithy.api#required" => {}}))
    DeleteWorkspaceServiceAccountTokenResponse.add_member(:service_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'serviceAccountId', traits: {"smithy.api#documentation" => "<p>The ID of the service account where the token was deleted.</p>", "smithy.api#required" => {}}))
    DeleteWorkspaceServiceAccountTokenResponse.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#documentation" => "<p>The ID of the workspace where the token was deleted.</p>", "smithy.api#required" => {}}))
    DeleteWorkspaceServiceAccountTokenResponse.type = Types::DeleteWorkspaceServiceAccountTokenResponse
    DescribeWorkspaceAuthenticationInput.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#documentation" => "<p>The ID of the workspace to return authentication information about.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeWorkspaceAuthenticationInput.type = Types::DescribeWorkspaceAuthenticationInput
    DescribeWorkspaceAuthenticationOutput.add_member(:authentication, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationDescription, location_name: 'authentication', traits: {"smithy.api#documentation" => "<p>A structure containing information about the authentication methods used in the\n            workspace.</p>", "smithy.api#required" => {}}))
    DescribeWorkspaceAuthenticationOutput.type = Types::DescribeWorkspaceAuthenticationOutput
    DescribeWorkspaceConfigurationInput.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#documentation" => "<p>The ID of the workspace to get configuration information for.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeWorkspaceConfigurationInput.type = Types::DescribeWorkspaceConfigurationInput
    DescribeWorkspaceConfigurationOutput.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: OverridableConfigurationJson, location_name: 'configuration', traits: {"smithy.api#documentation" => "<p>The configuration string for the workspace that you requested. For more information\n            about the format and configuration options available, see <a href=\"https://docs.aws.amazon.com/grafana/latest/userguide/AMG-configure-workspace.html\">Working in your Grafana\n                workspace</a>.</p>", "smithy.api#required" => {}}))
    DescribeWorkspaceConfigurationOutput.add_member(:grafana_version, Smithy::Schema::Shapes::ShapeRef.new(shape: GrafanaVersion, location_name: 'grafanaVersion', traits: {"smithy.api#documentation" => "<p>The supported Grafana version for the workspace.</p>"}))
    DescribeWorkspaceConfigurationOutput.type = Types::DescribeWorkspaceConfigurationOutput
    DescribeWorkspaceInput.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#documentation" => "<p>The ID of the workspace to display information about.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeWorkspaceInput.type = Types::DescribeWorkspaceInput
    DescribeWorkspaceOutput.add_member(:workspace, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceDescription, location_name: 'workspace', traits: {"smithy.api#documentation" => "<p>A structure containing information about the workspace.</p>", "smithy.api#required" => {}}))
    DescribeWorkspaceOutput.type = Types::DescribeWorkspaceOutput
    DisassociateLicenseInput.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#documentation" => "<p>The ID of the workspace to remove the Grafana Enterprise license from.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateLicenseInput.add_member(:license_type, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseType, location_name: 'licenseType', traits: {"smithy.api#documentation" => "<p>The type of license to remove from the workspace.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateLicenseInput.type = Types::DisassociateLicenseInput
    DisassociateLicenseOutput.add_member(:workspace, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceDescription, location_name: 'workspace', traits: {"smithy.api#documentation" => "<p>A structure containing information about the workspace.</p>", "smithy.api#required" => {}}))
    DisassociateLicenseOutput.type = Types::DisassociateLicenseOutput
    GrafanaVersionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GrafanaVersion)
    IdpMetadata.add_member(:url, Types::IdpMetadata::Url, Smithy::Schema::Shapes::ShapeRef.new(shape: IdpMetadataUrl, location_name: 'url', traits: {"smithy.api#documentation" => "<p>The URL of the location containing the IdP metadata.</p>"}))
    IdpMetadata.add_member(:xml, Types::IdpMetadata::Xml, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'xml', traits: {"smithy.api#documentation" => "<p>The full IdP metadata, in XML format.</p>"}))
    IdpMetadata.add_member(:unknown, Types::IdpMetadata::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    IdpMetadata.type = Types::IdpMetadata
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A description of the error.</p>", "smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'retryAfterSeconds', traits: {"smithy.api#documentation" => "<p>How long to wait before you retry this operation.</p>", "smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    ListPermissionsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to include in the response.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListPermissionsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>The token to use when requesting the next set of results. You received this token from\n            a previous <code>ListPermissions</code> operation.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListPermissionsInput.add_member(:user_type, Smithy::Schema::Shapes::ShapeRef.new(shape: UserType, location_name: 'userType', traits: {"smithy.api#documentation" => "<p>(Optional) If you specify <code>SSO_USER</code>, then only the permissions of IAM Identity Center users are returned. If you specify <code>SSO_GROUP</code>, only the\n            permissions of IAM Identity Center groups are returned.</p>", "smithy.api#httpQuery" => "userType"}))
    ListPermissionsInput.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SsoId, location_name: 'userId', traits: {"smithy.api#documentation" => "<p>(Optional) Limits the results to only the user that matches this ID.</p>", "smithy.api#httpQuery" => "userId"}))
    ListPermissionsInput.add_member(:group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SsoId, location_name: 'groupId', traits: {"smithy.api#documentation" => "<p>(Optional) Limits the results to only the group that matches this ID.</p>", "smithy.api#httpQuery" => "groupId"}))
    ListPermissionsInput.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#documentation" => "<p>The ID of the workspace to list permissions for. This parameter is required.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListPermissionsInput.type = Types::ListPermissionsInput
    ListPermissionsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>The token to use in a subsequent <code>ListPermissions</code> operation to return the\n            next set of results.</p>"}))
    ListPermissionsOutput.add_member(:permissions, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionEntryList, location_name: 'permissions', traits: {"smithy.api#documentation" => "<p>The permissions returned by the operation.</p>", "smithy.api#required" => {}}))
    ListPermissionsOutput.type = Types::ListPermissionsOutput
    ListTagsForResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource the list of tags are associated with.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The list of tags that are associated with the resource.</p>"}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListVersionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to include in the response.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListVersionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>The token to use when requesting the next set of results. You receive this token from\n            a previous <code>ListVersions</code> operation.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListVersionsRequest.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#documentation" => "<p>The ID of the workspace to list the available upgrade versions. If not included, \n            lists all versions of Grafana that are supported for \n            <code>CreateWorkspace</code>.</p>", "smithy.api#httpQuery" => "workspace-id"}))
    ListVersionsRequest.type = Types::ListVersionsRequest
    ListVersionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>The token to use in a subsequent <code>ListVersions</code> operation to return the\n            next set of results.</p>"}))
    ListVersionsResponse.add_member(:grafana_versions, Smithy::Schema::Shapes::ShapeRef.new(shape: GrafanaVersionList, location_name: 'grafanaVersions', traits: {"smithy.api#documentation" => "<p>The Grafana versions available to create. If a workspace ID is included in the \n            request, the Grafana versions to which this workspace can be upgraded.</p>"}))
    ListVersionsResponse.type = Types::ListVersionsResponse
    ListWorkspaceServiceAccountTokensRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of tokens to include in the results.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListWorkspaceServiceAccountTokensRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>The token for the next set of service accounts to return. (You receive this token\n            from a previous <code>ListWorkspaceServiceAccountTokens</code> operation.)</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListWorkspaceServiceAccountTokensRequest.add_member(:service_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'serviceAccountId', traits: {"smithy.api#documentation" => "<p>The ID of the service account for which to return tokens.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListWorkspaceServiceAccountTokensRequest.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#documentation" => "<p>The ID of the workspace for which to return tokens.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListWorkspaceServiceAccountTokensRequest.type = Types::ListWorkspaceServiceAccountTokensRequest
    ListWorkspaceServiceAccountTokensResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>The token to use when requesting the next set of service accounts.</p>"}))
    ListWorkspaceServiceAccountTokensResponse.add_member(:service_account_tokens, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountTokenList, location_name: 'serviceAccountTokens', traits: {"smithy.api#documentation" => "<p>An array of structures containing information about the tokens.</p>", "smithy.api#required" => {}}))
    ListWorkspaceServiceAccountTokensResponse.add_member(:service_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'serviceAccountId', traits: {"smithy.api#documentation" => "<p>The ID of the service account where the tokens reside.</p>", "smithy.api#required" => {}}))
    ListWorkspaceServiceAccountTokensResponse.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#documentation" => "<p>The ID of the workspace where the tokens reside.</p>", "smithy.api#required" => {}}))
    ListWorkspaceServiceAccountTokensResponse.type = Types::ListWorkspaceServiceAccountTokensResponse
    ListWorkspaceServiceAccountsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of service accounts to include in the results.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListWorkspaceServiceAccountsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>The token for the next set of service accounts to return. (You receive this token\n            from a previous <code>ListWorkspaceServiceAccounts</code> operation.)</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListWorkspaceServiceAccountsRequest.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#documentation" => "<p>The workspace for which to list service accounts.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListWorkspaceServiceAccountsRequest.type = Types::ListWorkspaceServiceAccountsRequest
    ListWorkspaceServiceAccountsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>The token to use when requesting the next set of service accounts.</p>"}))
    ListWorkspaceServiceAccountsResponse.add_member(:service_accounts, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountList, location_name: 'serviceAccounts', traits: {"smithy.api#documentation" => "<p>An array of structures containing information about the service accounts.</p>", "smithy.api#required" => {}}))
    ListWorkspaceServiceAccountsResponse.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#documentation" => "<p>The workspace to which the service accounts are associated.</p>", "smithy.api#required" => {}}))
    ListWorkspaceServiceAccountsResponse.type = Types::ListWorkspaceServiceAccountsResponse
    ListWorkspacesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of workspaces to include in the results.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListWorkspacesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of workspaces to return. (You receive this token from a\n            previous <code>ListWorkspaces</code> operation.)</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListWorkspacesInput.type = Types::ListWorkspacesInput
    ListWorkspacesOutput.add_member(:workspaces, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceList, location_name: 'workspaces', traits: {"smithy.api#documentation" => "<p>An array of structures that contain some information about the workspaces in the\n            account.</p>", "smithy.api#required" => {}}))
    ListWorkspacesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to use when requesting the next set of workspaces.</p>"}))
    ListWorkspacesOutput.type = Types::ListWorkspacesOutput
    NetworkAccessConfiguration.add_member(:prefix_list_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: PrefixListIds, location_name: 'prefixListIds', traits: {"smithy.api#documentation" => "<p>An array of prefix list IDs. A prefix list is a list of CIDR ranges of IP addresses.\n            The IP addresses specified are allowed to access your workspace. If the list is not\n            included in the configuration (passed an empty array) then no IP addresses are \n            allowed to access the workspace. You create a prefix list using the Amazon VPC \n            console.</p>\n         <p>Prefix list IDs have the format <code>pl-<i>1a2b3c4d</i>\n            </code>.</p>\n         <p>For more information about prefix lists, see <a href=\"https://docs.aws.amazon.com/vpc/latest/userguide/managed-prefix-lists.html\">Group CIDR blocks using managed\n                prefix lists</a>in the <i>Amazon Virtual Private Cloud User\n            Guide</i>.</p>", "smithy.api#required" => {}}))
    NetworkAccessConfiguration.add_member(:vpce_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: VpceIds, location_name: 'vpceIds', traits: {"smithy.api#documentation" => "<p>An array of Amazon VPC endpoint IDs for the workspace. You can create VPC\n            endpoints to your Amazon Managed Grafana workspace for access from within a VPC. If a\n                <code>NetworkAccessConfiguration</code> is specified then only VPC endpoints\n            specified here are allowed to access the workspace. If you pass in an empty array\n            of strings, then no VPCs are allowed to access the workspace.</p>\n         <p>VPC endpoint IDs have the format\n            <code>vpce-<i>1a2b3c4d</i>\n            </code>.</p>\n         <p>For more information about creating an interface VPC endpoint, see <a href=\"https://docs.aws.amazon.com/grafana/latest/userguide/VPC-endpoints\">Interface VPC\n                endpoints</a> in the <i>Amazon Managed Grafana User\n            Guide</i>.</p>\n         <note>\n            <p>The only VPC endpoints that can be specified here are interface VPC endpoints for\n                Grafana workspaces (using the <code>com.amazonaws.[region].grafana-workspace</code>\n                service endpoint). Other VPC endpoints are ignored.</p>\n         </note>", "smithy.api#required" => {}}))
    NetworkAccessConfiguration.type = Types::NetworkAccessConfiguration
    NotificationDestinationsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationDestinationType)
    OrganizationalUnitList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnit)
    PermissionEntry.add_member(:user, Smithy::Schema::Shapes::ShapeRef.new(shape: User, location_name: 'user', traits: {"smithy.api#documentation" => "<p>A structure with the ID of the user or group with this role.</p>", "smithy.api#required" => {}}))
    PermissionEntry.add_member(:role, Smithy::Schema::Shapes::ShapeRef.new(shape: Role, location_name: 'role', traits: {"smithy.api#documentation" => "<p>Specifies whether the user or group has the <code>Admin</code>, <code>Editor</code>,\n            or <code>Viewer</code> role.</p>", "smithy.api#required" => {}}))
    PermissionEntry.type = Types::PermissionEntry
    PermissionEntryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionEntry)
    PrefixListIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PrefixListId)
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The value of a parameter in the request caused an error.</p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The ID of the resource that is associated with the error.</p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The type of the resource that is associated with the error.</p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RoleValueList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RoleValue)
    RoleValues.add_member(:editor, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleValueList, location_name: 'editor', traits: {"smithy.api#documentation" => "<p>A list of groups from the SAML assertion attribute to grant the Grafana\n                <code>Editor</code> role to.</p>"}))
    RoleValues.add_member(:admin, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleValueList, location_name: 'admin', traits: {"smithy.api#documentation" => "<p>A list of groups from the SAML assertion attribute to grant the Grafana\n                <code>Admin</code> role to.</p>"}))
    RoleValues.type = Types::RoleValues
    SamlAuthentication.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: SamlConfigurationStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>Specifies whether the workspace's SAML configuration is complete.</p>", "smithy.api#required" => {}}))
    SamlAuthentication.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SamlConfiguration, location_name: 'configuration', traits: {"smithy.api#documentation" => "<p>A structure containing details about how this workspace works with SAML. </p>"}))
    SamlAuthentication.type = Types::SamlAuthentication
    SamlConfiguration.add_member(:idp_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: IdpMetadata, location_name: 'idpMetadata', traits: {"smithy.api#documentation" => "<p>A structure containing the identity provider (IdP) metadata used to integrate the\n            identity provider with this workspace.</p>", "smithy.api#required" => {}}))
    SamlConfiguration.add_member(:assertion_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: AssertionAttributes, location_name: 'assertionAttributes', traits: {"smithy.api#documentation" => "<p>A structure that defines which attributes in the SAML assertion are to be used to\n            define information about the users authenticated by that IdP to use the\n            workspace.</p>"}))
    SamlConfiguration.add_member(:role_values, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleValues, location_name: 'roleValues', traits: {"smithy.api#documentation" => "<p>A structure containing arrays that map group names in the SAML assertion to the\n            Grafana <code>Admin</code> and <code>Editor</code> roles in the workspace.</p>"}))
    SamlConfiguration.add_member(:allowed_organizations, Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedOrganizations, location_name: 'allowedOrganizations', traits: {"smithy.api#documentation" => "<p>Lists which organizations defined in the SAML assertion are allowed to use the Amazon Managed Grafana workspace. If this is empty, all organizations in the assertion attribute\n            have access.</p>"}))
    SamlConfiguration.add_member(:login_validity_duration, Smithy::Schema::Shapes::ShapeRef.new(shape: LoginValidityDuration, location_name: 'loginValidityDuration', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>How long a sign-on session by a SAML user is valid, before the user has to sign on\n            again.</p>"}))
    SamlConfiguration.type = Types::SamlConfiguration
    SecurityGroupIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupId)
    ServiceAccountList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountSummary)
    ServiceAccountSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique ID of the service account.</p>", "smithy.api#required" => {}}))
    ServiceAccountSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the service account.</p>", "smithy.api#required" => {}}))
    ServiceAccountSummary.add_member(:is_disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'isDisabled', traits: {"smithy.api#documentation" => "<p>Returns true if the service account is disabled. Service accounts can be disabled and\n            enabled in the Amazon Managed Grafana console.</p>", "smithy.api#required" => {}}))
    ServiceAccountSummary.add_member(:grafana_role, Smithy::Schema::Shapes::ShapeRef.new(shape: Role, location_name: 'grafanaRole', traits: {"smithy.api#documentation" => "<p>The role of the service account, which sets the permission level used when calling\n            Grafana APIs.</p>", "smithy.api#required" => {}}))
    ServiceAccountSummary.type = Types::ServiceAccountSummary
    ServiceAccountTokenList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountTokenSummary)
    ServiceAccountTokenSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique ID of the service account token.</p>", "smithy.api#required" => {}}))
    ServiceAccountTokenSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the service account token.</p>", "smithy.api#required" => {}}))
    ServiceAccountTokenSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>When the service account token was created.</p>", "smithy.api#required" => {}}))
    ServiceAccountTokenSummary.add_member(:expires_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'expiresAt', traits: {"smithy.api#documentation" => "<p>When the service account token will expire.</p>", "smithy.api#required" => {}}))
    ServiceAccountTokenSummary.add_member(:last_used_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastUsedAt', traits: {"smithy.api#documentation" => "<p>The last time the token was used to authorize a Grafana HTTP API.</p>"}))
    ServiceAccountTokenSummary.type = Types::ServiceAccountTokenSummary
    ServiceAccountTokenSummaryWithKey.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique ID of the service account token.</p>", "smithy.api#required" => {}}))
    ServiceAccountTokenSummaryWithKey.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the service account token.</p>", "smithy.api#required" => {}}))
    ServiceAccountTokenSummaryWithKey.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountTokenKey, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The key for the service account token. Used when making calls to the Grafana HTTP \n            APIs to authenticate and authorize the requests.</p>", "smithy.api#required" => {}}))
    ServiceAccountTokenSummaryWithKey.type = Types::ServiceAccountTokenSummaryWithKey
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A description of the error.</p>", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The ID of the resource that is associated with the error.</p>", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The type of the resource that is associated with the error.</p>", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'serviceCode', traits: {"smithy.api#documentation" => "<p>The value of a parameter in the request caused an error.</p>", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:quota_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'quotaCode', traits: {"smithy.api#documentation" => "<p>The ID of the service quota that was exceeded.</p>", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SubnetIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId)
    TagKeys.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource the tag is associated with.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The list of tag keys and values to associate with the resource. You can associate tag\n            keys only, tags (key and values) only or a combination of tag keys and tags.</p>", "smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A description of the error.</p>", "smithy.api#required" => {}}))
    ThrottlingException.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'serviceCode', traits: {"smithy.api#documentation" => "<p>The ID of the service that is associated with the error.</p>"}))
    ThrottlingException.add_member(:quota_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'quotaCode', traits: {"smithy.api#documentation" => "<p>The ID of the service quota that was exceeded.</p>"}))
    ThrottlingException.add_member(:retry_after_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'retryAfterSeconds', traits: {"smithy.api#documentation" => "<p>The value of a parameter in the request caused an error.</p>", "smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource the tag association is removed from. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: 'tagKeys', traits: {"smithy.api#documentation" => "<p>The key values of the tag to be removed from the resource.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateError.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'code', traits: {"smithy.api#documentation" => "<p>The error code.</p>", "smithy.api#range" => {"min" => 100, "max" => 999}, "smithy.api#required" => {}}))
    UpdateError.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message for this error.</p>", "smithy.api#required" => {}}))
    UpdateError.add_member(:caused_by, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateInstruction, location_name: 'causedBy', traits: {"smithy.api#documentation" => "<p>Specifies which permission update caused the error.</p>", "smithy.api#required" => {}}))
    UpdateError.type = Types::UpdateError
    UpdateErrorList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateError)
    UpdateInstruction.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAction, location_name: 'action', traits: {"smithy.api#documentation" => "<p>Specifies whether this update is to add or revoke role permissions.</p>", "smithy.api#required" => {}}))
    UpdateInstruction.add_member(:role, Smithy::Schema::Shapes::ShapeRef.new(shape: Role, location_name: 'role', traits: {"smithy.api#documentation" => "<p>The role to add or revoke for the user or the group specified in\n            <code>users</code>.</p>", "smithy.api#required" => {}}))
    UpdateInstruction.add_member(:users, Smithy::Schema::Shapes::ShapeRef.new(shape: UserList, location_name: 'users', traits: {"smithy.api#documentation" => "<p>A structure that specifies the user or group to add or revoke the role for.</p>", "smithy.api#required" => {}}))
    UpdateInstruction.type = Types::UpdateInstruction
    UpdateInstructionBatch.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateInstruction)
    UpdatePermissionsInput.add_member(:update_instruction_batch, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateInstructionBatch, location_name: 'updateInstructionBatch', traits: {"smithy.api#documentation" => "<p>An array of structures that contain the permission updates to make.</p>", "smithy.api#required" => {}}))
    UpdatePermissionsInput.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#documentation" => "<p>The ID of the workspace to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdatePermissionsInput.type = Types::UpdatePermissionsInput
    UpdatePermissionsOutput.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateErrorList, location_name: 'errors', traits: {"aws.cloudformation#cfnMutability" => "read", "smithy.api#documentation" => "<p>An array of structures that contain the errors from the operation, if any.</p>", "smithy.api#required" => {}}))
    UpdatePermissionsOutput.type = Types::UpdatePermissionsOutput
    UpdateWorkspaceAuthenticationInput.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#documentation" => "<p>The ID of the workspace to update the authentication for.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateWorkspaceAuthenticationInput.add_member(:authentication_providers, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationProviders, location_name: 'authenticationProviders', traits: {"smithy.api#documentation" => "<p>Specifies whether this workspace uses SAML 2.0, IAM Identity Center, or both to\n            authenticate users for using the Grafana console within a workspace. For more\n            information, see <a href=\"https://docs.aws.amazon.com/grafana/latest/userguide/authentication-in-AMG.html\">User authentication in\n                    Amazon Managed Grafana</a>.</p>", "smithy.api#required" => {}}))
    UpdateWorkspaceAuthenticationInput.add_member(:saml_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SamlConfiguration, location_name: 'samlConfiguration', traits: {"smithy.api#documentation" => "<p>If the workspace uses SAML, use this structure to map SAML assertion attributes to\n            workspace user information and define which groups in the assertion attribute are to\n            have the <code>Admin</code> and <code>Editor</code> roles in the workspace.</p>"}))
    UpdateWorkspaceAuthenticationInput.type = Types::UpdateWorkspaceAuthenticationInput
    UpdateWorkspaceAuthenticationOutput.add_member(:authentication, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationDescription, location_name: 'authentication', traits: {"smithy.api#documentation" => "<p>A structure that describes the user authentication for this workspace after the update\n            is made.</p>", "smithy.api#required" => {}}))
    UpdateWorkspaceAuthenticationOutput.type = Types::UpdateWorkspaceAuthenticationOutput
    UpdateWorkspaceConfigurationInput.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: OverridableConfigurationJson, location_name: 'configuration', traits: {"smithy.api#documentation" => "<p>The new configuration string for the workspace. For more information about the format\n            and configuration options available, see <a href=\"https://docs.aws.amazon.com/grafana/latest/userguide/AMG-configure-workspace.html\">Working in your Grafana\n                workspace</a>.</p>", "smithy.api#required" => {}}))
    UpdateWorkspaceConfigurationInput.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#documentation" => "<p>The ID of the workspace to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateWorkspaceConfigurationInput.add_member(:grafana_version, Smithy::Schema::Shapes::ShapeRef.new(shape: GrafanaVersion, location_name: 'grafanaVersion', traits: {"smithy.api#documentation" => "<p>Specifies the version of Grafana to support in the workspace. If not specified, \n            keeps the current version of the workspace.</p>\n         <p>Can only be used to upgrade (for example, from 8.4 to 9.4), not\n            downgrade (for example, from 9.4 to 8.4).</p>\n         <p>To know what versions are available to upgrade to for a specific workspace, see \n            the <a href=\"https://docs.aws.amazon.com/grafana/latest/APIReference/API_ListVersions.html\">ListVersions</a> operation.</p>"}))
    UpdateWorkspaceConfigurationInput.type = Types::UpdateWorkspaceConfigurationInput
    UpdateWorkspaceConfigurationOutput.type = Types::UpdateWorkspaceConfigurationOutput
    UpdateWorkspaceInput.add_member(:account_access_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountAccessType, location_name: 'accountAccessType', traits: {"smithy.api#documentation" => "<p>Specifies whether the workspace can access Amazon Web Services resources in this\n                Amazon Web Services account only, or whether it can also access Amazon Web Services\n            resources in other accounts in the same organization. If you specify\n                <code>ORGANIZATION</code>, you must specify which organizational units the workspace\n            can access in the <code>workspaceOrganizationalUnits</code> parameter.</p>"}))
    UpdateWorkspaceInput.add_member(:organization_role_name, Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationRoleName, location_name: 'organizationRoleName', traits: {"smithy.api#documentation" => "<p>The name of an IAM role that already exists to use to access resources\n            through Organizations. This can only be used with a workspace that has the \n            <code>permissionType</code> set to <code>CUSTOMER_MANAGED</code>.</p>"}))
    UpdateWorkspaceInput.add_member(:permission_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionType, location_name: 'permissionType', traits: {"smithy.api#documentation" => "<p>Use this parameter if you want to change a workspace from <code>SERVICE_MANAGED</code>\n            to <code>CUSTOMER_MANAGED</code>. This allows you to manage the permissions that the \n            workspace uses to access datasources and notification channels. If the workspace is\n            in a member Amazon Web Services account of an organization, and that account is not\n            a delegated administrator account, and you want the workspace to access data sources in \n            other Amazon Web Services accounts in the organization, you must choose \n            <code>CUSTOMER_MANAGED</code>.</p>\n         <p>If you specify this as <code>CUSTOMER_MANAGED</code>, you must also specify a \n            <code>workspaceRoleArn</code> that the workspace will use for accessing Amazon Web Services\n            resources.</p>\n         <p>For more information on the role and permissions needed, see <a href=\"https://docs.aws.amazon.com/grafana/latest/userguide/AMG-manage-permissions.html\">Amazon Managed Grafana permissions and policies for Amazon Web Services data sources \n            and notification channels</a>\n         </p>\n         <note>\n            <p>Do not use this to convert a <code>CUSTOMER_MANAGED</code> workspace to\n                <code>SERVICE_MANAGED</code>. Do not include this \n                parameter if you want to leave the workspace as <code>SERVICE_MANAGED</code>.</p>\n            <p>You can convert a <code>CUSTOMER_MANAGED</code> workspace to \n                <code>SERVICE_MANAGED</code> using the Amazon Managed Grafana console. For more \n                information, see <a href=\"https://docs.aws.amazon.com/grafana/latest/userguide/AMG-datasource-and-notification.html\">Managing permissions for data sources and notification channels</a>.</p>\n         </note>"}))
    UpdateWorkspaceInput.add_member(:stack_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StackSetName, location_name: 'stackSetName', traits: {"smithy.api#documentation" => "<p>The name of the CloudFormation stack set to use to generate IAM\n            roles to be used for this workspace.</p>"}))
    UpdateWorkspaceInput.add_member(:workspace_data_sources, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceTypesList, location_name: 'workspaceDataSources', traits: {"smithy.api#documentation" => "<p>This parameter is for internal use only, and should not be used.</p>"}))
    UpdateWorkspaceInput.add_member(:workspace_description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'workspaceDescription', traits: {"smithy.api#documentation" => "<p>A description for the workspace. This is used only to help you identify this\n            workspace.</p>"}))
    UpdateWorkspaceInput.add_member(:workspace_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#documentation" => "<p>The ID of the workspace to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateWorkspaceInput.add_member(:workspace_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceName, location_name: 'workspaceName', traits: {"smithy.api#documentation" => "<p>A new name for the workspace to update.</p>"}))
    UpdateWorkspaceInput.add_member(:workspace_notification_destinations, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationDestinationsList, location_name: 'workspaceNotificationDestinations', traits: {"smithy.api#documentation" => "<p>Specify the Amazon Web Services notification channels that you plan to use in this\n            workspace. Specifying these data sources here enables Amazon Managed Grafana to create\n                IAM roles and permissions that allow Amazon Managed Grafana to use these\n            channels.</p>"}))
    UpdateWorkspaceInput.add_member(:workspace_organizational_units, Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitList, location_name: 'workspaceOrganizationalUnits', traits: {"smithy.api#documentation" => "<p>Specifies the organizational units that this workspace is allowed to use data sources\n            from, if this workspace is in an account that is part of an organization.</p>"}))
    UpdateWorkspaceInput.add_member(:workspace_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'workspaceRoleArn', traits: {"smithy.api#documentation" => "<p>Specifies an IAM role that grants permissions to Amazon Web Services\n            resources that the workspace accesses, such as data sources and notification channels.\n            If this workspace has <code>permissionType</code>\n            <code>CUSTOMER_MANAGED</code>,\n            then this role is required.</p>"}))
    UpdateWorkspaceInput.add_member(:vpc_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfiguration, location_name: 'vpcConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration settings for an Amazon VPC that contains data sources for\n            your Grafana workspace to connect to.</p>"}))
    UpdateWorkspaceInput.add_member(:remove_vpc_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'removeVpcConfiguration', traits: {"smithy.api#documentation" => "<p>Whether to remove the VPC configuration from the workspace.</p>\n         <p>Setting this to <code>true</code> and providing a <code>vpcConfiguration</code> to set\n            will return an error.</p>"}))
    UpdateWorkspaceInput.add_member(:network_access_control, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkAccessConfiguration, location_name: 'networkAccessControl', traits: {"smithy.api#documentation" => "<p>The configuration settings for network access to your workspace.</p>\n         <p>When this is configured, only listed IP addresses and VPC endpoints will be able to\n            access your workspace. Standard Grafana authentication and authorization will still be\n            required.</p>\n         <p>If this is not configured, or is removed, then all IP addresses and VPC endpoints will\n            be allowed. Standard Grafana authentication and authorization will still be\n            required.</p>"}))
    UpdateWorkspaceInput.add_member(:remove_network_access_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'removeNetworkAccessConfiguration', traits: {"smithy.api#documentation" => "<p>Whether to remove the network access configuration from the workspace.</p>\n         <p>Setting this to <code>true</code> and providing a <code>networkAccessControl</code> to\n            set will return an error.</p>\n         <p>If you remove this configuration by setting this to <code>true</code>, then all IP\n            addresses and VPC endpoints will be allowed. Standard Grafana authentication and\n            authorization will still be required.</p>"}))
    UpdateWorkspaceInput.type = Types::UpdateWorkspaceInput
    UpdateWorkspaceOutput.add_member(:workspace, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceDescription, location_name: 'workspace', traits: {"smithy.api#documentation" => "<p>A structure containing data about the workspace that was created.</p>", "smithy.api#required" => {}}))
    UpdateWorkspaceOutput.type = Types::UpdateWorkspaceOutput
    User.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: SsoId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the user or group.</p>\n         <p>Pattern:\n                <code>^([0-9a-fA-F]{10}-|)[A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{12}$</code>\n         </p>", "smithy.api#required" => {}}))
    User.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: UserType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>Specifies whether this is a single user or a group.</p>", "smithy.api#required" => {}}))
    User.type = Types::User
    UserList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: User)
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A description of the error.</p>", "smithy.api#required" => {}}))
    ValidationException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>The reason that the operation failed.</p>", "smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: 'fieldList', traits: {"smithy.api#documentation" => "<p>A list of fields that might be associated with the error.</p>"}))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the field that caused the validation error.</p>", "smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A message describing why this field couldn't be validated.</p>", "smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)
    VpcConfiguration.add_member(:security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: 'securityGroupIds', traits: {"smithy.api#documentation" => "<p>The list of Amazon EC2 security group IDs attached to the Amazon VPC\n            for your Grafana workspace to connect. Duplicates not allowed.</p>", "smithy.api#required" => {}}))
    VpcConfiguration.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIds, location_name: 'subnetIds', traits: {"smithy.api#documentation" => "<p>The list of Amazon EC2 subnet IDs created in the Amazon VPC for your\n            Grafana workspace to connect. Duplicates not allowed.</p>", "smithy.api#required" => {}}))
    VpcConfiguration.type = Types::VpcConfiguration
    VpceIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VpceId)
    WorkspaceDescription.add_member(:account_access_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountAccessType, location_name: 'accountAccessType', traits: {"smithy.api#documentation" => "<p>Specifies whether the workspace can access Amazon Web Services resources in this\n                Amazon Web Services account only, or whether it can also access Amazon Web Services\n            resources in other accounts in the same organization. If this is\n                <code>ORGANIZATION</code>, the <code>workspaceOrganizationalUnits</code> parameter\n            specifies which organizational units the workspace can access.</p>"}))
    WorkspaceDescription.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'created', traits: {"smithy.api#documentation" => "<p>The date that the workspace was created.</p>", "smithy.api#required" => {}}))
    WorkspaceDescription.add_member(:data_sources, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceTypesList, location_name: 'dataSources', traits: {"smithy.api#documentation" => "<p>Specifies the Amazon Web Services data sources that have been configured to have\n                IAM roles and permissions created to allow Amazon Managed Grafana to read\n            data from these sources.</p>\n         <p>This list is only used when the workspace was created through the Amazon Web Services\n            console, and the <code>permissionType</code> is <code>SERVICE_MANAGED</code>.</p>", "smithy.api#required" => {}}))
    WorkspaceDescription.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The user-defined description of the workspace.</p>"}))
    WorkspaceDescription.add_member(:endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Endpoint, location_name: 'endpoint', traits: {"smithy.api#documentation" => "<p>The URL that users can use to access the Grafana console in the workspace.</p>", "smithy.api#required" => {}}))
    WorkspaceDescription.add_member(:grafana_version, Smithy::Schema::Shapes::ShapeRef.new(shape: GrafanaVersion, location_name: 'grafanaVersion', traits: {"smithy.api#documentation" => "<p>The version of Grafana supported in this workspace.</p>", "smithy.api#required" => {}}))
    WorkspaceDescription.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique ID of this workspace.</p>", "smithy.api#required" => {}}))
    WorkspaceDescription.add_member(:modified, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'modified', traits: {"smithy.api#documentation" => "<p>The most recent date that the workspace was modified.</p>", "smithy.api#required" => {}}))
    WorkspaceDescription.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the workspace.</p>"}))
    WorkspaceDescription.add_member(:organization_role_name, Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationRoleName, location_name: 'organizationRoleName', traits: {"smithy.api#documentation" => "<p>The name of the IAM role that is used to access resources through\n                Organizations.</p>"}))
    WorkspaceDescription.add_member(:notification_destinations, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationDestinationsList, location_name: 'notificationDestinations', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services notification channels that Amazon Managed Grafana can automatically\n            create IAM roles and permissions for, to allow Amazon Managed Grafana to use\n            these channels.</p>"}))
    WorkspaceDescription.add_member(:organizational_units, Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitList, location_name: 'organizationalUnits', traits: {"smithy.api#documentation" => "<p>Specifies the organizational units that this workspace is allowed to use data sources\n            from, if this workspace is in an account that is part of an organization.</p>"}))
    WorkspaceDescription.add_member(:permission_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionType, location_name: 'permissionType', traits: {"smithy.api#documentation" => "<p>If this is <code>SERVICE_MANAGED</code>, and the workplace was created through the \n            Amazon Managed Grafana console, then Amazon Managed Grafana automatically creates the\n            IAM roles and provisions the permissions that the workspace needs to\n            use Amazon Web Services data sources and notification channels.</p>\n         <p>If this is <code>CUSTOMER_MANAGED</code>, you must manage those roles and permissions\n            yourself.</p>\n         <p>If you are working with a workspace in a member account of an organization and\n            that account is not a delegated administrator account, and you want the workspace to\n            access data sources in other Amazon Web Services accounts in the organization, this\n            parameter must be set to <code>CUSTOMER_MANAGED</code>.</p>\n         <p>For more information about converting between customer and service managed, see\n            <a href=\"https://docs.aws.amazon.com/grafana/latest/userguide/AMG-datasource-and-notification.html\">Managing permissions for data sources and notification channels</a>. For more\n            information about the roles and permissions that must be managed for customer managed \n            workspaces, see <a href=\"https://docs.aws.amazon.com/grafana/latest/userguide/AMG-manage-permissions.html\">Amazon Managed Grafana\n            permissions and policies for Amazon Web Services data sources and notification\n            channels</a>\n         </p>"}))
    WorkspaceDescription.add_member(:stack_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StackSetName, location_name: 'stackSetName', traits: {"smithy.api#documentation" => "<p>The name of the CloudFormation stack set that is used to generate IAM roles to be used for this workspace.</p>"}))
    WorkspaceDescription.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of the workspace.</p>", "smithy.api#required" => {}}))
    WorkspaceDescription.add_member(:workspace_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'workspaceRoleArn', traits: {"smithy.api#documentation" => "<p>The IAM role that grants permissions to the Amazon Web Services\n            resources that the workspace will view data from. This role must already exist.</p>"}))
    WorkspaceDescription.add_member(:license_type, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseType, location_name: 'licenseType', traits: {"smithy.api#documentation" => "<p>Specifies whether this workspace has a full Grafana Enterprise license.</p>\n         <note>\n            <p>Amazon Managed Grafana workspaces no longer support Grafana Enterprise free trials.</p>\n         </note>"}))
    WorkspaceDescription.add_member(:free_trial_consumed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'freeTrialConsumed', traits: {"smithy.api#documentation" => "<p>Specifies whether this workspace has already fully used its free trial for Grafana\n            Enterprise.</p>\n         <note>\n            <p>Amazon Managed Grafana workspaces no longer support Grafana Enterprise free trials.</p>\n         </note>"}))
    WorkspaceDescription.add_member(:license_expiration, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'licenseExpiration', traits: {"smithy.api#documentation" => "<p>If this workspace has a full Grafana Enterprise license purchased through \n            Amazon Web Services Marketplace, this specifies when the\n            license ends and will need to be renewed. Purchasing the Enterprise plugins option \n            through Amazon Managed Grafana does not have an expiration. It is valid until the \n            license is removed.</p>"}))
    WorkspaceDescription.add_member(:free_trial_expiration, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'freeTrialExpiration', traits: {"smithy.api#documentation" => "<p>If this workspace is currently in the free trial period for Grafana Enterprise, this\n            value specifies when that free trial ends.</p>\n         <note>\n            <p>Amazon Managed Grafana workspaces no longer support Grafana Enterprise free trials.</p>\n         </note>"}))
    WorkspaceDescription.add_member(:authentication, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationSummary, location_name: 'authentication', traits: {"smithy.api#documentation" => "<p>A structure that describes whether the workspace uses SAML, IAM Identity Center, or\n            both methods for user authentication.</p>", "smithy.api#required" => {}}))
    WorkspaceDescription.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The list of tags associated with the workspace.</p>"}))
    WorkspaceDescription.add_member(:vpc_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfiguration, location_name: 'vpcConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration for connecting to data sources in a private VPC (Amazon Virtual Private Cloud).</p>"}))
    WorkspaceDescription.add_member(:network_access_control, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkAccessConfiguration, location_name: 'networkAccessControl', traits: {"smithy.api#documentation" => "<p>The configuration settings for network access to your workspace.</p>"}))
    WorkspaceDescription.add_member(:grafana_token, Smithy::Schema::Shapes::ShapeRef.new(shape: GrafanaToken, location_name: 'grafanaToken', traits: {"smithy.api#documentation" => "<p>The token that ties this workspace to a Grafana Labs account. For more information, \n            see <a href=\"https://docs.aws.amazon.com/grafana/latest/userguide/upgrade-to-Grafana-Enterprise.html#AMG-workspace-register-enterprise\">Link your account with Grafana Labs</a>.</p>"}))
    WorkspaceDescription.type = Types::WorkspaceDescription
    WorkspaceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceSummary)
    WorkspaceSummary.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'created', traits: {"smithy.api#documentation" => "<p>The date that the workspace was created.</p>", "smithy.api#required" => {}}))
    WorkspaceSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The customer-entered description of the workspace.</p>"}))
    WorkspaceSummary.add_member(:endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Endpoint, location_name: 'endpoint', traits: {"smithy.api#documentation" => "<p>The URL endpoint to use to access the Grafana console in the workspace.</p>", "smithy.api#required" => {}}))
    WorkspaceSummary.add_member(:grafana_version, Smithy::Schema::Shapes::ShapeRef.new(shape: GrafanaVersion, location_name: 'grafanaVersion', traits: {"smithy.api#documentation" => "<p>The Grafana version that the workspace is running.</p>", "smithy.api#required" => {}}))
    WorkspaceSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique ID of the workspace.</p>", "smithy.api#required" => {}}))
    WorkspaceSummary.add_member(:modified, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'modified', traits: {"smithy.api#documentation" => "<p>The most recent date that the workspace was modified.</p>", "smithy.api#required" => {}}))
    WorkspaceSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the workspace.</p>"}))
    WorkspaceSummary.add_member(:notification_destinations, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationDestinationsList, location_name: 'notificationDestinations', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services notification channels that Amazon Managed Grafana can automatically\n            create IAM roles and permissions for, which allows Amazon Managed Grafana to\n            use these channels.</p>"}))
    WorkspaceSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of the workspace.</p>", "smithy.api#required" => {}}))
    WorkspaceSummary.add_member(:authentication, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationSummary, location_name: 'authentication', traits: {"smithy.api#documentation" => "<p>A structure containing information about the authentication methods used in the\n            workspace.</p>", "smithy.api#required" => {}}))
    WorkspaceSummary.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The list of tags associated with the workspace.</p>"}))
    WorkspaceSummary.add_member(:license_type, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseType, location_name: 'licenseType', traits: {"smithy.api#documentation" => "<p>Specifies whether this workspace has a full Grafana Enterprise license.</p>\n         <note>\n            <p>Amazon Managed Grafana workspaces no longer support Grafana Enterprise free trials.</p>\n         </note>"}))
    WorkspaceSummary.add_member(:grafana_token, Smithy::Schema::Shapes::ShapeRef.new(shape: GrafanaToken, location_name: 'grafanaToken', traits: {"smithy.api#documentation" => "<p>The token that ties this workspace to a Grafana Labs account. For more information, \n            see <a href=\"https://docs.aws.amazon.com/grafana/latest/userguide/upgrade-to-Grafana-Enterprise.html#AMG-workspace-register-enterprise\">Link your account with Grafana Labs</a>.</p>"}))
    WorkspaceSummary.type = Types::WorkspaceSummary

    AWSGrafanaControlPlane = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.grafana#AWSGrafanaControlPlane"
      service.name = "AWSGrafanaControlPlane"
      service.version = "2020-08-18"
      service.traits = {"aws.api#controlPlane" => {}, "aws.api#service" => {"sdkId" => "grafana", "arnNamespace" => "grafana", "cloudFormationName" => "Grafana", "cloudTrailEventSource" => "EVENT_SOURCE_VALUE"}, "aws.auth#sigv4" => {"name" => "grafana"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id"], "additionalExposedHeaders" => ["cache-control", "x-amzn-errortype", "x-amzn-requestid", "x-amzn-errormessage", "x-amzn-trace-id", "x-amzn-requestid", "x-amz-apigw-id,date"]}, "smithy.api#title" => "Amazon Managed Grafana"}
      service.add_operation(:associate_license, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#AssociateLicense"
        operation.name = "AssociateLicense"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateLicenseInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateLicenseOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "POST", "uri" => "/workspaces/{workspaceId}/licenses/{licenseType}"}}
      end)
      service.add_operation(:create_workspace, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#CreateWorkspace"
        operation.name = "CreateWorkspace"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkspaceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkspaceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "POST", "uri" => "/workspaces"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_workspace_api_key, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#CreateWorkspaceApiKey"
        operation.name = "CreateWorkspaceApiKey"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkspaceApiKeyInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkspaceApiKeyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/workspaces/{workspaceId}/apikeys"}}
      end)
      service.add_operation(:create_workspace_service_account, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#CreateWorkspaceServiceAccount"
        operation.name = "CreateWorkspaceServiceAccount"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkspaceServiceAccountRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkspaceServiceAccountResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/workspaces/{workspaceId}/serviceaccounts"}}
      end)
      service.add_operation(:create_workspace_service_account_token, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#CreateWorkspaceServiceAccountToken"
        operation.name = "CreateWorkspaceServiceAccountToken"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkspaceServiceAccountTokenRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkspaceServiceAccountTokenResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/workspaces/{workspaceId}/serviceaccounts/{serviceAccountId}/tokens"}}
      end)
      service.add_operation(:delete_workspace, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#DeleteWorkspace"
        operation.name = "DeleteWorkspace"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWorkspaceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWorkspaceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "DELETE", "uri" => "/workspaces/{workspaceId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_workspace_api_key, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#DeleteWorkspaceApiKey"
        operation.name = "DeleteWorkspaceApiKey"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWorkspaceApiKeyInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWorkspaceApiKeyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/workspaces/{workspaceId}/apikeys/{keyName}"}}
      end)
      service.add_operation(:delete_workspace_service_account, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#DeleteWorkspaceServiceAccount"
        operation.name = "DeleteWorkspaceServiceAccount"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWorkspaceServiceAccountRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWorkspaceServiceAccountResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/workspaces/{workspaceId}/serviceaccounts/{serviceAccountId}"}}
      end)
      service.add_operation(:delete_workspace_service_account_token, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#DeleteWorkspaceServiceAccountToken"
        operation.name = "DeleteWorkspaceServiceAccountToken"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWorkspaceServiceAccountTokenRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWorkspaceServiceAccountTokenResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/workspaces/{workspaceId}/serviceaccounts/{serviceAccountId}/tokens/{tokenId}"}}
      end)
      service.add_operation(:describe_workspace, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#DescribeWorkspace"
        operation.name = "DescribeWorkspace"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkspaceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkspaceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/workspaces/{workspaceId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_workspace_authentication, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#DescribeWorkspaceAuthentication"
        operation.name = "DescribeWorkspaceAuthentication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkspaceAuthenticationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkspaceAuthenticationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/workspaces/{workspaceId}/authentication"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_workspace_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#DescribeWorkspaceConfiguration"
        operation.name = "DescribeWorkspaceConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkspaceConfigurationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkspaceConfigurationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/workspaces/{workspaceId}/configuration"}}
      end)
      service.add_operation(:disassociate_license, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#DisassociateLicense"
        operation.name = "DisassociateLicense"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateLicenseInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateLicenseOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "DELETE", "uri" => "/workspaces/{workspaceId}/licenses/{licenseType}"}}
      end)
      service.add_operation(:list_permissions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#ListPermissions"
        operation.name = "ListPermissions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPermissionsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPermissionsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/workspaces/{workspaceId}/permissions"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPermissions.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_versions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#ListVersions"
        operation.name = "ListVersions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListVersionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListVersionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/versions"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListVersions.new
      end)
      service.add_operation(:list_workspace_service_account_tokens, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#ListWorkspaceServiceAccountTokens"
        operation.name = "ListWorkspaceServiceAccountTokens"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkspaceServiceAccountTokensRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkspaceServiceAccountTokensResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/workspaces/{workspaceId}/serviceaccounts/{serviceAccountId}/tokens"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListWorkspaceServiceAccountTokens.new
      end)
      service.add_operation(:list_workspace_service_accounts, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#ListWorkspaceServiceAccounts"
        operation.name = "ListWorkspaceServiceAccounts"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkspaceServiceAccountsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkspaceServiceAccountsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/workspaces/{workspaceId}/serviceaccounts"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListWorkspaceServiceAccounts.new
      end)
      service.add_operation(:list_workspaces, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#ListWorkspaces"
        operation.name = "ListWorkspaces"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkspacesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkspacesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/workspaces"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListWorkspaces.new
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}"}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_permissions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#UpdatePermissions"
        operation.name = "UpdatePermissions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePermissionsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePermissionsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/workspaces/{workspaceId}/permissions"}}
      end)
      service.add_operation(:update_workspace, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#UpdateWorkspace"
        operation.name = "UpdateWorkspace"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorkspaceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorkspaceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "PUT", "uri" => "/workspaces/{workspaceId}"}}
      end)
      service.add_operation(:update_workspace_authentication, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#UpdateWorkspaceAuthentication"
        operation.name = "UpdateWorkspaceAuthentication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorkspaceAuthenticationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorkspaceAuthenticationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/workspaces/{workspaceId}/authentication"}}
      end)
      service.add_operation(:update_workspace_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#UpdateWorkspaceConfiguration"
        operation.name = "UpdateWorkspaceConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorkspaceConfigurationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorkspaceConfigurationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "PUT", "uri" => "/workspaces/{workspaceId}/configuration"}}
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
