# frozen_string_literal: true

# This is generated code!

module Aws::Grafana
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountAccessType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.grafana#AccountAccessType", name: "AccountAccessType", traits: {"smithy.api#enum" => [{"name" => "CURRENT_ACCOUNT", "value" => "CURRENT_ACCOUNT", "documentation" => "Indicates that the customer is using Grafana to monitor resources in their current account."}, {"name" => "ORGANIZATION", "value" => "ORGANIZATION", "documentation" => "Indicates that the customer is using Grafana to monitor resources in organizational units."}]})
    AllowedOrganization = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.grafana#AllowedOrganization", name: "AllowedOrganization", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    AllowedOrganizations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.grafana#AllowedOrganizations", name: "AllowedOrganizations")
    ApiKeyName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.grafana#ApiKeyName", name: "ApiKeyName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ApiKeyToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.grafana#ApiKeyToken", name: "ApiKeyToken", traits: {"smithy.api#sensitive" => {}})
    AssertionAttribute = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.grafana#AssertionAttribute", name: "AssertionAttribute", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    AssertionAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#AssertionAttributes", name: "AssertionAttributes")
    AssociateLicenseInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#AssociateLicenseInput", name: "AssociateLicenseInput")
    AssociateLicenseOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#AssociateLicenseOutput", name: "AssociateLicenseOutput")
    AuthenticationDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#AuthenticationDescription", name: "AuthenticationDescription")
    AuthenticationProviderTypes = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.grafana#AuthenticationProviderTypes", name: "AuthenticationProviderTypes", traits: {"smithy.api#enum" => [{"name" => "AWS_SSO", "value" => "AWS_SSO", "documentation" => "Indicates that AMG workspace has AWS SSO enabled as its authentication provider."}, {"name" => "SAML", "value" => "SAML", "documentation" => "Indicates that the AMG workspace has SAML enabled as its authentication provider."}]})
    AuthenticationProviders = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.grafana#AuthenticationProviders", name: "AuthenticationProviders")
    AuthenticationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#AuthenticationSummary", name: "AuthenticationSummary")
    AwsSsoAuthentication = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#AwsSsoAuthentication", name: "AwsSsoAuthentication")
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.grafana#ClientToken", name: "ClientToken", traits: {"smithy.api#pattern" => "^[!-~]{1,64}$"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateWorkspaceApiKeyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#CreateWorkspaceApiKeyInput", name: "CreateWorkspaceApiKeyInput")
    CreateWorkspaceApiKeyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#CreateWorkspaceApiKeyOutput", name: "CreateWorkspaceApiKeyOutput")
    CreateWorkspaceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#CreateWorkspaceInput", name: "CreateWorkspaceInput")
    CreateWorkspaceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#CreateWorkspaceOutput", name: "CreateWorkspaceOutput")
    CreateWorkspaceServiceAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#CreateWorkspaceServiceAccountRequest", name: "CreateWorkspaceServiceAccountRequest")
    CreateWorkspaceServiceAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#CreateWorkspaceServiceAccountResponse", name: "CreateWorkspaceServiceAccountResponse")
    CreateWorkspaceServiceAccountTokenRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#CreateWorkspaceServiceAccountTokenRequest", name: "CreateWorkspaceServiceAccountTokenRequest")
    CreateWorkspaceServiceAccountTokenResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#CreateWorkspaceServiceAccountTokenResponse", name: "CreateWorkspaceServiceAccountTokenResponse")
    DataSourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.grafana#DataSourceType", name: "DataSourceType", traits: {"smithy.api#enum" => [{"name" => "AMAZON_OPENSEARCH_SERVICE", "value" => "AMAZON_OPENSEARCH_SERVICE", "documentation" => "Amazon OpenSearch Service"}, {"name" => "CLOUDWATCH", "value" => "CLOUDWATCH", "documentation" => "CloudWatch Logs"}, {"name" => "PROMETHEUS", "value" => "PROMETHEUS", "documentation" => "Managed Prometheus"}, {"name" => "XRAY", "value" => "XRAY", "documentation" => "X-Ray"}, {"name" => "TIMESTREAM", "value" => "TIMESTREAM", "documentation" => "Timestream"}, {"name" => "SITEWISE", "value" => "SITEWISE", "documentation" => "IoT SiteWise"}, {"name" => "ATHENA", "value" => "ATHENA", "documentation" => "Amazon Athena"}, {"name" => "REDSHIFT", "value" => "REDSHIFT", "documentation" => "Redshift"}, {"name" => "TWINMAKER", "value" => "TWINMAKER", "documentation" => "IoT TwinMaker"}]})
    DataSourceTypesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.grafana#DataSourceTypesList", name: "DataSourceTypesList")
    DegradedWorkspaceReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.grafana#DegradedWorkspaceReason", name: "DegradedWorkspaceReason", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    DeleteWorkspaceApiKeyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#DeleteWorkspaceApiKeyInput", name: "DeleteWorkspaceApiKeyInput")
    DeleteWorkspaceApiKeyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#DeleteWorkspaceApiKeyOutput", name: "DeleteWorkspaceApiKeyOutput")
    DeleteWorkspaceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#DeleteWorkspaceInput", name: "DeleteWorkspaceInput")
    DeleteWorkspaceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#DeleteWorkspaceOutput", name: "DeleteWorkspaceOutput")
    DeleteWorkspaceServiceAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#DeleteWorkspaceServiceAccountRequest", name: "DeleteWorkspaceServiceAccountRequest")
    DeleteWorkspaceServiceAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#DeleteWorkspaceServiceAccountResponse", name: "DeleteWorkspaceServiceAccountResponse")
    DeleteWorkspaceServiceAccountTokenRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#DeleteWorkspaceServiceAccountTokenRequest", name: "DeleteWorkspaceServiceAccountTokenRequest")
    DeleteWorkspaceServiceAccountTokenResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#DeleteWorkspaceServiceAccountTokenResponse", name: "DeleteWorkspaceServiceAccountTokenResponse")
    DescribeWorkspaceAuthenticationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#DescribeWorkspaceAuthenticationInput", name: "DescribeWorkspaceAuthenticationInput")
    DescribeWorkspaceAuthenticationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#DescribeWorkspaceAuthenticationOutput", name: "DescribeWorkspaceAuthenticationOutput")
    DescribeWorkspaceConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#DescribeWorkspaceConfigurationInput", name: "DescribeWorkspaceConfigurationInput")
    DescribeWorkspaceConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#DescribeWorkspaceConfigurationOutput", name: "DescribeWorkspaceConfigurationOutput")
    DescribeWorkspaceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#DescribeWorkspaceInput", name: "DescribeWorkspaceInput")
    DescribeWorkspaceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#DescribeWorkspaceOutput", name: "DescribeWorkspaceOutput")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.grafana#Description", name: "Description", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#sensitive" => {}})
    DisassociateLicenseInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#DisassociateLicenseInput", name: "DisassociateLicenseInput")
    DisassociateLicenseOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#DisassociateLicenseOutput", name: "DisassociateLicenseOutput")
    Endpoint = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.grafana#Endpoint", name: "Endpoint", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    GrafanaToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.grafana#GrafanaToken", name: "GrafanaToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 36}})
    GrafanaVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.grafana#GrafanaVersion", name: "GrafanaVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    GrafanaVersionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.grafana#GrafanaVersionList", name: "GrafanaVersionList")
    IPAddressType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.grafana#IPAddressType", name: "IPAddressType", traits: {"smithy.api#enum" => [{"name" => "IPV4", "value" => "IPv4", "documentation" => "Indicates that connections to this workspace can only be made over IPv4."}, {"name" => "DUAL_STACK", "value" => "DualStack", "documentation" => "Indicates that connections to this workspace can be made over IPv4 or IPv6."}]})
    IamRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.grafana#IamRoleArn", name: "IamRoleArn", traits: {"aws.api#arnReference" => {"type" => "AWS::IAM::Role"}, "smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#sensitive" => {}})
    IdpMetadata = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.grafana#IdpMetadata", name: "IdpMetadata")
    IdpMetadataUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.grafana#IdpMetadataUrl", name: "IdpMetadataUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    KmsKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.grafana#KmsKeyId", name: "KmsKeyId", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[a-zA-Z0-9:/_-]+$"})
    LicenseType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.grafana#LicenseType", name: "LicenseType", traits: {"smithy.api#enum" => [{"name" => "ENTERPRISE", "value" => "ENTERPRISE", "documentation" => "Grafana Enterprise License."}, {"name" => "ENTERPRISE_FREE_TRIAL", "value" => "ENTERPRISE_FREE_TRIAL", "documentation" => "Grafana Enterprise Free Trial License."}]})
    ListPermissionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#ListPermissionsInput", name: "ListPermissionsInput")
    ListPermissionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#ListPermissionsOutput", name: "ListPermissionsOutput")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#ListTagsForResourceInput", name: "ListTagsForResourceInput")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    ListVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#ListVersionsRequest", name: "ListVersionsRequest")
    ListVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#ListVersionsResponse", name: "ListVersionsResponse")
    ListWorkspaceServiceAccountTokensRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#ListWorkspaceServiceAccountTokensRequest", name: "ListWorkspaceServiceAccountTokensRequest")
    ListWorkspaceServiceAccountTokensResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#ListWorkspaceServiceAccountTokensResponse", name: "ListWorkspaceServiceAccountTokensResponse")
    ListWorkspaceServiceAccountsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#ListWorkspaceServiceAccountsRequest", name: "ListWorkspaceServiceAccountsRequest")
    ListWorkspaceServiceAccountsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#ListWorkspaceServiceAccountsResponse", name: "ListWorkspaceServiceAccountsResponse")
    ListWorkspacesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#ListWorkspacesInput", name: "ListWorkspacesInput")
    ListWorkspacesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#ListWorkspacesOutput", name: "ListWorkspacesOutput")
    LoginValidityDuration = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.grafana#LoginValidityDuration", name: "LoginValidityDuration", traits: {"smithy.api#default" => 0})
    NetworkAccessConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#NetworkAccessConfiguration", name: "NetworkAccessConfiguration")
    NotificationDestinationType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.grafana#NotificationDestinationType", name: "NotificationDestinationType", traits: {"smithy.api#enum" => [{"name" => "SNS", "value" => "SNS", "documentation" => "AWS Simple Notification Service"}]})
    NotificationDestinationsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.grafana#NotificationDestinationsList", name: "NotificationDestinationsList")
    OrganizationRoleName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.grafana#OrganizationRoleName", name: "OrganizationRoleName", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#sensitive" => {}})
    OrganizationalUnit = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.grafana#OrganizationalUnit", name: "OrganizationalUnit")
    OrganizationalUnitList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.grafana#OrganizationalUnitList", name: "OrganizationalUnitList", traits: {"smithy.api#sensitive" => {}})
    OverridableConfigurationJson = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.grafana#OverridableConfigurationJson", name: "OverridableConfigurationJson", traits: {"smithy.api#length" => {"min" => 2, "max" => 65536}, "smithy.api#mediaType" => "application/json"})
    PaginationToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.grafana#PaginationToken", name: "PaginationToken")
    PermissionEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#PermissionEntry", name: "PermissionEntry")
    PermissionEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.grafana#PermissionEntryList", name: "PermissionEntryList")
    PermissionType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.grafana#PermissionType", name: "PermissionType", traits: {"smithy.api#enum" => [{"name" => "CUSTOMER_MANAGED", "value" => "CUSTOMER_MANAGED", "documentation" => "Customer Managed"}, {"name" => "SERVICE_MANAGED", "value" => "SERVICE_MANAGED", "documentation" => "Service Managed"}]})
    PrefixListId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.grafana#PrefixListId", name: "PrefixListId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    PrefixListIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.grafana#PrefixListIds", name: "PrefixListIds")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Role = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.grafana#Role", name: "Role", traits: {"smithy.api#enum" => [{"name" => "ADMIN", "value" => "ADMIN", "documentation" => "Role Admin."}, {"name" => "EDITOR", "value" => "EDITOR", "documentation" => "Role Editor."}, {"name" => "VIEWER", "value" => "VIEWER", "documentation" => "Role Viewer."}]})
    RoleValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.grafana#RoleValue", name: "RoleValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    RoleValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.grafana#RoleValueList", name: "RoleValueList", traits: {"smithy.api#sensitive" => {}})
    RoleValues = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#RoleValues", name: "RoleValues")
    SSOClientId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.grafana#SSOClientId", name: "SSOClientId")
    SamlAuthentication = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#SamlAuthentication", name: "SamlAuthentication")
    SamlConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#SamlConfiguration", name: "SamlConfiguration")
    SamlConfigurationStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.grafana#SamlConfigurationStatus", name: "SamlConfigurationStatus", traits: {"smithy.api#enum" => [{"name" => "CONFIGURED", "value" => "CONFIGURED", "documentation" => "Indicates that SAML on an AMG workspace is enabled and has been configured."}, {"name" => "NOT_CONFIGURED", "value" => "NOT_CONFIGURED", "documentation" => "Indicates that SAML on an AMG workspace is enabled but has not been configured."}]})
    SecurityGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.grafana#SecurityGroupId", name: "SecurityGroupId", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    SecurityGroupIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.grafana#SecurityGroupIds", name: "SecurityGroupIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    ServiceAccountList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.grafana#ServiceAccountList", name: "ServiceAccountList")
    ServiceAccountName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.grafana#ServiceAccountName", name: "ServiceAccountName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    ServiceAccountSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#ServiceAccountSummary", name: "ServiceAccountSummary")
    ServiceAccountTokenKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.grafana#ServiceAccountTokenKey", name: "ServiceAccountTokenKey", traits: {"smithy.api#sensitive" => {}})
    ServiceAccountTokenList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.grafana#ServiceAccountTokenList", name: "ServiceAccountTokenList")
    ServiceAccountTokenName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.grafana#ServiceAccountTokenName", name: "ServiceAccountTokenName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    ServiceAccountTokenSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#ServiceAccountTokenSummary", name: "ServiceAccountTokenSummary")
    ServiceAccountTokenSummaryWithKey = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#ServiceAccountTokenSummaryWithKey", name: "ServiceAccountTokenSummaryWithKey")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SsoId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.grafana#SsoId", name: "SsoId", traits: {"smithy.api#length" => {"min" => 1, "max" => 47}})
    StackSetName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.grafana#StackSetName", name: "StackSetName")
    SubnetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.grafana#SubnetId", name: "SubnetId", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    SubnetIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.grafana#SubnetIds", name: "SubnetIds", traits: {"smithy.api#length" => {"min" => 2, "max" => 6}})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.grafana#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.grafana#TagKeys", name: "TagKeys")
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.grafana#TagMap", name: "TagMap", traits: {"smithy.api#length" => {"max" => 50}})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#TagResourceInput", name: "TagResourceInput")
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#TagResourceOutput", name: "TagResourceOutput")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.grafana#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {}})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#UntagResourceInput", name: "UntagResourceInput")
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#UntagResourceOutput", name: "UntagResourceOutput")
    UpdateAction = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.grafana#UpdateAction", name: "UpdateAction", traits: {"smithy.api#enum" => [{"name" => "ADD", "value" => "ADD", "documentation" => "Add permissions."}, {"name" => "REVOKE", "value" => "REVOKE", "documentation" => "Revoke permissions."}]})
    UpdateError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#UpdateError", name: "UpdateError")
    UpdateErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.grafana#UpdateErrorList", name: "UpdateErrorList")
    UpdateInstruction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#UpdateInstruction", name: "UpdateInstruction")
    UpdateInstructionBatch = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.grafana#UpdateInstructionBatch", name: "UpdateInstructionBatch", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    UpdatePermissionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#UpdatePermissionsInput", name: "UpdatePermissionsInput")
    UpdatePermissionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#UpdatePermissionsOutput", name: "UpdatePermissionsOutput")
    UpdateWorkspaceAuthenticationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#UpdateWorkspaceAuthenticationInput", name: "UpdateWorkspaceAuthenticationInput")
    UpdateWorkspaceAuthenticationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#UpdateWorkspaceAuthenticationOutput", name: "UpdateWorkspaceAuthenticationOutput")
    UpdateWorkspaceConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#UpdateWorkspaceConfigurationInput", name: "UpdateWorkspaceConfigurationInput")
    UpdateWorkspaceConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#UpdateWorkspaceConfigurationOutput", name: "UpdateWorkspaceConfigurationOutput")
    UpdateWorkspaceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#UpdateWorkspaceInput", name: "UpdateWorkspaceInput")
    UpdateWorkspaceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#UpdateWorkspaceOutput", name: "UpdateWorkspaceOutput")
    User = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#User", name: "User")
    UserList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.grafana#UserList", name: "UserList")
    UserType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.grafana#UserType", name: "UserType", traits: {"smithy.api#enum" => [{"name" => "SSO_USER", "value" => "SSO_USER", "documentation" => "SSO user."}, {"name" => "SSO_GROUP", "value" => "SSO_GROUP", "documentation" => "SSO group."}]})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.grafana#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")
    ValidationExceptionReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.grafana#ValidationExceptionReason", name: "ValidationExceptionReason", traits: {"smithy.api#enum" => [{"name" => "UNKNOWN_OPERATION", "value" => "UNKNOWN_OPERATION"}, {"name" => "CANNOT_PARSE", "value" => "CANNOT_PARSE"}, {"name" => "FIELD_VALIDATION_FAILED", "value" => "FIELD_VALIDATION_FAILED"}, {"name" => "OTHER", "value" => "OTHER"}]})
    VpcConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#VpcConfiguration", name: "VpcConfiguration")
    VpceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.grafana#VpceId", name: "VpceId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    VpceIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.grafana#VpceIds", name: "VpceIds")
    WorkspaceDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#WorkspaceDescription", name: "WorkspaceDescription")
    WorkspaceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.grafana#WorkspaceId", name: "WorkspaceId", traits: {"smithy.api#pattern" => "^g-[0-9a-f]{10}$"})
    WorkspaceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.grafana#WorkspaceList", name: "WorkspaceList")
    WorkspaceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.grafana#WorkspaceName", name: "WorkspaceName", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9-._~]{1,255}$", "smithy.api#sensitive" => {}})
    WorkspaceStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.grafana#WorkspaceStatus", name: "WorkspaceStatus", traits: {"smithy.api#enum" => [{"name" => "ACTIVE", "value" => "ACTIVE", "documentation" => "Workspace is active."}, {"name" => "CREATING", "value" => "CREATING", "documentation" => "Workspace is being created."}, {"name" => "DELETING", "value" => "DELETING", "documentation" => "Workspace is being deleted."}, {"name" => "FAILED", "value" => "FAILED", "documentation" => "Workspace is in an invalid state, it can only and should be deleted."}, {"name" => "UPDATING", "value" => "UPDATING", "documentation" => "Workspace is being updated."}, {"name" => "UPGRADING", "value" => "UPGRADING", "documentation" => "Workspace is being upgraded to enterprise."}, {"name" => "DELETION_FAILED", "value" => "DELETION_FAILED", "documentation" => "Workspace deletion failed."}, {"name" => "CREATION_FAILED", "value" => "CREATION_FAILED", "documentation" => "Workspace creation failed."}, {"name" => "UPDATE_FAILED", "value" => "UPDATE_FAILED", "documentation" => "Workspace update failed."}, {"name" => "UPGRADE_FAILED", "value" => "UPGRADE_FAILED", "documentation" => "Workspace upgrade failed."}, {"name" => "LICENSE_REMOVAL_FAILED", "value" => "LICENSE_REMOVAL_FAILED", "documentation" => "Failed to remove enterprise license from workspace."}, {"name" => "VERSION_UPDATING", "value" => "VERSION_UPDATING", "documentation" => "Workspace version is being updated."}, {"name" => "VERSION_UPDATE_FAILED", "value" => "VERSION_UPDATE_FAILED", "documentation" => "Workspace version update failed."}, {"name" => "DEGRADED", "value" => "DEGRADED", "documentation" => "Workspace is degraded."}]})
    WorkspaceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.grafana#WorkspaceSummary", name: "WorkspaceSummary")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AllowedOrganizations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedOrganization, name: "member"))
    AssertionAttributes.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AssertionAttribute, name: "name"))
    AssertionAttributes.add_member(:login, ::Smithy::Schema::Shapes::MemberShape.new(target: AssertionAttribute, name: "login"))
    AssertionAttributes.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: AssertionAttribute, name: "email"))
    AssertionAttributes.add_member(:groups, ::Smithy::Schema::Shapes::MemberShape.new(target: AssertionAttribute, name: "groups"))
    AssertionAttributes.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: AssertionAttribute, name: "role"))
    AssertionAttributes.add_member(:org, ::Smithy::Schema::Shapes::MemberShape.new(target: AssertionAttribute, name: "org"))
    AssertionAttributes.type = Types::AssertionAttributes
    AssociateLicenseInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceId, name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateLicenseInput.add_member(:license_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseType, name: "licenseType", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateLicenseInput.add_member(:grafana_token, ::Smithy::Schema::Shapes::MemberShape.new(target: GrafanaToken, name: "grafanaToken", traits: {"smithy.api#httpHeader" => "Grafana-Token"}))
    AssociateLicenseInput.type = Types::AssociateLicenseInput
    AssociateLicenseOutput.add_member(:workspace, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceDescription, name: "workspace", traits: {"smithy.api#required" => {}}))
    AssociateLicenseOutput.type = Types::AssociateLicenseOutput
    AuthenticationDescription.add_member(:providers, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationProviders, name: "providers", traits: {"smithy.api#required" => {}}))
    AuthenticationDescription.add_member(:saml, ::Smithy::Schema::Shapes::MemberShape.new(target: SamlAuthentication, name: "saml"))
    AuthenticationDescription.add_member(:aws_sso, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsSsoAuthentication, name: "awsSso"))
    AuthenticationDescription.type = Types::AuthenticationDescription
    AuthenticationProviders.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationProviderTypes, name: "member"))
    AuthenticationSummary.add_member(:providers, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationProviders, name: "providers", traits: {"smithy.api#required" => {}}))
    AuthenticationSummary.add_member(:saml_configuration_status, ::Smithy::Schema::Shapes::MemberShape.new(target: SamlConfigurationStatus, name: "samlConfigurationStatus"))
    AuthenticationSummary.type = Types::AuthenticationSummary
    AwsSsoAuthentication.add_member(:sso_client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SSOClientId, name: "ssoClientId"))
    AwsSsoAuthentication.type = Types::AwsSsoAuthentication
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CreateWorkspaceApiKeyInput.add_member(:key_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiKeyName, name: "keyName", traits: {"smithy.api#required" => {}}))
    CreateWorkspaceApiKeyInput.add_member(:key_role, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "keyRole", traits: {"smithy.api#required" => {}}))
    CreateWorkspaceApiKeyInput.add_member(:seconds_to_live, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "secondsToLive", traits: {"smithy.api#range" => {"min" => 1, "max" => 2592000}, "smithy.api#required" => {}}))
    CreateWorkspaceApiKeyInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceId, name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateWorkspaceApiKeyInput.type = Types::CreateWorkspaceApiKeyInput
    CreateWorkspaceApiKeyOutput.add_member(:key_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiKeyName, name: "keyName", traits: {"smithy.api#required" => {}}))
    CreateWorkspaceApiKeyOutput.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiKeyToken, name: "key", traits: {"smithy.api#required" => {}}))
    CreateWorkspaceApiKeyOutput.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceId, name: "workspaceId", traits: {"smithy.api#required" => {}}))
    CreateWorkspaceApiKeyOutput.type = Types::CreateWorkspaceApiKeyOutput
    CreateWorkspaceInput.add_member(:account_access_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAccessType, name: "accountAccessType", traits: {"smithy.api#required" => {}}))
    CreateWorkspaceInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateWorkspaceInput.add_member(:organization_role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationRoleName, name: "organizationRoleName"))
    CreateWorkspaceInput.add_member(:permission_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionType, name: "permissionType", traits: {"smithy.api#required" => {}}))
    CreateWorkspaceInput.add_member(:stack_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetName, name: "stackSetName"))
    CreateWorkspaceInput.add_member(:workspace_data_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceTypesList, name: "workspaceDataSources"))
    CreateWorkspaceInput.add_member(:workspace_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "workspaceDescription"))
    CreateWorkspaceInput.add_member(:workspace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceName, name: "workspaceName"))
    CreateWorkspaceInput.add_member(:workspace_notification_destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationDestinationsList, name: "workspaceNotificationDestinations"))
    CreateWorkspaceInput.add_member(:workspace_organizational_units, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationalUnitList, name: "workspaceOrganizationalUnits"))
    CreateWorkspaceInput.add_member(:workspace_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "workspaceRoleArn"))
    CreateWorkspaceInput.add_member(:authentication_providers, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationProviders, name: "authenticationProviders", traits: {"smithy.api#required" => {}}))
    CreateWorkspaceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateWorkspaceInput.add_member(:vpc_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfiguration, name: "vpcConfiguration"))
    CreateWorkspaceInput.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OverridableConfigurationJson, name: "configuration"))
    CreateWorkspaceInput.add_member(:network_access_control, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkAccessConfiguration, name: "networkAccessControl"))
    CreateWorkspaceInput.add_member(:grafana_version, ::Smithy::Schema::Shapes::MemberShape.new(target: GrafanaVersion, name: "grafanaVersion"))
    CreateWorkspaceInput.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IPAddressType, name: "ipAddressType"))
    CreateWorkspaceInput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "kmsKeyId"))
    CreateWorkspaceInput.type = Types::CreateWorkspaceInput
    CreateWorkspaceOutput.add_member(:workspace, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceDescription, name: "workspace", traits: {"smithy.api#required" => {}}))
    CreateWorkspaceOutput.type = Types::CreateWorkspaceOutput
    CreateWorkspaceServiceAccountRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceAccountName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateWorkspaceServiceAccountRequest.add_member(:grafana_role, ::Smithy::Schema::Shapes::MemberShape.new(target: Role, name: "grafanaRole", traits: {"smithy.api#required" => {}}))
    CreateWorkspaceServiceAccountRequest.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceId, name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateWorkspaceServiceAccountRequest.type = Types::CreateWorkspaceServiceAccountRequest
    CreateWorkspaceServiceAccountResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "id", traits: {"smithy.api#required" => {}}))
    CreateWorkspaceServiceAccountResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    CreateWorkspaceServiceAccountResponse.add_member(:grafana_role, ::Smithy::Schema::Shapes::MemberShape.new(target: Role, name: "grafanaRole", traits: {"smithy.api#required" => {}}))
    CreateWorkspaceServiceAccountResponse.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceId, name: "workspaceId", traits: {"smithy.api#required" => {}}))
    CreateWorkspaceServiceAccountResponse.type = Types::CreateWorkspaceServiceAccountResponse
    CreateWorkspaceServiceAccountTokenRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceAccountTokenName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateWorkspaceServiceAccountTokenRequest.add_member(:seconds_to_live, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "secondsToLive", traits: {"smithy.api#range" => {"min" => 1, "max" => 2592000}, "smithy.api#required" => {}}))
    CreateWorkspaceServiceAccountTokenRequest.add_member(:service_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serviceAccountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateWorkspaceServiceAccountTokenRequest.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceId, name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateWorkspaceServiceAccountTokenRequest.type = Types::CreateWorkspaceServiceAccountTokenRequest
    CreateWorkspaceServiceAccountTokenResponse.add_member(:service_account_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceAccountTokenSummaryWithKey, name: "serviceAccountToken", traits: {"smithy.api#required" => {}}))
    CreateWorkspaceServiceAccountTokenResponse.add_member(:service_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serviceAccountId", traits: {"smithy.api#required" => {}}))
    CreateWorkspaceServiceAccountTokenResponse.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceId, name: "workspaceId", traits: {"smithy.api#required" => {}}))
    CreateWorkspaceServiceAccountTokenResponse.type = Types::CreateWorkspaceServiceAccountTokenResponse
    DataSourceTypesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceType, name: "member"))
    DeleteWorkspaceApiKeyInput.add_member(:key_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiKeyName, name: "keyName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWorkspaceApiKeyInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceId, name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWorkspaceApiKeyInput.type = Types::DeleteWorkspaceApiKeyInput
    DeleteWorkspaceApiKeyOutput.add_member(:key_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiKeyName, name: "keyName", traits: {"smithy.api#required" => {}}))
    DeleteWorkspaceApiKeyOutput.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceId, name: "workspaceId", traits: {"smithy.api#required" => {}}))
    DeleteWorkspaceApiKeyOutput.type = Types::DeleteWorkspaceApiKeyOutput
    DeleteWorkspaceInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceId, name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWorkspaceInput.type = Types::DeleteWorkspaceInput
    DeleteWorkspaceOutput.add_member(:workspace, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceDescription, name: "workspace", traits: {"smithy.api#required" => {}}))
    DeleteWorkspaceOutput.type = Types::DeleteWorkspaceOutput
    DeleteWorkspaceServiceAccountRequest.add_member(:service_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serviceAccountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWorkspaceServiceAccountRequest.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceId, name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWorkspaceServiceAccountRequest.type = Types::DeleteWorkspaceServiceAccountRequest
    DeleteWorkspaceServiceAccountResponse.add_member(:service_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serviceAccountId", traits: {"smithy.api#required" => {}}))
    DeleteWorkspaceServiceAccountResponse.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceId, name: "workspaceId", traits: {"smithy.api#required" => {}}))
    DeleteWorkspaceServiceAccountResponse.type = Types::DeleteWorkspaceServiceAccountResponse
    DeleteWorkspaceServiceAccountTokenRequest.add_member(:token_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "tokenId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWorkspaceServiceAccountTokenRequest.add_member(:service_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serviceAccountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWorkspaceServiceAccountTokenRequest.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceId, name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWorkspaceServiceAccountTokenRequest.type = Types::DeleteWorkspaceServiceAccountTokenRequest
    DeleteWorkspaceServiceAccountTokenResponse.add_member(:token_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "tokenId", traits: {"smithy.api#required" => {}}))
    DeleteWorkspaceServiceAccountTokenResponse.add_member(:service_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serviceAccountId", traits: {"smithy.api#required" => {}}))
    DeleteWorkspaceServiceAccountTokenResponse.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceId, name: "workspaceId", traits: {"smithy.api#required" => {}}))
    DeleteWorkspaceServiceAccountTokenResponse.type = Types::DeleteWorkspaceServiceAccountTokenResponse
    DescribeWorkspaceAuthenticationInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceId, name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeWorkspaceAuthenticationInput.type = Types::DescribeWorkspaceAuthenticationInput
    DescribeWorkspaceAuthenticationOutput.add_member(:authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationDescription, name: "authentication", traits: {"smithy.api#required" => {}}))
    DescribeWorkspaceAuthenticationOutput.type = Types::DescribeWorkspaceAuthenticationOutput
    DescribeWorkspaceConfigurationInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceId, name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeWorkspaceConfigurationInput.type = Types::DescribeWorkspaceConfigurationInput
    DescribeWorkspaceConfigurationOutput.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OverridableConfigurationJson, name: "configuration", traits: {"smithy.api#required" => {}}))
    DescribeWorkspaceConfigurationOutput.add_member(:grafana_version, ::Smithy::Schema::Shapes::MemberShape.new(target: GrafanaVersion, name: "grafanaVersion"))
    DescribeWorkspaceConfigurationOutput.type = Types::DescribeWorkspaceConfigurationOutput
    DescribeWorkspaceInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceId, name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeWorkspaceInput.type = Types::DescribeWorkspaceInput
    DescribeWorkspaceOutput.add_member(:workspace, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceDescription, name: "workspace", traits: {"smithy.api#required" => {}}))
    DescribeWorkspaceOutput.type = Types::DescribeWorkspaceOutput
    DisassociateLicenseInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceId, name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateLicenseInput.add_member(:license_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseType, name: "licenseType", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateLicenseInput.type = Types::DisassociateLicenseInput
    DisassociateLicenseOutput.add_member(:workspace, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceDescription, name: "workspace", traits: {"smithy.api#required" => {}}))
    DisassociateLicenseOutput.type = Types::DisassociateLicenseOutput
    GrafanaVersionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GrafanaVersion, name: "member"))
    IdpMetadata.add_member(:url, Types::IdpMetadata::Url, ::Smithy::Schema::Shapes::MemberShape.new(target: IdpMetadataUrl, name: "url"))
    IdpMetadata.add_member(:xml, Types::IdpMetadata::Xml, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "xml"))
    IdpMetadata.add_member(:unknown, Types::IdpMetadata::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    IdpMetadata.type = Types::IdpMetadata
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    ListPermissionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListPermissionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#httpQuery" => "nextToken"}))
    ListPermissionsInput.add_member(:user_type, ::Smithy::Schema::Shapes::MemberShape.new(target: UserType, name: "userType", traits: {"smithy.api#httpQuery" => "userType"}))
    ListPermissionsInput.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SsoId, name: "userId", traits: {"smithy.api#httpQuery" => "userId"}))
    ListPermissionsInput.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SsoId, name: "groupId", traits: {"smithy.api#httpQuery" => "groupId"}))
    ListPermissionsInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceId, name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListPermissionsInput.type = Types::ListPermissionsInput
    ListPermissionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    ListPermissionsOutput.add_member(:permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionEntryList, name: "permissions", traits: {"smithy.api#required" => {}}))
    ListPermissionsOutput.type = Types::ListPermissionsOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#httpQuery" => "nextToken"}))
    ListVersionsRequest.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceId, name: "workspaceId", traits: {"smithy.api#httpQuery" => "workspace-id"}))
    ListVersionsRequest.type = Types::ListVersionsRequest
    ListVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    ListVersionsResponse.add_member(:grafana_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: GrafanaVersionList, name: "grafanaVersions"))
    ListVersionsResponse.type = Types::ListVersionsResponse
    ListWorkspaceServiceAccountTokensRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListWorkspaceServiceAccountTokensRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#httpQuery" => "nextToken"}))
    ListWorkspaceServiceAccountTokensRequest.add_member(:service_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serviceAccountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListWorkspaceServiceAccountTokensRequest.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceId, name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListWorkspaceServiceAccountTokensRequest.type = Types::ListWorkspaceServiceAccountTokensRequest
    ListWorkspaceServiceAccountTokensResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    ListWorkspaceServiceAccountTokensResponse.add_member(:service_account_tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceAccountTokenList, name: "serviceAccountTokens", traits: {"smithy.api#required" => {}}))
    ListWorkspaceServiceAccountTokensResponse.add_member(:service_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serviceAccountId", traits: {"smithy.api#required" => {}}))
    ListWorkspaceServiceAccountTokensResponse.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceId, name: "workspaceId", traits: {"smithy.api#required" => {}}))
    ListWorkspaceServiceAccountTokensResponse.type = Types::ListWorkspaceServiceAccountTokensResponse
    ListWorkspaceServiceAccountsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListWorkspaceServiceAccountsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#httpQuery" => "nextToken"}))
    ListWorkspaceServiceAccountsRequest.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceId, name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListWorkspaceServiceAccountsRequest.type = Types::ListWorkspaceServiceAccountsRequest
    ListWorkspaceServiceAccountsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    ListWorkspaceServiceAccountsResponse.add_member(:service_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceAccountList, name: "serviceAccounts", traits: {"smithy.api#required" => {}}))
    ListWorkspaceServiceAccountsResponse.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceId, name: "workspaceId", traits: {"smithy.api#required" => {}}))
    ListWorkspaceServiceAccountsResponse.type = Types::ListWorkspaceServiceAccountsResponse
    ListWorkspacesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListWorkspacesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListWorkspacesInput.type = Types::ListWorkspacesInput
    ListWorkspacesOutput.add_member(:workspaces, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceList, name: "workspaces", traits: {"smithy.api#required" => {}}))
    ListWorkspacesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListWorkspacesOutput.type = Types::ListWorkspacesOutput
    NetworkAccessConfiguration.add_member(:prefix_list_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: PrefixListIds, name: "prefixListIds", traits: {"smithy.api#required" => {}}))
    NetworkAccessConfiguration.add_member(:vpce_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpceIds, name: "vpceIds", traits: {"smithy.api#required" => {}}))
    NetworkAccessConfiguration.type = Types::NetworkAccessConfiguration
    NotificationDestinationsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationDestinationType, name: "member"))
    OrganizationalUnitList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationalUnit, name: "member"))
    PermissionEntry.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: User, name: "user", traits: {"smithy.api#required" => {}}))
    PermissionEntry.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: Role, name: "role", traits: {"smithy.api#required" => {}}))
    PermissionEntry.type = Types::PermissionEntry
    PermissionEntryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionEntry, name: "member"))
    PrefixListIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PrefixListId, name: "member"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RoleValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleValue, name: "member"))
    RoleValues.add_member(:editor, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleValueList, name: "editor"))
    RoleValues.add_member(:admin, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleValueList, name: "admin"))
    RoleValues.type = Types::RoleValues
    SamlAuthentication.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SamlConfigurationStatus, name: "status", traits: {"smithy.api#required" => {}}))
    SamlAuthentication.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SamlConfiguration, name: "configuration"))
    SamlAuthentication.type = Types::SamlAuthentication
    SamlConfiguration.add_member(:idp_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: IdpMetadata, name: "idpMetadata", traits: {"smithy.api#required" => {}}))
    SamlConfiguration.add_member(:assertion_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: AssertionAttributes, name: "assertionAttributes"))
    SamlConfiguration.add_member(:role_values, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleValues, name: "roleValues"))
    SamlConfiguration.add_member(:allowed_organizations, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedOrganizations, name: "allowedOrganizations"))
    SamlConfiguration.add_member(:login_validity_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: LoginValidityDuration, name: "loginValidityDuration", traits: {"smithy.api#default" => 0}))
    SamlConfiguration.type = Types::SamlConfiguration
    SecurityGroupIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupId, name: "member"))
    ServiceAccountList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceAccountSummary, name: "member"))
    ServiceAccountSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "id", traits: {"smithy.api#required" => {}}))
    ServiceAccountSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    ServiceAccountSummary.add_member(:is_disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "isDisabled", traits: {"smithy.api#required" => {}}))
    ServiceAccountSummary.add_member(:grafana_role, ::Smithy::Schema::Shapes::MemberShape.new(target: Role, name: "grafanaRole", traits: {"smithy.api#required" => {}}))
    ServiceAccountSummary.type = Types::ServiceAccountSummary
    ServiceAccountTokenList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceAccountTokenSummary, name: "member"))
    ServiceAccountTokenSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "id", traits: {"smithy.api#required" => {}}))
    ServiceAccountTokenSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    ServiceAccountTokenSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    ServiceAccountTokenSummary.add_member(:expires_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "expiresAt", traits: {"smithy.api#required" => {}}))
    ServiceAccountTokenSummary.add_member(:last_used_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastUsedAt"))
    ServiceAccountTokenSummary.type = Types::ServiceAccountTokenSummary
    ServiceAccountTokenSummaryWithKey.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "id", traits: {"smithy.api#required" => {}}))
    ServiceAccountTokenSummaryWithKey.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    ServiceAccountTokenSummaryWithKey.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceAccountTokenKey, name: "key", traits: {"smithy.api#required" => {}}))
    ServiceAccountTokenSummaryWithKey.type = Types::ServiceAccountTokenSummaryWithKey
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serviceCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "quotaCode", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SubnetIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetId, name: "member"))
    TagKeys.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    TagMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serviceCode"))
    ThrottlingException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "quotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeys, name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateError.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "code", traits: {"smithy.api#range" => {"min" => 100, "max" => 999}, "smithy.api#required" => {}}))
    UpdateError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    UpdateError.add_member(:caused_by, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateInstruction, name: "causedBy", traits: {"smithy.api#required" => {}}))
    UpdateError.type = Types::UpdateError
    UpdateErrorList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateError, name: "member"))
    UpdateInstruction.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateAction, name: "action", traits: {"smithy.api#required" => {}}))
    UpdateInstruction.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: Role, name: "role", traits: {"smithy.api#required" => {}}))
    UpdateInstruction.add_member(:users, ::Smithy::Schema::Shapes::MemberShape.new(target: UserList, name: "users", traits: {"smithy.api#required" => {}}))
    UpdateInstruction.type = Types::UpdateInstruction
    UpdateInstructionBatch.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateInstruction, name: "member"))
    UpdatePermissionsInput.add_member(:update_instruction_batch, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateInstructionBatch, name: "updateInstructionBatch", traits: {"smithy.api#required" => {}}))
    UpdatePermissionsInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceId, name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdatePermissionsInput.type = Types::UpdatePermissionsInput
    UpdatePermissionsOutput.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateErrorList, name: "errors", traits: {"aws.cloudformation#cfnMutability" => "read", "smithy.api#required" => {}}))
    UpdatePermissionsOutput.type = Types::UpdatePermissionsOutput
    UpdateWorkspaceAuthenticationInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceId, name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateWorkspaceAuthenticationInput.add_member(:authentication_providers, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationProviders, name: "authenticationProviders", traits: {"smithy.api#required" => {}}))
    UpdateWorkspaceAuthenticationInput.add_member(:saml_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SamlConfiguration, name: "samlConfiguration"))
    UpdateWorkspaceAuthenticationInput.type = Types::UpdateWorkspaceAuthenticationInput
    UpdateWorkspaceAuthenticationOutput.add_member(:authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationDescription, name: "authentication", traits: {"smithy.api#required" => {}}))
    UpdateWorkspaceAuthenticationOutput.type = Types::UpdateWorkspaceAuthenticationOutput
    UpdateWorkspaceConfigurationInput.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OverridableConfigurationJson, name: "configuration", traits: {"smithy.api#required" => {}}))
    UpdateWorkspaceConfigurationInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceId, name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateWorkspaceConfigurationInput.add_member(:grafana_version, ::Smithy::Schema::Shapes::MemberShape.new(target: GrafanaVersion, name: "grafanaVersion"))
    UpdateWorkspaceConfigurationInput.type = Types::UpdateWorkspaceConfigurationInput
    UpdateWorkspaceConfigurationOutput.type = Types::UpdateWorkspaceConfigurationOutput
    UpdateWorkspaceInput.add_member(:account_access_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAccessType, name: "accountAccessType"))
    UpdateWorkspaceInput.add_member(:organization_role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationRoleName, name: "organizationRoleName"))
    UpdateWorkspaceInput.add_member(:permission_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionType, name: "permissionType"))
    UpdateWorkspaceInput.add_member(:stack_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetName, name: "stackSetName"))
    UpdateWorkspaceInput.add_member(:workspace_data_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceTypesList, name: "workspaceDataSources"))
    UpdateWorkspaceInput.add_member(:workspace_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "workspaceDescription"))
    UpdateWorkspaceInput.add_member(:workspace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceId, name: "workspaceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateWorkspaceInput.add_member(:workspace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceName, name: "workspaceName"))
    UpdateWorkspaceInput.add_member(:workspace_notification_destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationDestinationsList, name: "workspaceNotificationDestinations"))
    UpdateWorkspaceInput.add_member(:workspace_organizational_units, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationalUnitList, name: "workspaceOrganizationalUnits"))
    UpdateWorkspaceInput.add_member(:workspace_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "workspaceRoleArn"))
    UpdateWorkspaceInput.add_member(:vpc_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfiguration, name: "vpcConfiguration"))
    UpdateWorkspaceInput.add_member(:remove_vpc_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "removeVpcConfiguration"))
    UpdateWorkspaceInput.add_member(:network_access_control, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkAccessConfiguration, name: "networkAccessControl"))
    UpdateWorkspaceInput.add_member(:remove_network_access_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "removeNetworkAccessConfiguration"))
    UpdateWorkspaceInput.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IPAddressType, name: "ipAddressType"))
    UpdateWorkspaceInput.type = Types::UpdateWorkspaceInput
    UpdateWorkspaceOutput.add_member(:workspace, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceDescription, name: "workspace", traits: {"smithy.api#required" => {}}))
    UpdateWorkspaceOutput.type = Types::UpdateWorkspaceOutput
    User.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: SsoId, name: "id", traits: {"smithy.api#required" => {}}))
    User.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: UserType, name: "type", traits: {"smithy.api#required" => {}}))
    User.type = Types::User
    UserList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: User, name: "member"))
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, name: "reason", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFieldList, name: "fieldList"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField, name: "member"))
    VpcConfiguration.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIds, name: "securityGroupIds", traits: {"smithy.api#required" => {}}))
    VpcConfiguration.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIds, name: "subnetIds", traits: {"smithy.api#required" => {}}))
    VpcConfiguration.type = Types::VpcConfiguration
    VpceIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VpceId, name: "member"))
    WorkspaceDescription.add_member(:account_access_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAccessType, name: "accountAccessType"))
    WorkspaceDescription.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "created", traits: {"smithy.api#required" => {}}))
    WorkspaceDescription.add_member(:data_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceTypesList, name: "dataSources", traits: {"smithy.api#required" => {}}))
    WorkspaceDescription.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    WorkspaceDescription.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: Endpoint, name: "endpoint", traits: {"smithy.api#required" => {}}))
    WorkspaceDescription.add_member(:grafana_version, ::Smithy::Schema::Shapes::MemberShape.new(target: GrafanaVersion, name: "grafanaVersion", traits: {"smithy.api#required" => {}}))
    WorkspaceDescription.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceId, name: "id", traits: {"smithy.api#required" => {}}))
    WorkspaceDescription.add_member(:modified, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "modified", traits: {"smithy.api#required" => {}}))
    WorkspaceDescription.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceName, name: "name"))
    WorkspaceDescription.add_member(:organization_role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationRoleName, name: "organizationRoleName"))
    WorkspaceDescription.add_member(:notification_destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationDestinationsList, name: "notificationDestinations"))
    WorkspaceDescription.add_member(:organizational_units, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationalUnitList, name: "organizationalUnits"))
    WorkspaceDescription.add_member(:permission_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionType, name: "permissionType"))
    WorkspaceDescription.add_member(:stack_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetName, name: "stackSetName"))
    WorkspaceDescription.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceStatus, name: "status", traits: {"smithy.api#required" => {}}))
    WorkspaceDescription.add_member(:workspace_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, name: "workspaceRoleArn"))
    WorkspaceDescription.add_member(:license_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseType, name: "licenseType"))
    WorkspaceDescription.add_member(:free_trial_consumed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "freeTrialConsumed"))
    WorkspaceDescription.add_member(:license_expiration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "licenseExpiration"))
    WorkspaceDescription.add_member(:free_trial_expiration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "freeTrialExpiration"))
    WorkspaceDescription.add_member(:authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationSummary, name: "authentication", traits: {"smithy.api#required" => {}}))
    WorkspaceDescription.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    WorkspaceDescription.add_member(:vpc_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfiguration, name: "vpcConfiguration"))
    WorkspaceDescription.add_member(:network_access_control, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkAccessConfiguration, name: "networkAccessControl"))
    WorkspaceDescription.add_member(:grafana_token, ::Smithy::Schema::Shapes::MemberShape.new(target: GrafanaToken, name: "grafanaToken"))
    WorkspaceDescription.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IPAddressType, name: "ipAddressType"))
    WorkspaceDescription.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "kmsKeyId"))
    WorkspaceDescription.add_member(:degraded_workspace_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: DegradedWorkspaceReason, name: "degradedWorkspaceReason"))
    WorkspaceDescription.type = Types::WorkspaceDescription
    WorkspaceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceSummary, name: "member"))
    WorkspaceSummary.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "created", traits: {"smithy.api#required" => {}}))
    WorkspaceSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    WorkspaceSummary.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: Endpoint, name: "endpoint", traits: {"smithy.api#required" => {}}))
    WorkspaceSummary.add_member(:grafana_version, ::Smithy::Schema::Shapes::MemberShape.new(target: GrafanaVersion, name: "grafanaVersion", traits: {"smithy.api#required" => {}}))
    WorkspaceSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceId, name: "id", traits: {"smithy.api#required" => {}}))
    WorkspaceSummary.add_member(:modified, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "modified", traits: {"smithy.api#required" => {}}))
    WorkspaceSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceName, name: "name"))
    WorkspaceSummary.add_member(:notification_destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationDestinationsList, name: "notificationDestinations"))
    WorkspaceSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkspaceStatus, name: "status", traits: {"smithy.api#required" => {}}))
    WorkspaceSummary.add_member(:authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationSummary, name: "authentication", traits: {"smithy.api#required" => {}}))
    WorkspaceSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    WorkspaceSummary.add_member(:license_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseType, name: "licenseType"))
    WorkspaceSummary.add_member(:grafana_token, ::Smithy::Schema::Shapes::MemberShape.new(target: GrafanaToken, name: "grafanaToken"))
    WorkspaceSummary.type = Types::WorkspaceSummary

    AWSGrafanaControlPlane = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.grafana#AWSGrafanaControlPlane"
      service.name = "AWSGrafanaControlPlane"
      service.version = "2020-08-18"
      service.traits = {"aws.api#controlPlane" => {}, "aws.api#service" => {"sdkId" => "grafana", "arnNamespace" => "grafana", "cloudFormationName" => "Grafana", "cloudTrailEventSource" => "grafana.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "grafana"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id"], "additionalExposedHeaders" => ["cache-control", "x-amzn-errortype", "x-amzn-requestid", "x-amzn-errormessage", "x-amzn-trace-id", "x-amzn-requestid", "x-amz-apigw-id,date"]}, "smithy.api#title" => "Amazon Managed Grafana", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://grafana-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://grafana-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://grafana.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://grafana.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:associate_license, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#AssociateLicense"
        operation.name = "AssociateLicense"
        operation.input = AssociateLicenseInput
        operation.output = AssociateLicenseOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "POST", "uri" => "/workspaces/{workspaceId}/licenses/{licenseType}"}}
      end)
      service.add_operation(:create_workspace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#CreateWorkspace"
        operation.name = "CreateWorkspace"
        operation.input = CreateWorkspaceInput
        operation.output = CreateWorkspaceOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "POST", "uri" => "/workspaces"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_workspace_api_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#CreateWorkspaceApiKey"
        operation.name = "CreateWorkspaceApiKey"
        operation.input = CreateWorkspaceApiKeyInput
        operation.output = CreateWorkspaceApiKeyOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/workspaces/{workspaceId}/apikeys"}}
      end)
      service.add_operation(:create_workspace_service_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#CreateWorkspaceServiceAccount"
        operation.name = "CreateWorkspaceServiceAccount"
        operation.input = CreateWorkspaceServiceAccountRequest
        operation.output = CreateWorkspaceServiceAccountResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/workspaces/{workspaceId}/serviceaccounts"}}
      end)
      service.add_operation(:create_workspace_service_account_token, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#CreateWorkspaceServiceAccountToken"
        operation.name = "CreateWorkspaceServiceAccountToken"
        operation.input = CreateWorkspaceServiceAccountTokenRequest
        operation.output = CreateWorkspaceServiceAccountTokenResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/workspaces/{workspaceId}/serviceaccounts/{serviceAccountId}/tokens"}}
      end)
      service.add_operation(:delete_workspace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#DeleteWorkspace"
        operation.name = "DeleteWorkspace"
        operation.input = DeleteWorkspaceInput
        operation.output = DeleteWorkspaceOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "DELETE", "uri" => "/workspaces/{workspaceId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_workspace_api_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#DeleteWorkspaceApiKey"
        operation.name = "DeleteWorkspaceApiKey"
        operation.input = DeleteWorkspaceApiKeyInput
        operation.output = DeleteWorkspaceApiKeyOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/workspaces/{workspaceId}/apikeys/{keyName}"}}
      end)
      service.add_operation(:delete_workspace_service_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#DeleteWorkspaceServiceAccount"
        operation.name = "DeleteWorkspaceServiceAccount"
        operation.input = DeleteWorkspaceServiceAccountRequest
        operation.output = DeleteWorkspaceServiceAccountResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/workspaces/{workspaceId}/serviceaccounts/{serviceAccountId}"}}
      end)
      service.add_operation(:delete_workspace_service_account_token, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#DeleteWorkspaceServiceAccountToken"
        operation.name = "DeleteWorkspaceServiceAccountToken"
        operation.input = DeleteWorkspaceServiceAccountTokenRequest
        operation.output = DeleteWorkspaceServiceAccountTokenResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/workspaces/{workspaceId}/serviceaccounts/{serviceAccountId}/tokens/{tokenId}"}}
      end)
      service.add_operation(:describe_workspace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#DescribeWorkspace"
        operation.name = "DescribeWorkspace"
        operation.input = DescribeWorkspaceInput
        operation.output = DescribeWorkspaceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/workspaces/{workspaceId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_workspace_authentication, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#DescribeWorkspaceAuthentication"
        operation.name = "DescribeWorkspaceAuthentication"
        operation.input = DescribeWorkspaceAuthenticationInput
        operation.output = DescribeWorkspaceAuthenticationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/workspaces/{workspaceId}/authentication"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_workspace_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#DescribeWorkspaceConfiguration"
        operation.name = "DescribeWorkspaceConfiguration"
        operation.input = DescribeWorkspaceConfigurationInput
        operation.output = DescribeWorkspaceConfigurationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/workspaces/{workspaceId}/configuration"}}
      end)
      service.add_operation(:disassociate_license, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#DisassociateLicense"
        operation.name = "DisassociateLicense"
        operation.input = DisassociateLicenseInput
        operation.output = DisassociateLicenseOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "DELETE", "uri" => "/workspaces/{workspaceId}/licenses/{licenseType}"}}
      end)
      service.add_operation(:list_permissions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#ListPermissions"
        operation.name = "ListPermissions"
        operation.input = ListPermissionsInput
        operation.output = ListPermissionsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/workspaces/{workspaceId}/permissions"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPermissions.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceInput
        operation.output = ListTagsForResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#ListVersions"
        operation.name = "ListVersions"
        operation.input = ListVersionsRequest
        operation.output = ListVersionsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/versions"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListVersions.new
      end)
      service.add_operation(:list_workspace_service_account_tokens, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#ListWorkspaceServiceAccountTokens"
        operation.name = "ListWorkspaceServiceAccountTokens"
        operation.input = ListWorkspaceServiceAccountTokensRequest
        operation.output = ListWorkspaceServiceAccountTokensResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/workspaces/{workspaceId}/serviceaccounts/{serviceAccountId}/tokens"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListWorkspaceServiceAccountTokens.new
      end)
      service.add_operation(:list_workspace_service_accounts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#ListWorkspaceServiceAccounts"
        operation.name = "ListWorkspaceServiceAccounts"
        operation.input = ListWorkspaceServiceAccountsRequest
        operation.output = ListWorkspaceServiceAccountsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/workspaces/{workspaceId}/serviceaccounts"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListWorkspaceServiceAccounts.new
      end)
      service.add_operation(:list_workspaces, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#ListWorkspaces"
        operation.name = "ListWorkspaces"
        operation.input = ListWorkspacesInput
        operation.output = ListWorkspacesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/workspaces"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListWorkspaces.new
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceInput
        operation.output = TagResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}"}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceInput
        operation.output = UntagResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_permissions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#UpdatePermissions"
        operation.name = "UpdatePermissions"
        operation.input = UpdatePermissionsInput
        operation.output = UpdatePermissionsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/workspaces/{workspaceId}/permissions"}}
      end)
      service.add_operation(:update_workspace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#UpdateWorkspace"
        operation.name = "UpdateWorkspace"
        operation.input = UpdateWorkspaceInput
        operation.output = UpdateWorkspaceOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 202, "method" => "PUT", "uri" => "/workspaces/{workspaceId}"}}
      end)
      service.add_operation(:update_workspace_authentication, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#UpdateWorkspaceAuthentication"
        operation.name = "UpdateWorkspaceAuthentication"
        operation.input = UpdateWorkspaceAuthenticationInput
        operation.output = UpdateWorkspaceAuthenticationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/workspaces/{workspaceId}/authentication"}}
      end)
      service.add_operation(:update_workspace_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.grafana#UpdateWorkspaceConfiguration"
        operation.name = "UpdateWorkspaceConfiguration"
        operation.input = UpdateWorkspaceConfigurationInput
        operation.output = UpdateWorkspaceConfigurationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
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
