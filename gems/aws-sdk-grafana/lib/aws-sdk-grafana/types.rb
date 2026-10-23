# frozen_string_literal: true

# This is generated code!

module Aws::Grafana
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have sufficient permissions to perform this action. </p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that defines which attributes in the IdP assertion are to be used to
    #             define information about the users authenticated by the IdP to use the workspace.</p>
    # @!attribute name
    #   <p>The name of the attribute within the SAML assertion to use as the user full "friendly"
    #               names for SAML users.</p>
    #   @return [String]
    # @!attribute login
    #   <p>The name of the attribute within the SAML assertion to use as the login names for SAML
    #               users.</p>
    #   @return [String]
    # @!attribute email
    #   <p>The name of the attribute within the SAML assertion to use as the email names for SAML
    #               users.</p>
    #   @return [String]
    # @!attribute groups
    #   <p>The name of the attribute within the SAML assertion to use as the user full "friendly"
    #               names for user groups.</p>
    #   @return [String]
    # @!attribute role
    #   <p>The name of the attribute within the SAML assertion to use as the user roles.</p>
    #   @return [String]
    # @!attribute org
    #   <p>The name of the attribute within the SAML assertion to use as the user full "friendly"
    #               names for the users' organizations.</p>
    #   @return [String]
    class AssertionAttributes < Struct.new(
      nil,
      :name,
      :login,
      :email,
      :groups,
      :role,
      :org,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace to associate the license with.</p>
    #   @return [String]
    # @!attribute license_type
    #   <p>The type of license to associate with the workspace.</p>
    #            <note>
    #               <p>Amazon Managed Grafana workspaces no longer support Grafana Enterprise free trials.</p>
    #            </note>
    #   @return [String]
    # @!attribute grafana_token
    #   <p>A token from Grafana Labs that ties your Amazon Web Services account with a Grafana 
    #               Labs account. For more information, see <a href="https://docs.aws.amazon.com/grafana/latest/userguide/upgrade-to-Grafana-Enterprise.html#AMG-workspace-register-enterprise">Link your account with Grafana Labs</a>.</p>
    #   @return [String]
    class AssociateLicenseInput < Struct.new(
      nil,
      :workspace_id,
      :license_type,
      :grafana_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace
    #   <p>A structure containing data about the workspace.</p>
    #   @return [Types::WorkspaceDescription]
    class AssociateLicenseOutput < Struct.new(
      nil,
      :workspace,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure containing information about the user authentication methods used by the
    #             workspace.</p>
    # @!attribute providers
    #   <p>Specifies whether this workspace uses IAM Identity Center, SAML, or both methods to
    #               authenticate users to use the Grafana console in the Amazon Managed Grafana
    #               workspace.</p>
    #   @return [Array<String>]
    # @!attribute saml
    #   <p>A structure containing information about how this workspace works with SAML, including
    #               what attributes within the assertion are to be mapped to user information in the
    #               workspace. </p>
    #   @return [Types::SamlAuthentication]
    # @!attribute aws_sso
    #   <p>A structure containing information about how this workspace works with IAM Identity Center. </p>
    #   @return [Types::AwsSsoAuthentication]
    class AuthenticationDescription < Struct.new(
      nil,
      :providers,
      :saml,
      :aws_sso,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that describes whether the workspace uses SAML, IAM Identity Center, or
    #             both methods for user authentication, and whether that authentication is fully
    #             configured.</p>
    # @!attribute providers
    #   <p>Specifies whether the workspace uses SAML, IAM Identity Center, or both methods for
    #               user authentication.</p>
    #   @return [Array<String>]
    # @!attribute saml_configuration_status
    #   <p>Specifies whether the workplace's user authentication method is fully
    #               configured.</p>
    #   @return [String]
    class AuthenticationSummary < Struct.new(
      nil,
      :providers,
      :saml_configuration_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure containing information about how this workspace works with IAM Identity Center. </p>
    # @!attribute sso_client_id
    #   <p>The ID of the IAM Identity Center-managed application that is created by Amazon Managed Grafana.</p>
    #   @return [String]
    class AwsSsoAuthentication < Struct.new(
      nil,
      :sso_client_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A resource was in an inconsistent state during an update or a deletion.</p>
    # @!attribute message
    #   <p>A description of the error.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource that is associated with the error.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource that is associated with the error.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_name
    #   <p>Specifies the name of the key. Keynames must be unique to the workspace.</p>
    #   @return [String]
    # @!attribute key_role
    #   <p>Specifies the permission level of the key.</p>
    #            <p> Valid values: <code>ADMIN</code>|<code>EDITOR</code>|<code>VIEWER</code>
    #            </p>
    #   @return [String]
    # @!attribute seconds_to_live
    #   <p>Specifies the time in seconds until the key expires. Keys can be valid for up to 30
    #               days.</p>
    #   @return [Integer]
    # @!attribute workspace_id
    #   <p>The ID of the workspace to create an API key.</p>
    #   @return [String]
    class CreateWorkspaceApiKeyInput < Struct.new(
      nil,
      :key_name,
      :key_role,
      :seconds_to_live,
      :workspace_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_name
    #   <p>The name of the key that was created.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The key token. Use this value as a bearer token to authenticate HTTP requests to the
    #               workspace.</p>
    #   @return [String]
    # @!attribute workspace_id
    #   <p>The ID of the workspace that the key is valid for.</p>
    #   @return [String]
    class CreateWorkspaceApiKeyOutput < Struct.new(
      nil,
      :key_name,
      :key,
      :workspace_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_access_type
    #   <p>Specifies whether the workspace can access Amazon Web Services resources in this
    #                   Amazon Web Services account only, or whether it can also access Amazon Web Services
    #               resources in other accounts in the same organization. If you specify
    #                   <code>ORGANIZATION</code>, you must specify which organizational units the workspace
    #               can access in the <code>workspaceOrganizationalUnits</code> parameter.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive, user-provided identifier to ensure the idempotency of the
    #               request.</p>
    #   @return [String]
    # @!attribute organization_role_name
    #   <p>The name of an IAM role that already exists to use with Organizations to access Amazon Web Services data sources and notification channels in other accounts
    #               in an organization.</p>
    #   @return [String]
    # @!attribute permission_type
    #   <p>When creating a workspace through the Amazon Web Services API, CLI or Amazon Web Services CloudFormation, you must manage IAM roles and provision the
    #               permissions that the workspace needs to use Amazon Web Services data sources and
    #               notification channels.</p>
    #            <p>You must also specify a <code>workspaceRoleArn</code> for a role that you will
    #               manage for the workspace to use when accessing those datasources and notification 
    #               channels.</p>
    #            <p>The ability for Amazon Managed Grafana to create and update IAM roles on
    #               behalf of the user is supported only in the Amazon Managed Grafana console, where this value
    #               may be set to <code>SERVICE_MANAGED</code>.</p>
    #            <note>
    #               <p>Use only the <code>CUSTOMER_MANAGED</code> permission type when creating a
    #                   workspace with the API, CLI or Amazon Web Services CloudFormation. </p>
    #            </note>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/grafana/latest/userguide/AMG-manage-permissions.html">Amazon Managed Grafana
    #                   permissions and policies for Amazon Web Services data sources and notification
    #                   channels</a>.</p>
    #   @return [String]
    # @!attribute stack_set_name
    #   <p>The name of the CloudFormation stack set to use to generate IAM
    #               roles to be used for this workspace.</p>
    #   @return [String]
    # @!attribute workspace_data_sources
    #   <p>This parameter is for internal use only, and should not be used.</p>
    #   @return [Array<String>]
    # @!attribute workspace_description
    #   <p>A description for the workspace. This is used only to help you identify this
    #               workspace.</p>
    #            <p>Pattern: <code>^[\\p{L}\\p{Z}\\p{N}\\p{P}]{0,2048}$</code>
    #            </p>
    #   @return [String]
    # @!attribute workspace_name
    #   <p>The name for the workspace. It does not have to be unique.</p>
    #   @return [String]
    # @!attribute workspace_notification_destinations
    #   <p>Specify the Amazon Web Services notification channels that you plan to use in this
    #               workspace. Specifying these data sources here enables Amazon Managed Grafana to create
    #                   IAM roles and permissions that allow Amazon Managed Grafana to use these
    #               channels.</p>
    #   @return [Array<String>]
    # @!attribute workspace_organizational_units
    #   <p>Specifies the organizational units that this workspace is allowed to use data sources
    #               from, if this workspace is in an account that is part of an organization.</p>
    #   @return [Array<String>]
    # @!attribute workspace_role_arn
    #   <p>Specified the IAM role that grants permissions to the Amazon Web Services resources that the workspace will view data from, including both data 
    #               sources and notification channels. You are responsible for managing the permissions 
    #               for this role as new data sources or notification channels are added. </p>
    #   @return [String]
    # @!attribute authentication_providers
    #   <p>Specifies whether this workspace uses SAML 2.0, IAM Identity Center, or both to
    #               authenticate users for using the Grafana console within a workspace. For more
    #               information, see <a href="https://docs.aws.amazon.com/grafana/latest/userguide/authentication-in-AMG.html">User authentication in
    #                       Amazon Managed Grafana</a>.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>The list of tags associated with the workspace.</p>
    #   @return [Hash<String, String>]
    # @!attribute vpc_configuration
    #   <p>The configuration settings for an Amazon VPC that contains data sources for
    #               your Grafana workspace to connect to.</p>
    #            <note>
    #               <p>Connecting to a private VPC is not yet available in the Asia Pacific (Seoul) 
    #                   Region (ap-northeast-2).</p>
    #            </note>
    #   @return [Types::VpcConfiguration]
    # @!attribute configuration
    #   <p>The configuration string for the workspace that you create. For more information about
    #               the format and configuration options available, see <a href="https://docs.aws.amazon.com/grafana/latest/userguide/AMG-configure-workspace.html">Working in your Grafana
    #                   workspace</a>.</p>
    #   @return [String]
    # @!attribute network_access_control
    #   <p>Configuration for network access to your workspace.</p>
    #            <p>When this is configured, only listed IP addresses and VPC endpoints will be able to
    #               access your workspace. Standard Grafana authentication and authorization will still be
    #               required.</p>
    #            <p>If this is not configured, or is removed, then all IP addresses and VPC endpoints will
    #               be allowed. Standard Grafana authentication and authorization will still be
    #               required.</p>
    #   @return [Types::NetworkAccessConfiguration]
    # @!attribute grafana_version
    #   <p>Specifies the version of Grafana to support in the new workspace. If not specified, 
    #               defaults to the latest version (for example, 10.4).</p>
    #            <p>To get a list of supported versions, use the <code>ListVersions</code>
    #               operation.</p>
    #   @return [String]
    class CreateWorkspaceInput < Struct.new(
      nil,
      :account_access_type,
      :client_token,
      :organization_role_name,
      :permission_type,
      :stack_set_name,
      :workspace_data_sources,
      :workspace_description,
      :workspace_name,
      :workspace_notification_destinations,
      :workspace_organizational_units,
      :workspace_role_arn,
      :authentication_providers,
      :tags,
      :vpc_configuration,
      :configuration,
      :network_access_control,
      :grafana_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace
    #   <p>A structure containing data about the workspace that was created.</p>
    #   @return [Types::WorkspaceDescription]
    class CreateWorkspaceOutput < Struct.new(
      nil,
      :workspace,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>A name for the service account. The name must be unique within the workspace, as it
    #               determines the ID associated with the service account.</p>
    #   @return [String]
    # @!attribute grafana_role
    #   <p>The permission level to use for this service account.</p>
    #            <note>
    #               <p>For more information about the roles and the permissions each has, see <a href="https://docs.aws.amazon.com/grafana/latest/userguide/Grafana-user-roles.html">User
    #                   roles</a> in the <i>Amazon Managed Grafana User Guide</i>.</p>
    #            </note>
    #   @return [String]
    # @!attribute workspace_id
    #   <p>The ID of the workspace within which to create the service account.</p>
    #   @return [String]
    class CreateWorkspaceServiceAccountRequest < Struct.new(
      nil,
      :name,
      :grafana_role,
      :workspace_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the service account.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the service account.</p>
    #   @return [String]
    # @!attribute grafana_role
    #   <p>The permission level given to the service account.</p>
    #   @return [String]
    # @!attribute workspace_id
    #   <p>The workspace with which the service account is associated.</p>
    #   @return [String]
    class CreateWorkspaceServiceAccountResponse < Struct.new(
      nil,
      :id,
      :name,
      :grafana_role,
      :workspace_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>A name for the token to create.</p>
    #   @return [String]
    # @!attribute seconds_to_live
    #   <p>Sets how long the token will be valid, in seconds. You can set the time up to 30 
    #               days in the future.</p>
    #   @return [Integer]
    # @!attribute service_account_id
    #   <p>The ID of the service account for which to create a token.</p>
    #   @return [String]
    # @!attribute workspace_id
    #   <p>The ID of the workspace the service account resides within.</p>
    #   @return [String]
    class CreateWorkspaceServiceAccountTokenRequest < Struct.new(
      nil,
      :name,
      :seconds_to_live,
      :service_account_id,
      :workspace_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_account_token
    #   <p>Information about the created token, including the key. Be sure to store the key
    #               securely.</p>
    #   @return [Types::ServiceAccountTokenSummaryWithKey]
    # @!attribute service_account_id
    #   <p>The ID of the service account where the token was created.</p>
    #   @return [String]
    # @!attribute workspace_id
    #   <p>The ID of the workspace where the token was created.</p>
    #   @return [String]
    class CreateWorkspaceServiceAccountTokenResponse < Struct.new(
      nil,
      :service_account_token,
      :service_account_id,
      :workspace_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_name
    #   <p>The name of the API key to delete.</p>
    #   @return [String]
    # @!attribute workspace_id
    #   <p>The ID of the workspace to delete.</p>
    #   @return [String]
    class DeleteWorkspaceApiKeyInput < Struct.new(
      nil,
      :key_name,
      :workspace_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_name
    #   <p>The name of the key that was deleted.</p>
    #   @return [String]
    # @!attribute workspace_id
    #   <p>The ID of the workspace where the key was deleted.</p>
    #   @return [String]
    class DeleteWorkspaceApiKeyOutput < Struct.new(
      nil,
      :key_name,
      :workspace_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace to delete.</p>
    #   @return [String]
    class DeleteWorkspaceInput < Struct.new(
      nil,
      :workspace_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace
    #   <p>A structure containing information about the workspace that was deleted.</p>
    #   @return [Types::WorkspaceDescription]
    class DeleteWorkspaceOutput < Struct.new(
      nil,
      :workspace,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_account_id
    #   <p>The ID of the service account to delete.</p>
    #   @return [String]
    # @!attribute workspace_id
    #   <p>The ID of the workspace where the service account resides.</p>
    #   @return [String]
    class DeleteWorkspaceServiceAccountRequest < Struct.new(
      nil,
      :service_account_id,
      :workspace_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_account_id
    #   <p>The ID of the service account deleted.</p>
    #   @return [String]
    # @!attribute workspace_id
    #   <p>The ID of the workspace where the service account was deleted.</p>
    #   @return [String]
    class DeleteWorkspaceServiceAccountResponse < Struct.new(
      nil,
      :service_account_id,
      :workspace_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute token_id
    #   <p>The ID of the token to delete.</p>
    #   @return [String]
    # @!attribute service_account_id
    #   <p>The ID of the service account from which to delete the token.</p>
    #   @return [String]
    # @!attribute workspace_id
    #   <p>The ID of the workspace from which to delete the token.</p>
    #   @return [String]
    class DeleteWorkspaceServiceAccountTokenRequest < Struct.new(
      nil,
      :token_id,
      :service_account_id,
      :workspace_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute token_id
    #   <p>The ID of the token that was deleted.</p>
    #   @return [String]
    # @!attribute service_account_id
    #   <p>The ID of the service account where the token was deleted.</p>
    #   @return [String]
    # @!attribute workspace_id
    #   <p>The ID of the workspace where the token was deleted.</p>
    #   @return [String]
    class DeleteWorkspaceServiceAccountTokenResponse < Struct.new(
      nil,
      :token_id,
      :service_account_id,
      :workspace_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace to return authentication information about.</p>
    #   @return [String]
    class DescribeWorkspaceAuthenticationInput < Struct.new(
      nil,
      :workspace_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute authentication
    #   <p>A structure containing information about the authentication methods used in the
    #               workspace.</p>
    #   @return [Types::AuthenticationDescription]
    class DescribeWorkspaceAuthenticationOutput < Struct.new(
      nil,
      :authentication,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace to get configuration information for.</p>
    #   @return [String]
    class DescribeWorkspaceConfigurationInput < Struct.new(
      nil,
      :workspace_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration
    #   <p>The configuration string for the workspace that you requested. For more information
    #               about the format and configuration options available, see <a href="https://docs.aws.amazon.com/grafana/latest/userguide/AMG-configure-workspace.html">Working in your Grafana
    #                   workspace</a>.</p>
    #   @return [String]
    # @!attribute grafana_version
    #   <p>The supported Grafana version for the workspace.</p>
    #   @return [String]
    class DescribeWorkspaceConfigurationOutput < Struct.new(
      nil,
      :configuration,
      :grafana_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace to display information about.</p>
    #   @return [String]
    class DescribeWorkspaceInput < Struct.new(
      nil,
      :workspace_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace
    #   <p>A structure containing information about the workspace.</p>
    #   @return [Types::WorkspaceDescription]
    class DescribeWorkspaceOutput < Struct.new(
      nil,
      :workspace,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace to remove the Grafana Enterprise license from.</p>
    #   @return [String]
    # @!attribute license_type
    #   <p>The type of license to remove from the workspace.</p>
    #   @return [String]
    class DisassociateLicenseInput < Struct.new(
      nil,
      :workspace_id,
      :license_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace
    #   <p>A structure containing information about the workspace.</p>
    #   @return [Types::WorkspaceDescription]
    class DisassociateLicenseOutput < Struct.new(
      nil,
      :workspace,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure containing the identity provider (IdP) metadata used to integrate the
    #             identity provider with this workspace. You can specify the metadata either by providing
    #             a URL to its location in the <code>url</code> parameter, or by specifying the full
    #             metadata in XML format in the <code>xml</code> parameter. Specifying both will cause an
    #             error.</p>
    # @!attribute url
    #   <p>The URL of the location containing the IdP metadata.</p>
    #   @return [String]
    # @!attribute xml
    #   <p>The full IdP metadata, in XML format.</p>
    #   @return [String]
    class IdpMetadata < Struct.new(
      :url,
      :xml,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Url < IdpMetadata; end
      class Xml < IdpMetadata; end
      class Unknown < IdpMetadata; end
    end

    # <p>Unexpected error while processing the request. Retry the request.</p>
    # @!attribute message
    #   <p>A description of the error.</p>
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>How long to wait before you retry this operation.</p>
    #   @return [Integer]
    class InternalServerException < Struct.new(
      nil,
      :message,
      :retry_after_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to include in the response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to use when requesting the next set of results. You received this token from
    #               a previous <code>ListPermissions</code> operation.</p>
    #   @return [String]
    # @!attribute user_type
    #   <p>(Optional) If you specify <code>SSO_USER</code>, then only the permissions of IAM Identity Center users are returned. If you specify <code>SSO_GROUP</code>, only the
    #               permissions of IAM Identity Center groups are returned.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>(Optional) Limits the results to only the user that matches this ID.</p>
    #   @return [String]
    # @!attribute group_id
    #   <p>(Optional) Limits the results to only the group that matches this ID.</p>
    #   @return [String]
    # @!attribute workspace_id
    #   <p>The ID of the workspace to list permissions for. This parameter is required.</p>
    #   @return [String]
    class ListPermissionsInput < Struct.new(
      nil,
      :max_results,
      :next_token,
      :user_type,
      :user_id,
      :group_id,
      :workspace_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token to use in a subsequent <code>ListPermissions</code> operation to return the
    #               next set of results.</p>
    #   @return [String]
    # @!attribute permissions
    #   <p>The permissions returned by the operation.</p>
    #   @return [Array<Types::PermissionEntry>]
    class ListPermissionsOutput < Struct.new(
      nil,
      :next_token,
      :permissions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource the list of tags are associated with.</p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The list of tags that are associated with the resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceOutput < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to include in the response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to use when requesting the next set of results. You receive this token from
    #               a previous <code>ListVersions</code> operation.</p>
    #   @return [String]
    # @!attribute workspace_id
    #   <p>The ID of the workspace to list the available upgrade versions. If not included, 
    #               lists all versions of Grafana that are supported for 
    #               <code>CreateWorkspace</code>.</p>
    #   @return [String]
    class ListVersionsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      :workspace_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token to use in a subsequent <code>ListVersions</code> operation to return the
    #               next set of results.</p>
    #   @return [String]
    # @!attribute grafana_versions
    #   <p>The Grafana versions available to create. If a workspace ID is included in the 
    #               request, the Grafana versions to which this workspace can be upgraded.</p>
    #   @return [Array<String>]
    class ListVersionsResponse < Struct.new(
      nil,
      :next_token,
      :grafana_versions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of tokens to include in the results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of service accounts to return. (You receive this token
    #               from a previous <code>ListWorkspaceServiceAccountTokens</code> operation.)</p>
    #   @return [String]
    # @!attribute service_account_id
    #   <p>The ID of the service account for which to return tokens.</p>
    #   @return [String]
    # @!attribute workspace_id
    #   <p>The ID of the workspace for which to return tokens.</p>
    #   @return [String]
    class ListWorkspaceServiceAccountTokensRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      :service_account_id,
      :workspace_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token to use when requesting the next set of service accounts.</p>
    #   @return [String]
    # @!attribute service_account_tokens
    #   <p>An array of structures containing information about the tokens.</p>
    #   @return [Array<Types::ServiceAccountTokenSummary>]
    # @!attribute service_account_id
    #   <p>The ID of the service account where the tokens reside.</p>
    #   @return [String]
    # @!attribute workspace_id
    #   <p>The ID of the workspace where the tokens reside.</p>
    #   @return [String]
    class ListWorkspaceServiceAccountTokensResponse < Struct.new(
      nil,
      :next_token,
      :service_account_tokens,
      :service_account_id,
      :workspace_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of service accounts to include in the results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of service accounts to return. (You receive this token
    #               from a previous <code>ListWorkspaceServiceAccounts</code> operation.)</p>
    #   @return [String]
    # @!attribute workspace_id
    #   <p>The workspace for which to list service accounts.</p>
    #   @return [String]
    class ListWorkspaceServiceAccountsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      :workspace_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token to use when requesting the next set of service accounts.</p>
    #   @return [String]
    # @!attribute service_accounts
    #   <p>An array of structures containing information about the service accounts.</p>
    #   @return [Array<Types::ServiceAccountSummary>]
    # @!attribute workspace_id
    #   <p>The workspace to which the service accounts are associated.</p>
    #   @return [String]
    class ListWorkspaceServiceAccountsResponse < Struct.new(
      nil,
      :next_token,
      :service_accounts,
      :workspace_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of workspaces to include in the results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of workspaces to return. (You receive this token from a
    #               previous <code>ListWorkspaces</code> operation.)</p>
    #   @return [String]
    class ListWorkspacesInput < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspaces
    #   <p>An array of structures that contain some information about the workspaces in the
    #               account.</p>
    #   @return [Array<Types::WorkspaceSummary>]
    # @!attribute next_token
    #   <p>The token to use when requesting the next set of workspaces.</p>
    #   @return [String]
    class ListWorkspacesOutput < Struct.new(
      nil,
      :workspaces,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration settings for in-bound network access to your workspace.</p>
    #          <p>When this is configured, only listed IP addresses and VPC endpoints will be able to
    #             access your workspace. Standard Grafana authentication and authorization are still
    #             required.</p>
    #          <p>Access is granted to a caller that is in either the IP address list or the VPC 
    #             endpoint list - they do not need to be in both.</p>
    #          <p>If this is not configured, or is removed, then all IP addresses and VPC endpoints are
    #             allowed. Standard Grafana authentication and authorization are still
    #             required.</p>
    #          <note>
    #             <p>While both <code>prefixListIds</code> and <code>vpceIds</code> are required, you 
    #                 can pass in an empty array of strings for either parameter if you do not want to allow any
    #                 of that type.</p>
    #             <p>If both are passed as empty arrays, no traffic is allowed to the workspace, 
    #                 because only <i>explicitly</i> allowed connections are accepted.</p>
    #          </note>
    # @!attribute prefix_list_ids
    #   <p>An array of prefix list IDs. A prefix list is a list of CIDR ranges of IP addresses.
    #               The IP addresses specified are allowed to access your workspace. If the list is not
    #               included in the configuration (passed an empty array) then no IP addresses are 
    #               allowed to access the workspace. You create a prefix list using the Amazon VPC 
    #               console.</p>
    #            <p>Prefix list IDs have the format <code>pl-<i>1a2b3c4d</i>
    #               </code>.</p>
    #            <p>For more information about prefix lists, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/managed-prefix-lists.html">Group CIDR blocks using managed
    #                   prefix lists</a>in the <i>Amazon Virtual Private Cloud User
    #               Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute vpce_ids
    #   <p>An array of Amazon VPC endpoint IDs for the workspace. You can create VPC
    #               endpoints to your Amazon Managed Grafana workspace for access from within a VPC. If a
    #                   <code>NetworkAccessConfiguration</code> is specified then only VPC endpoints
    #               specified here are allowed to access the workspace. If you pass in an empty array
    #               of strings, then no VPCs are allowed to access the workspace.</p>
    #            <p>VPC endpoint IDs have the format
    #               <code>vpce-<i>1a2b3c4d</i>
    #               </code>.</p>
    #            <p>For more information about creating an interface VPC endpoint, see <a href="https://docs.aws.amazon.com/grafana/latest/userguide/VPC-endpoints">Interface VPC
    #                   endpoints</a> in the <i>Amazon Managed Grafana User
    #               Guide</i>.</p>
    #            <note>
    #               <p>The only VPC endpoints that can be specified here are interface VPC endpoints for
    #                   Grafana workspaces (using the <code>com.amazonaws.[region].grafana-workspace</code>
    #                   service endpoint). Other VPC endpoints are ignored.</p>
    #            </note>
    #   @return [Array<String>]
    class NetworkAccessConfiguration < Struct.new(
      nil,
      :prefix_list_ids,
      :vpce_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure containing the identity of one user or group and the <code>Admin</code>,
    #                 <code>Editor</code>, or <code>Viewer</code> role that they have.</p>
    # @!attribute user
    #   <p>A structure with the ID of the user or group with this role.</p>
    #   @return [Types::User]
    # @!attribute role
    #   <p>Specifies whether the user or group has the <code>Admin</code>, <code>Editor</code>,
    #               or <code>Viewer</code> role.</p>
    #   @return [String]
    class PermissionEntry < Struct.new(
      nil,
      :user,
      :role,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request references a resource that does not exist.</p>
    # @!attribute message
    #   <p>The value of a parameter in the request caused an error.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource that is associated with the error.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource that is associated with the error.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This structure defines which groups defined in the SAML assertion attribute are to be
    #             mapped to the Grafana <code>Admin</code> and <code>Editor</code> roles in the workspace.
    #             SAML authenticated users not part of <code>Admin</code> or <code>Editor</code> role
    #             groups have <code>Viewer</code> permission over the workspace.</p>
    # @!attribute editor
    #   <p>A list of groups from the SAML assertion attribute to grant the Grafana
    #                   <code>Editor</code> role to.</p>
    #   @return [Array<String>]
    # @!attribute admin
    #   <p>A list of groups from the SAML assertion attribute to grant the Grafana
    #                   <code>Admin</code> role to.</p>
    #   @return [Array<String>]
    class RoleValues < Struct.new(
      nil,
      :editor,
      :admin,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure containing information about how this workspace works with SAML. </p>
    # @!attribute status
    #   <p>Specifies whether the workspace's SAML configuration is complete.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>A structure containing details about how this workspace works with SAML. </p>
    #   @return [Types::SamlConfiguration]
    class SamlAuthentication < Struct.new(
      nil,
      :status,
      :configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure containing information about how this workspace works with SAML. </p>
    # @!attribute idp_metadata
    #   <p>A structure containing the identity provider (IdP) metadata used to integrate the
    #               identity provider with this workspace.</p>
    #   @return [Types::IdpMetadata]
    # @!attribute assertion_attributes
    #   <p>A structure that defines which attributes in the SAML assertion are to be used to
    #               define information about the users authenticated by that IdP to use the
    #               workspace.</p>
    #   @return [Types::AssertionAttributes]
    # @!attribute role_values
    #   <p>A structure containing arrays that map group names in the SAML assertion to the
    #               Grafana <code>Admin</code> and <code>Editor</code> roles in the workspace.</p>
    #   @return [Types::RoleValues]
    # @!attribute allowed_organizations
    #   <p>Lists which organizations defined in the SAML assertion are allowed to use the Amazon Managed Grafana workspace. If this is empty, all organizations in the assertion attribute
    #               have access.</p>
    #   @return [Array<String>]
    # @!attribute login_validity_duration
    #   <p>How long a sign-on session by a SAML user is valid, before the user has to sign on
    #               again.</p>
    #   @return [Integer]
    class SamlConfiguration < Struct.new(
      nil,
      :idp_metadata,
      :assertion_attributes,
      :role_values,
      :allowed_organizations,
      :login_validity_duration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:login_validity_duration] = 0 unless options.key?(:login_validity_duration)
        super
      end
    end

    # <p>A structure that contains the information about one service account.</p>
    # @!attribute id
    #   <p>The unique ID of the service account.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the service account.</p>
    #   @return [String]
    # @!attribute is_disabled
    #   <p>Returns true if the service account is disabled. Service accounts can be disabled and
    #               enabled in the Amazon Managed Grafana console.</p>
    #   @return [String]
    # @!attribute grafana_role
    #   <p>The role of the service account, which sets the permission level used when calling
    #               Grafana APIs.</p>
    #   @return [String]
    class ServiceAccountSummary < Struct.new(
      nil,
      :id,
      :name,
      :is_disabled,
      :grafana_role,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains the information about a service account token.</p>
    # @!attribute id
    #   <p>The unique ID of the service account token.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the service account token.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>When the service account token was created.</p>
    #   @return [Time]
    # @!attribute expires_at
    #   <p>When the service account token will expire.</p>
    #   @return [Time]
    # @!attribute last_used_at
    #   <p>The last time the token was used to authorize a Grafana HTTP API.</p>
    #   @return [Time]
    class ServiceAccountTokenSummary < Struct.new(
      nil,
      :id,
      :name,
      :created_at,
      :expires_at,
      :last_used_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains the information about a service account token.</p>
    #          <p>This structure is returned when creating the token. It is important to store the
    #             <code>key</code> that is returned, as it is not retrievable at a later time.</p>
    #          <p>If you lose the key, you can delete and recreate the token, which will create a
    #             new key.</p>
    # @!attribute id
    #   <p>The unique ID of the service account token.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the service account token.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The key for the service account token. Used when making calls to the Grafana HTTP 
    #               APIs to authenticate and authorize the requests.</p>
    #   @return [String]
    class ServiceAccountTokenSummaryWithKey < Struct.new(
      nil,
      :id,
      :name,
      :key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request would cause a service quota to be exceeded.</p>
    # @!attribute message
    #   <p>A description of the error.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource that is associated with the error.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource that is associated with the error.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>The value of a parameter in the request caused an error.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The ID of the service quota that was exceeded.</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource the tag is associated with.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The list of tag keys and values to associate with the resource. You can associate tag
    #               keys only, tags (key and values) only or a combination of tag keys and tags.</p>
    #   @return [Hash<String, String>]
    class TagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied because of request throttling. Retry the request.</p>
    # @!attribute message
    #   <p>A description of the error.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>The ID of the service that is associated with the error.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The ID of the service quota that was exceeded.</p>
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The value of a parameter in the request caused an error.</p>
    #   @return [Integer]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      :service_code,
      :quota_code,
      :retry_after_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource the tag association is removed from. </p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The key values of the tag to be removed from the resource.</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure containing information about one error encountered while performing an
    #                 <a href="https://docs.aws.amazon.com/grafana/latest/APIReference/API_UpdatePermissions.html">UpdatePermissions</a> operation.</p>
    # @!attribute code
    #   <p>The error code.</p>
    #   @return [Integer]
    # @!attribute message
    #   <p>The message for this error.</p>
    #   @return [String]
    # @!attribute caused_by
    #   <p>Specifies which permission update caused the error.</p>
    #   @return [Types::UpdateInstruction]
    class UpdateError < Struct.new(
      nil,
      :code,
      :message,
      :caused_by,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the instructions for one Grafana role permission update in a <a href="https://docs.aws.amazon.com/grafana/latest/APIReference/API_UpdatePermissions.html">UpdatePermissions</a> operation.</p>
    # @!attribute action
    #   <p>Specifies whether this update is to add or revoke role permissions.</p>
    #   @return [String]
    # @!attribute role
    #   <p>The role to add or revoke for the user or the group specified in
    #               <code>users</code>.</p>
    #   @return [String]
    # @!attribute users
    #   <p>A structure that specifies the user or group to add or revoke the role for.</p>
    #   @return [Array<Types::User>]
    class UpdateInstruction < Struct.new(
      nil,
      :action,
      :role,
      :users,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute update_instruction_batch
    #   <p>An array of structures that contain the permission updates to make.</p>
    #   @return [Array<Types::UpdateInstruction>]
    # @!attribute workspace_id
    #   <p>The ID of the workspace to update.</p>
    #   @return [String]
    class UpdatePermissionsInput < Struct.new(
      nil,
      :update_instruction_batch,
      :workspace_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute errors
    #   <p>An array of structures that contain the errors from the operation, if any.</p>
    #   @return [Array<Types::UpdateError>]
    class UpdatePermissionsOutput < Struct.new(
      nil,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace to update the authentication for.</p>
    #   @return [String]
    # @!attribute authentication_providers
    #   <p>Specifies whether this workspace uses SAML 2.0, IAM Identity Center, or both to
    #               authenticate users for using the Grafana console within a workspace. For more
    #               information, see <a href="https://docs.aws.amazon.com/grafana/latest/userguide/authentication-in-AMG.html">User authentication in
    #                       Amazon Managed Grafana</a>.</p>
    #   @return [Array<String>]
    # @!attribute saml_configuration
    #   <p>If the workspace uses SAML, use this structure to map SAML assertion attributes to
    #               workspace user information and define which groups in the assertion attribute are to
    #               have the <code>Admin</code> and <code>Editor</code> roles in the workspace.</p>
    #   @return [Types::SamlConfiguration]
    class UpdateWorkspaceAuthenticationInput < Struct.new(
      nil,
      :workspace_id,
      :authentication_providers,
      :saml_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute authentication
    #   <p>A structure that describes the user authentication for this workspace after the update
    #               is made.</p>
    #   @return [Types::AuthenticationDescription]
    class UpdateWorkspaceAuthenticationOutput < Struct.new(
      nil,
      :authentication,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration
    #   <p>The new configuration string for the workspace. For more information about the format
    #               and configuration options available, see <a href="https://docs.aws.amazon.com/grafana/latest/userguide/AMG-configure-workspace.html">Working in your Grafana
    #                   workspace</a>.</p>
    #   @return [String]
    # @!attribute workspace_id
    #   <p>The ID of the workspace to update.</p>
    #   @return [String]
    # @!attribute grafana_version
    #   <p>Specifies the version of Grafana to support in the workspace. If not specified, 
    #               keeps the current version of the workspace.</p>
    #            <p>Can only be used to upgrade (for example, from 8.4 to 9.4), not
    #               downgrade (for example, from 9.4 to 8.4).</p>
    #            <p>To know what versions are available to upgrade to for a specific workspace, see 
    #               the <a href="https://docs.aws.amazon.com/grafana/latest/APIReference/API_ListVersions.html">ListVersions</a> operation.</p>
    #   @return [String]
    class UpdateWorkspaceConfigurationInput < Struct.new(
      nil,
      :configuration,
      :workspace_id,
      :grafana_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateWorkspaceConfigurationOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_access_type
    #   <p>Specifies whether the workspace can access Amazon Web Services resources in this
    #                   Amazon Web Services account only, or whether it can also access Amazon Web Services
    #               resources in other accounts in the same organization. If you specify
    #                   <code>ORGANIZATION</code>, you must specify which organizational units the workspace
    #               can access in the <code>workspaceOrganizationalUnits</code> parameter.</p>
    #   @return [String]
    # @!attribute organization_role_name
    #   <p>The name of an IAM role that already exists to use to access resources
    #               through Organizations. This can only be used with a workspace that has the 
    #               <code>permissionType</code> set to <code>CUSTOMER_MANAGED</code>.</p>
    #   @return [String]
    # @!attribute permission_type
    #   <p>Use this parameter if you want to change a workspace from <code>SERVICE_MANAGED</code>
    #               to <code>CUSTOMER_MANAGED</code>. This allows you to manage the permissions that the 
    #               workspace uses to access datasources and notification channels. If the workspace is
    #               in a member Amazon Web Services account of an organization, and that account is not
    #               a delegated administrator account, and you want the workspace to access data sources in 
    #               other Amazon Web Services accounts in the organization, you must choose 
    #               <code>CUSTOMER_MANAGED</code>.</p>
    #            <p>If you specify this as <code>CUSTOMER_MANAGED</code>, you must also specify a 
    #               <code>workspaceRoleArn</code> that the workspace will use for accessing Amazon Web Services
    #               resources.</p>
    #            <p>For more information on the role and permissions needed, see <a href="https://docs.aws.amazon.com/grafana/latest/userguide/AMG-manage-permissions.html">Amazon Managed Grafana permissions and policies for Amazon Web Services data sources 
    #               and notification channels</a>
    #            </p>
    #            <note>
    #               <p>Do not use this to convert a <code>CUSTOMER_MANAGED</code> workspace to
    #                   <code>SERVICE_MANAGED</code>. Do not include this 
    #                   parameter if you want to leave the workspace as <code>SERVICE_MANAGED</code>.</p>
    #               <p>You can convert a <code>CUSTOMER_MANAGED</code> workspace to 
    #                   <code>SERVICE_MANAGED</code> using the Amazon Managed Grafana console. For more 
    #                   information, see <a href="https://docs.aws.amazon.com/grafana/latest/userguide/AMG-datasource-and-notification.html">Managing permissions for data sources and notification channels</a>.</p>
    #            </note>
    #   @return [String]
    # @!attribute stack_set_name
    #   <p>The name of the CloudFormation stack set to use to generate IAM
    #               roles to be used for this workspace.</p>
    #   @return [String]
    # @!attribute workspace_data_sources
    #   <p>This parameter is for internal use only, and should not be used.</p>
    #   @return [Array<String>]
    # @!attribute workspace_description
    #   <p>A description for the workspace. This is used only to help you identify this
    #               workspace.</p>
    #   @return [String]
    # @!attribute workspace_id
    #   <p>The ID of the workspace to update.</p>
    #   @return [String]
    # @!attribute workspace_name
    #   <p>A new name for the workspace to update.</p>
    #   @return [String]
    # @!attribute workspace_notification_destinations
    #   <p>Specify the Amazon Web Services notification channels that you plan to use in this
    #               workspace. Specifying these data sources here enables Amazon Managed Grafana to create
    #                   IAM roles and permissions that allow Amazon Managed Grafana to use these
    #               channels.</p>
    #   @return [Array<String>]
    # @!attribute workspace_organizational_units
    #   <p>Specifies the organizational units that this workspace is allowed to use data sources
    #               from, if this workspace is in an account that is part of an organization.</p>
    #   @return [Array<String>]
    # @!attribute workspace_role_arn
    #   <p>Specifies an IAM role that grants permissions to Amazon Web Services
    #               resources that the workspace accesses, such as data sources and notification channels.
    #               If this workspace has <code>permissionType</code>
    #               <code>CUSTOMER_MANAGED</code>,
    #               then this role is required.</p>
    #   @return [String]
    # @!attribute vpc_configuration
    #   <p>The configuration settings for an Amazon VPC that contains data sources for
    #               your Grafana workspace to connect to.</p>
    #   @return [Types::VpcConfiguration]
    # @!attribute remove_vpc_configuration
    #   <p>Whether to remove the VPC configuration from the workspace.</p>
    #            <p>Setting this to <code>true</code> and providing a <code>vpcConfiguration</code> to set
    #               will return an error.</p>
    #   @return [Boolean]
    # @!attribute network_access_control
    #   <p>The configuration settings for network access to your workspace.</p>
    #            <p>When this is configured, only listed IP addresses and VPC endpoints will be able to
    #               access your workspace. Standard Grafana authentication and authorization will still be
    #               required.</p>
    #            <p>If this is not configured, or is removed, then all IP addresses and VPC endpoints will
    #               be allowed. Standard Grafana authentication and authorization will still be
    #               required.</p>
    #   @return [Types::NetworkAccessConfiguration]
    # @!attribute remove_network_access_configuration
    #   <p>Whether to remove the network access configuration from the workspace.</p>
    #            <p>Setting this to <code>true</code> and providing a <code>networkAccessControl</code> to
    #               set will return an error.</p>
    #            <p>If you remove this configuration by setting this to <code>true</code>, then all IP
    #               addresses and VPC endpoints will be allowed. Standard Grafana authentication and
    #               authorization will still be required.</p>
    #   @return [Boolean]
    class UpdateWorkspaceInput < Struct.new(
      nil,
      :account_access_type,
      :organization_role_name,
      :permission_type,
      :stack_set_name,
      :workspace_data_sources,
      :workspace_description,
      :workspace_id,
      :workspace_name,
      :workspace_notification_destinations,
      :workspace_organizational_units,
      :workspace_role_arn,
      :vpc_configuration,
      :remove_vpc_configuration,
      :network_access_control,
      :remove_network_access_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace
    #   <p>A structure containing data about the workspace that was created.</p>
    #   @return [Types::WorkspaceDescription]
    class UpdateWorkspaceOutput < Struct.new(
      nil,
      :workspace,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that specifies one user or group in the workspace.</p>
    # @!attribute id
    #   <p>The ID of the user or group.</p>
    #            <p>Pattern:
    #                   <code>^([0-9a-fA-F]{10}-|)[A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{12}$</code>
    #            </p>
    #   @return [String]
    # @!attribute type
    #   <p>Specifies whether this is a single user or a group.</p>
    #   @return [String]
    class User < Struct.new(
      nil,
      :id,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The value of a parameter in the request caused an error.</p>
    # @!attribute message
    #   <p>A description of the error.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason that the operation failed.</p>
    #   @return [String]
    # @!attribute field_list
    #   <p>A list of fields that might be associated with the error.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      nil,
      :message,
      :reason,
      :field_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains information about a request parameter that caused an
    #             error.</p>
    # @!attribute name
    #   <p>The name of the field that caused the validation error.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A message describing why this field couldn't be validated.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      nil,
      :name,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration settings for an Amazon VPC that contains data sources for
    #             your Grafana workspace to connect to.</p>
    #          <note>
    #             <p>Provided <code>securityGroupIds</code> and <code>subnetIds</code> must be part of
    #                 the same VPC.</p>
    #             <p>Connecting to a private VPC is not yet available in the Asia Pacific (Seoul) 
    #                 Region (ap-northeast-2).</p>
    #          </note>
    # @!attribute security_group_ids
    #   <p>The list of Amazon EC2 security group IDs attached to the Amazon VPC
    #               for your Grafana workspace to connect. Duplicates not allowed.</p>
    #   @return [Array<String>]
    # @!attribute subnet_ids
    #   <p>The list of Amazon EC2 subnet IDs created in the Amazon VPC for your
    #               Grafana workspace to connect. Duplicates not allowed.</p>
    #   @return [Array<String>]
    class VpcConfiguration < Struct.new(
      nil,
      :security_group_ids,
      :subnet_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure containing information about an Amazon Managed Grafana workspace in your
    #             account.</p>
    # @!attribute account_access_type
    #   <p>Specifies whether the workspace can access Amazon Web Services resources in this
    #                   Amazon Web Services account only, or whether it can also access Amazon Web Services
    #               resources in other accounts in the same organization. If this is
    #                   <code>ORGANIZATION</code>, the <code>workspaceOrganizationalUnits</code> parameter
    #               specifies which organizational units the workspace can access.</p>
    #   @return [String]
    # @!attribute created
    #   <p>The date that the workspace was created.</p>
    #   @return [Time]
    # @!attribute data_sources
    #   <p>Specifies the Amazon Web Services data sources that have been configured to have
    #                   IAM roles and permissions created to allow Amazon Managed Grafana to read
    #               data from these sources.</p>
    #            <p>This list is only used when the workspace was created through the Amazon Web Services
    #               console, and the <code>permissionType</code> is <code>SERVICE_MANAGED</code>.</p>
    #   @return [Array<String>]
    # @!attribute description
    #   <p>The user-defined description of the workspace.</p>
    #   @return [String]
    # @!attribute endpoint
    #   <p>The URL that users can use to access the Grafana console in the workspace.</p>
    #   @return [String]
    # @!attribute grafana_version
    #   <p>The version of Grafana supported in this workspace.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique ID of this workspace.</p>
    #   @return [String]
    # @!attribute modified
    #   <p>The most recent date that the workspace was modified.</p>
    #   @return [Time]
    # @!attribute name
    #   <p>The name of the workspace.</p>
    #   @return [String]
    # @!attribute organization_role_name
    #   <p>The name of the IAM role that is used to access resources through
    #                   Organizations.</p>
    #   @return [String]
    # @!attribute notification_destinations
    #   <p>The Amazon Web Services notification channels that Amazon Managed Grafana can automatically
    #               create IAM roles and permissions for, to allow Amazon Managed Grafana to use
    #               these channels.</p>
    #   @return [Array<String>]
    # @!attribute organizational_units
    #   <p>Specifies the organizational units that this workspace is allowed to use data sources
    #               from, if this workspace is in an account that is part of an organization.</p>
    #   @return [Array<String>]
    # @!attribute permission_type
    #   <p>If this is <code>SERVICE_MANAGED</code>, and the workplace was created through the 
    #               Amazon Managed Grafana console, then Amazon Managed Grafana automatically creates the
    #               IAM roles and provisions the permissions that the workspace needs to
    #               use Amazon Web Services data sources and notification channels.</p>
    #            <p>If this is <code>CUSTOMER_MANAGED</code>, you must manage those roles and permissions
    #               yourself.</p>
    #            <p>If you are working with a workspace in a member account of an organization and
    #               that account is not a delegated administrator account, and you want the workspace to
    #               access data sources in other Amazon Web Services accounts in the organization, this
    #               parameter must be set to <code>CUSTOMER_MANAGED</code>.</p>
    #            <p>For more information about converting between customer and service managed, see
    #               <a href="https://docs.aws.amazon.com/grafana/latest/userguide/AMG-datasource-and-notification.html">Managing permissions for data sources and notification channels</a>. For more
    #               information about the roles and permissions that must be managed for customer managed 
    #               workspaces, see <a href="https://docs.aws.amazon.com/grafana/latest/userguide/AMG-manage-permissions.html">Amazon Managed Grafana
    #               permissions and policies for Amazon Web Services data sources and notification
    #               channels</a>
    #            </p>
    #   @return [String]
    # @!attribute stack_set_name
    #   <p>The name of the CloudFormation stack set that is used to generate IAM roles to be used for this workspace.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the workspace.</p>
    #   @return [String]
    # @!attribute workspace_role_arn
    #   <p>The IAM role that grants permissions to the Amazon Web Services
    #               resources that the workspace will view data from. This role must already exist.</p>
    #   @return [String]
    # @!attribute license_type
    #   <p>Specifies whether this workspace has a full Grafana Enterprise license.</p>
    #            <note>
    #               <p>Amazon Managed Grafana workspaces no longer support Grafana Enterprise free trials.</p>
    #            </note>
    #   @return [String]
    # @!attribute free_trial_consumed
    #   <p>Specifies whether this workspace has already fully used its free trial for Grafana
    #               Enterprise.</p>
    #            <note>
    #               <p>Amazon Managed Grafana workspaces no longer support Grafana Enterprise free trials.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute license_expiration
    #   <p>If this workspace has a full Grafana Enterprise license purchased through 
    #               Amazon Web Services Marketplace, this specifies when the
    #               license ends and will need to be renewed. Purchasing the Enterprise plugins option 
    #               through Amazon Managed Grafana does not have an expiration. It is valid until the 
    #               license is removed.</p>
    #   @return [Time]
    # @!attribute free_trial_expiration
    #   <p>If this workspace is currently in the free trial period for Grafana Enterprise, this
    #               value specifies when that free trial ends.</p>
    #            <note>
    #               <p>Amazon Managed Grafana workspaces no longer support Grafana Enterprise free trials.</p>
    #            </note>
    #   @return [Time]
    # @!attribute authentication
    #   <p>A structure that describes whether the workspace uses SAML, IAM Identity Center, or
    #               both methods for user authentication.</p>
    #   @return [Types::AuthenticationSummary]
    # @!attribute tags
    #   <p>The list of tags associated with the workspace.</p>
    #   @return [Hash<String, String>]
    # @!attribute vpc_configuration
    #   <p>The configuration for connecting to data sources in a private VPC (Amazon Virtual Private Cloud).</p>
    #   @return [Types::VpcConfiguration]
    # @!attribute network_access_control
    #   <p>The configuration settings for network access to your workspace.</p>
    #   @return [Types::NetworkAccessConfiguration]
    # @!attribute grafana_token
    #   <p>The token that ties this workspace to a Grafana Labs account. For more information, 
    #               see <a href="https://docs.aws.amazon.com/grafana/latest/userguide/upgrade-to-Grafana-Enterprise.html#AMG-workspace-register-enterprise">Link your account with Grafana Labs</a>.</p>
    #   @return [String]
    class WorkspaceDescription < Struct.new(
      nil,
      :account_access_type,
      :created,
      :data_sources,
      :description,
      :endpoint,
      :grafana_version,
      :id,
      :modified,
      :name,
      :organization_role_name,
      :notification_destinations,
      :organizational_units,
      :permission_type,
      :stack_set_name,
      :status,
      :workspace_role_arn,
      :license_type,
      :free_trial_consumed,
      :license_expiration,
      :free_trial_expiration,
      :authentication,
      :tags,
      :vpc_configuration,
      :network_access_control,
      :grafana_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains some information about one workspace in the account.</p>
    # @!attribute created
    #   <p>The date that the workspace was created.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The customer-entered description of the workspace.</p>
    #   @return [String]
    # @!attribute endpoint
    #   <p>The URL endpoint to use to access the Grafana console in the workspace.</p>
    #   @return [String]
    # @!attribute grafana_version
    #   <p>The Grafana version that the workspace is running.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique ID of the workspace.</p>
    #   @return [String]
    # @!attribute modified
    #   <p>The most recent date that the workspace was modified.</p>
    #   @return [Time]
    # @!attribute name
    #   <p>The name of the workspace.</p>
    #   @return [String]
    # @!attribute notification_destinations
    #   <p>The Amazon Web Services notification channels that Amazon Managed Grafana can automatically
    #               create IAM roles and permissions for, which allows Amazon Managed Grafana to
    #               use these channels.</p>
    #   @return [Array<String>]
    # @!attribute status
    #   <p>The current status of the workspace.</p>
    #   @return [String]
    # @!attribute authentication
    #   <p>A structure containing information about the authentication methods used in the
    #               workspace.</p>
    #   @return [Types::AuthenticationSummary]
    # @!attribute tags
    #   <p>The list of tags associated with the workspace.</p>
    #   @return [Hash<String, String>]
    # @!attribute license_type
    #   <p>Specifies whether this workspace has a full Grafana Enterprise license.</p>
    #            <note>
    #               <p>Amazon Managed Grafana workspaces no longer support Grafana Enterprise free trials.</p>
    #            </note>
    #   @return [String]
    # @!attribute grafana_token
    #   <p>The token that ties this workspace to a Grafana Labs account. For more information, 
    #               see <a href="https://docs.aws.amazon.com/grafana/latest/userguide/upgrade-to-Grafana-Enterprise.html#AMG-workspace-register-enterprise">Link your account with Grafana Labs</a>.</p>
    #   @return [String]
    class WorkspaceSummary < Struct.new(
      nil,
      :created,
      :description,
      :endpoint,
      :grafana_version,
      :id,
      :modified,
      :name,
      :notification_destinations,
      :status,
      :authentication,
      :tags,
      :license_type,
      :grafana_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
