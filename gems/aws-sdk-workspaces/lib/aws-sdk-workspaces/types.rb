# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::WorkSpaces
  module Types

    # The user is not authorized to access a resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a modification to the configuration of Bring Your Own
    # License (BYOL) for the specified account.
    #
    # @!attribute [rw] modification_state
    #   The state of the modification to the configuration of BYOL.
    #   @return [String]
    #
    # @!attribute [rw] dedicated_tenancy_support
    #   The status of BYOL (whether BYOL is being enabled or disabled).
    #   @return [String]
    #
    # @!attribute [rw] dedicated_tenancy_management_cidr_range
    #   The IP address range, specified as an IPv4 CIDR block, for the
    #   management network interface used for the account.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The timestamp when the modification of the BYOL configuration was
    #   started.
    #   @return [Time]
    #
    # @!attribute [rw] error_code
    #   The error code that is returned if the configuration of BYOL cannot
    #   be modified.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The text of the error message that is returned if the configuration
    #   of BYOL cannot be modified.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/AccountModification AWS API Documentation
    #
    class AccountModification < Struct.new(
      :modification_state,
      :dedicated_tenancy_support,
      :dedicated_tenancy_management_cidr_range,
      :start_time,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass AssociateConnectionAliasRequest
    #   data as a hash:
    #
    #       {
    #         alias_id: "ConnectionAliasId", # required
    #         resource_id: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] alias_id
    #   The identifier of the connection alias.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the directory to associate the connection alias
    #   with.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/AssociateConnectionAliasRequest AWS API Documentation
    #
    class AssociateConnectionAliasRequest < Struct.new(
      :alias_id,
      :resource_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connection_identifier
    #   The identifier of the connection alias association. You use the
    #   connection identifier in the DNS TXT record when you're configuring
    #   your DNS routing policies.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/AssociateConnectionAliasResult AWS API Documentation
    #
    class AssociateConnectionAliasResult < Struct.new(
      :connection_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass AssociateIpGroupsRequest
    #   data as a hash:
    #
    #       {
    #         directory_id: "DirectoryId", # required
    #         group_ids: ["IpGroupId"], # required
    #       }
    #
    # @!attribute [rw] directory_id
    #   The identifier of the directory.
    #   @return [String]
    #
    # @!attribute [rw] group_ids
    #   The identifiers of one or more IP access control groups.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/AssociateIpGroupsRequest AWS API Documentation
    #
    class AssociateIpGroupsRequest < Struct.new(
      :directory_id,
      :group_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/AssociateIpGroupsResult AWS API Documentation
    #
    class AssociateIpGroupsResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass AuthorizeIpRulesRequest
    #   data as a hash:
    #
    #       {
    #         group_id: "IpGroupId", # required
    #         user_rules: [ # required
    #           {
    #             ip_rule: "IpRule",
    #             rule_desc: "IpRuleDesc",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] group_id
    #   The identifier of the group.
    #   @return [String]
    #
    # @!attribute [rw] user_rules
    #   The rules to add to the group.
    #   @return [Array<Types::IpRuleItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/AuthorizeIpRulesRequest AWS API Documentation
    #
    class AuthorizeIpRulesRequest < Struct.new(
      :group_id,
      :user_rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/AuthorizeIpRulesResult AWS API Documentation
    #
    class AuthorizeIpRulesResult < Aws::EmptyStructure; end

    # Describes an Amazon WorkSpaces client.
    #
    # @note When making an API call, you may pass ClientProperties
    #   data as a hash:
    #
    #       {
    #         reconnect_enabled: "ENABLED", # accepts ENABLED, DISABLED
    #       }
    #
    # @!attribute [rw] reconnect_enabled
    #   Specifies whether users can cache their credentials on the Amazon
    #   WorkSpaces client. When enabled, users can choose to reconnect to
    #   their WorkSpaces without re-entering their credentials.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ClientProperties AWS API Documentation
    #
    class ClientProperties < Struct.new(
      :reconnect_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the Amazon WorkSpaces client.
    #
    # @!attribute [rw] resource_id
    #   The resource identifier, in the form of a directory ID.
    #   @return [String]
    #
    # @!attribute [rw] client_properties
    #   Information about the Amazon WorkSpaces client.
    #   @return [Types::ClientProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ClientPropertiesResult AWS API Documentation
    #
    class ClientPropertiesResult < Struct.new(
      :resource_id,
      :client_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the compute type.
    #
    # @!attribute [rw] name
    #   The compute type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ComputeType AWS API Documentation
    #
    class ComputeType < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a connection alias. Connection aliases are used for
    # cross-Region redirection. For more information, see [ Cross-Region
    # Redirection for Amazon WorkSpaces][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html
    #
    # @!attribute [rw] connection_string
    #   The connection string specified for the connection alias. The
    #   connection string must be in the form of a fully qualified domain
    #   name (FQDN), such as `www.example.com`.
    #   @return [String]
    #
    # @!attribute [rw] alias_id
    #   The identifier of the connection alias.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the connection alias.
    #   @return [String]
    #
    # @!attribute [rw] owner_account_id
    #   The identifier of the AWS account that owns the connection alias.
    #   @return [String]
    #
    # @!attribute [rw] associations
    #   The association status of the connection alias.
    #   @return [Array<Types::ConnectionAliasAssociation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ConnectionAlias AWS API Documentation
    #
    class ConnectionAlias < Struct.new(
      :connection_string,
      :alias_id,
      :state,
      :owner_account_id,
      :associations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a connection alias association that is used for cross-Region
    # redirection. For more information, see [ Cross-Region Redirection for
    # Amazon WorkSpaces][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html
    #
    # @!attribute [rw] association_status
    #   The association status of the connection alias.
    #   @return [String]
    #
    # @!attribute [rw] associated_account_id
    #   The identifier of the AWS account that associated the connection
    #   alias with a directory.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the directory associated with a connection alias.
    #   @return [String]
    #
    # @!attribute [rw] connection_identifier
    #   The identifier of the connection alias association. You use the
    #   connection identifier in the DNS TXT record when you're configuring
    #   your DNS routing policies.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ConnectionAliasAssociation AWS API Documentation
    #
    class ConnectionAliasAssociation < Struct.new(
      :association_status,
      :associated_account_id,
      :resource_id,
      :connection_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the permissions for a connection alias. Connection aliases
    # are used for cross-Region redirection. For more information, see [
    # Cross-Region Redirection for Amazon WorkSpaces][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html
    #
    # @note When making an API call, you may pass ConnectionAliasPermission
    #   data as a hash:
    #
    #       {
    #         shared_account_id: "AwsAccount", # required
    #         allow_association: false, # required
    #       }
    #
    # @!attribute [rw] shared_account_id
    #   The identifier of the AWS account that the connection alias is
    #   shared with.
    #   @return [String]
    #
    # @!attribute [rw] allow_association
    #   Indicates whether the specified AWS account is allowed to associate
    #   the connection alias with a directory.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ConnectionAliasPermission AWS API Documentation
    #
    class ConnectionAliasPermission < Struct.new(
      :shared_account_id,
      :allow_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CopyWorkspaceImageRequest
    #   data as a hash:
    #
    #       {
    #         name: "WorkspaceImageName", # required
    #         description: "WorkspaceImageDescription",
    #         source_image_id: "WorkspaceImageId", # required
    #         source_region: "Region", # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] name
    #   The name of the image.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the image.
    #   @return [String]
    #
    # @!attribute [rw] source_image_id
    #   The identifier of the source image.
    #   @return [String]
    #
    # @!attribute [rw] source_region
    #   The identifier of the source Region.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags for the image.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/CopyWorkspaceImageRequest AWS API Documentation
    #
    class CopyWorkspaceImageRequest < Struct.new(
      :name,
      :description,
      :source_image_id,
      :source_region,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] image_id
    #   The identifier of the image.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/CopyWorkspaceImageResult AWS API Documentation
    #
    class CopyWorkspaceImageResult < Struct.new(
      :image_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateConnectionAliasRequest
    #   data as a hash:
    #
    #       {
    #         connection_string: "ConnectionString", # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] connection_string
    #   A connection string in the form of a fully qualified domain name
    #   (FQDN), such as `www.example.com`.
    #
    #   After you create a connection string, it is always associated to
    #   your AWS account. You cannot recreate the same connection string
    #   with a different account, even if you delete all instances of it
    #   from the original account. The connection string is globally
    #   reserved for your account.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to associate with the connection alias.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/CreateConnectionAliasRequest AWS API Documentation
    #
    class CreateConnectionAliasRequest < Struct.new(
      :connection_string,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] alias_id
    #   The identifier of the connection alias.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/CreateConnectionAliasResult AWS API Documentation
    #
    class CreateConnectionAliasResult < Struct.new(
      :alias_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateIpGroupRequest
    #   data as a hash:
    #
    #       {
    #         group_name: "IpGroupName", # required
    #         group_desc: "IpGroupDesc",
    #         user_rules: [
    #           {
    #             ip_rule: "IpRule",
    #             rule_desc: "IpRuleDesc",
    #           },
    #         ],
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] group_name
    #   The name of the group.
    #   @return [String]
    #
    # @!attribute [rw] group_desc
    #   The description of the group.
    #   @return [String]
    #
    # @!attribute [rw] user_rules
    #   The rules to add to the group.
    #   @return [Array<Types::IpRuleItem>]
    #
    # @!attribute [rw] tags
    #   The tags. Each WorkSpaces resource can have a maximum of 50 tags.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/CreateIpGroupRequest AWS API Documentation
    #
    class CreateIpGroupRequest < Struct.new(
      :group_name,
      :group_desc,
      :user_rules,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group_id
    #   The identifier of the group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/CreateIpGroupResult AWS API Documentation
    #
    class CreateIpGroupResult < Struct.new(
      :group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateTagsRequest
    #   data as a hash:
    #
    #       {
    #         resource_id: "NonEmptyString", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_id
    #   The identifier of the WorkSpaces resource. The supported resource
    #   types are WorkSpaces, registered directories, images, custom
    #   bundles, IP access control groups, and connection aliases.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags. Each WorkSpaces resource can have a maximum of 50 tags.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/CreateTagsRequest AWS API Documentation
    #
    class CreateTagsRequest < Struct.new(
      :resource_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/CreateTagsResult AWS API Documentation
    #
    class CreateTagsResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass CreateWorkspacesRequest
    #   data as a hash:
    #
    #       {
    #         workspaces: [ # required
    #           {
    #             directory_id: "DirectoryId", # required
    #             user_name: "UserName", # required
    #             bundle_id: "BundleId", # required
    #             volume_encryption_key: "VolumeEncryptionKey",
    #             user_volume_encryption_enabled: false,
    #             root_volume_encryption_enabled: false,
    #             workspace_properties: {
    #               running_mode: "AUTO_STOP", # accepts AUTO_STOP, ALWAYS_ON
    #               running_mode_auto_stop_timeout_in_minutes: 1,
    #               root_volume_size_gib: 1,
    #               user_volume_size_gib: 1,
    #               compute_type_name: "VALUE", # accepts VALUE, STANDARD, PERFORMANCE, POWER, GRAPHICS, POWERPRO, GRAPHICSPRO
    #             },
    #             tags: [
    #               {
    #                 key: "TagKey", # required
    #                 value: "TagValue",
    #               },
    #             ],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] workspaces
    #   The WorkSpaces to create. You can specify up to 25 WorkSpaces.
    #   @return [Array<Types::WorkspaceRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/CreateWorkspacesRequest AWS API Documentation
    #
    class CreateWorkspacesRequest < Struct.new(
      :workspaces)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failed_requests
    #   Information about the WorkSpaces that could not be created.
    #   @return [Array<Types::FailedCreateWorkspaceRequest>]
    #
    # @!attribute [rw] pending_requests
    #   Information about the WorkSpaces that were created.
    #
    #   Because this operation is asynchronous, the identifier returned is
    #   not immediately available for use with other operations. For
    #   example, if you call DescribeWorkspaces before the WorkSpace is
    #   created, the information returned can be incomplete.
    #   @return [Array<Types::Workspace>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/CreateWorkspacesResult AWS API Documentation
    #
    class CreateWorkspacesResult < Struct.new(
      :failed_requests,
      :pending_requests)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the default values that are used to create WorkSpaces. For
    # more information, see [Update Directory Details for Your
    # WorkSpaces][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/update-directory-details.html
    #
    # @!attribute [rw] enable_work_docs
    #   Specifies whether the directory is enabled for Amazon WorkDocs.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_internet_access
    #   Specifies whether to automatically assign an Elastic public IP
    #   address to WorkSpaces in this directory by default. If enabled, the
    #   Elastic public IP address allows outbound internet access from your
    #   WorkSpaces when you’re using an internet gateway in the Amazon VPC
    #   in which your WorkSpaces are located. If you're using a Network
    #   Address Translation (NAT) gateway for outbound internet access from
    #   your VPC, or if your WorkSpaces are in public subnets and you
    #   manually assign them Elastic IP addresses, you should disable this
    #   setting. This setting applies to new WorkSpaces that you launch or
    #   to existing WorkSpaces that you rebuild. For more information, see [
    #   Configure a VPC for Amazon WorkSpaces][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/amazon-workspaces-vpc.html
    #   @return [Boolean]
    #
    # @!attribute [rw] default_ou
    #   The organizational unit (OU) in the directory for the WorkSpace
    #   machine accounts.
    #   @return [String]
    #
    # @!attribute [rw] custom_security_group_id
    #   The identifier of the default security group to apply to WorkSpaces
    #   when they are created. For more information, see [ Security Groups
    #   for Your WorkSpaces][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/amazon-workspaces-security-groups.html
    #   @return [String]
    #
    # @!attribute [rw] user_enabled_as_local_administrator
    #   Specifies whether WorkSpace users are local administrators on their
    #   WorkSpaces.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_maintenance_mode
    #   Specifies whether maintenance mode is enabled for WorkSpaces. For
    #   more information, see [WorkSpace Maintenance][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/workspace-maintenance.html
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DefaultWorkspaceCreationProperties AWS API Documentation
    #
    class DefaultWorkspaceCreationProperties < Struct.new(
      :enable_work_docs,
      :enable_internet_access,
      :default_ou,
      :custom_security_group_id,
      :user_enabled_as_local_administrator,
      :enable_maintenance_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteConnectionAliasRequest
    #   data as a hash:
    #
    #       {
    #         alias_id: "ConnectionAliasId", # required
    #       }
    #
    # @!attribute [rw] alias_id
    #   The identifier of the connection alias to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DeleteConnectionAliasRequest AWS API Documentation
    #
    class DeleteConnectionAliasRequest < Struct.new(
      :alias_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DeleteConnectionAliasResult AWS API Documentation
    #
    class DeleteConnectionAliasResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteIpGroupRequest
    #   data as a hash:
    #
    #       {
    #         group_id: "IpGroupId", # required
    #       }
    #
    # @!attribute [rw] group_id
    #   The identifier of the IP access control group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DeleteIpGroupRequest AWS API Documentation
    #
    class DeleteIpGroupRequest < Struct.new(
      :group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DeleteIpGroupResult AWS API Documentation
    #
    class DeleteIpGroupResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteTagsRequest
    #   data as a hash:
    #
    #       {
    #         resource_id: "NonEmptyString", # required
    #         tag_keys: ["NonEmptyString"], # required
    #       }
    #
    # @!attribute [rw] resource_id
    #   The identifier of the WorkSpaces resource. The supported resource
    #   types are WorkSpaces, registered directories, images, custom
    #   bundles, IP access control groups, and connection aliases.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DeleteTagsRequest AWS API Documentation
    #
    class DeleteTagsRequest < Struct.new(
      :resource_id,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DeleteTagsResult AWS API Documentation
    #
    class DeleteTagsResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteWorkspaceImageRequest
    #   data as a hash:
    #
    #       {
    #         image_id: "WorkspaceImageId", # required
    #       }
    #
    # @!attribute [rw] image_id
    #   The identifier of the image.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DeleteWorkspaceImageRequest AWS API Documentation
    #
    class DeleteWorkspaceImageRequest < Struct.new(
      :image_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DeleteWorkspaceImageResult AWS API Documentation
    #
    class DeleteWorkspaceImageResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeregisterWorkspaceDirectoryRequest
    #   data as a hash:
    #
    #       {
    #         directory_id: "DirectoryId", # required
    #       }
    #
    # @!attribute [rw] directory_id
    #   The identifier of the directory. If any WorkSpaces are registered to
    #   this directory, you must remove them before you deregister the
    #   directory, or you will receive an OperationNotSupportedException
    #   error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DeregisterWorkspaceDirectoryRequest AWS API Documentation
    #
    class DeregisterWorkspaceDirectoryRequest < Struct.new(
      :directory_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DeregisterWorkspaceDirectoryResult AWS API Documentation
    #
    class DeregisterWorkspaceDirectoryResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DescribeAccountModificationsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "PaginationToken",
    #       }
    #
    # @!attribute [rw] next_token
    #   If you received a `NextToken` from a previous call that was
    #   paginated, provide this token to receive the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeAccountModificationsRequest AWS API Documentation
    #
    class DescribeAccountModificationsRequest < Struct.new(
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_modifications
    #   The list of modifications to the configuration of BYOL.
    #   @return [Array<Types::AccountModification>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results, or null if no
    #   more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeAccountModificationsResult AWS API Documentation
    #
    class DescribeAccountModificationsResult < Struct.new(
      :account_modifications,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeAccountRequest AWS API Documentation
    #
    class DescribeAccountRequest < Aws::EmptyStructure; end

    # @!attribute [rw] dedicated_tenancy_support
    #   The status of BYOL (whether BYOL is enabled or disabled).
    #   @return [String]
    #
    # @!attribute [rw] dedicated_tenancy_management_cidr_range
    #   The IP address range, specified as an IPv4 CIDR block, used for the
    #   management network interface.
    #
    #   The management network interface is connected to a secure Amazon
    #   WorkSpaces management network. It is used for interactive streaming
    #   of the WorkSpace desktop to Amazon WorkSpaces clients, and to allow
    #   Amazon WorkSpaces to manage the WorkSpace.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeAccountResult AWS API Documentation
    #
    class DescribeAccountResult < Struct.new(
      :dedicated_tenancy_support,
      :dedicated_tenancy_management_cidr_range)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeClientPropertiesRequest
    #   data as a hash:
    #
    #       {
    #         resource_ids: ["NonEmptyString"], # required
    #       }
    #
    # @!attribute [rw] resource_ids
    #   The resource identifier, in the form of directory IDs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeClientPropertiesRequest AWS API Documentation
    #
    class DescribeClientPropertiesRequest < Struct.new(
      :resource_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_properties_list
    #   Information about the specified Amazon WorkSpaces clients.
    #   @return [Array<Types::ClientPropertiesResult>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeClientPropertiesResult AWS API Documentation
    #
    class DescribeClientPropertiesResult < Struct.new(
      :client_properties_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeConnectionAliasPermissionsRequest
    #   data as a hash:
    #
    #       {
    #         alias_id: "ConnectionAliasId", # required
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] alias_id
    #   The identifier of the connection alias.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If you received a `NextToken` from a previous call that was
    #   paginated, provide this token to receive the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeConnectionAliasPermissionsRequest AWS API Documentation
    #
    class DescribeConnectionAliasPermissionsRequest < Struct.new(
      :alias_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] alias_id
    #   The identifier of the connection alias.
    #   @return [String]
    #
    # @!attribute [rw] connection_alias_permissions
    #   The permissions associated with a connection alias.
    #   @return [Array<Types::ConnectionAliasPermission>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results, or null if no
    #   more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeConnectionAliasPermissionsResult AWS API Documentation
    #
    class DescribeConnectionAliasPermissionsResult < Struct.new(
      :alias_id,
      :connection_alias_permissions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeConnectionAliasesRequest
    #   data as a hash:
    #
    #       {
    #         alias_ids: ["ConnectionAliasId"],
    #         resource_id: "NonEmptyString",
    #         limit: 1,
    #         next_token: "PaginationToken",
    #       }
    #
    # @!attribute [rw] alias_ids
    #   The identifiers of the connection aliases to describe.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the directory associated with the connection
    #   alias.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of connection aliases to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If you received a `NextToken` from a previous call that was
    #   paginated, provide this token to receive the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeConnectionAliasesRequest AWS API Documentation
    #
    class DescribeConnectionAliasesRequest < Struct.new(
      :alias_ids,
      :resource_id,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connection_aliases
    #   Information about the specified connection aliases.
    #   @return [Array<Types::ConnectionAlias>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results, or null if no
    #   more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeConnectionAliasesResult AWS API Documentation
    #
    class DescribeConnectionAliasesResult < Struct.new(
      :connection_aliases,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeIpGroupsRequest
    #   data as a hash:
    #
    #       {
    #         group_ids: ["IpGroupId"],
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] group_ids
    #   The identifiers of one or more IP access control groups.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   If you received a `NextToken` from a previous call that was
    #   paginated, provide this token to receive the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeIpGroupsRequest AWS API Documentation
    #
    class DescribeIpGroupsRequest < Struct.new(
      :group_ids,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] result
    #   Information about the IP access control groups.
    #   @return [Array<Types::WorkspacesIpGroup>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results, or null if no
    #   more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeIpGroupsResult AWS API Documentation
    #
    class DescribeIpGroupsResult < Struct.new(
      :result,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeTagsRequest
    #   data as a hash:
    #
    #       {
    #         resource_id: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] resource_id
    #   The identifier of the WorkSpaces resource. The supported resource
    #   types are WorkSpaces, registered directories, images, custom
    #   bundles, IP access control groups, and connection aliases.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeTagsRequest AWS API Documentation
    #
    class DescribeTagsRequest < Struct.new(
      :resource_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tag_list
    #   The tags.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeTagsResult AWS API Documentation
    #
    class DescribeTagsResult < Struct.new(
      :tag_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeWorkspaceBundlesRequest
    #   data as a hash:
    #
    #       {
    #         bundle_ids: ["BundleId"],
    #         owner: "BundleOwner",
    #         next_token: "PaginationToken",
    #       }
    #
    # @!attribute [rw] bundle_ids
    #   The identifiers of the bundles. You cannot combine this parameter
    #   with any other filter.
    #   @return [Array<String>]
    #
    # @!attribute [rw] owner
    #   The owner of the bundles. You cannot combine this parameter with any
    #   other filter.
    #
    #   Specify `AMAZON` to describe the bundles provided by AWS or null to
    #   describe the bundles that belong to your account.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. (You received this token from
    #   a previous call.)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeWorkspaceBundlesRequest AWS API Documentation
    #
    class DescribeWorkspaceBundlesRequest < Struct.new(
      :bundle_ids,
      :owner,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bundles
    #   Information about the bundles.
    #   @return [Array<Types::WorkspaceBundle>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results, or null if
    #   there are no more results available. This token is valid for one day
    #   and must be used within that time frame.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeWorkspaceBundlesResult AWS API Documentation
    #
    class DescribeWorkspaceBundlesResult < Struct.new(
      :bundles,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeWorkspaceDirectoriesRequest
    #   data as a hash:
    #
    #       {
    #         directory_ids: ["DirectoryId"],
    #         limit: 1,
    #         next_token: "PaginationToken",
    #       }
    #
    # @!attribute [rw] directory_ids
    #   The identifiers of the directories. If the value is null, all
    #   directories are retrieved.
    #   @return [Array<String>]
    #
    # @!attribute [rw] limit
    #   The maximum number of directories to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If you received a `NextToken` from a previous call that was
    #   paginated, provide this token to receive the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeWorkspaceDirectoriesRequest AWS API Documentation
    #
    class DescribeWorkspaceDirectoriesRequest < Struct.new(
      :directory_ids,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] directories
    #   Information about the directories.
    #   @return [Array<Types::WorkspaceDirectory>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results, or null if no
    #   more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeWorkspaceDirectoriesResult AWS API Documentation
    #
    class DescribeWorkspaceDirectoriesResult < Struct.new(
      :directories,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeWorkspaceImagePermissionsRequest
    #   data as a hash:
    #
    #       {
    #         image_id: "WorkspaceImageId", # required
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] image_id
    #   The identifier of the image.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If you received a `NextToken` from a previous call that was
    #   paginated, provide this token to receive the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeWorkspaceImagePermissionsRequest AWS API Documentation
    #
    class DescribeWorkspaceImagePermissionsRequest < Struct.new(
      :image_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] image_id
    #   The identifier of the image.
    #   @return [String]
    #
    # @!attribute [rw] image_permissions
    #   The identifiers of the AWS accounts that the image has been shared
    #   with.
    #   @return [Array<Types::ImagePermission>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results, or null if no
    #   more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeWorkspaceImagePermissionsResult AWS API Documentation
    #
    class DescribeWorkspaceImagePermissionsResult < Struct.new(
      :image_id,
      :image_permissions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeWorkspaceImagesRequest
    #   data as a hash:
    #
    #       {
    #         image_ids: ["WorkspaceImageId"],
    #         image_type: "OWNED", # accepts OWNED, SHARED
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] image_ids
    #   The identifier of the image.
    #   @return [Array<String>]
    #
    # @!attribute [rw] image_type
    #   The type (owned or shared) of the image.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If you received a `NextToken` from a previous call that was
    #   paginated, provide this token to receive the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeWorkspaceImagesRequest AWS API Documentation
    #
    class DescribeWorkspaceImagesRequest < Struct.new(
      :image_ids,
      :image_type,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] images
    #   Information about the images.
    #   @return [Array<Types::WorkspaceImage>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results, or null if no
    #   more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeWorkspaceImagesResult AWS API Documentation
    #
    class DescribeWorkspaceImagesResult < Struct.new(
      :images,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeWorkspaceSnapshotsRequest
    #   data as a hash:
    #
    #       {
    #         workspace_id: "WorkspaceId", # required
    #       }
    #
    # @!attribute [rw] workspace_id
    #   The identifier of the WorkSpace.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeWorkspaceSnapshotsRequest AWS API Documentation
    #
    class DescribeWorkspaceSnapshotsRequest < Struct.new(
      :workspace_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rebuild_snapshots
    #   Information about the snapshots that can be used to rebuild a
    #   WorkSpace. These snapshots include the user volume.
    #   @return [Array<Types::Snapshot>]
    #
    # @!attribute [rw] restore_snapshots
    #   Information about the snapshots that can be used to restore a
    #   WorkSpace. These snapshots include both the root volume and the user
    #   volume.
    #   @return [Array<Types::Snapshot>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeWorkspaceSnapshotsResult AWS API Documentation
    #
    class DescribeWorkspaceSnapshotsResult < Struct.new(
      :rebuild_snapshots,
      :restore_snapshots)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeWorkspacesConnectionStatusRequest
    #   data as a hash:
    #
    #       {
    #         workspace_ids: ["WorkspaceId"],
    #         next_token: "PaginationToken",
    #       }
    #
    # @!attribute [rw] workspace_ids
    #   The identifiers of the WorkSpaces. You can specify up to 25
    #   WorkSpaces.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   If you received a `NextToken` from a previous call that was
    #   paginated, provide this token to receive the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeWorkspacesConnectionStatusRequest AWS API Documentation
    #
    class DescribeWorkspacesConnectionStatusRequest < Struct.new(
      :workspace_ids,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workspaces_connection_status
    #   Information about the connection status of the WorkSpace.
    #   @return [Array<Types::WorkspaceConnectionStatus>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results, or null if no
    #   more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeWorkspacesConnectionStatusResult AWS API Documentation
    #
    class DescribeWorkspacesConnectionStatusResult < Struct.new(
      :workspaces_connection_status,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeWorkspacesRequest
    #   data as a hash:
    #
    #       {
    #         workspace_ids: ["WorkspaceId"],
    #         directory_id: "DirectoryId",
    #         user_name: "UserName",
    #         bundle_id: "BundleId",
    #         limit: 1,
    #         next_token: "PaginationToken",
    #       }
    #
    # @!attribute [rw] workspace_ids
    #   The identifiers of the WorkSpaces. You cannot combine this parameter
    #   with any other filter.
    #
    #   Because the CreateWorkspaces operation is asynchronous, the
    #   identifier it returns is not immediately available. If you
    #   immediately call DescribeWorkspaces with this identifier, no
    #   information is returned.
    #   @return [Array<String>]
    #
    # @!attribute [rw] directory_id
    #   The identifier of the directory. In addition, you can optionally
    #   specify a specific directory user (see `UserName`). You cannot
    #   combine this parameter with any other filter.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The name of the directory user. You must specify this parameter with
    #   `DirectoryId`.
    #   @return [String]
    #
    # @!attribute [rw] bundle_id
    #   The identifier of the bundle. All WorkSpaces that are created from
    #   this bundle are retrieved. You cannot combine this parameter with
    #   any other filter.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of items to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If you received a `NextToken` from a previous call that was
    #   paginated, provide this token to receive the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeWorkspacesRequest AWS API Documentation
    #
    class DescribeWorkspacesRequest < Struct.new(
      :workspace_ids,
      :directory_id,
      :user_name,
      :bundle_id,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workspaces
    #   Information about the WorkSpaces.
    #
    #   Because CreateWorkspaces is an asynchronous operation, some of the
    #   returned information could be incomplete.
    #   @return [Array<Types::Workspace>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results, or null if no
    #   more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeWorkspacesResult AWS API Documentation
    #
    class DescribeWorkspacesResult < Struct.new(
      :workspaces,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisassociateConnectionAliasRequest
    #   data as a hash:
    #
    #       {
    #         alias_id: "ConnectionAliasId", # required
    #       }
    #
    # @!attribute [rw] alias_id
    #   The identifier of the connection alias to disassociate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DisassociateConnectionAliasRequest AWS API Documentation
    #
    class DisassociateConnectionAliasRequest < Struct.new(
      :alias_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DisassociateConnectionAliasResult AWS API Documentation
    #
    class DisassociateConnectionAliasResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DisassociateIpGroupsRequest
    #   data as a hash:
    #
    #       {
    #         directory_id: "DirectoryId", # required
    #         group_ids: ["IpGroupId"], # required
    #       }
    #
    # @!attribute [rw] directory_id
    #   The identifier of the directory.
    #   @return [String]
    #
    # @!attribute [rw] group_ids
    #   The identifiers of one or more IP access control groups.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DisassociateIpGroupsRequest AWS API Documentation
    #
    class DisassociateIpGroupsRequest < Struct.new(
      :directory_id,
      :group_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DisassociateIpGroupsResult AWS API Documentation
    #
    class DisassociateIpGroupsResult < Aws::EmptyStructure; end

    # Describes a WorkSpace that cannot be created.
    #
    # @!attribute [rw] workspace_request
    #   Information about the WorkSpace.
    #   @return [Types::WorkspaceRequest]
    #
    # @!attribute [rw] error_code
    #   The error code that is returned if the WorkSpace cannot be created.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The text of the error message that is returned if the WorkSpace
    #   cannot be created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/FailedCreateWorkspaceRequest AWS API Documentation
    #
    class FailedCreateWorkspaceRequest < Struct.new(
      :workspace_request,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a WorkSpace that could not be rebooted. (RebootWorkspaces),
    # rebuilt (RebuildWorkspaces), restored (RestoreWorkspace), terminated
    # (TerminateWorkspaces), started (StartWorkspaces), or stopped
    # (StopWorkspaces).
    #
    # @!attribute [rw] workspace_id
    #   The identifier of the WorkSpace.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code that is returned if the WorkSpace cannot be rebooted.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The text of the error message that is returned if the WorkSpace
    #   cannot be rebooted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/FailedWorkspaceChangeRequest AWS API Documentation
    #
    class FailedWorkspaceChangeRequest < Struct.new(
      :workspace_id,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the AWS accounts that have been granted permission to use a
    # shared image. For more information about sharing images, see [ Share
    # or Unshare a Custom WorkSpaces Image][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/share-custom-image.html
    #
    # @!attribute [rw] shared_account_id
    #   The identifier of the AWS account that an image has been shared
    #   with.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ImagePermission AWS API Documentation
    #
    class ImagePermission < Struct.new(
      :shared_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ImportWorkspaceImageRequest
    #   data as a hash:
    #
    #       {
    #         ec2_image_id: "Ec2ImageId", # required
    #         ingestion_process: "BYOL_REGULAR", # required, accepts BYOL_REGULAR, BYOL_GRAPHICS, BYOL_GRAPHICSPRO
    #         image_name: "WorkspaceImageName", # required
    #         image_description: "WorkspaceImageDescription", # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #         applications: ["Microsoft_Office_2016"], # accepts Microsoft_Office_2016, Microsoft_Office_2019
    #       }
    #
    # @!attribute [rw] ec2_image_id
    #   The identifier of the EC2 image.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_process
    #   The ingestion process to be used when importing the image. For
    #   non-GPU-enabled bundles (bundles other than Graphics or
    #   GraphicsPro), specify `BYOL_REGULAR`.
    #   @return [String]
    #
    # @!attribute [rw] image_name
    #   The name of the WorkSpace image.
    #   @return [String]
    #
    # @!attribute [rw] image_description
    #   The description of the WorkSpace image.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags. Each WorkSpaces resource can have a maximum of 50 tags.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] applications
    #   If specified, the version of Microsoft Office to subscribe to. Valid
    #   only for Windows 10 BYOL images. For more information about
    #   subscribing to Office for BYOL images, see [ Bring Your Own Windows
    #   Desktop Licenses][1].
    #
    #   <note markdown="1"> Although this parameter is an array, only one item is allowed at
    #   this time.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ImportWorkspaceImageRequest AWS API Documentation
    #
    class ImportWorkspaceImageRequest < Struct.new(
      :ec2_image_id,
      :ingestion_process,
      :image_name,
      :image_description,
      :tags,
      :applications)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] image_id
    #   The identifier of the WorkSpace image.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ImportWorkspaceImageResult AWS API Documentation
    #
    class ImportWorkspaceImageResult < Struct.new(
      :image_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more parameter values are not valid.
    #
    # @!attribute [rw] message
    #   The exception error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/InvalidParameterValuesException AWS API Documentation
    #
    class InvalidParameterValuesException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The state of the resource is not valid for this operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/InvalidResourceStateException AWS API Documentation
    #
    class InvalidResourceStateException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a rule for an IP access control group.
    #
    # @note When making an API call, you may pass IpRuleItem
    #   data as a hash:
    #
    #       {
    #         ip_rule: "IpRule",
    #         rule_desc: "IpRuleDesc",
    #       }
    #
    # @!attribute [rw] ip_rule
    #   The IP address range, in CIDR notation.
    #   @return [String]
    #
    # @!attribute [rw] rule_desc
    #   The description.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/IpRuleItem AWS API Documentation
    #
    class IpRuleItem < Struct.new(
      :ip_rule,
      :rule_desc)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAvailableManagementCidrRangesRequest
    #   data as a hash:
    #
    #       {
    #         management_cidr_range_constraint: "ManagementCidrRangeConstraint", # required
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #       }
    #
    # @!attribute [rw] management_cidr_range_constraint
    #   The IP address range to search. Specify an IP address range that is
    #   compatible with your network and in CIDR notation (that is, specify
    #   the range as an IPv4 CIDR block).
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If you received a `NextToken` from a previous call that was
    #   paginated, provide this token to receive the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ListAvailableManagementCidrRangesRequest AWS API Documentation
    #
    class ListAvailableManagementCidrRangesRequest < Struct.new(
      :management_cidr_range_constraint,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] management_cidr_ranges
    #   The list of available IP address ranges, specified as IPv4 CIDR
    #   blocks.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results, or null if no
    #   more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ListAvailableManagementCidrRangesResult AWS API Documentation
    #
    class ListAvailableManagementCidrRangesResult < Struct.new(
      :management_cidr_ranges,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass MigrateWorkspaceRequest
    #   data as a hash:
    #
    #       {
    #         source_workspace_id: "WorkspaceId", # required
    #         bundle_id: "BundleId", # required
    #       }
    #
    # @!attribute [rw] source_workspace_id
    #   The identifier of the WorkSpace to migrate from.
    #   @return [String]
    #
    # @!attribute [rw] bundle_id
    #   The identifier of the target bundle type to migrate the WorkSpace
    #   to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/MigrateWorkspaceRequest AWS API Documentation
    #
    class MigrateWorkspaceRequest < Struct.new(
      :source_workspace_id,
      :bundle_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_workspace_id
    #   The original identifier of the WorkSpace that is being migrated.
    #   @return [String]
    #
    # @!attribute [rw] target_workspace_id
    #   The new identifier of the WorkSpace that is being migrated. If the
    #   migration does not succeed, the target WorkSpace ID will not be
    #   used, and the WorkSpace will still have the original WorkSpace ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/MigrateWorkspaceResult AWS API Documentation
    #
    class MigrateWorkspaceResult < Struct.new(
      :source_workspace_id,
      :target_workspace_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a WorkSpace modification.
    #
    # @!attribute [rw] resource
    #   The resource.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The modification state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ModificationState AWS API Documentation
    #
    class ModificationState < Struct.new(
      :resource,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ModifyAccountRequest
    #   data as a hash:
    #
    #       {
    #         dedicated_tenancy_support: "ENABLED", # accepts ENABLED
    #         dedicated_tenancy_management_cidr_range: "DedicatedTenancyManagementCidrRange",
    #       }
    #
    # @!attribute [rw] dedicated_tenancy_support
    #   The status of BYOL.
    #   @return [String]
    #
    # @!attribute [rw] dedicated_tenancy_management_cidr_range
    #   The IP address range, specified as an IPv4 CIDR block, for the
    #   management network interface. Specify an IP address range that is
    #   compatible with your network and in CIDR notation (that is, specify
    #   the range as an IPv4 CIDR block). The CIDR block size must be /16
    #   (for example, 203.0.113.25/16). It must also be specified as
    #   available by the `ListAvailableManagementCidrRanges` operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ModifyAccountRequest AWS API Documentation
    #
    class ModifyAccountRequest < Struct.new(
      :dedicated_tenancy_support,
      :dedicated_tenancy_management_cidr_range)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ModifyAccountResult AWS API Documentation
    #
    class ModifyAccountResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass ModifyClientPropertiesRequest
    #   data as a hash:
    #
    #       {
    #         resource_id: "NonEmptyString", # required
    #         client_properties: { # required
    #           reconnect_enabled: "ENABLED", # accepts ENABLED, DISABLED
    #         },
    #       }
    #
    # @!attribute [rw] resource_id
    #   The resource identifiers, in the form of directory IDs.
    #   @return [String]
    #
    # @!attribute [rw] client_properties
    #   Information about the Amazon WorkSpaces client.
    #   @return [Types::ClientProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ModifyClientPropertiesRequest AWS API Documentation
    #
    class ModifyClientPropertiesRequest < Struct.new(
      :resource_id,
      :client_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ModifyClientPropertiesResult AWS API Documentation
    #
    class ModifyClientPropertiesResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass ModifySelfservicePermissionsRequest
    #   data as a hash:
    #
    #       {
    #         resource_id: "DirectoryId", # required
    #         selfservice_permissions: { # required
    #           restart_workspace: "ENABLED", # accepts ENABLED, DISABLED
    #           increase_volume_size: "ENABLED", # accepts ENABLED, DISABLED
    #           change_compute_type: "ENABLED", # accepts ENABLED, DISABLED
    #           switch_running_mode: "ENABLED", # accepts ENABLED, DISABLED
    #           rebuild_workspace: "ENABLED", # accepts ENABLED, DISABLED
    #         },
    #       }
    #
    # @!attribute [rw] resource_id
    #   The identifier of the directory.
    #   @return [String]
    #
    # @!attribute [rw] selfservice_permissions
    #   The permissions to enable or disable self-service capabilities.
    #   @return [Types::SelfservicePermissions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ModifySelfservicePermissionsRequest AWS API Documentation
    #
    class ModifySelfservicePermissionsRequest < Struct.new(
      :resource_id,
      :selfservice_permissions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ModifySelfservicePermissionsResult AWS API Documentation
    #
    class ModifySelfservicePermissionsResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass ModifyWorkspaceAccessPropertiesRequest
    #   data as a hash:
    #
    #       {
    #         resource_id: "DirectoryId", # required
    #         workspace_access_properties: { # required
    #           device_type_windows: "ALLOW", # accepts ALLOW, DENY
    #           device_type_osx: "ALLOW", # accepts ALLOW, DENY
    #           device_type_web: "ALLOW", # accepts ALLOW, DENY
    #           device_type_ios: "ALLOW", # accepts ALLOW, DENY
    #           device_type_android: "ALLOW", # accepts ALLOW, DENY
    #           device_type_chrome_os: "ALLOW", # accepts ALLOW, DENY
    #           device_type_zero_client: "ALLOW", # accepts ALLOW, DENY
    #         },
    #       }
    #
    # @!attribute [rw] resource_id
    #   The identifier of the directory.
    #   @return [String]
    #
    # @!attribute [rw] workspace_access_properties
    #   The device types and operating systems to enable or disable for
    #   access.
    #   @return [Types::WorkspaceAccessProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ModifyWorkspaceAccessPropertiesRequest AWS API Documentation
    #
    class ModifyWorkspaceAccessPropertiesRequest < Struct.new(
      :resource_id,
      :workspace_access_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ModifyWorkspaceAccessPropertiesResult AWS API Documentation
    #
    class ModifyWorkspaceAccessPropertiesResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass ModifyWorkspaceCreationPropertiesRequest
    #   data as a hash:
    #
    #       {
    #         resource_id: "DirectoryId", # required
    #         workspace_creation_properties: { # required
    #           enable_work_docs: false,
    #           enable_internet_access: false,
    #           default_ou: "DefaultOu",
    #           custom_security_group_id: "SecurityGroupId",
    #           user_enabled_as_local_administrator: false,
    #           enable_maintenance_mode: false,
    #         },
    #       }
    #
    # @!attribute [rw] resource_id
    #   The identifier of the directory.
    #   @return [String]
    #
    # @!attribute [rw] workspace_creation_properties
    #   The default properties for creating WorkSpaces.
    #   @return [Types::WorkspaceCreationProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ModifyWorkspaceCreationPropertiesRequest AWS API Documentation
    #
    class ModifyWorkspaceCreationPropertiesRequest < Struct.new(
      :resource_id,
      :workspace_creation_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ModifyWorkspaceCreationPropertiesResult AWS API Documentation
    #
    class ModifyWorkspaceCreationPropertiesResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass ModifyWorkspacePropertiesRequest
    #   data as a hash:
    #
    #       {
    #         workspace_id: "WorkspaceId", # required
    #         workspace_properties: { # required
    #           running_mode: "AUTO_STOP", # accepts AUTO_STOP, ALWAYS_ON
    #           running_mode_auto_stop_timeout_in_minutes: 1,
    #           root_volume_size_gib: 1,
    #           user_volume_size_gib: 1,
    #           compute_type_name: "VALUE", # accepts VALUE, STANDARD, PERFORMANCE, POWER, GRAPHICS, POWERPRO, GRAPHICSPRO
    #         },
    #       }
    #
    # @!attribute [rw] workspace_id
    #   The identifier of the WorkSpace.
    #   @return [String]
    #
    # @!attribute [rw] workspace_properties
    #   The properties of the WorkSpace.
    #   @return [Types::WorkspaceProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ModifyWorkspacePropertiesRequest AWS API Documentation
    #
    class ModifyWorkspacePropertiesRequest < Struct.new(
      :workspace_id,
      :workspace_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ModifyWorkspacePropertiesResult AWS API Documentation
    #
    class ModifyWorkspacePropertiesResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass ModifyWorkspaceStateRequest
    #   data as a hash:
    #
    #       {
    #         workspace_id: "WorkspaceId", # required
    #         workspace_state: "AVAILABLE", # required, accepts AVAILABLE, ADMIN_MAINTENANCE
    #       }
    #
    # @!attribute [rw] workspace_id
    #   The identifier of the WorkSpace.
    #   @return [String]
    #
    # @!attribute [rw] workspace_state
    #   The WorkSpace state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ModifyWorkspaceStateRequest AWS API Documentation
    #
    class ModifyWorkspaceStateRequest < Struct.new(
      :workspace_id,
      :workspace_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ModifyWorkspaceStateResult AWS API Documentation
    #
    class ModifyWorkspaceStateResult < Aws::EmptyStructure; end

    # The operating system that the image is running.
    #
    # @!attribute [rw] type
    #   The operating system.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/OperatingSystem AWS API Documentation
    #
    class OperatingSystem < Struct.new(
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties of this WorkSpace are currently being modified. Try
    # again in a moment.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/OperationInProgressException AWS API Documentation
    #
    class OperationInProgressException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # This operation is not supported.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/OperationNotSupportedException AWS API Documentation
    #
    class OperationNotSupportedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the information used to reboot a WorkSpace.
    #
    # @note When making an API call, you may pass RebootRequest
    #   data as a hash:
    #
    #       {
    #         workspace_id: "WorkspaceId", # required
    #       }
    #
    # @!attribute [rw] workspace_id
    #   The identifier of the WorkSpace.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/RebootRequest AWS API Documentation
    #
    class RebootRequest < Struct.new(
      :workspace_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass RebootWorkspacesRequest
    #   data as a hash:
    #
    #       {
    #         reboot_workspace_requests: [ # required
    #           {
    #             workspace_id: "WorkspaceId", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] reboot_workspace_requests
    #   The WorkSpaces to reboot. You can specify up to 25 WorkSpaces.
    #   @return [Array<Types::RebootRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/RebootWorkspacesRequest AWS API Documentation
    #
    class RebootWorkspacesRequest < Struct.new(
      :reboot_workspace_requests)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failed_requests
    #   Information about the WorkSpaces that could not be rebooted.
    #   @return [Array<Types::FailedWorkspaceChangeRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/RebootWorkspacesResult AWS API Documentation
    #
    class RebootWorkspacesResult < Struct.new(
      :failed_requests)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the information used to rebuild a WorkSpace.
    #
    # @note When making an API call, you may pass RebuildRequest
    #   data as a hash:
    #
    #       {
    #         workspace_id: "WorkspaceId", # required
    #       }
    #
    # @!attribute [rw] workspace_id
    #   The identifier of the WorkSpace.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/RebuildRequest AWS API Documentation
    #
    class RebuildRequest < Struct.new(
      :workspace_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass RebuildWorkspacesRequest
    #   data as a hash:
    #
    #       {
    #         rebuild_workspace_requests: [ # required
    #           {
    #             workspace_id: "WorkspaceId", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] rebuild_workspace_requests
    #   The WorkSpace to rebuild. You can specify a single WorkSpace.
    #   @return [Array<Types::RebuildRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/RebuildWorkspacesRequest AWS API Documentation
    #
    class RebuildWorkspacesRequest < Struct.new(
      :rebuild_workspace_requests)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failed_requests
    #   Information about the WorkSpace that could not be rebuilt.
    #   @return [Array<Types::FailedWorkspaceChangeRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/RebuildWorkspacesResult AWS API Documentation
    #
    class RebuildWorkspacesResult < Struct.new(
      :failed_requests)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass RegisterWorkspaceDirectoryRequest
    #   data as a hash:
    #
    #       {
    #         directory_id: "DirectoryId", # required
    #         subnet_ids: ["SubnetId"],
    #         enable_work_docs: false, # required
    #         enable_self_service: false,
    #         tenancy: "DEDICATED", # accepts DEDICATED, SHARED
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] directory_id
    #   The identifier of the directory. You cannot register a directory if
    #   it does not have a status of Active. If the directory does not have
    #   a status of Active, you will receive an
    #   InvalidResourceStateException error. If you have already registered
    #   the maximum number of directories that you can register with Amazon
    #   WorkSpaces, you will receive a ResourceLimitExceededException error.
    #   Deregister directories that you are not using for WorkSpaces, and
    #   try again.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The identifiers of the subnets for your virtual private cloud (VPC).
    #   Make sure that the subnets are in supported Availability Zones. The
    #   subnets must also be in separate Availability Zones. If these
    #   conditions are not met, you will receive an
    #   OperationNotSupportedException error.
    #   @return [Array<String>]
    #
    # @!attribute [rw] enable_work_docs
    #   Indicates whether Amazon WorkDocs is enabled or disabled. If you
    #   have enabled this parameter and WorkDocs is not available in the
    #   Region, you will receive an OperationNotSupportedException error.
    #   Set `EnableWorkDocs` to disabled, and try again.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_self_service
    #   Indicates whether self-service capabilities are enabled or disabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] tenancy
    #   Indicates whether your WorkSpace directory is dedicated or shared.
    #   To use Bring Your Own License (BYOL) images, this value must be set
    #   to `DEDICATED` and your AWS account must be enabled for BYOL. If
    #   your account has not been enabled for BYOL, you will receive an
    #   InvalidParameterValuesException error. For more information about
    #   BYOL images, see [Bring Your Own Windows Desktop Images][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags associated with the directory.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/RegisterWorkspaceDirectoryRequest AWS API Documentation
    #
    class RegisterWorkspaceDirectoryRequest < Struct.new(
      :directory_id,
      :subnet_ids,
      :enable_work_docs,
      :enable_self_service,
      :tenancy,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/RegisterWorkspaceDirectoryResult AWS API Documentation
    #
    class RegisterWorkspaceDirectoryResult < Aws::EmptyStructure; end

    # The specified resource already exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ResourceAlreadyExistsException AWS API Documentation
    #
    class ResourceAlreadyExistsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource is associated with a directory.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ResourceAssociatedException AWS API Documentation
    #
    class ResourceAssociatedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource could not be created.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ResourceCreationFailedException AWS API Documentation
    #
    class ResourceCreationFailedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Your resource limits have been exceeded.
    #
    # @!attribute [rw] message
    #   The exception error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ResourceLimitExceededException AWS API Documentation
    #
    class ResourceLimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource could not be found.
    #
    # @!attribute [rw] message
    #   The resource could not be found.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource that could not be found.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource is not available.
    #
    # @!attribute [rw] message
    #   The exception error message.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource that is not available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ResourceUnavailableException AWS API Documentation
    #
    class ResourceUnavailableException < Struct.new(
      :message,
      :resource_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass RestoreWorkspaceRequest
    #   data as a hash:
    #
    #       {
    #         workspace_id: "WorkspaceId", # required
    #       }
    #
    # @!attribute [rw] workspace_id
    #   The identifier of the WorkSpace.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/RestoreWorkspaceRequest AWS API Documentation
    #
    class RestoreWorkspaceRequest < Struct.new(
      :workspace_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/RestoreWorkspaceResult AWS API Documentation
    #
    class RestoreWorkspaceResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass RevokeIpRulesRequest
    #   data as a hash:
    #
    #       {
    #         group_id: "IpGroupId", # required
    #         user_rules: ["IpRule"], # required
    #       }
    #
    # @!attribute [rw] group_id
    #   The identifier of the group.
    #   @return [String]
    #
    # @!attribute [rw] user_rules
    #   The rules to remove from the group.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/RevokeIpRulesRequest AWS API Documentation
    #
    class RevokeIpRulesRequest < Struct.new(
      :group_id,
      :user_rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/RevokeIpRulesResult AWS API Documentation
    #
    class RevokeIpRulesResult < Aws::EmptyStructure; end

    # Describes the root volume for a WorkSpace bundle.
    #
    # @!attribute [rw] capacity
    #   The size of the root volume.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/RootStorage AWS API Documentation
    #
    class RootStorage < Struct.new(
      :capacity)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the self-service permissions for a directory. For more
    # information, see [Enable Self-Service WorkSpace Management
    # Capabilities for Your Users][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/enable-user-self-service-workspace-management.html
    #
    # @note When making an API call, you may pass SelfservicePermissions
    #   data as a hash:
    #
    #       {
    #         restart_workspace: "ENABLED", # accepts ENABLED, DISABLED
    #         increase_volume_size: "ENABLED", # accepts ENABLED, DISABLED
    #         change_compute_type: "ENABLED", # accepts ENABLED, DISABLED
    #         switch_running_mode: "ENABLED", # accepts ENABLED, DISABLED
    #         rebuild_workspace: "ENABLED", # accepts ENABLED, DISABLED
    #       }
    #
    # @!attribute [rw] restart_workspace
    #   Specifies whether users can restart their WorkSpace.
    #   @return [String]
    #
    # @!attribute [rw] increase_volume_size
    #   Specifies whether users can increase the volume size of the drives
    #   on their WorkSpace.
    #   @return [String]
    #
    # @!attribute [rw] change_compute_type
    #   Specifies whether users can change the compute type (bundle) for
    #   their WorkSpace.
    #   @return [String]
    #
    # @!attribute [rw] switch_running_mode
    #   Specifies whether users can switch the running mode of their
    #   WorkSpace.
    #   @return [String]
    #
    # @!attribute [rw] rebuild_workspace
    #   Specifies whether users can rebuild the operating system of a
    #   WorkSpace to its original state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/SelfservicePermissions AWS API Documentation
    #
    class SelfservicePermissions < Struct.new(
      :restart_workspace,
      :increase_volume_size,
      :change_compute_type,
      :switch_running_mode,
      :rebuild_workspace)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a snapshot.
    #
    # @!attribute [rw] snapshot_time
    #   The time when the snapshot was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/Snapshot AWS API Documentation
    #
    class Snapshot < Struct.new(
      :snapshot_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information used to start a WorkSpace.
    #
    # @note When making an API call, you may pass StartRequest
    #   data as a hash:
    #
    #       {
    #         workspace_id: "WorkspaceId",
    #       }
    #
    # @!attribute [rw] workspace_id
    #   The identifier of the WorkSpace.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/StartRequest AWS API Documentation
    #
    class StartRequest < Struct.new(
      :workspace_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartWorkspacesRequest
    #   data as a hash:
    #
    #       {
    #         start_workspace_requests: [ # required
    #           {
    #             workspace_id: "WorkspaceId",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] start_workspace_requests
    #   The WorkSpaces to start. You can specify up to 25 WorkSpaces.
    #   @return [Array<Types::StartRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/StartWorkspacesRequest AWS API Documentation
    #
    class StartWorkspacesRequest < Struct.new(
      :start_workspace_requests)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failed_requests
    #   Information about the WorkSpaces that could not be started.
    #   @return [Array<Types::FailedWorkspaceChangeRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/StartWorkspacesResult AWS API Documentation
    #
    class StartWorkspacesResult < Struct.new(
      :failed_requests)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the information used to stop a WorkSpace.
    #
    # @note When making an API call, you may pass StopRequest
    #   data as a hash:
    #
    #       {
    #         workspace_id: "WorkspaceId",
    #       }
    #
    # @!attribute [rw] workspace_id
    #   The identifier of the WorkSpace.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/StopRequest AWS API Documentation
    #
    class StopRequest < Struct.new(
      :workspace_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopWorkspacesRequest
    #   data as a hash:
    #
    #       {
    #         stop_workspace_requests: [ # required
    #           {
    #             workspace_id: "WorkspaceId",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] stop_workspace_requests
    #   The WorkSpaces to stop. You can specify up to 25 WorkSpaces.
    #   @return [Array<Types::StopRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/StopWorkspacesRequest AWS API Documentation
    #
    class StopWorkspacesRequest < Struct.new(
      :stop_workspace_requests)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failed_requests
    #   Information about the WorkSpaces that could not be stopped.
    #   @return [Array<Types::FailedWorkspaceChangeRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/StopWorkspacesResult AWS API Documentation
    #
    class StopWorkspacesResult < Struct.new(
      :failed_requests)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a tag.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       }
    #
    # @!attribute [rw] key
    #   The key of the tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the tag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the information used to terminate a WorkSpace.
    #
    # @note When making an API call, you may pass TerminateRequest
    #   data as a hash:
    #
    #       {
    #         workspace_id: "WorkspaceId", # required
    #       }
    #
    # @!attribute [rw] workspace_id
    #   The identifier of the WorkSpace.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/TerminateRequest AWS API Documentation
    #
    class TerminateRequest < Struct.new(
      :workspace_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TerminateWorkspacesRequest
    #   data as a hash:
    #
    #       {
    #         terminate_workspace_requests: [ # required
    #           {
    #             workspace_id: "WorkspaceId", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] terminate_workspace_requests
    #   The WorkSpaces to terminate. You can specify up to 25 WorkSpaces.
    #   @return [Array<Types::TerminateRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/TerminateWorkspacesRequest AWS API Documentation
    #
    class TerminateWorkspacesRequest < Struct.new(
      :terminate_workspace_requests)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failed_requests
    #   Information about the WorkSpaces that could not be terminated.
    #   @return [Array<Types::FailedWorkspaceChangeRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/TerminateWorkspacesResult AWS API Documentation
    #
    class TerminateWorkspacesResult < Struct.new(
      :failed_requests)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of this network is not supported for this operation,
    # or your network configuration conflicts with the Amazon WorkSpaces
    # management network IP range. For more information, see [ Configure a
    # VPC for Amazon WorkSpaces][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/amazon-workspaces-vpc.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/UnsupportedNetworkConfigurationException AWS API Documentation
    #
    class UnsupportedNetworkConfigurationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of this WorkSpace is not supported for this
    # operation. For more information, see [Required Configuration and
    # Service Components for WorkSpaces ][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/required-service-components.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/UnsupportedWorkspaceConfigurationException AWS API Documentation
    #
    class UnsupportedWorkspaceConfigurationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateConnectionAliasPermissionRequest
    #   data as a hash:
    #
    #       {
    #         alias_id: "ConnectionAliasId", # required
    #         connection_alias_permission: { # required
    #           shared_account_id: "AwsAccount", # required
    #           allow_association: false, # required
    #         },
    #       }
    #
    # @!attribute [rw] alias_id
    #   The identifier of the connection alias that you want to update
    #   permissions for.
    #   @return [String]
    #
    # @!attribute [rw] connection_alias_permission
    #   Indicates whether to share or unshare the connection alias with the
    #   specified AWS account.
    #   @return [Types::ConnectionAliasPermission]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/UpdateConnectionAliasPermissionRequest AWS API Documentation
    #
    class UpdateConnectionAliasPermissionRequest < Struct.new(
      :alias_id,
      :connection_alias_permission)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/UpdateConnectionAliasPermissionResult AWS API Documentation
    #
    class UpdateConnectionAliasPermissionResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateRulesOfIpGroupRequest
    #   data as a hash:
    #
    #       {
    #         group_id: "IpGroupId", # required
    #         user_rules: [ # required
    #           {
    #             ip_rule: "IpRule",
    #             rule_desc: "IpRuleDesc",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] group_id
    #   The identifier of the group.
    #   @return [String]
    #
    # @!attribute [rw] user_rules
    #   One or more rules.
    #   @return [Array<Types::IpRuleItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/UpdateRulesOfIpGroupRequest AWS API Documentation
    #
    class UpdateRulesOfIpGroupRequest < Struct.new(
      :group_id,
      :user_rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/UpdateRulesOfIpGroupResult AWS API Documentation
    #
    class UpdateRulesOfIpGroupResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateWorkspaceImagePermissionRequest
    #   data as a hash:
    #
    #       {
    #         image_id: "WorkspaceImageId", # required
    #         allow_copy_image: false, # required
    #         shared_account_id: "AwsAccount", # required
    #       }
    #
    # @!attribute [rw] image_id
    #   The identifier of the image.
    #   @return [String]
    #
    # @!attribute [rw] allow_copy_image
    #   The permission to copy the image. This permission can be revoked
    #   only after an image has been shared.
    #   @return [Boolean]
    #
    # @!attribute [rw] shared_account_id
    #   The identifier of the AWS account to share or unshare the image
    #   with.
    #
    #   Before sharing the image, confirm that you are sharing to the
    #   correct AWS account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/UpdateWorkspaceImagePermissionRequest AWS API Documentation
    #
    class UpdateWorkspaceImagePermissionRequest < Struct.new(
      :image_id,
      :allow_copy_image,
      :shared_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/UpdateWorkspaceImagePermissionResult AWS API Documentation
    #
    class UpdateWorkspaceImagePermissionResult < Aws::EmptyStructure; end

    # Describes the user storage for a WorkSpace bundle.
    #
    # @!attribute [rw] capacity
    #   The size of the user storage.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/UserStorage AWS API Documentation
    #
    class UserStorage < Struct.new(
      :capacity)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a WorkSpace.
    #
    # @!attribute [rw] workspace_id
    #   The identifier of the WorkSpace.
    #   @return [String]
    #
    # @!attribute [rw] directory_id
    #   The identifier of the AWS Directory Service directory for the
    #   WorkSpace.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The user for the WorkSpace.
    #   @return [String]
    #
    # @!attribute [rw] ip_address
    #   The IP address of the WorkSpace.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The operational state of the WorkSpace.
    #
    #   <note markdown="1"> After a WorkSpace is terminated, the `TERMINATED` state is returned
    #   only briefly before the WorkSpace directory metadata is cleaned up,
    #   so this state is rarely returned. To confirm that a WorkSpace is
    #   terminated, check for the WorkSpace ID by using [
    #   DescribeWorkSpaces][1]. If the WorkSpace ID isn't returned, then
    #   the WorkSpace has been successfully terminated.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeWorkspaces.html
    #   @return [String]
    #
    # @!attribute [rw] bundle_id
    #   The identifier of the bundle used to create the WorkSpace.
    #   @return [String]
    #
    # @!attribute [rw] subnet_id
    #   The identifier of the subnet for the WorkSpace.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The text of the error message that is returned if the WorkSpace
    #   cannot be created.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code that is returned if the WorkSpace cannot be created.
    #   @return [String]
    #
    # @!attribute [rw] computer_name
    #   The name of the WorkSpace, as seen by the operating system. The
    #   format of this name varies. For more information, see [ Launch a
    #   WorkSpace][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/launch-workspaces-tutorials.html
    #   @return [String]
    #
    # @!attribute [rw] volume_encryption_key
    #   The symmetric AWS KMS customer master key (CMK) used to encrypt data
    #   stored on your WorkSpace. Amazon WorkSpaces does not support
    #   asymmetric CMKs.
    #   @return [String]
    #
    # @!attribute [rw] user_volume_encryption_enabled
    #   Indicates whether the data stored on the user volume is encrypted.
    #   @return [Boolean]
    #
    # @!attribute [rw] root_volume_encryption_enabled
    #   Indicates whether the data stored on the root volume is encrypted.
    #   @return [Boolean]
    #
    # @!attribute [rw] workspace_properties
    #   The properties of the WorkSpace.
    #   @return [Types::WorkspaceProperties]
    #
    # @!attribute [rw] modification_states
    #   The modification states of the WorkSpace.
    #   @return [Array<Types::ModificationState>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/Workspace AWS API Documentation
    #
    class Workspace < Struct.new(
      :workspace_id,
      :directory_id,
      :user_name,
      :ip_address,
      :state,
      :bundle_id,
      :subnet_id,
      :error_message,
      :error_code,
      :computer_name,
      :volume_encryption_key,
      :user_volume_encryption_enabled,
      :root_volume_encryption_enabled,
      :workspace_properties,
      :modification_states)
      SENSITIVE = []
      include Aws::Structure
    end

    # The device types and operating systems that can be used to access a
    # WorkSpace. For more information, see [Amazon WorkSpaces Client Network
    # Requirements][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/workspaces-network-requirements.html
    #
    # @note When making an API call, you may pass WorkspaceAccessProperties
    #   data as a hash:
    #
    #       {
    #         device_type_windows: "ALLOW", # accepts ALLOW, DENY
    #         device_type_osx: "ALLOW", # accepts ALLOW, DENY
    #         device_type_web: "ALLOW", # accepts ALLOW, DENY
    #         device_type_ios: "ALLOW", # accepts ALLOW, DENY
    #         device_type_android: "ALLOW", # accepts ALLOW, DENY
    #         device_type_chrome_os: "ALLOW", # accepts ALLOW, DENY
    #         device_type_zero_client: "ALLOW", # accepts ALLOW, DENY
    #       }
    #
    # @!attribute [rw] device_type_windows
    #   Indicates whether users can use Windows clients to access their
    #   WorkSpaces. To restrict WorkSpaces access to trusted devices (also
    #   known as managed devices) with valid certificates, specify a value
    #   of `TRUST`. For more information, see [Restrict WorkSpaces Access to
    #   Trusted Devices][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/trusted-devices.html
    #   @return [String]
    #
    # @!attribute [rw] device_type_osx
    #   Indicates whether users can use macOS clients to access their
    #   WorkSpaces. To restrict WorkSpaces access to trusted devices (also
    #   known as managed devices) with valid certificates, specify a value
    #   of `TRUST`. For more information, see [Restrict WorkSpaces Access to
    #   Trusted Devices][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/trusted-devices.html
    #   @return [String]
    #
    # @!attribute [rw] device_type_web
    #   Indicates whether users can access their WorkSpaces through a web
    #   browser.
    #   @return [String]
    #
    # @!attribute [rw] device_type_ios
    #   Indicates whether users can use iOS devices to access their
    #   WorkSpaces.
    #   @return [String]
    #
    # @!attribute [rw] device_type_android
    #   Indicates whether users can use Android devices to access their
    #   WorkSpaces.
    #   @return [String]
    #
    # @!attribute [rw] device_type_chrome_os
    #   Indicates whether users can use Chromebooks to access their
    #   WorkSpaces.
    #   @return [String]
    #
    # @!attribute [rw] device_type_zero_client
    #   Indicates whether users can use zero client devices to access their
    #   WorkSpaces.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/WorkspaceAccessProperties AWS API Documentation
    #
    class WorkspaceAccessProperties < Struct.new(
      :device_type_windows,
      :device_type_osx,
      :device_type_web,
      :device_type_ios,
      :device_type_android,
      :device_type_chrome_os,
      :device_type_zero_client)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a WorkSpace bundle.
    #
    # @!attribute [rw] bundle_id
    #   The bundle identifier.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the bundle.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The owner of the bundle. This is the account identifier of the
    #   owner, or `AMAZON` if the bundle is provided by AWS.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description.
    #   @return [String]
    #
    # @!attribute [rw] image_id
    #   The image identifier of the bundle.
    #   @return [String]
    #
    # @!attribute [rw] root_storage
    #   The size of the root volume.
    #   @return [Types::RootStorage]
    #
    # @!attribute [rw] user_storage
    #   The size of the user storage.
    #   @return [Types::UserStorage]
    #
    # @!attribute [rw] compute_type
    #   The compute type. For more information, see [Amazon WorkSpaces
    #   Bundles][1].
    #
    #
    #
    #   [1]: http://aws.amazon.com/workspaces/details/#Amazon_WorkSpaces_Bundles
    #   @return [Types::ComputeType]
    #
    # @!attribute [rw] last_updated_time
    #   The last time that the bundle was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/WorkspaceBundle AWS API Documentation
    #
    class WorkspaceBundle < Struct.new(
      :bundle_id,
      :name,
      :owner,
      :description,
      :image_id,
      :root_storage,
      :user_storage,
      :compute_type,
      :last_updated_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the connection status of a WorkSpace.
    #
    # @!attribute [rw] workspace_id
    #   The identifier of the WorkSpace.
    #   @return [String]
    #
    # @!attribute [rw] connection_state
    #   The connection state of the WorkSpace. The connection state is
    #   unknown if the WorkSpace is stopped.
    #   @return [String]
    #
    # @!attribute [rw] connection_state_check_timestamp
    #   The timestamp of the connection status check.
    #   @return [Time]
    #
    # @!attribute [rw] last_known_user_connection_timestamp
    #   The timestamp of the last known user connection.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/WorkspaceConnectionStatus AWS API Documentation
    #
    class WorkspaceConnectionStatus < Struct.new(
      :workspace_id,
      :connection_state,
      :connection_state_check_timestamp,
      :last_known_user_connection_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the default properties that are used for creating
    # WorkSpaces. For more information, see [Update Directory Details for
    # Your WorkSpaces][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/update-directory-details.html
    #
    # @note When making an API call, you may pass WorkspaceCreationProperties
    #   data as a hash:
    #
    #       {
    #         enable_work_docs: false,
    #         enable_internet_access: false,
    #         default_ou: "DefaultOu",
    #         custom_security_group_id: "SecurityGroupId",
    #         user_enabled_as_local_administrator: false,
    #         enable_maintenance_mode: false,
    #       }
    #
    # @!attribute [rw] enable_work_docs
    #   Indicates whether Amazon WorkDocs is enabled for your WorkSpaces.
    #
    #   <note markdown="1"> If WorkDocs is already enabled for a WorkSpaces directory and you
    #   disable it, new WorkSpaces launched in the directory will not have
    #   WorkDocs enabled. However, WorkDocs remains enabled for any existing
    #   WorkSpaces, unless you either disable users' access to WorkDocs or
    #   you delete the WorkDocs site. To disable users' access to WorkDocs,
    #   see [Disabling Users][1] in the *Amazon WorkDocs Administration
    #   Guide*. To delete a WorkDocs site, see [Deleting a Site][2] in the
    #   *Amazon WorkDocs Administration Guide*.
    #
    #    If you enable WorkDocs on a directory that already has existing
    #   WorkSpaces, the existing WorkSpaces and any new WorkSpaces that are
    #   launched in the directory will have WorkDocs enabled.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/workdocs/latest/adminguide/inactive-user.html
    #   [2]: https://docs.aws.amazon.com/workdocs/latest/adminguide/manage-sites.html
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_internet_access
    #   Indicates whether internet access is enabled for your WorkSpaces.
    #   @return [Boolean]
    #
    # @!attribute [rw] default_ou
    #   The default organizational unit (OU) for your WorkSpaces
    #   directories. This string must be the full Lightweight Directory
    #   Access Protocol (LDAP) distinguished name for the target domain and
    #   OU. It must be in the form `"OU=value,DC=value,DC=value"`, where
    #   *value* is any string of characters, and the number of domain
    #   components (DCs) is two or more. For example,
    #   `OU=WorkSpaces_machines,DC=machines,DC=example,DC=com`.
    #
    #   * To avoid errors, certain characters in the distinguished name must
    #     be escaped. For more information, see [ Distinguished Names][1] in
    #     the Microsoft documentation.
    #
    #   * The API doesn't validate whether the OU exists.
    #
    #
    #
    #   [1]: https://docs.microsoft.com/previous-versions/windows/desktop/ldap/distinguished-names
    #   @return [String]
    #
    # @!attribute [rw] custom_security_group_id
    #   The identifier of your custom security group.
    #   @return [String]
    #
    # @!attribute [rw] user_enabled_as_local_administrator
    #   Indicates whether users are local administrators of their
    #   WorkSpaces.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_maintenance_mode
    #   Indicates whether maintenance mode is enabled for your WorkSpaces.
    #   For more information, see [WorkSpace Maintenance][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/workspace-maintenance.html
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/WorkspaceCreationProperties AWS API Documentation
    #
    class WorkspaceCreationProperties < Struct.new(
      :enable_work_docs,
      :enable_internet_access,
      :default_ou,
      :custom_security_group_id,
      :user_enabled_as_local_administrator,
      :enable_maintenance_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a directory that is used with Amazon WorkSpaces.
    #
    # @!attribute [rw] directory_id
    #   The directory identifier.
    #   @return [String]
    #
    # @!attribute [rw] alias
    #   The directory alias.
    #   @return [String]
    #
    # @!attribute [rw] directory_name
    #   The name of the directory.
    #   @return [String]
    #
    # @!attribute [rw] registration_code
    #   The registration code for the directory. This is the code that users
    #   enter in their Amazon WorkSpaces client application to connect to
    #   the directory.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The identifiers of the subnets used with the directory.
    #   @return [Array<String>]
    #
    # @!attribute [rw] dns_ip_addresses
    #   The IP addresses of the DNS servers for the directory.
    #   @return [Array<String>]
    #
    # @!attribute [rw] customer_user_name
    #   The user name for the service account.
    #   @return [String]
    #
    # @!attribute [rw] iam_role_id
    #   The identifier of the IAM role. This is the role that allows Amazon
    #   WorkSpaces to make calls to other services, such as Amazon EC2, on
    #   your behalf.
    #   @return [String]
    #
    # @!attribute [rw] directory_type
    #   The directory type.
    #   @return [String]
    #
    # @!attribute [rw] workspace_security_group_id
    #   The identifier of the security group that is assigned to new
    #   WorkSpaces.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the directory's registration with Amazon WorkSpaces.
    #   After a directory is deregistered, the `DEREGISTERED` state is
    #   returned very briefly before the directory metadata is cleaned up,
    #   so this state is rarely returned. To confirm that a directory is
    #   deregistered, check for the directory ID by using [
    #   DescribeWorkspaceDirectories][1]. If the directory ID isn't
    #   returned, then the directory has been successfully deregistered.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeWorkspaceDirectories.html
    #   @return [String]
    #
    # @!attribute [rw] workspace_creation_properties
    #   The default creation properties for all WorkSpaces in the directory.
    #   @return [Types::DefaultWorkspaceCreationProperties]
    #
    # @!attribute [rw] ip_group_ids
    #   The identifiers of the IP access control groups associated with the
    #   directory.
    #   @return [Array<String>]
    #
    # @!attribute [rw] workspace_access_properties
    #   The devices and operating systems that users can use to access
    #   WorkSpaces.
    #   @return [Types::WorkspaceAccessProperties]
    #
    # @!attribute [rw] tenancy
    #   Specifies whether the directory is dedicated or shared. To use Bring
    #   Your Own License (BYOL), this value must be set to `DEDICATED`. For
    #   more information, see [Bring Your Own Windows Desktop Images][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html
    #   @return [String]
    #
    # @!attribute [rw] selfservice_permissions
    #   The default self-service permissions for WorkSpaces in the
    #   directory.
    #   @return [Types::SelfservicePermissions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/WorkspaceDirectory AWS API Documentation
    #
    class WorkspaceDirectory < Struct.new(
      :directory_id,
      :alias,
      :directory_name,
      :registration_code,
      :subnet_ids,
      :dns_ip_addresses,
      :customer_user_name,
      :iam_role_id,
      :directory_type,
      :workspace_security_group_id,
      :state,
      :workspace_creation_properties,
      :ip_group_ids,
      :workspace_access_properties,
      :tenancy,
      :selfservice_permissions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a WorkSpace image.
    #
    # @!attribute [rw] image_id
    #   The identifier of the image.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the image.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the image.
    #   @return [String]
    #
    # @!attribute [rw] operating_system
    #   The operating system that the image is running.
    #   @return [Types::OperatingSystem]
    #
    # @!attribute [rw] state
    #   The status of the image.
    #   @return [String]
    #
    # @!attribute [rw] required_tenancy
    #   Specifies whether the image is running on dedicated hardware. When
    #   Bring Your Own License (BYOL) is enabled, this value is set to
    #   `DEDICATED`. For more information, see [Bring Your Own Windows
    #   Desktop Images][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code that is returned for the image.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The text of the error message that is returned for the image.
    #   @return [String]
    #
    # @!attribute [rw] created
    #   The date when the image was created. If the image has been shared,
    #   the AWS account that the image has been shared with sees the
    #   original creation date of the image.
    #   @return [Time]
    #
    # @!attribute [rw] owner_account_id
    #   The identifier of the AWS account that owns the image.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/WorkspaceImage AWS API Documentation
    #
    class WorkspaceImage < Struct.new(
      :image_id,
      :name,
      :description,
      :operating_system,
      :state,
      :required_tenancy,
      :error_code,
      :error_message,
      :created,
      :owner_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a WorkSpace.
    #
    # @note When making an API call, you may pass WorkspaceProperties
    #   data as a hash:
    #
    #       {
    #         running_mode: "AUTO_STOP", # accepts AUTO_STOP, ALWAYS_ON
    #         running_mode_auto_stop_timeout_in_minutes: 1,
    #         root_volume_size_gib: 1,
    #         user_volume_size_gib: 1,
    #         compute_type_name: "VALUE", # accepts VALUE, STANDARD, PERFORMANCE, POWER, GRAPHICS, POWERPRO, GRAPHICSPRO
    #       }
    #
    # @!attribute [rw] running_mode
    #   The running mode. For more information, see [Manage the WorkSpace
    #   Running Mode][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/running-mode.html
    #   @return [String]
    #
    # @!attribute [rw] running_mode_auto_stop_timeout_in_minutes
    #   The time after a user logs off when WorkSpaces are automatically
    #   stopped. Configured in 60-minute intervals.
    #   @return [Integer]
    #
    # @!attribute [rw] root_volume_size_gib
    #   The size of the root volume. For important information about how to
    #   modify the size of the root and user volumes, see [Modify a
    #   WorkSpace][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/modify-workspaces.html
    #   @return [Integer]
    #
    # @!attribute [rw] user_volume_size_gib
    #   The size of the user storage. For important information about how to
    #   modify the size of the root and user volumes, see [Modify a
    #   WorkSpace][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/modify-workspaces.html
    #   @return [Integer]
    #
    # @!attribute [rw] compute_type_name
    #   The compute type. For more information, see [Amazon WorkSpaces
    #   Bundles][1].
    #
    #
    #
    #   [1]: http://aws.amazon.com/workspaces/details/#Amazon_WorkSpaces_Bundles
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/WorkspaceProperties AWS API Documentation
    #
    class WorkspaceProperties < Struct.new(
      :running_mode,
      :running_mode_auto_stop_timeout_in_minutes,
      :root_volume_size_gib,
      :user_volume_size_gib,
      :compute_type_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the information used to create a WorkSpace.
    #
    # @note When making an API call, you may pass WorkspaceRequest
    #   data as a hash:
    #
    #       {
    #         directory_id: "DirectoryId", # required
    #         user_name: "UserName", # required
    #         bundle_id: "BundleId", # required
    #         volume_encryption_key: "VolumeEncryptionKey",
    #         user_volume_encryption_enabled: false,
    #         root_volume_encryption_enabled: false,
    #         workspace_properties: {
    #           running_mode: "AUTO_STOP", # accepts AUTO_STOP, ALWAYS_ON
    #           running_mode_auto_stop_timeout_in_minutes: 1,
    #           root_volume_size_gib: 1,
    #           user_volume_size_gib: 1,
    #           compute_type_name: "VALUE", # accepts VALUE, STANDARD, PERFORMANCE, POWER, GRAPHICS, POWERPRO, GRAPHICSPRO
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] directory_id
    #   The identifier of the AWS Directory Service directory for the
    #   WorkSpace. You can use DescribeWorkspaceDirectories to list the
    #   available directories.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The user name of the user for the WorkSpace. This user name must
    #   exist in the AWS Directory Service directory for the WorkSpace.
    #   @return [String]
    #
    # @!attribute [rw] bundle_id
    #   The identifier of the bundle for the WorkSpace. You can use
    #   DescribeWorkspaceBundles to list the available bundles.
    #   @return [String]
    #
    # @!attribute [rw] volume_encryption_key
    #   The symmetric AWS KMS customer master key (CMK) used to encrypt data
    #   stored on your WorkSpace. Amazon WorkSpaces does not support
    #   asymmetric CMKs.
    #   @return [String]
    #
    # @!attribute [rw] user_volume_encryption_enabled
    #   Indicates whether the data stored on the user volume is encrypted.
    #   @return [Boolean]
    #
    # @!attribute [rw] root_volume_encryption_enabled
    #   Indicates whether the data stored on the root volume is encrypted.
    #   @return [Boolean]
    #
    # @!attribute [rw] workspace_properties
    #   The WorkSpace properties.
    #   @return [Types::WorkspaceProperties]
    #
    # @!attribute [rw] tags
    #   The tags for the WorkSpace.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/WorkspaceRequest AWS API Documentation
    #
    class WorkspaceRequest < Struct.new(
      :directory_id,
      :user_name,
      :bundle_id,
      :volume_encryption_key,
      :user_volume_encryption_enabled,
      :root_volume_encryption_enabled,
      :workspace_properties,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The workspaces\_DefaultRole role could not be found. If this is the
    # first time you are registering a directory, you will need to create
    # the workspaces\_DefaultRole role before you can register a directory.
    # For more information, see [Creating the workspaces\_DefaultRole
    # Role][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/workspaces-access-control.html#create-default-role
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/WorkspacesDefaultRoleNotFoundException AWS API Documentation
    #
    class WorkspacesDefaultRoleNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an IP access control group.
    #
    # @!attribute [rw] group_id
    #   The identifier of the group.
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   The name of the group.
    #   @return [String]
    #
    # @!attribute [rw] group_desc
    #   The description of the group.
    #   @return [String]
    #
    # @!attribute [rw] user_rules
    #   The rules.
    #   @return [Array<Types::IpRuleItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/WorkspacesIpGroup AWS API Documentation
    #
    class WorkspacesIpGroup < Struct.new(
      :group_id,
      :group_name,
      :group_desc,
      :user_rules)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
