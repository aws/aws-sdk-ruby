# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ManagedGrafana
  module Types

    # You do not have sufficient permissions to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that defines which attributes in the IdP assertion are to
    # be used to define information about the users authenticated by the IdP
    # to use the workspace.
    #
    # @!attribute [rw] email
    #   The name of the attribute within the SAML assertion to use as the
    #   email names for SAML users.
    #   @return [String]
    #
    # @!attribute [rw] groups
    #   The name of the attribute within the SAML assertion to use as the
    #   user full "friendly" names for user groups.
    #   @return [String]
    #
    # @!attribute [rw] login
    #   The name of the attribute within the SAML assertion to use as the
    #   login names for SAML users.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the attribute within the SAML assertion to use as the
    #   user full "friendly" names for SAML users.
    #   @return [String]
    #
    # @!attribute [rw] org
    #   The name of the attribute within the SAML assertion to use as the
    #   user full "friendly" names for the users' organizations.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The name of the attribute within the SAML assertion to use as the
    #   user roles.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/AssertionAttributes AWS API Documentation
    #
    class AssertionAttributes < Struct.new(
      :email,
      :groups,
      :login,
      :name,
      :org,
      :role)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] license_type
    #   The type of license to associate with the workspace.
    #   @return [String]
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace to associate the license with.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/AssociateLicenseRequest AWS API Documentation
    #
    class AssociateLicenseRequest < Struct.new(
      :license_type,
      :workspace_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workspace
    #   A structure containing data about the workspace.
    #   @return [Types::WorkspaceDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/AssociateLicenseResponse AWS API Documentation
    #
    class AssociateLicenseResponse < Struct.new(
      :workspace)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure containing information about the user authentication
    # methods used by the workspace.
    #
    # @!attribute [rw] aws_sso
    #   A structure containing information about how this workspace works
    #   with IAM Identity Center.
    #   @return [Types::AwsSsoAuthentication]
    #
    # @!attribute [rw] providers
    #   Specifies whether this workspace uses IAM Identity Center, SAML, or
    #   both methods to authenticate users to use the Grafana console in the
    #   Amazon Managed Grafana workspace.
    #   @return [Array<String>]
    #
    # @!attribute [rw] saml
    #   A structure containing information about how this workspace works
    #   with SAML, including what attributes within the assertion are to be
    #   mapped to user information in the workspace.
    #   @return [Types::SamlAuthentication]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/AuthenticationDescription AWS API Documentation
    #
    class AuthenticationDescription < Struct.new(
      :aws_sso,
      :providers,
      :saml)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that describes whether the workspace uses SAML, IAM
    # Identity Center, or both methods for user authentication, and whether
    # that authentication is fully configured.
    #
    # @!attribute [rw] providers
    #   Specifies whether the workspace uses SAML, IAM Identity Center, or
    #   both methods for user authentication.
    #   @return [Array<String>]
    #
    # @!attribute [rw] saml_configuration_status
    #   Specifies whether the workplace's user authentication method is
    #   fully configured.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/AuthenticationSummary AWS API Documentation
    #
    class AuthenticationSummary < Struct.new(
      :providers,
      :saml_configuration_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure containing information about how this workspace works with
    # IAM Identity Center.
    #
    # @!attribute [rw] sso_client_id
    #   The ID of the IAM Identity Center-managed application that is
    #   created by Amazon Managed Grafana.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/AwsSsoAuthentication AWS API Documentation
    #
    class AwsSsoAuthentication < Struct.new(
      :sso_client_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A resource was in an inconsistent state during an update or a
    # deletion.
    #
    # @!attribute [rw] message
    #   A description of the error.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource that is associated with the error.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource that is associated with the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] key_name
    #   Specifies the name of the key. Keynames must be unique to the
    #   workspace.
    #   @return [String]
    #
    # @!attribute [rw] key_role
    #   Specifies the permission level of the key.
    #
    #   Valid values: `VIEWER`\|`EDITOR`\|`ADMIN`
    #   @return [String]
    #
    # @!attribute [rw] seconds_to_live
    #   Specifies the time in seconds until the key expires. Keys can be
    #   valid for up to 30 days.
    #   @return [Integer]
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace to create an API key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/CreateWorkspaceApiKeyRequest AWS API Documentation
    #
    class CreateWorkspaceApiKeyRequest < Struct.new(
      :key_name,
      :key_role,
      :seconds_to_live,
      :workspace_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] key
    #   The key token. Use this value as a bearer token to authenticate HTTP
    #   requests to the workspace.
    #   @return [String]
    #
    # @!attribute [rw] key_name
    #   The name of the key that was created.
    #   @return [String]
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace that the key is valid for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/CreateWorkspaceApiKeyResponse AWS API Documentation
    #
    class CreateWorkspaceApiKeyResponse < Struct.new(
      :key,
      :key_name,
      :workspace_id)
      SENSITIVE = [:key]
      include Aws::Structure
    end

    # @!attribute [rw] account_access_type
    #   Specifies whether the workspace can access Amazon Web Services
    #   resources in this Amazon Web Services account only, or whether it
    #   can also access Amazon Web Services resources in other accounts in
    #   the same organization. If you specify `ORGANIZATION`, you must
    #   specify which organizational units the workspace can access in the
    #   `workspaceOrganizationalUnits` parameter.
    #   @return [String]
    #
    # @!attribute [rw] authentication_providers
    #   Specifies whether this workspace uses SAML 2.0, IAM Identity Center
    #   (successor to Single Sign-On), or both to authenticate users for
    #   using the Grafana console within a workspace. For more information,
    #   see [User authentication in Amazon Managed Grafana][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/grafana/latest/userguide/authentication-in-AMG.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive, user-provided identifier to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The configuration string for the workspace that you create. For more
    #   information about the format and configuration options available,
    #   see [Working in your Grafana workspace][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/grafana/latest/userguide/AMG-configure-workspace.html
    #   @return [String]
    #
    # @!attribute [rw] grafana_version
    #   Specifies the version of Grafana to support in the new workspace.
    #
    #   Supported values are `8.4` and `9.4`.
    #   @return [String]
    #
    # @!attribute [rw] network_access_control
    #   Configuration for network access to your workspace.
    #
    #   When this is configured, only listed IP addresses and VPC endpoints
    #   will be able to access your workspace. Standard Grafana
    #   authentication and authorization will still be required.
    #
    #   If this is not configured, or is removed, then all IP addresses and
    #   VPC endpoints will be allowed. Standard Grafana authentication and
    #   authorization will still be required.
    #   @return [Types::NetworkAccessConfiguration]
    #
    # @!attribute [rw] organization_role_name
    #   The name of an IAM role that already exists to use with
    #   Organizations to access Amazon Web Services data sources and
    #   notification channels in other accounts in an organization.
    #   @return [String]
    #
    # @!attribute [rw] permission_type
    #   When creating a workspace through the Amazon Web Services API, CLI
    #   or Amazon Web Services CloudFormation, you must manage IAM roles and
    #   provision the permissions that the workspace needs to use Amazon Web
    #   Services data sources and notification channels.
    #
    #   You must also specify a `workspaceRoleArn` for a role that you will
    #   manage for the workspace to use when accessing those datasources and
    #   notification channels.
    #
    #   The ability for Amazon Managed Grafana to create and update IAM
    #   roles on behalf of the user is supported only in the Amazon Managed
    #   Grafana console, where this value may be set to `SERVICE_MANAGED`.
    #
    #   <note markdown="1"> Use only the `CUSTOMER_MANAGED` permission type when creating a
    #   workspace with the API, CLI or Amazon Web Services CloudFormation.
    #
    #    </note>
    #
    #   For more information, see [Amazon Managed Grafana permissions and
    #   policies for Amazon Web Services data sources and notification
    #   channels][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/grafana/latest/userguide/AMG-manage-permissions.html
    #   @return [String]
    #
    # @!attribute [rw] stack_set_name
    #   The name of the CloudFormation stack set to use to generate IAM
    #   roles to be used for this workspace.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of tags associated with the workspace.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] vpc_configuration
    #   The configuration settings for an Amazon VPC that contains data
    #   sources for your Grafana workspace to connect to.
    #   @return [Types::VpcConfiguration]
    #
    # @!attribute [rw] workspace_data_sources
    #   This parameter is for internal use only, and should not be used.
    #   @return [Array<String>]
    #
    # @!attribute [rw] workspace_description
    #   A description for the workspace. This is used only to help you
    #   identify this workspace.
    #
    #   Pattern: `^[\\p\{L\}\\p\{Z\}\\p\{N\}\\p\{P\}]\{0,2048\}$`
    #   @return [String]
    #
    # @!attribute [rw] workspace_name
    #   The name for the workspace. It does not have to be unique.
    #   @return [String]
    #
    # @!attribute [rw] workspace_notification_destinations
    #   Specify the Amazon Web Services notification channels that you plan
    #   to use in this workspace. Specifying these data sources here enables
    #   Amazon Managed Grafana to create IAM roles and permissions that
    #   allow Amazon Managed Grafana to use these channels.
    #   @return [Array<String>]
    #
    # @!attribute [rw] workspace_organizational_units
    #   Specifies the organizational units that this workspace is allowed to
    #   use data sources from, if this workspace is in an account that is
    #   part of an organization.
    #   @return [Array<String>]
    #
    # @!attribute [rw] workspace_role_arn
    #   Specified the IAM role that grants permissions to the Amazon Web
    #   Services resources that the workspace will view data from, including
    #   both data sources and notification channels. You are responsible for
    #   managing the permissions for this role as new data sources or
    #   notification channels are added.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/CreateWorkspaceRequest AWS API Documentation
    #
    class CreateWorkspaceRequest < Struct.new(
      :account_access_type,
      :authentication_providers,
      :client_token,
      :configuration,
      :grafana_version,
      :network_access_control,
      :organization_role_name,
      :permission_type,
      :stack_set_name,
      :tags,
      :vpc_configuration,
      :workspace_data_sources,
      :workspace_description,
      :workspace_name,
      :workspace_notification_destinations,
      :workspace_organizational_units,
      :workspace_role_arn)
      SENSITIVE = [:organization_role_name, :workspace_description, :workspace_name, :workspace_organizational_units, :workspace_role_arn]
      include Aws::Structure
    end

    # @!attribute [rw] workspace
    #   A structure containing data about the workspace that was created.
    #   @return [Types::WorkspaceDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/CreateWorkspaceResponse AWS API Documentation
    #
    class CreateWorkspaceResponse < Struct.new(
      :workspace)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] key_name
    #   The name of the API key to delete.
    #   @return [String]
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/DeleteWorkspaceApiKeyRequest AWS API Documentation
    #
    class DeleteWorkspaceApiKeyRequest < Struct.new(
      :key_name,
      :workspace_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] key_name
    #   The name of the key that was deleted.
    #   @return [String]
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace where the key was deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/DeleteWorkspaceApiKeyResponse AWS API Documentation
    #
    class DeleteWorkspaceApiKeyResponse < Struct.new(
      :key_name,
      :workspace_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workspace_id
    #   The ID of the workspace to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/DeleteWorkspaceRequest AWS API Documentation
    #
    class DeleteWorkspaceRequest < Struct.new(
      :workspace_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workspace
    #   A structure containing information about the workspace that was
    #   deleted.
    #   @return [Types::WorkspaceDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/DeleteWorkspaceResponse AWS API Documentation
    #
    class DeleteWorkspaceResponse < Struct.new(
      :workspace)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workspace_id
    #   The ID of the workspace to return authentication information about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/DescribeWorkspaceAuthenticationRequest AWS API Documentation
    #
    class DescribeWorkspaceAuthenticationRequest < Struct.new(
      :workspace_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] authentication
    #   A structure containing information about the authentication methods
    #   used in the workspace.
    #   @return [Types::AuthenticationDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/DescribeWorkspaceAuthenticationResponse AWS API Documentation
    #
    class DescribeWorkspaceAuthenticationResponse < Struct.new(
      :authentication)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workspace_id
    #   The ID of the workspace to get configuration information for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/DescribeWorkspaceConfigurationRequest AWS API Documentation
    #
    class DescribeWorkspaceConfigurationRequest < Struct.new(
      :workspace_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration
    #   The configuration string for the workspace that you requested. For
    #   more information about the format and configuration options
    #   available, see [Working in your Grafana workspace][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/grafana/latest/userguide/AMG-configure-workspace.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/DescribeWorkspaceConfigurationResponse AWS API Documentation
    #
    class DescribeWorkspaceConfigurationResponse < Struct.new(
      :configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workspace_id
    #   The ID of the workspace to display information about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/DescribeWorkspaceRequest AWS API Documentation
    #
    class DescribeWorkspaceRequest < Struct.new(
      :workspace_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workspace
    #   A structure containing information about the workspace.
    #   @return [Types::WorkspaceDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/DescribeWorkspaceResponse AWS API Documentation
    #
    class DescribeWorkspaceResponse < Struct.new(
      :workspace)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] license_type
    #   The type of license to remove from the workspace.
    #   @return [String]
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace to remove the Grafana Enterprise license
    #   from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/DisassociateLicenseRequest AWS API Documentation
    #
    class DisassociateLicenseRequest < Struct.new(
      :license_type,
      :workspace_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workspace
    #   A structure containing information about the workspace.
    #   @return [Types::WorkspaceDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/DisassociateLicenseResponse AWS API Documentation
    #
    class DisassociateLicenseResponse < Struct.new(
      :workspace)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure containing the identity provider (IdP) metadata used to
    # integrate the identity provider with this workspace. You can specify
    # the metadata either by providing a URL to its location in the `url`
    # parameter, or by specifying the full metadata in XML format in the
    # `xml` parameter. Specifying both will cause an error.
    #
    # @note IdpMetadata is a union - when making an API calls you must set exactly one of the members.
    #
    # @note IdpMetadata is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of IdpMetadata corresponding to the set member.
    #
    # @!attribute [rw] url
    #   The URL of the location containing the IdP metadata.
    #   @return [String]
    #
    # @!attribute [rw] xml
    #   The full IdP metadata, in XML format.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/IdpMetadata AWS API Documentation
    #
    class IdpMetadata < Struct.new(
      :url,
      :xml,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Url < IdpMetadata; end
      class Xml < IdpMetadata; end
      class Unknown < IdpMetadata; end
    end

    # Unexpected error while processing the request. Retry the request.
    #
    # @!attribute [rw] message
    #   A description of the error.
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   How long to wait before you retry this operation.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group_id
    #   (Optional) Limits the results to only the group that matches this
    #   ID.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to include in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to use when requesting the next set of results. You
    #   received this token from a previous `ListPermissions` operation.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   (Optional) Limits the results to only the user that matches this ID.
    #   @return [String]
    #
    # @!attribute [rw] user_type
    #   (Optional) If you specify `SSO_USER`, then only the permissions of
    #   IAM Identity Center users are returned. If you specify `SSO_GROUP`,
    #   only the permissions of IAM Identity Center groups are returned.
    #   @return [String]
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace to list permissions for. This parameter is
    #   required.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/ListPermissionsRequest AWS API Documentation
    #
    class ListPermissionsRequest < Struct.new(
      :group_id,
      :max_results,
      :next_token,
      :user_id,
      :user_type,
      :workspace_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token to use in a subsequent `ListPermissions` operation to
    #   return the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] permissions
    #   The permissions returned by the operation.
    #   @return [Array<Types::PermissionEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/ListPermissionsResponse AWS API Documentation
    #
    class ListPermissionsResponse < Struct.new(
      :next_token,
      :permissions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource the list of tags are associated with.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The list of tags that are associated with the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of workspaces to include in the results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of workspaces to return. (You receive
    #   this token from a previous `ListWorkspaces` operation.)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/ListWorkspacesRequest AWS API Documentation
    #
    class ListWorkspacesRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token to use when requesting the next set of workspaces.
    #   @return [String]
    #
    # @!attribute [rw] workspaces
    #   An array of structures that contain some information about the
    #   workspaces in the account.
    #   @return [Array<Types::WorkspaceSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/ListWorkspacesResponse AWS API Documentation
    #
    class ListWorkspacesResponse < Struct.new(
      :next_token,
      :workspaces)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration settings for in-bound network access to your
    # workspace.
    #
    # When this is configured, only listed IP addresses and VPC endpoints
    # will be able to access your workspace. Standard Grafana authentication
    # and authorization will still be required.
    #
    # If this is not configured, or is removed, then all IP addresses and
    # VPC endpoints will be allowed. Standard Grafana authentication and
    # authorization will still be required.
    #
    # @!attribute [rw] prefix_list_ids
    #   An array of prefix list IDs. A prefix list is a list of CIDR ranges
    #   of IP addresses. The IP addresses specified are allowed to access
    #   your workspace. If the list is not included in the configuration
    #   then no IP addresses will be allowed to access the workspace. You
    #   create a prefix list using the Amazon VPC console.
    #
    #   Prefix list IDs have the format `pl-1a2b3c4d `.
    #
    #   For more information about prefix lists, see [Group CIDR blocks
    #   using managed prefix lists][1]in the *Amazon Virtual Private Cloud
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/managed-prefix-lists.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpce_ids
    #   An array of Amazon VPC endpoint IDs for the workspace. You can
    #   create VPC endpoints to your Amazon Managed Grafana workspace for
    #   access from within a VPC. If a `NetworkAccessConfiguration` is
    #   specified then only VPC endpoints specified here will be allowed to
    #   access the workspace.
    #
    #   VPC endpoint IDs have the format `vpce-1a2b3c4d `.
    #
    #   For more information about creating an interface VPC endpoint, see
    #   [Interface VPC endpoints][1] in the *Amazon Managed Grafana User
    #   Guide*.
    #
    #   <note markdown="1"> The only VPC endpoints that can be specified here are interface VPC
    #   endpoints for Grafana workspaces (using the
    #   `com.amazonaws.[region].grafana-workspace` service endpoint). Other
    #   VPC endpoints will be ignored.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/grafana/latest/userguide/VPC-endpoints
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/NetworkAccessConfiguration AWS API Documentation
    #
    class NetworkAccessConfiguration < Struct.new(
      :prefix_list_ids,
      :vpce_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure containing the identity of one user or group and the
    # `Admin`, `Editor`, or `Viewer` role that they have.
    #
    # @!attribute [rw] role
    #   Specifies whether the user or group has the `Admin`, `Editor`, or
    #   `Viewer` role.
    #   @return [String]
    #
    # @!attribute [rw] user
    #   A structure with the ID of the user or group with this role.
    #   @return [Types::User]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/PermissionEntry AWS API Documentation
    #
    class PermissionEntry < Struct.new(
      :role,
      :user)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request references a resource that does not exist.
    #
    # @!attribute [rw] message
    #   The value of a parameter in the request caused an error.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource that is associated with the error.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource that is associated with the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure defines which groups defined in the SAML assertion
    # attribute are to be mapped to the Grafana `Admin` and `Editor` roles
    # in the workspace. SAML authenticated users not part of `Admin` or
    # `Editor` role groups have `Viewer` permission over the workspace.
    #
    # @!attribute [rw] admin
    #   A list of groups from the SAML assertion attribute to grant the
    #   Grafana `Admin` role to.
    #   @return [Array<String>]
    #
    # @!attribute [rw] editor
    #   A list of groups from the SAML assertion attribute to grant the
    #   Grafana `Editor` role to.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/RoleValues AWS API Documentation
    #
    class RoleValues < Struct.new(
      :admin,
      :editor)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure containing information about how this workspace works with
    # SAML.
    #
    # @!attribute [rw] configuration
    #   A structure containing details about how this workspace works with
    #   SAML.
    #   @return [Types::SamlConfiguration]
    #
    # @!attribute [rw] status
    #   Specifies whether the workspace's SAML configuration is complete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/SamlAuthentication AWS API Documentation
    #
    class SamlAuthentication < Struct.new(
      :configuration,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure containing information about how this workspace works with
    # SAML.
    #
    # @!attribute [rw] allowed_organizations
    #   Lists which organizations defined in the SAML assertion are allowed
    #   to use the Amazon Managed Grafana workspace. If this is empty, all
    #   organizations in the assertion attribute have access.
    #   @return [Array<String>]
    #
    # @!attribute [rw] assertion_attributes
    #   A structure that defines which attributes in the SAML assertion are
    #   to be used to define information about the users authenticated by
    #   that IdP to use the workspace.
    #   @return [Types::AssertionAttributes]
    #
    # @!attribute [rw] idp_metadata
    #   A structure containing the identity provider (IdP) metadata used to
    #   integrate the identity provider with this workspace.
    #   @return [Types::IdpMetadata]
    #
    # @!attribute [rw] login_validity_duration
    #   How long a sign-on session by a SAML user is valid, before the user
    #   has to sign on again.
    #   @return [Integer]
    #
    # @!attribute [rw] role_values
    #   A structure containing arrays that map group names in the SAML
    #   assertion to the Grafana `Admin` and `Editor` roles in the
    #   workspace.
    #   @return [Types::RoleValues]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/SamlConfiguration AWS API Documentation
    #
    class SamlConfiguration < Struct.new(
      :allowed_organizations,
      :assertion_attributes,
      :idp_metadata,
      :login_validity_duration,
      :role_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request would cause a service quota to be exceeded.
    #
    # @!attribute [rw] message
    #   A description of the error.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The ID of the service quota that was exceeded.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource that is associated with the error.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource that is associated with the error.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The value of a parameter in the request caused an error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :quota_code,
      :resource_id,
      :resource_type,
      :service_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource the tag is associated with.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of tag keys and values to associate with the resource. You
    #   can associate tag keys only, tags (key and values) only or a
    #   combination of tag keys and tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The request was denied because of request throttling. Retry the
    # request.
    #
    # @!attribute [rw] message
    #   A description of the error.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The ID of the service quota that was exceeded.
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The value of a parameter in the request caused an error.
    #   @return [Integer]
    #
    # @!attribute [rw] service_code
    #   The ID of the service that is associated with the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :quota_code,
      :retry_after_seconds,
      :service_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource the tag association is removed from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The key values of the tag to be removed from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # A structure containing information about one error encountered while
    # performing an [UpdatePermissions][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/grafana/latest/APIReference/API_UpdatePermissions.html
    #
    # @!attribute [rw] caused_by
    #   Specifies which permission update caused the error.
    #   @return [Types::UpdateInstruction]
    #
    # @!attribute [rw] code
    #   The error code.
    #   @return [Integer]
    #
    # @!attribute [rw] message
    #   The message for this error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/UpdateError AWS API Documentation
    #
    class UpdateError < Struct.new(
      :caused_by,
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the instructions for one Grafana role permission update in a
    # [UpdatePermissions][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/grafana/latest/APIReference/API_UpdatePermissions.html
    #
    # @!attribute [rw] action
    #   Specifies whether this update is to add or revoke role permissions.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The role to add or revoke for the user or the group specified in
    #   `users`.
    #   @return [String]
    #
    # @!attribute [rw] users
    #   A structure that specifies the user or group to add or revoke the
    #   role for.
    #   @return [Array<Types::User>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/UpdateInstruction AWS API Documentation
    #
    class UpdateInstruction < Struct.new(
      :action,
      :role,
      :users)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] update_instruction_batch
    #   An array of structures that contain the permission updates to make.
    #   @return [Array<Types::UpdateInstruction>]
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace to update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/UpdatePermissionsRequest AWS API Documentation
    #
    class UpdatePermissionsRequest < Struct.new(
      :update_instruction_batch,
      :workspace_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] errors
    #   An array of structures that contain the errors from the operation,
    #   if any.
    #   @return [Array<Types::UpdateError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/UpdatePermissionsResponse AWS API Documentation
    #
    class UpdatePermissionsResponse < Struct.new(
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] authentication_providers
    #   Specifies whether this workspace uses SAML 2.0, IAM Identity Center
    #   (successor to Single Sign-On), or both to authenticate users for
    #   using the Grafana console within a workspace. For more information,
    #   see [User authentication in Amazon Managed Grafana][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/grafana/latest/userguide/authentication-in-AMG.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] saml_configuration
    #   If the workspace uses SAML, use this structure to map SAML assertion
    #   attributes to workspace user information and define which groups in
    #   the assertion attribute are to have the `Admin` and `Editor` roles
    #   in the workspace.
    #   @return [Types::SamlConfiguration]
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace to update the authentication for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/UpdateWorkspaceAuthenticationRequest AWS API Documentation
    #
    class UpdateWorkspaceAuthenticationRequest < Struct.new(
      :authentication_providers,
      :saml_configuration,
      :workspace_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] authentication
    #   A structure that describes the user authentication for this
    #   workspace after the update is made.
    #   @return [Types::AuthenticationDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/UpdateWorkspaceAuthenticationResponse AWS API Documentation
    #
    class UpdateWorkspaceAuthenticationResponse < Struct.new(
      :authentication)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration
    #   The new configuration string for the workspace. For more information
    #   about the format and configuration options available, see [Working
    #   in your Grafana workspace][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/grafana/latest/userguide/AMG-configure-workspace.html
    #   @return [String]
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace to update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/UpdateWorkspaceConfigurationRequest AWS API Documentation
    #
    class UpdateWorkspaceConfigurationRequest < Struct.new(
      :configuration,
      :workspace_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/UpdateWorkspaceConfigurationResponse AWS API Documentation
    #
    class UpdateWorkspaceConfigurationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] account_access_type
    #   Specifies whether the workspace can access Amazon Web Services
    #   resources in this Amazon Web Services account only, or whether it
    #   can also access Amazon Web Services resources in other accounts in
    #   the same organization. If you specify `ORGANIZATION`, you must
    #   specify which organizational units the workspace can access in the
    #   `workspaceOrganizationalUnits` parameter.
    #   @return [String]
    #
    # @!attribute [rw] network_access_control
    #   The configuration settings for network access to your workspace.
    #
    #   When this is configured, only listed IP addresses and VPC endpoints
    #   will be able to access your workspace. Standard Grafana
    #   authentication and authorization will still be required.
    #
    #   If this is not configured, or is removed, then all IP addresses and
    #   VPC endpoints will be allowed. Standard Grafana authentication and
    #   authorization will still be required.
    #   @return [Types::NetworkAccessConfiguration]
    #
    # @!attribute [rw] organization_role_name
    #   The name of an IAM role that already exists to use to access
    #   resources through Organizations. This can only be used with a
    #   workspace that has the `permissionType` set to `CUSTOMER_MANAGED`.
    #   @return [String]
    #
    # @!attribute [rw] permission_type
    #   Use this parameter if you want to change a workspace from
    #   `SERVICE_MANAGED` to `CUSTOMER_MANAGED`. This allows you to manage
    #   the permissions that the workspace uses to access datasources and
    #   notification channels. If the workspace is in a member Amazon Web
    #   Services account of an organization, and that account is not a
    #   delegated administrator account, and you want the workspace to
    #   access data sources in other Amazon Web Services accounts in the
    #   organization, you must choose `CUSTOMER_MANAGED`.
    #
    #   If you specify this as `CUSTOMER_MANAGED`, you must also specify a
    #   `workspaceRoleArn` that the workspace will use for accessing Amazon
    #   Web Services resources.
    #
    #   For more information on the role and permissions needed, see [Amazon
    #   Managed Grafana permissions and policies for Amazon Web Services
    #   data sources and notification channels][1]
    #
    #   <note markdown="1"> Do not use this to convert a `CUSTOMER_MANAGED` workspace to
    #   `SERVICE_MANAGED`. Do not include this parameter if you want to
    #   leave the workspace as `SERVICE_MANAGED`.
    #
    #    You can convert a `CUSTOMER_MANAGED` workspace to `SERVICE_MANAGED`
    #   using the Amazon Managed Grafana console. For more information, see
    #   [Managing permissions for data sources and notification
    #   channels][2].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/grafana/latest/userguide/AMG-manage-permissions.html
    #   [2]: https://docs.aws.amazon.com/grafana/latest/userguide/AMG-datasource-and-notification.html
    #   @return [String]
    #
    # @!attribute [rw] remove_network_access_configuration
    #   Whether to remove the network access configuration from the
    #   workspace.
    #
    #   Setting this to `true` and providing a `networkAccessControl` to set
    #   will return an error.
    #
    #   If you remove this configuration by setting this to `true`, then all
    #   IP addresses and VPC endpoints will be allowed. Standard Grafana
    #   authentication and authorization will still be required.
    #   @return [Boolean]
    #
    # @!attribute [rw] remove_vpc_configuration
    #   Whether to remove the VPC configuration from the workspace.
    #
    #   Setting this to `true` and providing a `vpcConfiguration` to set
    #   will return an error.
    #   @return [Boolean]
    #
    # @!attribute [rw] stack_set_name
    #   The name of the CloudFormation stack set to use to generate IAM
    #   roles to be used for this workspace.
    #   @return [String]
    #
    # @!attribute [rw] vpc_configuration
    #   The configuration settings for an Amazon VPC that contains data
    #   sources for your Grafana workspace to connect to.
    #   @return [Types::VpcConfiguration]
    #
    # @!attribute [rw] workspace_data_sources
    #   This parameter is for internal use only, and should not be used.
    #   @return [Array<String>]
    #
    # @!attribute [rw] workspace_description
    #   A description for the workspace. This is used only to help you
    #   identify this workspace.
    #   @return [String]
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace to update.
    #   @return [String]
    #
    # @!attribute [rw] workspace_name
    #   A new name for the workspace to update.
    #   @return [String]
    #
    # @!attribute [rw] workspace_notification_destinations
    #   Specify the Amazon Web Services notification channels that you plan
    #   to use in this workspace. Specifying these data sources here enables
    #   Amazon Managed Grafana to create IAM roles and permissions that
    #   allow Amazon Managed Grafana to use these channels.
    #   @return [Array<String>]
    #
    # @!attribute [rw] workspace_organizational_units
    #   Specifies the organizational units that this workspace is allowed to
    #   use data sources from, if this workspace is in an account that is
    #   part of an organization.
    #   @return [Array<String>]
    #
    # @!attribute [rw] workspace_role_arn
    #   Specifies an IAM role that grants permissions to Amazon Web Services
    #   resources that the workspace accesses, such as data sources and
    #   notification channels. If this workspace has `permissionType`
    #   `CUSTOMER_MANAGED`, then this role is required.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/UpdateWorkspaceRequest AWS API Documentation
    #
    class UpdateWorkspaceRequest < Struct.new(
      :account_access_type,
      :network_access_control,
      :organization_role_name,
      :permission_type,
      :remove_network_access_configuration,
      :remove_vpc_configuration,
      :stack_set_name,
      :vpc_configuration,
      :workspace_data_sources,
      :workspace_description,
      :workspace_id,
      :workspace_name,
      :workspace_notification_destinations,
      :workspace_organizational_units,
      :workspace_role_arn)
      SENSITIVE = [:organization_role_name, :workspace_description, :workspace_name, :workspace_organizational_units, :workspace_role_arn]
      include Aws::Structure
    end

    # @!attribute [rw] workspace
    #   A structure containing data about the workspace that was created.
    #   @return [Types::WorkspaceDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/UpdateWorkspaceResponse AWS API Documentation
    #
    class UpdateWorkspaceResponse < Struct.new(
      :workspace)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that specifies one user or group in the workspace.
    #
    # @!attribute [rw] id
    #   The ID of the user or group.
    #
    #   Pattern:
    #   `^([0-9a-fA-F]\{10\}-|)[A-Fa-f0-9]\{8\}-[A-Fa-f0-9]\{4\}-[A-Fa-f0-9]\{4\}-[A-Fa-f0-9]\{4\}-[A-Fa-f0-9]\{12\}$`
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Specifies whether this is a single user or a group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/User AWS API Documentation
    #
    class User < Struct.new(
      :id,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The value of a parameter in the request caused an error.
    #
    # @!attribute [rw] field_list
    #   A list of fields that might be associated with the error.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @!attribute [rw] message
    #   A description of the error.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason that the operation failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :field_list,
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains information about a request parameter that
    # caused an error.
    #
    # @!attribute [rw] message
    #   A message describing why this field couldn't be validated.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the field that caused the validation error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :message,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration settings for an Amazon VPC that contains data
    # sources for your Grafana workspace to connect to.
    #
    # <note markdown="1"> Provided `securityGroupIds` and `subnetIds` must be part of the same
    # VPC.
    #
    #  </note>
    #
    # @!attribute [rw] security_group_ids
    #   The list of Amazon EC2 security group IDs attached to the Amazon VPC
    #   for your Grafana workspace to connect. Duplicates not allowed.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_ids
    #   The list of Amazon EC2 subnet IDs created in the Amazon VPC for your
    #   Grafana workspace to connect. Duplicates not allowed.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/VpcConfiguration AWS API Documentation
    #
    class VpcConfiguration < Struct.new(
      :security_group_ids,
      :subnet_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure containing information about an Amazon Managed Grafana
    # workspace in your account.
    #
    # @!attribute [rw] account_access_type
    #   Specifies whether the workspace can access Amazon Web Services
    #   resources in this Amazon Web Services account only, or whether it
    #   can also access Amazon Web Services resources in other accounts in
    #   the same organization. If this is `ORGANIZATION`, the
    #   `workspaceOrganizationalUnits` parameter specifies which
    #   organizational units the workspace can access.
    #   @return [String]
    #
    # @!attribute [rw] authentication
    #   A structure that describes whether the workspace uses SAML, IAM
    #   Identity Center, or both methods for user authentication.
    #   @return [Types::AuthenticationSummary]
    #
    # @!attribute [rw] created
    #   The date that the workspace was created.
    #   @return [Time]
    #
    # @!attribute [rw] data_sources
    #   Specifies the Amazon Web Services data sources that have been
    #   configured to have IAM roles and permissions created to allow Amazon
    #   Managed Grafana to read data from these sources.
    #
    #   This list is only used when the workspace was created through the
    #   Amazon Web Services console, and the `permissionType` is
    #   `SERVICE_MANAGED`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] description
    #   The user-defined description of the workspace.
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   The URL that users can use to access the Grafana console in the
    #   workspace.
    #   @return [String]
    #
    # @!attribute [rw] free_trial_consumed
    #   Specifies whether this workspace has already fully used its free
    #   trial for Grafana Enterprise.
    #   @return [Boolean]
    #
    # @!attribute [rw] free_trial_expiration
    #   If this workspace is currently in the free trial period for Grafana
    #   Enterprise, this value specifies when that free trial ends.
    #   @return [Time]
    #
    # @!attribute [rw] grafana_version
    #   The version of Grafana supported in this workspace.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique ID of this workspace.
    #   @return [String]
    #
    # @!attribute [rw] license_expiration
    #   If this workspace has a full Grafana Enterprise license, this
    #   specifies when the license ends and will need to be renewed.
    #   @return [Time]
    #
    # @!attribute [rw] license_type
    #   Specifies whether this workspace has a full Grafana Enterprise
    #   license or a free trial license.
    #   @return [String]
    #
    # @!attribute [rw] modified
    #   The most recent date that the workspace was modified.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the workspace.
    #   @return [String]
    #
    # @!attribute [rw] network_access_control
    #   The configuration settings for network access to your workspace.
    #   @return [Types::NetworkAccessConfiguration]
    #
    # @!attribute [rw] notification_destinations
    #   The Amazon Web Services notification channels that Amazon Managed
    #   Grafana can automatically create IAM roles and permissions for, to
    #   allow Amazon Managed Grafana to use these channels.
    #   @return [Array<String>]
    #
    # @!attribute [rw] organization_role_name
    #   The name of the IAM role that is used to access resources through
    #   Organizations.
    #   @return [String]
    #
    # @!attribute [rw] organizational_units
    #   Specifies the organizational units that this workspace is allowed to
    #   use data sources from, if this workspace is in an account that is
    #   part of an organization.
    #   @return [Array<String>]
    #
    # @!attribute [rw] permission_type
    #   If this is `SERVICE_MANAGED`, and the workplace was created through
    #   the Amazon Managed Grafana console, then Amazon Managed Grafana
    #   automatically creates the IAM roles and provisions the permissions
    #   that the workspace needs to use Amazon Web Services data sources and
    #   notification channels.
    #
    #   If this is `CUSTOMER_MANAGED`, you must manage those roles and
    #   permissions yourself.
    #
    #   If you are working with a workspace in a member account of an
    #   organization and that account is not a delegated administrator
    #   account, and you want the workspace to access data sources in other
    #   Amazon Web Services accounts in the organization, this parameter
    #   must be set to `CUSTOMER_MANAGED`.
    #
    #   For more information about converting between customer and service
    #   managed, see [Managing permissions for data sources and notification
    #   channels][1]. For more information about the roles and permissions
    #   that must be managed for customer managed workspaces, see [Amazon
    #   Managed Grafana permissions and policies for Amazon Web Services
    #   data sources and notification channels][2]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/grafana/latest/userguide/AMG-datasource-and-notification.html
    #   [2]: https://docs.aws.amazon.com/grafana/latest/userguide/AMG-manage-permissions.html
    #   @return [String]
    #
    # @!attribute [rw] stack_set_name
    #   The name of the CloudFormation stack set that is used to generate
    #   IAM roles to be used for this workspace.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the workspace.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of tags associated with the workspace.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] vpc_configuration
    #   The configuration for connecting to data sources in a private VPC
    #   (Amazon Virtual Private Cloud).
    #   @return [Types::VpcConfiguration]
    #
    # @!attribute [rw] workspace_role_arn
    #   The IAM role that grants permissions to the Amazon Web Services
    #   resources that the workspace will view data from. This role must
    #   already exist.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/WorkspaceDescription AWS API Documentation
    #
    class WorkspaceDescription < Struct.new(
      :account_access_type,
      :authentication,
      :created,
      :data_sources,
      :description,
      :endpoint,
      :free_trial_consumed,
      :free_trial_expiration,
      :grafana_version,
      :id,
      :license_expiration,
      :license_type,
      :modified,
      :name,
      :network_access_control,
      :notification_destinations,
      :organization_role_name,
      :organizational_units,
      :permission_type,
      :stack_set_name,
      :status,
      :tags,
      :vpc_configuration,
      :workspace_role_arn)
      SENSITIVE = [:description, :name, :organization_role_name, :organizational_units, :workspace_role_arn]
      include Aws::Structure
    end

    # A structure that contains some information about one workspace in the
    # account.
    #
    # @!attribute [rw] authentication
    #   A structure containing information about the authentication methods
    #   used in the workspace.
    #   @return [Types::AuthenticationSummary]
    #
    # @!attribute [rw] created
    #   The date that the workspace was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The customer-entered description of the workspace.
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   The URL endpoint to use to access the Grafana console in the
    #   workspace.
    #   @return [String]
    #
    # @!attribute [rw] grafana_version
    #   The Grafana version that the workspace is running.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique ID of the workspace.
    #   @return [String]
    #
    # @!attribute [rw] modified
    #   The most recent date that the workspace was modified.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the workspace.
    #   @return [String]
    #
    # @!attribute [rw] notification_destinations
    #   The Amazon Web Services notification channels that Amazon Managed
    #   Grafana can automatically create IAM roles and permissions for,
    #   which allows Amazon Managed Grafana to use these channels.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   The current status of the workspace.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of tags associated with the workspace.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/WorkspaceSummary AWS API Documentation
    #
    class WorkspaceSummary < Struct.new(
      :authentication,
      :created,
      :description,
      :endpoint,
      :grafana_version,
      :id,
      :modified,
      :name,
      :notification_destinations,
      :status,
      :tags)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

  end
end
