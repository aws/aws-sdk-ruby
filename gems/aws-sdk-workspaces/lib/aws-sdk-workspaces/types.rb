# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::WorkSpaces
  module Types

    # Contains information about the compute type of a WorkSpace bundle.
    #
    # @!attribute [rw] name
    #   The name of the compute type for the bundle.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ComputeType AWS API Documentation
    #
    class ComputeType < Struct.new(
      :name)
      include Aws::Structure
    end

    # The request of the CreateTags operation.
    #
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
    #   The resource ID of the request.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags of the request.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/CreateTagsRequest AWS API Documentation
    #
    class CreateTagsRequest < Struct.new(
      :resource_id,
      :tags)
      include Aws::Structure
    end

    # The result of the CreateTags operation.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/CreateTagsResult AWS API Documentation
    #
    class CreateTagsResult < Aws::EmptyStructure; end

    # Contains the inputs for the CreateWorkspaces operation.
    #
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
    #   An array of structures that specify the WorkSpaces to create.
    #   @return [Array<Types::WorkspaceRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/CreateWorkspacesRequest AWS API Documentation
    #
    class CreateWorkspacesRequest < Struct.new(
      :workspaces)
      include Aws::Structure
    end

    # Contains the result of the CreateWorkspaces operation.
    #
    # @!attribute [rw] failed_requests
    #   An array of structures that represent the WorkSpaces that could not
    #   be created.
    #   @return [Array<Types::FailedCreateWorkspaceRequest>]
    #
    # @!attribute [rw] pending_requests
    #   An array of structures that represent the WorkSpaces that were
    #   created.
    #
    #   Because this operation is asynchronous, the identifier in
    #   `WorkspaceId` is not immediately available. If you immediately call
    #   DescribeWorkspaces with this identifier, no information will be
    #   returned.
    #   @return [Array<Types::Workspace>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/CreateWorkspacesResult AWS API Documentation
    #
    class CreateWorkspacesResult < Struct.new(
      :failed_requests,
      :pending_requests)
      include Aws::Structure
    end

    # Contains default WorkSpace creation information.
    #
    # @!attribute [rw] enable_work_docs
    #   Specifies if the directory is enabled for Amazon WorkDocs.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_internet_access
    #   A public IP address will be attached to all WorkSpaces that are
    #   created or rebuilt.
    #   @return [Boolean]
    #
    # @!attribute [rw] default_ou
    #   The organizational unit (OU) in the directory that the WorkSpace
    #   machine accounts are placed in.
    #   @return [String]
    #
    # @!attribute [rw] custom_security_group_id
    #   The identifier of any custom security groups that are applied to the
    #   WorkSpaces when they are created.
    #   @return [String]
    #
    # @!attribute [rw] user_enabled_as_local_administrator
    #   The WorkSpace user is an administrator on the WorkSpace.
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

    # The request of the DeleteTags operation.
    #
    # @note When making an API call, you may pass DeleteTagsRequest
    #   data as a hash:
    #
    #       {
    #         resource_id: "NonEmptyString", # required
    #         tag_keys: ["NonEmptyString"], # required
    #       }
    #
    # @!attribute [rw] resource_id
    #   The resource ID of the request.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys of the request.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DeleteTagsRequest AWS API Documentation
    #
    class DeleteTagsRequest < Struct.new(
      :resource_id,
      :tag_keys)
      include Aws::Structure
    end

    # The result of the DeleteTags operation.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DeleteTagsResult AWS API Documentation
    #
    class DeleteTagsResult < Aws::EmptyStructure; end

    # The request of the DescribeTags operation.
    #
    # @note When making an API call, you may pass DescribeTagsRequest
    #   data as a hash:
    #
    #       {
    #         resource_id: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] resource_id
    #   The resource ID of the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeTagsRequest AWS API Documentation
    #
    class DescribeTagsRequest < Struct.new(
      :resource_id)
      include Aws::Structure
    end

    # The result of the DescribeTags operation.
    #
    # @!attribute [rw] tag_list
    #   The list of tags.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeTagsResult AWS API Documentation
    #
    class DescribeTagsResult < Struct.new(
      :tag_list)
      include Aws::Structure
    end

    # Contains the inputs for the DescribeWorkspaceBundles operation.
    #
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
    #   An array of strings that contains the identifiers of the bundles to
    #   retrieve. This parameter cannot be combined with any other filter
    #   parameter.
    #   @return [Array<String>]
    #
    # @!attribute [rw] owner
    #   The owner of the bundles to retrieve. This parameter cannot be
    #   combined with any other filter parameter.
    #
    #   This contains one of the following values:
    #
    #   * null- Retrieves the bundles that belong to the account making the
    #     call.
    #
    #   * `AMAZON`- Retrieves the bundles that are provided by AWS.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The `NextToken` value from a previous call to this operation. Pass
    #   null if this is the first call.
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

    # Contains the results of the DescribeWorkspaceBundles operation.
    #
    # @!attribute [rw] bundles
    #   An array of structures that contain information about the bundles.
    #   @return [Array<Types::WorkspaceBundle>]
    #
    # @!attribute [rw] next_token
    #   If not null, more results are available. Pass this value for the
    #   `NextToken` parameter in a subsequent call to this operation to
    #   retrieve the next set of items. This token is valid for one day and
    #   must be used within that time frame.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeWorkspaceBundlesResult AWS API Documentation
    #
    class DescribeWorkspaceBundlesResult < Struct.new(
      :bundles,
      :next_token)
      include Aws::Structure
    end

    # Contains the inputs for the DescribeWorkspaceDirectories operation.
    #
    # @note When making an API call, you may pass DescribeWorkspaceDirectoriesRequest
    #   data as a hash:
    #
    #       {
    #         directory_ids: ["DirectoryId"],
    #         next_token: "PaginationToken",
    #       }
    #
    # @!attribute [rw] directory_ids
    #   An array of strings that contains the directory identifiers to
    #   retrieve information for. If this member is null, all directories
    #   are retrieved.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The `NextToken` value from a previous call to this operation. Pass
    #   null if this is the first call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeWorkspaceDirectoriesRequest AWS API Documentation
    #
    class DescribeWorkspaceDirectoriesRequest < Struct.new(
      :directory_ids,
      :next_token)
      include Aws::Structure
    end

    # Contains the results of the DescribeWorkspaceDirectories operation.
    #
    # @!attribute [rw] directories
    #   An array of structures that contain information about the
    #   directories.
    #   @return [Array<Types::WorkspaceDirectory>]
    #
    # @!attribute [rw] next_token
    #   If not null, more results are available. Pass this value for the
    #   `NextToken` parameter in a subsequent call to this operation to
    #   retrieve the next set of items. This token is valid for one day and
    #   must be used within that time frame.
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
    #   An array of strings that contain the identifiers of the WorkSpaces.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The next token of the request.
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
    #   The connection status of the WorkSpace.
    #   @return [Array<Types::WorkspaceConnectionStatus>]
    #
    # @!attribute [rw] next_token
    #   The next token of the result.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeWorkspacesConnectionStatusResult AWS API Documentation
    #
    class DescribeWorkspacesConnectionStatusResult < Struct.new(
      :workspaces_connection_status,
      :next_token)
      include Aws::Structure
    end

    # Contains the inputs for the DescribeWorkspaces operation.
    #
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
    #   An array of strings that contain the identifiers of the WorkSpaces
    #   for which to retrieve information. This parameter cannot be combined
    #   with any other filter parameter.
    #
    #   Because the CreateWorkspaces operation is asynchronous, the
    #   identifier it returns is not immediately available. If you
    #   immediately call DescribeWorkspaces with this identifier, no
    #   information is returned.
    #   @return [Array<String>]
    #
    # @!attribute [rw] directory_id
    #   Specifies the directory identifier to which to limit the WorkSpaces.
    #   Optionally, you can specify a specific directory user with the
    #   `UserName` parameter. This parameter cannot be combined with any
    #   other filter parameter.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   Used with the `DirectoryId` parameter to specify the directory user
    #   for whom to obtain the WorkSpace.
    #   @return [String]
    #
    # @!attribute [rw] bundle_id
    #   The identifier of a bundle to obtain the WorkSpaces for. All
    #   WorkSpaces that are created from this bundle will be retrieved. This
    #   parameter cannot be combined with any other filter parameter.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of items to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `NextToken` value from a previous call to this operation. Pass
    #   null if this is the first call.
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

    # Contains the results for the DescribeWorkspaces operation.
    #
    # @!attribute [rw] workspaces
    #   An array of structures that contain the information about the
    #   WorkSpaces.
    #
    #   Because the CreateWorkspaces operation is asynchronous, some of this
    #   information may be incomplete for a newly-created WorkSpace.
    #   @return [Array<Types::Workspace>]
    #
    # @!attribute [rw] next_token
    #   If not null, more results are available. Pass this value for the
    #   `NextToken` parameter in a subsequent call to this operation to
    #   retrieve the next set of items. This token is valid for one day and
    #   must be used within that time frame.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeWorkspacesResult AWS API Documentation
    #
    class DescribeWorkspacesResult < Struct.new(
      :workspaces,
      :next_token)
      include Aws::Structure
    end

    # Contains information about a WorkSpace that could not be created.
    #
    # @!attribute [rw] workspace_request
    #   A FailedCreateWorkspaceRequest$WorkspaceRequest object that contains
    #   the information about the WorkSpace that could not be created.
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

    # Contains information about a WorkSpace that could not be rebooted
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

    # @note When making an API call, you may pass ModifyWorkspacePropertiesRequest
    #   data as a hash:
    #
    #       {
    #         workspace_id: "WorkspaceId", # required
    #         workspace_properties: { # required
    #           running_mode: "AUTO_STOP", # accepts AUTO_STOP, ALWAYS_ON
    #           running_mode_auto_stop_timeout_in_minutes: 1,
    #         },
    #       }
    #
    # @!attribute [rw] workspace_id
    #   The ID of the WorkSpace.
    #   @return [String]
    #
    # @!attribute [rw] workspace_properties
    #   The WorkSpace properties of the request.
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

    # Contains information used with the RebootWorkspaces operation to
    # reboot a WorkSpace.
    #
    # @note When making an API call, you may pass RebootRequest
    #   data as a hash:
    #
    #       {
    #         workspace_id: "WorkspaceId", # required
    #       }
    #
    # @!attribute [rw] workspace_id
    #   The identifier of the WorkSpace to reboot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/RebootRequest AWS API Documentation
    #
    class RebootRequest < Struct.new(
      :workspace_id)
      include Aws::Structure
    end

    # Contains the inputs for the RebootWorkspaces operation.
    #
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
    #   An array of structures that specify the WorkSpaces to reboot.
    #   @return [Array<Types::RebootRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/RebootWorkspacesRequest AWS API Documentation
    #
    class RebootWorkspacesRequest < Struct.new(
      :reboot_workspace_requests)
      include Aws::Structure
    end

    # Contains the results of the RebootWorkspaces operation.
    #
    # @!attribute [rw] failed_requests
    #   An array of structures representing any WorkSpaces that could not be
    #   rebooted.
    #   @return [Array<Types::FailedWorkspaceChangeRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/RebootWorkspacesResult AWS API Documentation
    #
    class RebootWorkspacesResult < Struct.new(
      :failed_requests)
      include Aws::Structure
    end

    # Contains information used with the RebuildWorkspaces operation to
    # rebuild a WorkSpace.
    #
    # @note When making an API call, you may pass RebuildRequest
    #   data as a hash:
    #
    #       {
    #         workspace_id: "WorkspaceId", # required
    #       }
    #
    # @!attribute [rw] workspace_id
    #   The identifier of the WorkSpace to rebuild.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/RebuildRequest AWS API Documentation
    #
    class RebuildRequest < Struct.new(
      :workspace_id)
      include Aws::Structure
    end

    # Contains the inputs for the RebuildWorkspaces operation.
    #
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
    #   An array of structures that specify the WorkSpaces to rebuild.
    #   @return [Array<Types::RebuildRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/RebuildWorkspacesRequest AWS API Documentation
    #
    class RebuildWorkspacesRequest < Struct.new(
      :rebuild_workspace_requests)
      include Aws::Structure
    end

    # Contains the results of the RebuildWorkspaces operation.
    #
    # @!attribute [rw] failed_requests
    #   An array of structures representing any WorkSpaces that could not be
    #   rebuilt.
    #   @return [Array<Types::FailedWorkspaceChangeRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/RebuildWorkspacesResult AWS API Documentation
    #
    class RebuildWorkspacesResult < Struct.new(
      :failed_requests)
      include Aws::Structure
    end

    # Describes the start request.
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
    #   The requests.
    #   @return [Array<Types::StartRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/StartWorkspacesRequest AWS API Documentation
    #
    class StartWorkspacesRequest < Struct.new(
      :start_workspace_requests)
      include Aws::Structure
    end

    # @!attribute [rw] failed_requests
    #   The failed requests.
    #   @return [Array<Types::FailedWorkspaceChangeRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/StartWorkspacesResult AWS API Documentation
    #
    class StartWorkspacesResult < Struct.new(
      :failed_requests)
      include Aws::Structure
    end

    # Describes the stop request.
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
    #   The requests.
    #   @return [Array<Types::StopRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/StopWorkspacesRequest AWS API Documentation
    #
    class StopWorkspacesRequest < Struct.new(
      :stop_workspace_requests)
      include Aws::Structure
    end

    # @!attribute [rw] failed_requests
    #   The failed requests.
    #   @return [Array<Types::FailedWorkspaceChangeRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/StopWorkspacesResult AWS API Documentation
    #
    class StopWorkspacesResult < Struct.new(
      :failed_requests)
      include Aws::Structure
    end

    # Describes the tag of the WorkSpace.
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

    # Contains information used with the TerminateWorkspaces operation to
    # terminate a WorkSpace.
    #
    # @note When making an API call, you may pass TerminateRequest
    #   data as a hash:
    #
    #       {
    #         workspace_id: "WorkspaceId", # required
    #       }
    #
    # @!attribute [rw] workspace_id
    #   The identifier of the WorkSpace to terminate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/TerminateRequest AWS API Documentation
    #
    class TerminateRequest < Struct.new(
      :workspace_id)
      include Aws::Structure
    end

    # Contains the inputs for the TerminateWorkspaces operation.
    #
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
    #   An array of structures that specify the WorkSpaces to terminate.
    #   @return [Array<Types::TerminateRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/TerminateWorkspacesRequest AWS API Documentation
    #
    class TerminateWorkspacesRequest < Struct.new(
      :terminate_workspace_requests)
      include Aws::Structure
    end

    # Contains the results of the TerminateWorkspaces operation.
    #
    # @!attribute [rw] failed_requests
    #   An array of structures representing any WorkSpaces that could not be
    #   terminated.
    #   @return [Array<Types::FailedWorkspaceChangeRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/TerminateWorkspacesResult AWS API Documentation
    #
    class TerminateWorkspacesResult < Struct.new(
      :failed_requests)
      include Aws::Structure
    end

    # Contains information about the user storage for a WorkSpace bundle.
    #
    # @!attribute [rw] capacity
    #   The amount of user storage for the bundle.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/UserStorage AWS API Documentation
    #
    class UserStorage < Struct.new(
      :capacity)
      include Aws::Structure
    end

    # Contains information about a WorkSpace.
    #
    # @!attribute [rw] workspace_id
    #   The identifier of the WorkSpace.
    #   @return [String]
    #
    # @!attribute [rw] directory_id
    #   The identifier of the AWS Directory Service directory that the
    #   WorkSpace belongs to.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The user that the WorkSpace is assigned to.
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
    #   The identifier of the bundle that the WorkSpace was created from.
    #   @return [String]
    #
    # @!attribute [rw] subnet_id
    #   The identifier of the subnet that the WorkSpace is in.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   If the WorkSpace could not be created, this contains a textual error
    #   message that describes the failure.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   If the WorkSpace could not be created, this contains the error code.
    #   @return [String]
    #
    # @!attribute [rw] computer_name
    #   The name of the WorkSpace as seen by the operating system.
    #   @return [String]
    #
    # @!attribute [rw] volume_encryption_key
    #   The KMS key used to encrypt data stored on your WorkSpace.
    #   @return [String]
    #
    # @!attribute [rw] user_volume_encryption_enabled
    #   Specifies whether the data stored on the user volume, or D: drive,
    #   is encrypted.
    #   @return [Boolean]
    #
    # @!attribute [rw] root_volume_encryption_enabled
    #   Specifies whether the data stored on the root volume, or C: drive,
    #   is encrypted.
    #   @return [Boolean]
    #
    # @!attribute [rw] workspace_properties
    #   Describes the properties of a WorkSpace.
    #   @return [Types::WorkspaceProperties]
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
      :workspace_properties)
      include Aws::Structure
    end

    # Contains information about a WorkSpace bundle.
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
    #   The owner of the bundle. This contains the owner's account
    #   identifier, or `AMAZON` if the bundle is provided by AWS.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The bundle description.
    #   @return [String]
    #
    # @!attribute [rw] user_storage
    #   A UserStorage object that specifies the amount of user storage that
    #   the bundle contains.
    #   @return [Types::UserStorage]
    #
    # @!attribute [rw] compute_type
    #   A ComputeType object that specifies the compute type for the bundle.
    #   @return [Types::ComputeType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/WorkspaceBundle AWS API Documentation
    #
    class WorkspaceBundle < Struct.new(
      :bundle_id,
      :name,
      :owner,
      :description,
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
    #   The connection state of the WorkSpace. Returns UNKOWN if the
    #   WorkSpace is in a Stopped state.
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

    # Contains information about an AWS Directory Service directory for use
    # with Amazon WorkSpaces.
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
    #   An array of strings that contains the identifiers of the subnets
    #   used with the directory.
    #   @return [Array<String>]
    #
    # @!attribute [rw] dns_ip_addresses
    #   An array of strings that contains the IP addresses of the DNS
    #   servers for the directory.
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
    #   A structure that specifies the default creation properties for all
    #   WorkSpaces in the directory.
    #   @return [Types::DefaultWorkspaceCreationProperties]
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
      :workspace_creation_properties)
      include Aws::Structure
    end

    # Describes the properties of a WorkSpace.
    #
    # @note When making an API call, you may pass WorkspaceProperties
    #   data as a hash:
    #
    #       {
    #         running_mode: "AUTO_STOP", # accepts AUTO_STOP, ALWAYS_ON
    #         running_mode_auto_stop_timeout_in_minutes: 1,
    #       }
    #
    # @!attribute [rw] running_mode
    #   The running mode of the WorkSpace. AlwaysOn WorkSpaces are billed
    #   monthly. AutoStop WorkSpaces are billed by the hour and stopped when
    #   no longer being used in order to save on costs.
    #   @return [String]
    #
    # @!attribute [rw] running_mode_auto_stop_timeout_in_minutes
    #   The time after a user logs off when WorkSpaces are automatically
    #   stopped. Configured in 60 minute intervals.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/WorkspaceProperties AWS API Documentation
    #
    class WorkspaceProperties < Struct.new(
      :running_mode,
      :running_mode_auto_stop_timeout_in_minutes)
      include Aws::Structure
    end

    # Contains information about a WorkSpace creation request.
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
    #   The identifier of the AWS Directory Service directory to create the
    #   WorkSpace in. You can use the DescribeWorkspaceDirectories operation
    #   to obtain a list of the directories that are available.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The username that the WorkSpace is assigned to. This username must
    #   exist in the AWS Directory Service directory specified by the
    #   `DirectoryId` member.
    #   @return [String]
    #
    # @!attribute [rw] bundle_id
    #   The identifier of the bundle to create the WorkSpace from. You can
    #   use the DescribeWorkspaceBundles operation to obtain a list of the
    #   bundles that are available.
    #   @return [String]
    #
    # @!attribute [rw] volume_encryption_key
    #   The KMS key used to encrypt data stored on your WorkSpace.
    #   @return [String]
    #
    # @!attribute [rw] user_volume_encryption_enabled
    #   Specifies whether the data stored on the user volume, or D: drive,
    #   is encrypted.
    #   @return [Boolean]
    #
    # @!attribute [rw] root_volume_encryption_enabled
    #   Specifies whether the data stored on the root volume, or C: drive,
    #   is encrypted.
    #   @return [Boolean]
    #
    # @!attribute [rw] workspace_properties
    #   Describes the properties of a WorkSpace.
    #   @return [Types::WorkspaceProperties]
    #
    # @!attribute [rw] tags
    #   The tags of the WorkSpace request.
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

  end
end
