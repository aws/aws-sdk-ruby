# frozen_string_literal: true

# This is generated code!

module Aws::Grafana
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountAccessType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#AccountAccessType', name: 'AccountAccessType', traits: {"smithy.api#enum" => [{"name" => "CURRENT_ACCOUNT", "value" => "CURRENT_ACCOUNT", "documentation" => "Indicates that the customer is using Grafana to monitor resources in their current account."}, {"name" => "ORGANIZATION", "value" => "ORGANIZATION", "documentation" => "Indicates that the customer is using Grafana to monitor resources in organizational units."}]})
    AllowedOrganization = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#AllowedOrganization', name: 'AllowedOrganization', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    AllowedOrganizations = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.grafana#AllowedOrganizations', name: 'AllowedOrganizations')
    ApiKeyName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#ApiKeyName', name: 'ApiKeyName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ApiKeyToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#ApiKeyToken', name: 'ApiKeyToken', traits: {"smithy.api#sensitive" => {}})
    AssertionAttribute = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#AssertionAttribute', name: 'AssertionAttribute', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    AssertionAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#AssertionAttributes', name: 'AssertionAttributes')
    AssociateLicenseInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#AssociateLicenseInput', name: 'AssociateLicenseInput')
    AssociateLicenseOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#AssociateLicenseOutput', name: 'AssociateLicenseOutput')
    AuthenticationDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#AuthenticationDescription', name: 'AuthenticationDescription')
    AuthenticationProviderTypes = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#AuthenticationProviderTypes', name: 'AuthenticationProviderTypes', traits: {"smithy.api#enum" => [{"name" => "AWS_SSO", "value" => "AWS_SSO", "documentation" => "Indicates that AMG workspace has AWS SSO enabled as its authentication provider."}, {"name" => "SAML", "value" => "SAML", "documentation" => "Indicates that the AMG workspace has SAML enabled as its authentication provider."}]})
    AuthenticationProviders = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.grafana#AuthenticationProviders', name: 'AuthenticationProviders')
    AuthenticationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#AuthenticationSummary', name: 'AuthenticationSummary')
    AwsSsoAuthentication = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#AwsSsoAuthentication', name: 'AwsSsoAuthentication')
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#ClientToken', name: 'ClientToken', traits: {"smithy.api#pattern" => "^[!-~]{1,64}$"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateWorkspaceApiKeyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#CreateWorkspaceApiKeyInput', name: 'CreateWorkspaceApiKeyInput')
    CreateWorkspaceApiKeyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#CreateWorkspaceApiKeyOutput', name: 'CreateWorkspaceApiKeyOutput')
    CreateWorkspaceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#CreateWorkspaceInput', name: 'CreateWorkspaceInput')
    CreateWorkspaceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#CreateWorkspaceOutput', name: 'CreateWorkspaceOutput')
    CreateWorkspaceServiceAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#CreateWorkspaceServiceAccountRequest', name: 'CreateWorkspaceServiceAccountRequest')
    CreateWorkspaceServiceAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#CreateWorkspaceServiceAccountResponse', name: 'CreateWorkspaceServiceAccountResponse')
    CreateWorkspaceServiceAccountTokenRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#CreateWorkspaceServiceAccountTokenRequest', name: 'CreateWorkspaceServiceAccountTokenRequest')
    CreateWorkspaceServiceAccountTokenResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#CreateWorkspaceServiceAccountTokenResponse', name: 'CreateWorkspaceServiceAccountTokenResponse')
    DataSourceType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#DataSourceType', name: 'DataSourceType', traits: {"smithy.api#enum" => [{"name" => "AMAZON_OPENSEARCH_SERVICE", "value" => "AMAZON_OPENSEARCH_SERVICE", "documentation" => "Amazon OpenSearch Service"}, {"name" => "CLOUDWATCH", "value" => "CLOUDWATCH", "documentation" => "CloudWatch Logs"}, {"name" => "PROMETHEUS", "value" => "PROMETHEUS", "documentation" => "Managed Prometheus"}, {"name" => "XRAY", "value" => "XRAY", "documentation" => "X-Ray"}, {"name" => "TIMESTREAM", "value" => "TIMESTREAM", "documentation" => "Timestream"}, {"name" => "SITEWISE", "value" => "SITEWISE", "documentation" => "IoT SiteWise"}, {"name" => "ATHENA", "value" => "ATHENA", "documentation" => "Amazon Athena"}, {"name" => "REDSHIFT", "value" => "REDSHIFT", "documentation" => "Redshift"}, {"name" => "TWINMAKER", "value" => "TWINMAKER", "documentation" => "IoT TwinMaker"}]})
    DataSourceTypesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.grafana#DataSourceTypesList', name: 'DataSourceTypesList')
    DeleteWorkspaceApiKeyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#DeleteWorkspaceApiKeyInput', name: 'DeleteWorkspaceApiKeyInput')
    DeleteWorkspaceApiKeyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#DeleteWorkspaceApiKeyOutput', name: 'DeleteWorkspaceApiKeyOutput')
    DeleteWorkspaceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#DeleteWorkspaceInput', name: 'DeleteWorkspaceInput')
    DeleteWorkspaceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#DeleteWorkspaceOutput', name: 'DeleteWorkspaceOutput')
    DeleteWorkspaceServiceAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#DeleteWorkspaceServiceAccountRequest', name: 'DeleteWorkspaceServiceAccountRequest')
    DeleteWorkspaceServiceAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#DeleteWorkspaceServiceAccountResponse', name: 'DeleteWorkspaceServiceAccountResponse')
    DeleteWorkspaceServiceAccountTokenRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#DeleteWorkspaceServiceAccountTokenRequest', name: 'DeleteWorkspaceServiceAccountTokenRequest')
    DeleteWorkspaceServiceAccountTokenResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#DeleteWorkspaceServiceAccountTokenResponse', name: 'DeleteWorkspaceServiceAccountTokenResponse')
    DescribeWorkspaceAuthenticationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#DescribeWorkspaceAuthenticationInput', name: 'DescribeWorkspaceAuthenticationInput')
    DescribeWorkspaceAuthenticationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#DescribeWorkspaceAuthenticationOutput', name: 'DescribeWorkspaceAuthenticationOutput')
    DescribeWorkspaceConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#DescribeWorkspaceConfigurationInput', name: 'DescribeWorkspaceConfigurationInput')
    DescribeWorkspaceConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#DescribeWorkspaceConfigurationOutput', name: 'DescribeWorkspaceConfigurationOutput')
    DescribeWorkspaceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#DescribeWorkspaceInput', name: 'DescribeWorkspaceInput')
    DescribeWorkspaceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#DescribeWorkspaceOutput', name: 'DescribeWorkspaceOutput')
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#Description', name: 'Description', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#sensitive" => {}})
    DisassociateLicenseInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#DisassociateLicenseInput', name: 'DisassociateLicenseInput')
    DisassociateLicenseOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#DisassociateLicenseOutput', name: 'DisassociateLicenseOutput')
    Endpoint = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#Endpoint', name: 'Endpoint', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    GrafanaToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#GrafanaToken', name: 'GrafanaToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 36}})
    GrafanaVersion = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#GrafanaVersion', name: 'GrafanaVersion', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    GrafanaVersionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.grafana#GrafanaVersionList', name: 'GrafanaVersionList')
    IamRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#IamRoleArn', name: 'IamRoleArn', traits: {"aws.api#arnReference" => {"type" => "AWS::IAM::Role"}, "smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#sensitive" => {}})
    IdpMetadata = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.grafana#IdpMetadata', name: 'IdpMetadata')
    IdpMetadataUrl = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#IdpMetadataUrl', name: 'IdpMetadataUrl', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    LicenseType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#LicenseType', name: 'LicenseType', traits: {"smithy.api#enum" => [{"name" => "ENTERPRISE", "value" => "ENTERPRISE", "documentation" => "Grafana Enterprise License."}, {"name" => "ENTERPRISE_FREE_TRIAL", "value" => "ENTERPRISE_FREE_TRIAL", "documentation" => "Grafana Enterprise Free Trial License."}]})
    ListPermissionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#ListPermissionsInput', name: 'ListPermissionsInput')
    ListPermissionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#ListPermissionsOutput', name: 'ListPermissionsOutput')
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    ListVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#ListVersionsRequest', name: 'ListVersionsRequest')
    ListVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#ListVersionsResponse', name: 'ListVersionsResponse')
    ListWorkspaceServiceAccountTokensRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#ListWorkspaceServiceAccountTokensRequest', name: 'ListWorkspaceServiceAccountTokensRequest')
    ListWorkspaceServiceAccountTokensResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#ListWorkspaceServiceAccountTokensResponse', name: 'ListWorkspaceServiceAccountTokensResponse')
    ListWorkspaceServiceAccountsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#ListWorkspaceServiceAccountsRequest', name: 'ListWorkspaceServiceAccountsRequest')
    ListWorkspaceServiceAccountsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#ListWorkspaceServiceAccountsResponse', name: 'ListWorkspaceServiceAccountsResponse')
    ListWorkspacesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#ListWorkspacesInput', name: 'ListWorkspacesInput')
    ListWorkspacesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#ListWorkspacesOutput', name: 'ListWorkspacesOutput')
    LoginValidityDuration = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.grafana#LoginValidityDuration', name: 'LoginValidityDuration', traits: {"smithy.api#default" => 0})
    NetworkAccessConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#NetworkAccessConfiguration', name: 'NetworkAccessConfiguration')
    NotificationDestinationType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#NotificationDestinationType', name: 'NotificationDestinationType', traits: {"smithy.api#enum" => [{"name" => "SNS", "value" => "SNS", "documentation" => "AWS Simple Notification Service"}]})
    NotificationDestinationsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.grafana#NotificationDestinationsList', name: 'NotificationDestinationsList')
    OrganizationRoleName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#OrganizationRoleName', name: 'OrganizationRoleName', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#sensitive" => {}})
    OrganizationalUnit = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#OrganizationalUnit', name: 'OrganizationalUnit')
    OrganizationalUnitList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.grafana#OrganizationalUnitList', name: 'OrganizationalUnitList', traits: {"smithy.api#sensitive" => {}})
    OverridableConfigurationJson = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#OverridableConfigurationJson', name: 'OverridableConfigurationJson', traits: {"smithy.api#length" => {"min" => 2, "max" => 65536}, "smithy.api#mediaType" => "application/json"})
    PaginationToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#PaginationToken', name: 'PaginationToken')
    PermissionEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#PermissionEntry', name: 'PermissionEntry')
    PermissionEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.grafana#PermissionEntryList', name: 'PermissionEntryList')
    PermissionType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#PermissionType', name: 'PermissionType', traits: {"smithy.api#enum" => [{"name" => "CUSTOMER_MANAGED", "value" => "CUSTOMER_MANAGED", "documentation" => "Customer Managed"}, {"name" => "SERVICE_MANAGED", "value" => "SERVICE_MANAGED", "documentation" => "Service Managed"}]})
    PrefixListId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#PrefixListId', name: 'PrefixListId', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    PrefixListIds = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.grafana#PrefixListIds', name: 'PrefixListIds')
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Role = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#Role', name: 'Role', traits: {"smithy.api#enum" => [{"name" => "ADMIN", "value" => "ADMIN", "documentation" => "Role Admin."}, {"name" => "EDITOR", "value" => "EDITOR", "documentation" => "Role Editor."}, {"name" => "VIEWER", "value" => "VIEWER", "documentation" => "Role Viewer."}]})
    RoleValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#RoleValue', name: 'RoleValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    RoleValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.grafana#RoleValueList', name: 'RoleValueList', traits: {"smithy.api#sensitive" => {}})
    RoleValues = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#RoleValues', name: 'RoleValues')
    SSOClientId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#SSOClientId', name: 'SSOClientId')
    SamlAuthentication = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#SamlAuthentication', name: 'SamlAuthentication')
    SamlConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#SamlConfiguration', name: 'SamlConfiguration')
    SamlConfigurationStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#SamlConfigurationStatus', name: 'SamlConfigurationStatus', traits: {"smithy.api#enum" => [{"name" => "CONFIGURED", "value" => "CONFIGURED", "documentation" => "Indicates that SAML on an AMG workspace is enabled and has been configured."}, {"name" => "NOT_CONFIGURED", "value" => "NOT_CONFIGURED", "documentation" => "Indicates that SAML on an AMG workspace is enabled but has not been configured."}]})
    SecurityGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#SecurityGroupId', name: 'SecurityGroupId', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    SecurityGroupIds = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.grafana#SecurityGroupIds', name: 'SecurityGroupIds', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    ServiceAccountList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.grafana#ServiceAccountList', name: 'ServiceAccountList')
    ServiceAccountName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#ServiceAccountName', name: 'ServiceAccountName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    ServiceAccountSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#ServiceAccountSummary', name: 'ServiceAccountSummary')
    ServiceAccountTokenKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#ServiceAccountTokenKey', name: 'ServiceAccountTokenKey', traits: {"smithy.api#sensitive" => {}})
    ServiceAccountTokenList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.grafana#ServiceAccountTokenList', name: 'ServiceAccountTokenList')
    ServiceAccountTokenName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#ServiceAccountTokenName', name: 'ServiceAccountTokenName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    ServiceAccountTokenSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#ServiceAccountTokenSummary', name: 'ServiceAccountTokenSummary')
    ServiceAccountTokenSummaryWithKey = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#ServiceAccountTokenSummaryWithKey', name: 'ServiceAccountTokenSummaryWithKey')
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SsoId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#SsoId', name: 'SsoId', traits: {"smithy.api#length" => {"min" => 1, "max" => 47}})
    StackSetName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#StackSetName', name: 'StackSetName')
    SubnetId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#SubnetId', name: 'SubnetId', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    SubnetIds = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.grafana#SubnetIds', name: 'SubnetIds', traits: {"smithy.api#length" => {"min" => 2, "max" => 6}})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.grafana#TagKeys', name: 'TagKeys')
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.grafana#TagMap', name: 'TagMap', traits: {"smithy.api#length" => {"max" => 50}})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#TagResourceInput', name: 'TagResourceInput')
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#TagResourceOutput', name: 'TagResourceOutput')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {}})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#UntagResourceInput', name: 'UntagResourceInput')
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#UntagResourceOutput', name: 'UntagResourceOutput')
    UpdateAction = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#UpdateAction', name: 'UpdateAction', traits: {"smithy.api#enum" => [{"name" => "ADD", "value" => "ADD", "documentation" => "Add permissions."}, {"name" => "REVOKE", "value" => "REVOKE", "documentation" => "Revoke permissions."}]})
    UpdateError = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#UpdateError', name: 'UpdateError')
    UpdateErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.grafana#UpdateErrorList', name: 'UpdateErrorList')
    UpdateInstruction = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#UpdateInstruction', name: 'UpdateInstruction')
    UpdateInstructionBatch = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.grafana#UpdateInstructionBatch', name: 'UpdateInstructionBatch', traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    UpdatePermissionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#UpdatePermissionsInput', name: 'UpdatePermissionsInput')
    UpdatePermissionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#UpdatePermissionsOutput', name: 'UpdatePermissionsOutput')
    UpdateWorkspaceAuthenticationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#UpdateWorkspaceAuthenticationInput', name: 'UpdateWorkspaceAuthenticationInput')
    UpdateWorkspaceAuthenticationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#UpdateWorkspaceAuthenticationOutput', name: 'UpdateWorkspaceAuthenticationOutput')
    UpdateWorkspaceConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#UpdateWorkspaceConfigurationInput', name: 'UpdateWorkspaceConfigurationInput')
    UpdateWorkspaceConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#UpdateWorkspaceConfigurationOutput', name: 'UpdateWorkspaceConfigurationOutput')
    UpdateWorkspaceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#UpdateWorkspaceInput', name: 'UpdateWorkspaceInput')
    UpdateWorkspaceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#UpdateWorkspaceOutput', name: 'UpdateWorkspaceOutput')
    User = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#User', name: 'User')
    UserList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.grafana#UserList', name: 'UserList')
    UserType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#UserType', name: 'UserType', traits: {"smithy.api#enum" => [{"name" => "SSO_USER", "value" => "SSO_USER", "documentation" => "SSO user."}, {"name" => "SSO_GROUP", "value" => "SSO_GROUP", "documentation" => "SSO group."}]})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#ValidationExceptionField', name: 'ValidationExceptionField')
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.grafana#ValidationExceptionFieldList', name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#ValidationExceptionReason', name: 'ValidationExceptionReason', traits: {"smithy.api#enum" => [{"name" => "UNKNOWN_OPERATION", "value" => "UNKNOWN_OPERATION"}, {"name" => "CANNOT_PARSE", "value" => "CANNOT_PARSE"}, {"name" => "FIELD_VALIDATION_FAILED", "value" => "FIELD_VALIDATION_FAILED"}, {"name" => "OTHER", "value" => "OTHER"}]})
    VpcConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#VpcConfiguration', name: 'VpcConfiguration')
    VpceId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#VpceId', name: 'VpceId', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    VpceIds = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.grafana#VpceIds', name: 'VpceIds')
    WorkspaceDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#WorkspaceDescription', name: 'WorkspaceDescription')
    WorkspaceId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#WorkspaceId', name: 'WorkspaceId', traits: {"smithy.api#pattern" => "^g-[0-9a-f]{10}$"})
    WorkspaceList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.grafana#WorkspaceList', name: 'WorkspaceList')
    WorkspaceName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#WorkspaceName', name: 'WorkspaceName', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9-._~]{1,255}$", "smithy.api#sensitive" => {}})
    WorkspaceStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.grafana#WorkspaceStatus', name: 'WorkspaceStatus', traits: {"smithy.api#enum" => [{"name" => "ACTIVE", "value" => "ACTIVE", "documentation" => "Workspace is active."}, {"name" => "CREATING", "value" => "CREATING", "documentation" => "Workspace is being created."}, {"name" => "DELETING", "value" => "DELETING", "documentation" => "Workspace is being deleted."}, {"name" => "FAILED", "value" => "FAILED", "documentation" => "Workspace is in an invalid state, it can only and should be deleted."}, {"name" => "UPDATING", "value" => "UPDATING", "documentation" => "Workspace is being updated."}, {"name" => "UPGRADING", "value" => "UPGRADING", "documentation" => "Workspace is being upgraded to enterprise."}, {"name" => "DELETION_FAILED", "value" => "DELETION_FAILED", "documentation" => "Workspace deletion failed."}, {"name" => "CREATION_FAILED", "value" => "CREATION_FAILED", "documentation" => "Workspace creation failed."}, {"name" => "UPDATE_FAILED", "value" => "UPDATE_FAILED", "documentation" => "Workspace update failed."}, {"name" => "UPGRADE_FAILED", "value" => "UPGRADE_FAILED", "documentation" => "Workspace upgrade failed."}, {"name" => "LICENSE_REMOVAL_FAILED", "value" => "LICENSE_REMOVAL_FAILED", "documentation" => "Failed to remove enterprise license from workspace."}, {"name" => "VERSION_UPDATING", "value" => "VERSION_UPDATING", "documentation" => "Workspace version is being updated."}, {"name" => "VERSION_UPDATE_FAILED", "value" => "VERSION_UPDATE_FAILED", "documentation" => "Workspace version update failed."}]})
    WorkspaceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.grafana#WorkspaceSummary', name: 'WorkspaceSummary')

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AllowedOrganizations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedOrganization)
    AssertionAttributes.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssertionAttribute, location_name: 'name'))
    AssertionAttributes.add_member(:login, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssertionAttribute, location_name: 'login'))
    AssertionAttributes.add_member(:email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssertionAttribute, location_name: 'email'))
    AssertionAttributes.add_member(:groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssertionAttribute, location_name: 'groups'))
    AssertionAttributes.add_member(:role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssertionAttribute, location_name: 'role'))
    AssertionAttributes.add_member(:org, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssertionAttribute, location_name: 'org'))
    AssertionAttributes.type = Types::AssertionAttributes
    AssociateLicenseInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateLicenseInput.add_member(:license_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseType, location_name: 'licenseType', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateLicenseInput.add_member(:grafana_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GrafanaToken, location_name: 'grafanaToken', traits: {"smithy.api#httpHeader" => "Grafana-Token"}))
    AssociateLicenseInput.type = Types::AssociateLicenseInput
    AssociateLicenseOutput.add_member(:workspace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceDescription, location_name: 'workspace', traits: {"smithy.api#required" => {}}))
    AssociateLicenseOutput.type = Types::AssociateLicenseOutput
    AuthenticationDescription.add_member(:providers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationProviders, location_name: 'providers', traits: {"smithy.api#required" => {}}))
    AuthenticationDescription.add_member(:saml, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SamlAuthentication, location_name: 'saml'))
    AuthenticationDescription.add_member(:aws_sso, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsSsoAuthentication, location_name: 'awsSso'))
    AuthenticationDescription.type = Types::AuthenticationDescription
    AuthenticationProviders.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationProviderTypes)
    AuthenticationSummary.add_member(:providers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationProviders, location_name: 'providers', traits: {"smithy.api#required" => {}}))
    AuthenticationSummary.add_member(:saml_configuration_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SamlConfigurationStatus, location_name: 'samlConfigurationStatus'))
    AuthenticationSummary.type = Types::AuthenticationSummary
    AwsSsoAuthentication.add_member(:sso_client_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SSOClientId, location_name: 'ssoClientId'))
    AwsSsoAuthentication.type = Types::AwsSsoAuthentication
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId', traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType', traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CreateWorkspaceApiKeyInput.add_member(:key_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKeyName, location_name: 'keyName', traits: {"smithy.api#required" => {}}))
    CreateWorkspaceApiKeyInput.add_member(:key_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'keyRole', traits: {"smithy.api#required" => {}}))
    CreateWorkspaceApiKeyInput.add_member(:seconds_to_live, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'secondsToLive', traits: {"smithy.api#range" => {"min" => 1, "max" => 2592000}, "smithy.api#required" => {}}))
    CreateWorkspaceApiKeyInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateWorkspaceApiKeyInput.type = Types::CreateWorkspaceApiKeyInput
    CreateWorkspaceApiKeyOutput.add_member(:key_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKeyName, location_name: 'keyName', traits: {"smithy.api#required" => {}}))
    CreateWorkspaceApiKeyOutput.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKeyToken, location_name: 'key', traits: {"smithy.api#required" => {}}))
    CreateWorkspaceApiKeyOutput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#required" => {}}))
    CreateWorkspaceApiKeyOutput.type = Types::CreateWorkspaceApiKeyOutput
    CreateWorkspaceInput.add_member(:account_access_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountAccessType, location_name: 'accountAccessType', traits: {"smithy.api#required" => {}}))
    CreateWorkspaceInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateWorkspaceInput.add_member(:organization_role_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationRoleName, location_name: 'organizationRoleName'))
    CreateWorkspaceInput.add_member(:permission_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionType, location_name: 'permissionType', traits: {"smithy.api#required" => {}}))
    CreateWorkspaceInput.add_member(:stack_set_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StackSetName, location_name: 'stackSetName'))
    CreateWorkspaceInput.add_member(:workspace_data_sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceTypesList, location_name: 'workspaceDataSources'))
    CreateWorkspaceInput.add_member(:workspace_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'workspaceDescription'))
    CreateWorkspaceInput.add_member(:workspace_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceName, location_name: 'workspaceName'))
    CreateWorkspaceInput.add_member(:workspace_notification_destinations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationDestinationsList, location_name: 'workspaceNotificationDestinations'))
    CreateWorkspaceInput.add_member(:workspace_organizational_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitList, location_name: 'workspaceOrganizationalUnits'))
    CreateWorkspaceInput.add_member(:workspace_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'workspaceRoleArn'))
    CreateWorkspaceInput.add_member(:authentication_providers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationProviders, location_name: 'authenticationProviders', traits: {"smithy.api#required" => {}}))
    CreateWorkspaceInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateWorkspaceInput.add_member(:vpc_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfiguration, location_name: 'vpcConfiguration'))
    CreateWorkspaceInput.add_member(:configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OverridableConfigurationJson, location_name: 'configuration'))
    CreateWorkspaceInput.add_member(:network_access_control, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkAccessConfiguration, location_name: 'networkAccessControl'))
    CreateWorkspaceInput.add_member(:grafana_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GrafanaVersion, location_name: 'grafanaVersion'))
    CreateWorkspaceInput.type = Types::CreateWorkspaceInput
    CreateWorkspaceOutput.add_member(:workspace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceDescription, location_name: 'workspace', traits: {"smithy.api#required" => {}}))
    CreateWorkspaceOutput.type = Types::CreateWorkspaceOutput
    CreateWorkspaceServiceAccountRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateWorkspaceServiceAccountRequest.add_member(:grafana_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Role, location_name: 'grafanaRole', traits: {"smithy.api#required" => {}}))
    CreateWorkspaceServiceAccountRequest.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateWorkspaceServiceAccountRequest.type = Types::CreateWorkspaceServiceAccountRequest
    CreateWorkspaceServiceAccountResponse.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'id', traits: {"smithy.api#required" => {}}))
    CreateWorkspaceServiceAccountResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateWorkspaceServiceAccountResponse.add_member(:grafana_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Role, location_name: 'grafanaRole', traits: {"smithy.api#required" => {}}))
    CreateWorkspaceServiceAccountResponse.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#required" => {}}))
    CreateWorkspaceServiceAccountResponse.type = Types::CreateWorkspaceServiceAccountResponse
    CreateWorkspaceServiceAccountTokenRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountTokenName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateWorkspaceServiceAccountTokenRequest.add_member(:seconds_to_live, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'secondsToLive', traits: {"smithy.api#range" => {"min" => 1, "max" => 2592000}, "smithy.api#required" => {}}))
    CreateWorkspaceServiceAccountTokenRequest.add_member(:service_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'serviceAccountId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateWorkspaceServiceAccountTokenRequest.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateWorkspaceServiceAccountTokenRequest.type = Types::CreateWorkspaceServiceAccountTokenRequest
    CreateWorkspaceServiceAccountTokenResponse.add_member(:service_account_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountTokenSummaryWithKey, location_name: 'serviceAccountToken', traits: {"smithy.api#required" => {}}))
    CreateWorkspaceServiceAccountTokenResponse.add_member(:service_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'serviceAccountId', traits: {"smithy.api#required" => {}}))
    CreateWorkspaceServiceAccountTokenResponse.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#required" => {}}))
    CreateWorkspaceServiceAccountTokenResponse.type = Types::CreateWorkspaceServiceAccountTokenResponse
    DataSourceTypesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceType)
    DeleteWorkspaceApiKeyInput.add_member(:key_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKeyName, location_name: 'keyName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWorkspaceApiKeyInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWorkspaceApiKeyInput.type = Types::DeleteWorkspaceApiKeyInput
    DeleteWorkspaceApiKeyOutput.add_member(:key_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiKeyName, location_name: 'keyName', traits: {"smithy.api#required" => {}}))
    DeleteWorkspaceApiKeyOutput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#required" => {}}))
    DeleteWorkspaceApiKeyOutput.type = Types::DeleteWorkspaceApiKeyOutput
    DeleteWorkspaceInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWorkspaceInput.type = Types::DeleteWorkspaceInput
    DeleteWorkspaceOutput.add_member(:workspace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceDescription, location_name: 'workspace', traits: {"smithy.api#required" => {}}))
    DeleteWorkspaceOutput.type = Types::DeleteWorkspaceOutput
    DeleteWorkspaceServiceAccountRequest.add_member(:service_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'serviceAccountId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWorkspaceServiceAccountRequest.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWorkspaceServiceAccountRequest.type = Types::DeleteWorkspaceServiceAccountRequest
    DeleteWorkspaceServiceAccountResponse.add_member(:service_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'serviceAccountId', traits: {"smithy.api#required" => {}}))
    DeleteWorkspaceServiceAccountResponse.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#required" => {}}))
    DeleteWorkspaceServiceAccountResponse.type = Types::DeleteWorkspaceServiceAccountResponse
    DeleteWorkspaceServiceAccountTokenRequest.add_member(:token_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'tokenId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWorkspaceServiceAccountTokenRequest.add_member(:service_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'serviceAccountId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWorkspaceServiceAccountTokenRequest.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWorkspaceServiceAccountTokenRequest.type = Types::DeleteWorkspaceServiceAccountTokenRequest
    DeleteWorkspaceServiceAccountTokenResponse.add_member(:token_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'tokenId', traits: {"smithy.api#required" => {}}))
    DeleteWorkspaceServiceAccountTokenResponse.add_member(:service_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'serviceAccountId', traits: {"smithy.api#required" => {}}))
    DeleteWorkspaceServiceAccountTokenResponse.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#required" => {}}))
    DeleteWorkspaceServiceAccountTokenResponse.type = Types::DeleteWorkspaceServiceAccountTokenResponse
    DescribeWorkspaceAuthenticationInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeWorkspaceAuthenticationInput.type = Types::DescribeWorkspaceAuthenticationInput
    DescribeWorkspaceAuthenticationOutput.add_member(:authentication, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationDescription, location_name: 'authentication', traits: {"smithy.api#required" => {}}))
    DescribeWorkspaceAuthenticationOutput.type = Types::DescribeWorkspaceAuthenticationOutput
    DescribeWorkspaceConfigurationInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeWorkspaceConfigurationInput.type = Types::DescribeWorkspaceConfigurationInput
    DescribeWorkspaceConfigurationOutput.add_member(:configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OverridableConfigurationJson, location_name: 'configuration', traits: {"smithy.api#required" => {}}))
    DescribeWorkspaceConfigurationOutput.add_member(:grafana_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GrafanaVersion, location_name: 'grafanaVersion'))
    DescribeWorkspaceConfigurationOutput.type = Types::DescribeWorkspaceConfigurationOutput
    DescribeWorkspaceInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeWorkspaceInput.type = Types::DescribeWorkspaceInput
    DescribeWorkspaceOutput.add_member(:workspace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceDescription, location_name: 'workspace', traits: {"smithy.api#required" => {}}))
    DescribeWorkspaceOutput.type = Types::DescribeWorkspaceOutput
    DisassociateLicenseInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateLicenseInput.add_member(:license_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseType, location_name: 'licenseType', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateLicenseInput.type = Types::DisassociateLicenseInput
    DisassociateLicenseOutput.add_member(:workspace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceDescription, location_name: 'workspace', traits: {"smithy.api#required" => {}}))
    DisassociateLicenseOutput.type = Types::DisassociateLicenseOutput
    GrafanaVersionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GrafanaVersion)
    IdpMetadata.add_member(:url, Types::IdpMetadata::Url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdpMetadataUrl, location_name: 'url'))
    IdpMetadata.add_member(:xml, Types::IdpMetadata::Xml, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'xml'))
    IdpMetadata.add_member(:unknown, Types::IdpMetadata::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    IdpMetadata.type = Types::IdpMetadata
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'retryAfterSeconds', traits: {"smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    ListPermissionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListPermissionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#httpQuery" => "nextToken"}))
    ListPermissionsInput.add_member(:user_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserType, location_name: 'userType', traits: {"smithy.api#httpQuery" => "userType"}))
    ListPermissionsInput.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SsoId, location_name: 'userId', traits: {"smithy.api#httpQuery" => "userId"}))
    ListPermissionsInput.add_member(:group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SsoId, location_name: 'groupId', traits: {"smithy.api#httpQuery" => "groupId"}))
    ListPermissionsInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListPermissionsInput.type = Types::ListPermissionsInput
    ListPermissionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    ListPermissionsOutput.add_member(:permissions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionEntryList, location_name: 'permissions', traits: {"smithy.api#required" => {}}))
    ListPermissionsOutput.type = Types::ListPermissionsOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#httpQuery" => "nextToken"}))
    ListVersionsRequest.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#httpQuery" => "workspace-id"}))
    ListVersionsRequest.type = Types::ListVersionsRequest
    ListVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    ListVersionsResponse.add_member(:grafana_versions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GrafanaVersionList, location_name: 'grafanaVersions'))
    ListVersionsResponse.type = Types::ListVersionsResponse
    ListWorkspaceServiceAccountTokensRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListWorkspaceServiceAccountTokensRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#httpQuery" => "nextToken"}))
    ListWorkspaceServiceAccountTokensRequest.add_member(:service_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'serviceAccountId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListWorkspaceServiceAccountTokensRequest.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListWorkspaceServiceAccountTokensRequest.type = Types::ListWorkspaceServiceAccountTokensRequest
    ListWorkspaceServiceAccountTokensResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    ListWorkspaceServiceAccountTokensResponse.add_member(:service_account_tokens, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountTokenList, location_name: 'serviceAccountTokens', traits: {"smithy.api#required" => {}}))
    ListWorkspaceServiceAccountTokensResponse.add_member(:service_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'serviceAccountId', traits: {"smithy.api#required" => {}}))
    ListWorkspaceServiceAccountTokensResponse.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#required" => {}}))
    ListWorkspaceServiceAccountTokensResponse.type = Types::ListWorkspaceServiceAccountTokensResponse
    ListWorkspaceServiceAccountsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListWorkspaceServiceAccountsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#httpQuery" => "nextToken"}))
    ListWorkspaceServiceAccountsRequest.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListWorkspaceServiceAccountsRequest.type = Types::ListWorkspaceServiceAccountsRequest
    ListWorkspaceServiceAccountsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    ListWorkspaceServiceAccountsResponse.add_member(:service_accounts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountList, location_name: 'serviceAccounts', traits: {"smithy.api#required" => {}}))
    ListWorkspaceServiceAccountsResponse.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#required" => {}}))
    ListWorkspaceServiceAccountsResponse.type = Types::ListWorkspaceServiceAccountsResponse
    ListWorkspacesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListWorkspacesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListWorkspacesInput.type = Types::ListWorkspacesInput
    ListWorkspacesOutput.add_member(:workspaces, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceList, location_name: 'workspaces', traits: {"smithy.api#required" => {}}))
    ListWorkspacesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken'))
    ListWorkspacesOutput.type = Types::ListWorkspacesOutput
    NetworkAccessConfiguration.add_member(:prefix_list_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrefixListIds, location_name: 'prefixListIds', traits: {"smithy.api#required" => {}}))
    NetworkAccessConfiguration.add_member(:vpce_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpceIds, location_name: 'vpceIds', traits: {"smithy.api#required" => {}}))
    NetworkAccessConfiguration.type = Types::NetworkAccessConfiguration
    NotificationDestinationsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationDestinationType)
    OrganizationalUnitList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnit)
    PermissionEntry.add_member(:user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: User, location_name: 'user', traits: {"smithy.api#required" => {}}))
    PermissionEntry.add_member(:role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Role, location_name: 'role', traits: {"smithy.api#required" => {}}))
    PermissionEntry.type = Types::PermissionEntry
    PermissionEntryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionEntry)
    PrefixListIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrefixListId)
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RoleValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleValue)
    RoleValues.add_member(:editor, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleValueList, location_name: 'editor'))
    RoleValues.add_member(:admin, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleValueList, location_name: 'admin'))
    RoleValues.type = Types::RoleValues
    SamlAuthentication.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SamlConfigurationStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    SamlAuthentication.add_member(:configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SamlConfiguration, location_name: 'configuration'))
    SamlAuthentication.type = Types::SamlAuthentication
    SamlConfiguration.add_member(:idp_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdpMetadata, location_name: 'idpMetadata', traits: {"smithy.api#required" => {}}))
    SamlConfiguration.add_member(:assertion_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssertionAttributes, location_name: 'assertionAttributes'))
    SamlConfiguration.add_member(:role_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleValues, location_name: 'roleValues'))
    SamlConfiguration.add_member(:allowed_organizations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedOrganizations, location_name: 'allowedOrganizations'))
    SamlConfiguration.add_member(:login_validity_duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoginValidityDuration, location_name: 'loginValidityDuration', traits: {"smithy.api#default" => 0}))
    SamlConfiguration.type = Types::SamlConfiguration
    SecurityGroupIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupId)
    ServiceAccountList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountSummary)
    ServiceAccountSummary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'id', traits: {"smithy.api#required" => {}}))
    ServiceAccountSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#required" => {}}))
    ServiceAccountSummary.add_member(:is_disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'isDisabled', traits: {"smithy.api#required" => {}}))
    ServiceAccountSummary.add_member(:grafana_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Role, location_name: 'grafanaRole', traits: {"smithy.api#required" => {}}))
    ServiceAccountSummary.type = Types::ServiceAccountSummary
    ServiceAccountTokenList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountTokenSummary)
    ServiceAccountTokenSummary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'id', traits: {"smithy.api#required" => {}}))
    ServiceAccountTokenSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#required" => {}}))
    ServiceAccountTokenSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    ServiceAccountTokenSummary.add_member(:expires_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'expiresAt', traits: {"smithy.api#required" => {}}))
    ServiceAccountTokenSummary.add_member(:last_used_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastUsedAt'))
    ServiceAccountTokenSummary.type = Types::ServiceAccountTokenSummary
    ServiceAccountTokenSummaryWithKey.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'id', traits: {"smithy.api#required" => {}}))
    ServiceAccountTokenSummaryWithKey.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#required" => {}}))
    ServiceAccountTokenSummaryWithKey.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountTokenKey, location_name: 'key', traits: {"smithy.api#required" => {}}))
    ServiceAccountTokenSummaryWithKey.type = Types::ServiceAccountTokenSummaryWithKey
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'serviceCode', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'quotaCode', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SubnetIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId)
    TagKeys.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'serviceCode'))
    ThrottlingException.add_member(:quota_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'quotaCode'))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'retryAfterSeconds', traits: {"smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: 'tagKeys', traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateError.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'code', traits: {"smithy.api#range" => {"min" => 100, "max" => 999}, "smithy.api#required" => {}}))
    UpdateError.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    UpdateError.add_member(:caused_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateInstruction, location_name: 'causedBy', traits: {"smithy.api#required" => {}}))
    UpdateError.type = Types::UpdateError
    UpdateErrorList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateError)
    UpdateInstruction.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAction, location_name: 'action', traits: {"smithy.api#required" => {}}))
    UpdateInstruction.add_member(:role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Role, location_name: 'role', traits: {"smithy.api#required" => {}}))
    UpdateInstruction.add_member(:users, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserList, location_name: 'users', traits: {"smithy.api#required" => {}}))
    UpdateInstruction.type = Types::UpdateInstruction
    UpdateInstructionBatch.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateInstruction)
    UpdatePermissionsInput.add_member(:update_instruction_batch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateInstructionBatch, location_name: 'updateInstructionBatch', traits: {"smithy.api#required" => {}}))
    UpdatePermissionsInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdatePermissionsInput.type = Types::UpdatePermissionsInput
    UpdatePermissionsOutput.add_member(:errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateErrorList, location_name: 'errors', traits: {"aws.cloudformation#cfnMutability" => "read", "smithy.api#required" => {}}))
    UpdatePermissionsOutput.type = Types::UpdatePermissionsOutput
    UpdateWorkspaceAuthenticationInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateWorkspaceAuthenticationInput.add_member(:authentication_providers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationProviders, location_name: 'authenticationProviders', traits: {"smithy.api#required" => {}}))
    UpdateWorkspaceAuthenticationInput.add_member(:saml_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SamlConfiguration, location_name: 'samlConfiguration'))
    UpdateWorkspaceAuthenticationInput.type = Types::UpdateWorkspaceAuthenticationInput
    UpdateWorkspaceAuthenticationOutput.add_member(:authentication, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationDescription, location_name: 'authentication', traits: {"smithy.api#required" => {}}))
    UpdateWorkspaceAuthenticationOutput.type = Types::UpdateWorkspaceAuthenticationOutput
    UpdateWorkspaceConfigurationInput.add_member(:configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OverridableConfigurationJson, location_name: 'configuration', traits: {"smithy.api#required" => {}}))
    UpdateWorkspaceConfigurationInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateWorkspaceConfigurationInput.add_member(:grafana_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GrafanaVersion, location_name: 'grafanaVersion'))
    UpdateWorkspaceConfigurationInput.type = Types::UpdateWorkspaceConfigurationInput
    UpdateWorkspaceConfigurationOutput.type = Types::UpdateWorkspaceConfigurationOutput
    UpdateWorkspaceInput.add_member(:account_access_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountAccessType, location_name: 'accountAccessType'))
    UpdateWorkspaceInput.add_member(:organization_role_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationRoleName, location_name: 'organizationRoleName'))
    UpdateWorkspaceInput.add_member(:permission_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionType, location_name: 'permissionType'))
    UpdateWorkspaceInput.add_member(:stack_set_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StackSetName, location_name: 'stackSetName'))
    UpdateWorkspaceInput.add_member(:workspace_data_sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceTypesList, location_name: 'workspaceDataSources'))
    UpdateWorkspaceInput.add_member(:workspace_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'workspaceDescription'))
    UpdateWorkspaceInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'workspaceId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateWorkspaceInput.add_member(:workspace_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceName, location_name: 'workspaceName'))
    UpdateWorkspaceInput.add_member(:workspace_notification_destinations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationDestinationsList, location_name: 'workspaceNotificationDestinations'))
    UpdateWorkspaceInput.add_member(:workspace_organizational_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitList, location_name: 'workspaceOrganizationalUnits'))
    UpdateWorkspaceInput.add_member(:workspace_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'workspaceRoleArn'))
    UpdateWorkspaceInput.add_member(:vpc_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfiguration, location_name: 'vpcConfiguration'))
    UpdateWorkspaceInput.add_member(:remove_vpc_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'removeVpcConfiguration'))
    UpdateWorkspaceInput.add_member(:network_access_control, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkAccessConfiguration, location_name: 'networkAccessControl'))
    UpdateWorkspaceInput.add_member(:remove_network_access_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'removeNetworkAccessConfiguration'))
    UpdateWorkspaceInput.type = Types::UpdateWorkspaceInput
    UpdateWorkspaceOutput.add_member(:workspace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceDescription, location_name: 'workspace', traits: {"smithy.api#required" => {}}))
    UpdateWorkspaceOutput.type = Types::UpdateWorkspaceOutput
    User.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SsoId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    User.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    User.type = Types::User
    UserList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: User)
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'reason', traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: 'fieldList'))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)
    VpcConfiguration.add_member(:security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: 'securityGroupIds', traits: {"smithy.api#required" => {}}))
    VpcConfiguration.add_member(:subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIds, location_name: 'subnetIds', traits: {"smithy.api#required" => {}}))
    VpcConfiguration.type = Types::VpcConfiguration
    VpceIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpceId)
    WorkspaceDescription.add_member(:account_access_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountAccessType, location_name: 'accountAccessType'))
    WorkspaceDescription.add_member(:created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'created', traits: {"smithy.api#required" => {}}))
    WorkspaceDescription.add_member(:data_sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceTypesList, location_name: 'dataSources', traits: {"smithy.api#required" => {}}))
    WorkspaceDescription.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    WorkspaceDescription.add_member(:endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Endpoint, location_name: 'endpoint', traits: {"smithy.api#required" => {}}))
    WorkspaceDescription.add_member(:grafana_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GrafanaVersion, location_name: 'grafanaVersion', traits: {"smithy.api#required" => {}}))
    WorkspaceDescription.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    WorkspaceDescription.add_member(:modified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'modified', traits: {"smithy.api#required" => {}}))
    WorkspaceDescription.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceName, location_name: 'name'))
    WorkspaceDescription.add_member(:organization_role_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationRoleName, location_name: 'organizationRoleName'))
    WorkspaceDescription.add_member(:notification_destinations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationDestinationsList, location_name: 'notificationDestinations'))
    WorkspaceDescription.add_member(:organizational_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitList, location_name: 'organizationalUnits'))
    WorkspaceDescription.add_member(:permission_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionType, location_name: 'permissionType'))
    WorkspaceDescription.add_member(:stack_set_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StackSetName, location_name: 'stackSetName'))
    WorkspaceDescription.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    WorkspaceDescription.add_member(:workspace_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'workspaceRoleArn'))
    WorkspaceDescription.add_member(:license_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseType, location_name: 'licenseType'))
    WorkspaceDescription.add_member(:free_trial_consumed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'freeTrialConsumed'))
    WorkspaceDescription.add_member(:license_expiration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'licenseExpiration'))
    WorkspaceDescription.add_member(:free_trial_expiration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'freeTrialExpiration'))
    WorkspaceDescription.add_member(:authentication, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationSummary, location_name: 'authentication', traits: {"smithy.api#required" => {}}))
    WorkspaceDescription.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    WorkspaceDescription.add_member(:vpc_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfiguration, location_name: 'vpcConfiguration'))
    WorkspaceDescription.add_member(:network_access_control, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkAccessConfiguration, location_name: 'networkAccessControl'))
    WorkspaceDescription.add_member(:grafana_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GrafanaToken, location_name: 'grafanaToken'))
    WorkspaceDescription.type = Types::WorkspaceDescription
    WorkspaceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceSummary)
    WorkspaceSummary.add_member(:created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'created', traits: {"smithy.api#required" => {}}))
    WorkspaceSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    WorkspaceSummary.add_member(:endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Endpoint, location_name: 'endpoint', traits: {"smithy.api#required" => {}}))
    WorkspaceSummary.add_member(:grafana_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GrafanaVersion, location_name: 'grafanaVersion', traits: {"smithy.api#required" => {}}))
    WorkspaceSummary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    WorkspaceSummary.add_member(:modified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'modified', traits: {"smithy.api#required" => {}}))
    WorkspaceSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceName, location_name: 'name'))
    WorkspaceSummary.add_member(:notification_destinations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationDestinationsList, location_name: 'notificationDestinations'))
    WorkspaceSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkspaceStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    WorkspaceSummary.add_member(:authentication, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationSummary, location_name: 'authentication', traits: {"smithy.api#required" => {}}))
    WorkspaceSummary.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    WorkspaceSummary.add_member(:license_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseType, location_name: 'licenseType'))
    WorkspaceSummary.add_member(:grafana_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GrafanaToken, location_name: 'grafanaToken'))
    WorkspaceSummary.type = Types::WorkspaceSummary

    AWSGrafanaControlPlane = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.grafana#AWSGrafanaControlPlane"
      service.name = "AWSGrafanaControlPlane"
      service.version = "2020-08-18"
      service.traits = {"aws.api#controlPlane" => {}, "aws.api#service" => {"sdkId" => "grafana", "arnNamespace" => "grafana", "cloudFormationName" => "Grafana", "cloudTrailEventSource" => "EVENT_SOURCE_VALUE"}, "aws.auth#sigv4" => {"name" => "grafana"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id"], "additionalExposedHeaders" => ["cache-control", "x-amzn-errortype", "x-amzn-requestid", "x-amzn-errormessage", "x-amzn-trace-id", "x-amzn-requestid", "x-amz-apigw-id,date"]}, "smithy.api#title" => "Amazon Managed Grafana"}
      service.add_operation(:associate_license, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#AssociateLicense"
        operation.name = "AssociateLicense"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateLicenseInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateLicenseOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "POST", "uri" => "/workspaces/{workspaceId}/licenses/{licenseType}"}}
      end)
      service.add_operation(:create_workspace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#CreateWorkspace"
        operation.name = "CreateWorkspace"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkspaceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkspaceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "POST", "uri" => "/workspaces"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_workspace_api_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#CreateWorkspaceApiKey"
        operation.name = "CreateWorkspaceApiKey"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkspaceApiKeyInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkspaceApiKeyOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/workspaces/{workspaceId}/apikeys"}}
      end)
      service.add_operation(:create_workspace_service_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#CreateWorkspaceServiceAccount"
        operation.name = "CreateWorkspaceServiceAccount"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkspaceServiceAccountRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkspaceServiceAccountResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/workspaces/{workspaceId}/serviceaccounts"}}
      end)
      service.add_operation(:create_workspace_service_account_token, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#CreateWorkspaceServiceAccountToken"
        operation.name = "CreateWorkspaceServiceAccountToken"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkspaceServiceAccountTokenRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkspaceServiceAccountTokenResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/workspaces/{workspaceId}/serviceaccounts/{serviceAccountId}/tokens"}}
      end)
      service.add_operation(:delete_workspace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#DeleteWorkspace"
        operation.name = "DeleteWorkspace"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWorkspaceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWorkspaceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "DELETE", "uri" => "/workspaces/{workspaceId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_workspace_api_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#DeleteWorkspaceApiKey"
        operation.name = "DeleteWorkspaceApiKey"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWorkspaceApiKeyInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWorkspaceApiKeyOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/workspaces/{workspaceId}/apikeys/{keyName}"}}
      end)
      service.add_operation(:delete_workspace_service_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#DeleteWorkspaceServiceAccount"
        operation.name = "DeleteWorkspaceServiceAccount"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWorkspaceServiceAccountRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWorkspaceServiceAccountResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/workspaces/{workspaceId}/serviceaccounts/{serviceAccountId}"}}
      end)
      service.add_operation(:delete_workspace_service_account_token, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#DeleteWorkspaceServiceAccountToken"
        operation.name = "DeleteWorkspaceServiceAccountToken"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWorkspaceServiceAccountTokenRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWorkspaceServiceAccountTokenResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/workspaces/{workspaceId}/serviceaccounts/{serviceAccountId}/tokens/{tokenId}"}}
      end)
      service.add_operation(:describe_workspace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#DescribeWorkspace"
        operation.name = "DescribeWorkspace"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkspaceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkspaceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/workspaces/{workspaceId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_workspace_authentication, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#DescribeWorkspaceAuthentication"
        operation.name = "DescribeWorkspaceAuthentication"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkspaceAuthenticationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkspaceAuthenticationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/workspaces/{workspaceId}/authentication"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_workspace_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#DescribeWorkspaceConfiguration"
        operation.name = "DescribeWorkspaceConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkspaceConfigurationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWorkspaceConfigurationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/workspaces/{workspaceId}/configuration"}}
      end)
      service.add_operation(:disassociate_license, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#DisassociateLicense"
        operation.name = "DisassociateLicense"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateLicenseInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateLicenseOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "DELETE", "uri" => "/workspaces/{workspaceId}/licenses/{licenseType}"}}
      end)
      service.add_operation(:list_permissions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#ListPermissions"
        operation.name = "ListPermissions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPermissionsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPermissionsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/workspaces/{workspaceId}/permissions"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPermissions.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#ListVersions"
        operation.name = "ListVersions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListVersionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListVersionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/versions"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListVersions.new
      end)
      service.add_operation(:list_workspace_service_account_tokens, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#ListWorkspaceServiceAccountTokens"
        operation.name = "ListWorkspaceServiceAccountTokens"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkspaceServiceAccountTokensRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkspaceServiceAccountTokensResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/workspaces/{workspaceId}/serviceaccounts/{serviceAccountId}/tokens"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListWorkspaceServiceAccountTokens.new
      end)
      service.add_operation(:list_workspace_service_accounts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#ListWorkspaceServiceAccounts"
        operation.name = "ListWorkspaceServiceAccounts"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkspaceServiceAccountsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkspaceServiceAccountsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/workspaces/{workspaceId}/serviceaccounts"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListWorkspaceServiceAccounts.new
      end)
      service.add_operation(:list_workspaces, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#ListWorkspaces"
        operation.name = "ListWorkspaces"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkspacesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkspacesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/workspaces"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListWorkspaces.new
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}"}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_permissions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#UpdatePermissions"
        operation.name = "UpdatePermissions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePermissionsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePermissionsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/workspaces/{workspaceId}/permissions"}}
      end)
      service.add_operation(:update_workspace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#UpdateWorkspace"
        operation.name = "UpdateWorkspace"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorkspaceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorkspaceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "PUT", "uri" => "/workspaces/{workspaceId}"}}
      end)
      service.add_operation(:update_workspace_authentication, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#UpdateWorkspaceAuthentication"
        operation.name = "UpdateWorkspaceAuthentication"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorkspaceAuthenticationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorkspaceAuthenticationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/workspaces/{workspaceId}/authentication"}}
      end)
      service.add_operation(:update_workspace_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#UpdateWorkspaceConfiguration"
        operation.name = "UpdateWorkspaceConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorkspaceConfigurationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorkspaceConfigurationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "PUT", "uri" => "/workspaces/{workspaceId}/configuration"}}
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
