# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::WorkSpaces
  module Types

    # @note When making an API call, you may pass AssociateIpGroupsRequest
    #   data as a hash:
    #
    #       {
    #         directory_id: "DirectoryId", # required
    #         group_ids: ["IpGroupId"], # required
    #       }
    #
    # @!attribute [rw] directory_id
    #   The ID of the directory.
    #   @return [String]
    #
    # @!attribute [rw] group_ids
    #   The IDs of one or more IP access control groups.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/AssociateIpGroupsRequest AWS API Documentation
    #
    class AssociateIpGroupsRequest < Struct.new(
      :directory_id,
      :group_ids)
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
    #   The ID of the group.
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
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/AuthorizeIpRulesResult AWS API Documentation
    #
    class AuthorizeIpRulesResult < Aws::EmptyStructure; end

    # Information about the compute type.
    #
    # @!attribute [rw] name
    #   The compute type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ComputeType AWS API Documentation
    #
    class ComputeType < Struct.new(
      :name)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/CreateIpGroupRequest AWS API Documentation
    #
    class CreateIpGroupRequest < Struct.new(
      :group_name,
      :group_desc,
      :user_rules)
      include Aws::Structure
    end

    # @!attribute [rw] group_id
    #   The ID of the group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/CreateIpGroupResult AWS API Documentation
    #
    class CreateIpGroupResult < Struct.new(
      :group_id)
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
    #   The ID of the WorkSpace. To find this ID, use DescribeWorkspaces.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags. Each WorkSpace can have a maximum of 50 tags.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/CreateTagsRequest AWS API Documentation
    #
    class CreateTagsRequest < Struct.new(
      :resource_id,
      :tags)
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
    #               compute_type_name: "VALUE", # accepts VALUE, STANDARD, PERFORMANCE, POWER, GRAPHICS
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
      include Aws::Structure
    end

    # Information about defaults used to create a WorkSpace.
    #
    # @!attribute [rw] enable_work_docs
    #   Indicates whether the directory is enabled for Amazon WorkDocs.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_internet_access
    #   The public IP address to attach to all WorkSpaces that are created
    #   or rebuilt.
    #   @return [Boolean]
    #
    # @!attribute [rw] default_ou
    #   The organizational unit (OU) in the directory for the WorkSpace
    #   machine accounts.
    #   @return [String]
    #
    # @!attribute [rw] custom_security_group_id
    #   The identifier of any security groups to apply to WorkSpaces when
    #   they are created.
    #   @return [String]
    #
    # @!attribute [rw] user_enabled_as_local_administrator
    #   Indicates whether the WorkSpace user is an administrator on the
    #   WorkSpace.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DefaultWorkspaceCreationProperties AWS API Documentation
    #
    class DefaultWorkspaceCreationProperties < Struct.new(
      :enable_work_docs,
      :enable_internet_access,
      :default_ou,
      :custom_security_group_id,
      :user_enabled_as_local_administrator)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteIpGroupRequest
    #   data as a hash:
    #
    #       {
    #         group_id: "IpGroupId", # required
    #       }
    #
    # @!attribute [rw] group_id
    #   The ID of the IP access control group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DeleteIpGroupRequest AWS API Documentation
    #
    class DeleteIpGroupRequest < Struct.new(
      :group_id)
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
    #   The ID of the WorkSpace. To find this ID, use DescribeWorkspaces.
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
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DeleteTagsResult AWS API Documentation
    #
    class DeleteTagsResult < Aws::EmptyStructure; end

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
    #   The IDs of one or more IP access control groups.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. (You received this token from
    #   a previous call.)
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
      include Aws::Structure
    end

    # @!attribute [rw] result
    #   Information about the IP access control groups.
    #   @return [Array<Types::WorkspacesIpGroup>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results, or null if
    #   there are no more results available. This token is valid for one day
    #   and must be used within that time frame.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeIpGroupsResult AWS API Documentation
    #
    class DescribeIpGroupsResult < Struct.new(
      :result,
      :next_token)
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
    #   The ID of the WorkSpace. To find this ID, use DescribeWorkspaces.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeTagsRequest AWS API Documentation
    #
    class DescribeTagsRequest < Struct.new(
      :resource_id)
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
    #   The IDs of the bundles. This parameter cannot be combined with any
    #   other filter.
    #   @return [Array<String>]
    #
    # @!attribute [rw] owner
    #   The owner of the bundles. This parameter cannot be combined with any
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeWorkspaceDirectoriesRequest
    #   data as a hash:
    #
    #       {
    #         directory_ids: ["DirectoryId"],
    #         next_token: "PaginationToken",
    #       }
    #
    # @!attribute [rw] directory_ids
    #   The identifiers of the directories. If the value is null, all
    #   directories are retrieved.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. (You received this token from
    #   a previous call.)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeWorkspaceDirectoriesRequest AWS API Documentation
    #
    class DescribeWorkspaceDirectoriesRequest < Struct.new(
      :directory_ids,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] directories
    #   Information about the directories.
    #   @return [Array<Types::WorkspaceDirectory>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results, or null if
    #   there are no more results available. This token is valid for one day
    #   and must be used within that time frame.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeWorkspaceDirectoriesResult AWS API Documentation
    #
    class DescribeWorkspaceDirectoriesResult < Struct.new(
      :directories,
      :next_token)
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
    #   The token for the next set of results. (You received this token from
    #   a previous call.)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeWorkspacesConnectionStatusRequest AWS API Documentation
    #
    class DescribeWorkspacesConnectionStatusRequest < Struct.new(
      :workspace_ids,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] workspaces_connection_status
    #   Information about the connection status of the WorkSpace.
    #   @return [Array<Types::WorkspaceConnectionStatus>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results, or null if
    #   there are no more results available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeWorkspacesConnectionStatusResult AWS API Documentation
    #
    class DescribeWorkspacesConnectionStatusResult < Struct.new(
      :workspaces_connection_status,
      :next_token)
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
    #   The IDs of the WorkSpaces. This parameter cannot be combined with
    #   any other filter.
    #
    #   Because the CreateWorkspaces operation is asynchronous, the
    #   identifier it returns is not immediately available. If you
    #   immediately call DescribeWorkspaces with this identifier, no
    #   information is returned.
    #   @return [Array<String>]
    #
    # @!attribute [rw] directory_id
    #   The ID of the directory. In addition, you can optionally specify a
    #   specific directory user (see `UserName`). This parameter cannot be
    #   combined with any other filter.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The name of the directory user. You must specify this parameter with
    #   `DirectoryId`.
    #   @return [String]
    #
    # @!attribute [rw] bundle_id
    #   The ID of the bundle. All WorkSpaces that are created from this
    #   bundle are retrieved. This parameter cannot be combined with any
    #   other filter.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of items to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. (You received this token from
    #   a previous call.)
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
    #   The token to use to retrieve the next set of results, or null if
    #   there are no more results available. This token is valid for one day
    #   and must be used within that time frame.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeWorkspacesResult AWS API Documentation
    #
    class DescribeWorkspacesResult < Struct.new(
      :workspaces,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisassociateIpGroupsRequest
    #   data as a hash:
    #
    #       {
    #         directory_id: "DirectoryId", # required
    #         group_ids: ["IpGroupId"], # required
    #       }
    #
    # @!attribute [rw] directory_id
    #   The ID of the directory.
    #   @return [String]
    #
    # @!attribute [rw] group_ids
    #   The IDs of one or more IP access control groups.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DisassociateIpGroupsRequest AWS API Documentation
    #
    class DisassociateIpGroupsRequest < Struct.new(
      :directory_id,
      :group_ids)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DisassociateIpGroupsResult AWS API Documentation
    #
    class DisassociateIpGroupsResult < Aws::EmptyStructure; end

    # Information about a WorkSpace that could not be created.
    #
    # @!attribute [rw] workspace_request
    #   Information about the WorkSpace.
    #   @return [Types::WorkspaceRequest]
    #
    # @!attribute [rw] error_code
    #   The error code.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The textual error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/FailedCreateWorkspaceRequest AWS API Documentation
    #
    class FailedCreateWorkspaceRequest < Struct.new(
      :workspace_request,
      :error_code,
      :error_message)
      include Aws::Structure
    end

    # Information about a WorkSpace that could not be rebooted
    # (RebootWorkspaces), rebuilt (RebuildWorkspaces), terminated
    # (TerminateWorkspaces), started (StartWorkspaces), or stopped
    # (StopWorkspaces).
    #
    # @!attribute [rw] workspace_id
    #   The identifier of the WorkSpace.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The textual error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/FailedWorkspaceChangeRequest AWS API Documentation
    #
    class FailedWorkspaceChangeRequest < Struct.new(
      :workspace_id,
      :error_code,
      :error_message)
      include Aws::Structure
    end

    # Information about a rule for an IP access control group.
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
      include Aws::Structure
    end

    # Information about a WorkSpace modification.
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
      include Aws::Structure
    end

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
    #           compute_type_name: "VALUE", # accepts VALUE, STANDARD, PERFORMANCE, POWER, GRAPHICS
    #         },
    #       }
    #
    # @!attribute [rw] workspace_id
    #   The ID of the WorkSpace.
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
    #   The ID of the WorkSpace.
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
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ModifyWorkspaceStateResult AWS API Documentation
    #
    class ModifyWorkspaceStateResult < Aws::EmptyStructure; end

    # Information used to reboot a WorkSpace.
    #
    # @note When making an API call, you may pass RebootRequest
    #   data as a hash:
    #
    #       {
    #         workspace_id: "WorkspaceId", # required
    #       }
    #
    # @!attribute [rw] workspace_id
    #   The ID of the WorkSpace.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/RebootRequest AWS API Documentation
    #
    class RebootRequest < Struct.new(
      :workspace_id)
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
      include Aws::Structure
    end

    # Information used to rebuild a WorkSpace.
    #
    # @note When making an API call, you may pass RebuildRequest
    #   data as a hash:
    #
    #       {
    #         workspace_id: "WorkspaceId", # required
    #       }
    #
    # @!attribute [rw] workspace_id
    #   The ID of the WorkSpace.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/RebuildRequest AWS API Documentation
    #
    class RebuildRequest < Struct.new(
      :workspace_id)
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
      include Aws::Structure
    end

    # @!attribute [rw] failed_requests
    #   Information about the WorkSpace if it could not be rebuilt.
    #   @return [Array<Types::FailedWorkspaceChangeRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/RebuildWorkspacesResult AWS API Documentation
    #
    class RebuildWorkspacesResult < Struct.new(
      :failed_requests)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RevokeIpRulesRequest
    #   data as a hash:
    #
    #       {
    #         group_id: "IpGroupId", # required
    #         user_rules: ["IpRule"], # required
    #       }
    #
    # @!attribute [rw] group_id
    #   The ID of the group.
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
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/RevokeIpRulesResult AWS API Documentation
    #
    class RevokeIpRulesResult < Aws::EmptyStructure; end

    # Information about the root volume for a WorkSpace bundle.
    #
    # @!attribute [rw] capacity
    #   The size of the root volume.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/RootStorage AWS API Documentation
    #
    class RootStorage < Struct.new(
      :capacity)
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
    #   The ID of the WorkSpace.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/StartRequest AWS API Documentation
    #
    class StartRequest < Struct.new(
      :workspace_id)
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
      include Aws::Structure
    end

    # Information used to stop a WorkSpace.
    #
    # @note When making an API call, you may pass StopRequest
    #   data as a hash:
    #
    #       {
    #         workspace_id: "WorkspaceId",
    #       }
    #
    # @!attribute [rw] workspace_id
    #   The ID of the WorkSpace.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/StopRequest AWS API Documentation
    #
    class StopRequest < Struct.new(
      :workspace_id)
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
      include Aws::Structure
    end

    # Information about a tag.
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
      include Aws::Structure
    end

    # Information used to terminate a WorkSpace.
    #
    # @note When making an API call, you may pass TerminateRequest
    #   data as a hash:
    #
    #       {
    #         workspace_id: "WorkspaceId", # required
    #       }
    #
    # @!attribute [rw] workspace_id
    #   The ID of the WorkSpace.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/TerminateRequest AWS API Documentation
    #
    class TerminateRequest < Struct.new(
      :workspace_id)
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
      include Aws::Structure
    end

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
    #   The ID of the group.
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
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/UpdateRulesOfIpGroupResult AWS API Documentation
    #
    class UpdateRulesOfIpGroupResult < Aws::EmptyStructure; end

    # Information about the user storage for a WorkSpace bundle.
    #
    # @!attribute [rw] capacity
    #   The size of the user storage.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/UserStorage AWS API Documentation
    #
    class UserStorage < Struct.new(
      :capacity)
      include Aws::Structure
    end

    # Information about a WorkSpace.
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
    #   If the WorkSpace could not be created, contains a textual error
    #   message that describes the failure.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   If the WorkSpace could not be created, contains the error code.
    #   @return [String]
    #
    # @!attribute [rw] computer_name
    #   The name of the WorkSpace, as seen by the operating system.
    #   @return [String]
    #
    # @!attribute [rw] volume_encryption_key
    #   The KMS key used to encrypt data stored on your WorkSpace.
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
      include Aws::Structure
    end

    # Information about a WorkSpace bundle.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/WorkspaceBundle AWS API Documentation
    #
    class WorkspaceBundle < Struct.new(
      :bundle_id,
      :name,
      :owner,
      :description,
      :root_storage,
      :user_storage,
      :compute_type)
      include Aws::Structure
    end

    # Describes the connection status of a WorkSpace.
    #
    # @!attribute [rw] workspace_id
    #   The ID of the WorkSpace.
    #   @return [String]
    #
    # @!attribute [rw] connection_state
    #   The connection state of the WorkSpace. The connection state is
    #   unknown if the WorkSpace is stopped.
    #   @return [String]
    #
    # @!attribute [rw] connection_state_check_timestamp
    #   The timestamp of the connection state check.
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
      include Aws::Structure
    end

    # Information about an AWS Directory Service directory for use with
    # Amazon WorkSpaces.
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
    #   The state of the directory's registration with Amazon WorkSpaces
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
      :ip_group_ids)
      include Aws::Structure
    end

    # Information about a WorkSpace.
    #
    # @note When making an API call, you may pass WorkspaceProperties
    #   data as a hash:
    #
    #       {
    #         running_mode: "AUTO_STOP", # accepts AUTO_STOP, ALWAYS_ON
    #         running_mode_auto_stop_timeout_in_minutes: 1,
    #         root_volume_size_gib: 1,
    #         user_volume_size_gib: 1,
    #         compute_type_name: "VALUE", # accepts VALUE, STANDARD, PERFORMANCE, POWER, GRAPHICS
    #       }
    #
    # @!attribute [rw] running_mode
    #   The running mode. For more information, see [Manage the WorkSpace
    #   Running Mode][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/workspaces/latest/adminguide/running-mode.html
    #   @return [String]
    #
    # @!attribute [rw] running_mode_auto_stop_timeout_in_minutes
    #   The time after a user logs off when WorkSpaces are automatically
    #   stopped. Configured in 60 minute intervals.
    #   @return [Integer]
    #
    # @!attribute [rw] root_volume_size_gib
    #   The size of the root volume.
    #   @return [Integer]
    #
    # @!attribute [rw] user_volume_size_gib
    #   The size of the user storage.
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
      include Aws::Structure
    end

    # Information used to create a WorkSpace.
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
    #           compute_type_name: "VALUE", # accepts VALUE, STANDARD, PERFORMANCE, POWER, GRAPHICS
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
    #   The username of the user for the WorkSpace. This username must exist
    #   in the AWS Directory Service directory for the WorkSpace.
    #   @return [String]
    #
    # @!attribute [rw] bundle_id
    #   The identifier of the bundle for the WorkSpace. You can use
    #   DescribeWorkspaceBundles to list the available bundles.
    #   @return [String]
    #
    # @!attribute [rw] volume_encryption_key
    #   The KMS key used to encrypt data stored on your WorkSpace.
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
      include Aws::Structure
    end

    # Information about an IP access control group.
    #
    # @!attribute [rw] group_id
    #   The ID of the group.
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
      include Aws::Structure
    end

  end
end
