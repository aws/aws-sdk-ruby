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
    # @note When making an API call, you may pass AssertionAttributes
    #   data as a hash:
    #
    #       {
    #         email: "AssertionAttribute",
    #         groups: "AssertionAttribute",
    #         login: "AssertionAttribute",
    #         name: "AssertionAttribute",
    #         org: "AssertionAttribute",
    #         role: "AssertionAttribute",
    #       }
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

    # @note When making an API call, you may pass AssociateLicenseRequest
    #   data as a hash:
    #
    #       {
    #         license_type: "ENTERPRISE", # required, accepts ENTERPRISE, ENTERPRISE_FREE_TRIAL
    #         workspace_id: "WorkspaceId", # required
    #       }
    #
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
    #   with Amazon Web Services SSO.
    #   @return [Types::AwsSsoAuthentication]
    #
    # @!attribute [rw] providers
    #   Specifies whether this workspace uses Amazon Web Services SSO, SAML,
    #   or both methods to authenticate users to use the Grafana console in
    #   the Amazon Managed Grafana workspace.
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

    # A structure that describes whether the workspace uses SAML, Amazon Web
    # Services SSO, or both methods for user authentication, and whether
    # that authentication is fully configured.
    #
    # @!attribute [rw] providers
    #   Specifies whether the workspace uses SAML, Amazon Web Services SSO,
    #   or both methods for user authentication.
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
    # Amazon Web Services SSO.
    #
    # @!attribute [rw] sso_client_id
    #   The ID of the Amazon Web Services SSO-managed application that is
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

    # @note When making an API call, you may pass CreateWorkspaceRequest
    #   data as a hash:
    #
    #       {
    #         account_access_type: "CURRENT_ACCOUNT", # required, accepts CURRENT_ACCOUNT, ORGANIZATION
    #         authentication_providers: ["AWS_SSO"], # required, accepts AWS_SSO, SAML
    #         client_token: "ClientToken",
    #         organization_role_name: "OrganizationRoleName",
    #         permission_type: "CUSTOMER_MANAGED", # required, accepts CUSTOMER_MANAGED, SERVICE_MANAGED
    #         stack_set_name: "StackSetName",
    #         workspace_data_sources: ["AMAZON_OPENSEARCH_SERVICE"], # accepts AMAZON_OPENSEARCH_SERVICE, CLOUDWATCH, PROMETHEUS, XRAY, TIMESTREAM, SITEWISE
    #         workspace_description: "Description",
    #         workspace_name: "WorkspaceName",
    #         workspace_notification_destinations: ["SNS"], # accepts SNS
    #         workspace_organizational_units: ["OrganizationalUnit"],
    #         workspace_role_arn: "IamRoleArn",
    #       }
    #
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
    #   Specifies whether this workspace uses SAML 2.0, Amazon Web Services
    #   Single Sign On, or both to authenticate users for using the Grafana
    #   console within a workspace. For more information, see [User
    #   authentication in Amazon Managed Grafana][1].
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
    # @!attribute [rw] organization_role_name
    #   The name of an IAM role that already exists to use with
    #   Organizations to access Amazon Web Services data sources and
    #   notification channels in other accounts in an organization.
    #   @return [String]
    #
    # @!attribute [rw] permission_type
    #   If you specify `Service Managed`, Amazon Managed Grafana
    #   automatically creates the IAM roles and provisions the permissions
    #   that the workspace needs to use Amazon Web Services data sources and
    #   notification channels.
    #
    #   If you specify `CUSTOMER_MANAGED`, you will manage those roles and
    #   permissions yourself. If you are creating this workspace in a member
    #   account of an organization that is not a delegated administrator
    #   account, and you want the workspace to access data sources in other
    #   Amazon Web Services accounts in the organization, you must choose
    #   `CUSTOMER_MANAGED`.
    #
    #   For more information, see [Amazon Managed Grafana permissions and
    #   policies for Amazon Web Services data sources and notification
    #   channels][1]
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
    # @!attribute [rw] workspace_data_sources
    #   Specify the Amazon Web Services data sources that you want to be
    #   queried in this workspace. Specifying these data sources here
    #   enables Amazon Managed Grafana to create IAM roles and permissions
    #   that allow Amazon Managed Grafana to read data from these sources.
    #   You must still add them as data sources in the Grafana console in
    #   the workspace.
    #
    #   If you don't specify a data source here, you can still add it as a
    #   data source in the workspace console later. However, you will then
    #   have to manually configure permissions for it.
    #   @return [Array<String>]
    #
    # @!attribute [rw] workspace_description
    #   A description for the workspace. This is used only to help you
    #   identify this workspace.
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
    #   The workspace needs an IAM role that grants permissions to the
    #   Amazon Web Services resources that the workspace will view data
    #   from. If you already have a role that you want to use, specify it
    #   here. If you omit this field and you specify some Amazon Web
    #   Services resources in `workspaceDataSources` or
    #   `workspaceNotificationDestinations`, a new IAM role with the
    #   necessary permissions is automatically created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/CreateWorkspaceRequest AWS API Documentation
    #
    class CreateWorkspaceRequest < Struct.new(
      :account_access_type,
      :authentication_providers,
      :client_token,
      :organization_role_name,
      :permission_type,
      :stack_set_name,
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

    # @note When making an API call, you may pass DeleteWorkspaceRequest
    #   data as a hash:
    #
    #       {
    #         workspace_id: "WorkspaceId", # required
    #       }
    #
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

    # @note When making an API call, you may pass DescribeWorkspaceAuthenticationRequest
    #   data as a hash:
    #
    #       {
    #         workspace_id: "WorkspaceId", # required
    #       }
    #
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

    # @note When making an API call, you may pass DescribeWorkspaceRequest
    #   data as a hash:
    #
    #       {
    #         workspace_id: "WorkspaceId", # required
    #       }
    #
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

    # @note When making an API call, you may pass DisassociateLicenseRequest
    #   data as a hash:
    #
    #       {
    #         license_type: "ENTERPRISE", # required, accepts ENTERPRISE, ENTERPRISE_FREE_TRIAL
    #         workspace_id: "WorkspaceId", # required
    #       }
    #
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
    # `xml` parameter.
    #
    # @note IdpMetadata is a union - when making an API calls you must set exactly one of the members.
    #
    # @note IdpMetadata is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of IdpMetadata corresponding to the set member.
    #
    # @!attribute [rw] url
    #   The URL of the location containing the metadata.
    #   @return [String]
    #
    # @!attribute [rw] xml
    #   The actual full metadata file, in XML format.
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

    # @note When making an API call, you may pass ListPermissionsRequest
    #   data as a hash:
    #
    #       {
    #         group_id: "SsoId",
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #         user_id: "SsoId",
    #         user_type: "SSO_USER", # accepts SSO_USER, SSO_GROUP
    #         workspace_id: "WorkspaceId", # required
    #       }
    #
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
    #   Amazon Web Services SSO users are returned. If you specify
    #   `SSO_GROUP`, only the permissions of Amazon Web Services SSO groups
    #   are returned.
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

    # @note When making an API call, you may pass ListWorkspacesRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #       }
    #
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

    # A structure containing the identity of one user or group and the
    # `Admin` or `Editor` role that they have.
    #
    # @!attribute [rw] role
    #   Specifies whether the user or group has the `Admin` or `Editor`
    #   role.
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
    # in the workspace.
    #
    # @note When making an API call, you may pass RoleValues
    #   data as a hash:
    #
    #       {
    #         admin: ["RoleValue"],
    #         editor: ["RoleValue"],
    #       }
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
    # @note When making an API call, you may pass SamlConfiguration
    #   data as a hash:
    #
    #       {
    #         allowed_organizations: ["AllowedOrganization"],
    #         assertion_attributes: {
    #           email: "AssertionAttribute",
    #           groups: "AssertionAttribute",
    #           login: "AssertionAttribute",
    #           name: "AssertionAttribute",
    #           org: "AssertionAttribute",
    #           role: "AssertionAttribute",
    #         },
    #         idp_metadata: { # required
    #           url: "IdpMetadataUrl",
    #           xml: "String",
    #         },
    #         login_validity_duration: 1,
    #         role_values: {
    #           admin: ["RoleValue"],
    #           editor: ["RoleValue"],
    #         },
    #       }
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
    # @note When making an API call, you may pass UpdateInstruction
    #   data as a hash:
    #
    #       {
    #         action: "ADD", # required, accepts ADD, REVOKE
    #         role: "ADMIN", # required, accepts ADMIN, EDITOR
    #         users: [ # required
    #           {
    #             id: "SsoId", # required
    #             type: "SSO_USER", # required, accepts SSO_USER, SSO_GROUP
    #           },
    #         ],
    #       }
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

    # @note When making an API call, you may pass UpdatePermissionsRequest
    #   data as a hash:
    #
    #       {
    #         update_instruction_batch: [ # required
    #           {
    #             action: "ADD", # required, accepts ADD, REVOKE
    #             role: "ADMIN", # required, accepts ADMIN, EDITOR
    #             users: [ # required
    #               {
    #                 id: "SsoId", # required
    #                 type: "SSO_USER", # required, accepts SSO_USER, SSO_GROUP
    #               },
    #             ],
    #           },
    #         ],
    #         workspace_id: "WorkspaceId", # required
    #       }
    #
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

    # @note When making an API call, you may pass UpdateWorkspaceAuthenticationRequest
    #   data as a hash:
    #
    #       {
    #         authentication_providers: ["AWS_SSO"], # required, accepts AWS_SSO, SAML
    #         saml_configuration: {
    #           allowed_organizations: ["AllowedOrganization"],
    #           assertion_attributes: {
    #             email: "AssertionAttribute",
    #             groups: "AssertionAttribute",
    #             login: "AssertionAttribute",
    #             name: "AssertionAttribute",
    #             org: "AssertionAttribute",
    #             role: "AssertionAttribute",
    #           },
    #           idp_metadata: { # required
    #             url: "IdpMetadataUrl",
    #             xml: "String",
    #           },
    #           login_validity_duration: 1,
    #           role_values: {
    #             admin: ["RoleValue"],
    #             editor: ["RoleValue"],
    #           },
    #         },
    #         workspace_id: "WorkspaceId", # required
    #       }
    #
    # @!attribute [rw] authentication_providers
    #   Specifies whether this workspace uses SAML 2.0, Amazon Web Services
    #   Single Sign On, or both to authenticate users for using the Grafana
    #   console within a workspace. For more information, see [User
    #   authentication in Amazon Managed Grafana][1].
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

    # @note When making an API call, you may pass UpdateWorkspaceRequest
    #   data as a hash:
    #
    #       {
    #         account_access_type: "CURRENT_ACCOUNT", # accepts CURRENT_ACCOUNT, ORGANIZATION
    #         organization_role_name: "OrganizationRoleName",
    #         permission_type: "CUSTOMER_MANAGED", # accepts CUSTOMER_MANAGED, SERVICE_MANAGED
    #         stack_set_name: "StackSetName",
    #         workspace_data_sources: ["AMAZON_OPENSEARCH_SERVICE"], # accepts AMAZON_OPENSEARCH_SERVICE, CLOUDWATCH, PROMETHEUS, XRAY, TIMESTREAM, SITEWISE
    #         workspace_description: "Description",
    #         workspace_id: "WorkspaceId", # required
    #         workspace_name: "WorkspaceName",
    #         workspace_notification_destinations: ["SNS"], # accepts SNS
    #         workspace_organizational_units: ["OrganizationalUnit"],
    #         workspace_role_arn: "IamRoleArn",
    #       }
    #
    # @!attribute [rw] account_access_type
    #   Specifies whether the workspace can access Amazon Web Services
    #   resources in this Amazon Web Services account only, or whether it
    #   can also access Amazon Web Services resources in other accounts in
    #   the same organization. If you specify `ORGANIZATION`, you must
    #   specify which organizational units the workspace can access in the
    #   `workspaceOrganizationalUnits` parameter.
    #   @return [String]
    #
    # @!attribute [rw] organization_role_name
    #   The name of an IAM role that already exists to use to access
    #   resources through Organizations.
    #   @return [String]
    #
    # @!attribute [rw] permission_type
    #   If you specify `Service Managed`, Amazon Managed Grafana
    #   automatically creates the IAM roles and provisions the permissions
    #   that the workspace needs to use Amazon Web Services data sources and
    #   notification channels.
    #
    #   If you specify `CUSTOMER_MANAGED`, you will manage those roles and
    #   permissions yourself. If you are creating this workspace in a member
    #   account of an organization and that account is not a delegated
    #   administrator account, and you want the workspace to access data
    #   sources in other Amazon Web Services accounts in the organization,
    #   you must choose `CUSTOMER_MANAGED`.
    #
    #   For more information, see [Amazon Managed Grafana permissions and
    #   policies for Amazon Web Services data sources and notification
    #   channels][1]
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
    # @!attribute [rw] workspace_data_sources
    #   Specify the Amazon Web Services data sources that you want to be
    #   queried in this workspace. Specifying these data sources here
    #   enables Amazon Managed Grafana to create IAM roles and permissions
    #   that allow Amazon Managed Grafana to read data from these sources.
    #   You must still add them as data sources in the Grafana console in
    #   the workspace.
    #
    #   If you don't specify a data source here, you can still add it as a
    #   data source later in the workspace console. However, you will then
    #   have to manually configure permissions for it.
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
    #   The workspace needs an IAM role that grants permissions to the
    #   Amazon Web Services resources that the workspace will view data
    #   from. If you already have a role that you want to use, specify it
    #   here. If you omit this field and you specify some Amazon Web
    #   Services resources in `workspaceDataSources` or
    #   `workspaceNotificationDestinations`, a new IAM role with the
    #   necessary permissions is automatically created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/grafana-2020-08-18/UpdateWorkspaceRequest AWS API Documentation
    #
    class UpdateWorkspaceRequest < Struct.new(
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
    # @note When making an API call, you may pass User
    #   data as a hash:
    #
    #       {
    #         id: "SsoId", # required
    #         type: "SSO_USER", # required, accepts SSO_USER, SSO_GROUP
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the user or group.
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
    #   A structure that describes whether the workspace uses SAML, Amazon
    #   Web Services SSO, or both methods for user authentication.
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
    #   If this is `Service Managed`, Amazon Managed Grafana automatically
    #   creates the IAM roles and provisions the permissions that the
    #   workspace needs to use Amazon Web Services data sources and
    #   notification channels.
    #
    #   If this is `CUSTOMER_MANAGED`, you manage those roles and
    #   permissions yourself. If you are creating this workspace in a member
    #   account of an organization and that account is not a delegated
    #   administrator account, and you want the workspace to access data
    #   sources in other Amazon Web Services accounts in the organization,
    #   you must choose `CUSTOMER_MANAGED`.
    #
    #   For more information, see [Amazon Managed Grafana permissions and
    #   policies for Amazon Web Services data sources and notification
    #   channels][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/grafana/latest/userguide/AMG-manage-permissions.html
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
      :notification_destinations,
      :organization_role_name,
      :organizational_units,
      :permission_type,
      :stack_set_name,
      :status,
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
      :status)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

  end
end
