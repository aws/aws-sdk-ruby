# WARNING ABOUT GENERATED CODE
#
# The AWS SDK for Ruby is largely generated from JSON service definitions. Edits
# made against this file will be lost the next time the SDK updates.  To resolve
# an issue with generated code, a change is likely needed in the generator or
# in one of the service JSON definitions.
#
# * https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-code-generator
# * https://github.com/aws/aws-sdk-ruby/tree/master/apis
#
# Open a GitHub issue if you have questions before making changes.  Pull
# requests against this file will be automatically closed.
#
# WARNING ABOUT GENERATED CODE
module Aws
  module WorkSpaces
    module Types

      # Contains information about the compute type of a WorkSpace bundle.
      class ComputeType < Aws::Structure.new(
        :name)

        # @!attribute [rw] name
        #   The name of the compute type for the bundle.
        #   @return [String]

      end

      # The request of the CreateTags operation.
      # @note When making an API call, pass CreateTagsRequest
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
      class CreateTagsRequest < Aws::Structure.new(
        :resource_id,
        :tags)

        # @!attribute [rw] resource_id
        #   The resource ID of the request.
        #   @return [String]

        # @!attribute [rw] tags
        #   The tags of the request.
        #   @return [Array<Types::Tag>]

      end

      # The result of the CreateTags operation.
      class CreateTagsResult < Aws::EmptyStructure; end

      # Contains the inputs for the CreateWorkspaces operation.
      # @note When making an API call, pass CreateWorkspacesRequest
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
      class CreateWorkspacesRequest < Aws::Structure.new(
        :workspaces)

        # @!attribute [rw] workspaces
        #   An array of structures that specify the WorkSpaces to create.
        #   @return [Array<Types::WorkspaceRequest>]

      end

      # Contains the result of the CreateWorkspaces operation.
      class CreateWorkspacesResult < Aws::Structure.new(
        :failed_requests,
        :pending_requests)

        # @!attribute [rw] failed_requests
        #   An array of structures that represent the WorkSpaces that could not
        #   be created.
        #   @return [Array<Types::FailedCreateWorkspaceRequest>]

        # @!attribute [rw] pending_requests
        #   An array of structures that represent the WorkSpaces that were
        #   created.
        #
        #   Because this operation is asynchronous, the identifier in
        #   `WorkspaceId` is not immediately available. If you immediately call
        #   DescribeWorkspaces with this identifier, no information will be
        #   returned.
        #   @return [Array<Types::Workspace>]

      end

      # Contains default WorkSpace creation information.
      class DefaultWorkspaceCreationProperties < Aws::Structure.new(
        :enable_work_docs,
        :enable_internet_access,
        :default_ou,
        :custom_security_group_id,
        :user_enabled_as_local_administrator)

        # @!attribute [rw] enable_work_docs
        #   Specifies if the directory is enabled for Amazon WorkDocs.
        #   @return [Boolean]

        # @!attribute [rw] enable_internet_access
        #   A public IP address will be attached to all WorkSpaces that are
        #   created or rebuilt.
        #   @return [Boolean]

        # @!attribute [rw] default_ou
        #   The organizational unit (OU) in the directory that the WorkSpace
        #   machine accounts are placed in.
        #   @return [String]

        # @!attribute [rw] custom_security_group_id
        #   The identifier of any custom security groups that are applied to the
        #   WorkSpaces when they are created.
        #   @return [String]

        # @!attribute [rw] user_enabled_as_local_administrator
        #   The WorkSpace user is an administrator on the WorkSpace.
        #   @return [Boolean]

      end

      # The request of the DeleteTags operation.
      # @note When making an API call, pass DeleteTagsRequest
      #   data as a hash:
      #
      #       {
      #         resource_id: "NonEmptyString", # required
      #         tag_keys: ["NonEmptyString"], # required
      #       }
      class DeleteTagsRequest < Aws::Structure.new(
        :resource_id,
        :tag_keys)

        # @!attribute [rw] resource_id
        #   The resource ID of the request.
        #   @return [String]

        # @!attribute [rw] tag_keys
        #   The tag keys of the request.
        #   @return [Array<String>]

      end

      # The result of the DeleteTags operation.
      class DeleteTagsResult < Aws::EmptyStructure; end

      # The request of the DescribeTags operation.
      # @note When making an API call, pass DescribeTagsRequest
      #   data as a hash:
      #
      #       {
      #         resource_id: "NonEmptyString", # required
      #       }
      class DescribeTagsRequest < Aws::Structure.new(
        :resource_id)

        # @!attribute [rw] resource_id
        #   The resource ID of the request.
        #   @return [String]

      end

      # The result of the DescribeTags operation.
      class DescribeTagsResult < Aws::Structure.new(
        :tag_list)

        # @!attribute [rw] tag_list
        #   The list of tags.
        #   @return [Array<Types::Tag>]

      end

      # Contains the inputs for the DescribeWorkspaceBundles operation.
      # @note When making an API call, pass DescribeWorkspaceBundlesRequest
      #   data as a hash:
      #
      #       {
      #         bundle_ids: ["BundleId"],
      #         owner: "BundleOwner",
      #         next_token: "PaginationToken",
      #       }
      class DescribeWorkspaceBundlesRequest < Aws::Structure.new(
        :bundle_ids,
        :owner,
        :next_token)

        # @!attribute [rw] bundle_ids
        #   An array of strings that contains the identifiers of the bundles to
        #   retrieve. This parameter cannot be combined with any other filter
        #   parameter.
        #   @return [Array<String>]

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

        # @!attribute [rw] next_token
        #   The `NextToken` value from a previous call to this operation. Pass
        #   null if this is the first call.
        #   @return [String]

      end

      # Contains the results of the DescribeWorkspaceBundles operation.
      class DescribeWorkspaceBundlesResult < Aws::Structure.new(
        :bundles,
        :next_token)

        # @!attribute [rw] bundles
        #   An array of structures that contain information about the bundles.
        #   @return [Array<Types::WorkspaceBundle>]

        # @!attribute [rw] next_token
        #   If not null, more results are available. Pass this value for the
        #   `NextToken` parameter in a subsequent call to this operation to
        #   retrieve the next set of items. This token is valid for one day and
        #   must be used within that time frame.
        #   @return [String]

      end

      # Contains the inputs for the DescribeWorkspaceDirectories operation.
      # @note When making an API call, pass DescribeWorkspaceDirectoriesRequest
      #   data as a hash:
      #
      #       {
      #         directory_ids: ["DirectoryId"],
      #         next_token: "PaginationToken",
      #       }
      class DescribeWorkspaceDirectoriesRequest < Aws::Structure.new(
        :directory_ids,
        :next_token)

        # @!attribute [rw] directory_ids
        #   An array of strings that contains the directory identifiers to
        #   retrieve information for. If this member is null, all directories
        #   are retrieved.
        #   @return [Array<String>]

        # @!attribute [rw] next_token
        #   The `NextToken` value from a previous call to this operation. Pass
        #   null if this is the first call.
        #   @return [String]

      end

      # Contains the results of the DescribeWorkspaceDirectories operation.
      class DescribeWorkspaceDirectoriesResult < Aws::Structure.new(
        :directories,
        :next_token)

        # @!attribute [rw] directories
        #   An array of structures that contain information about the
        #   directories.
        #   @return [Array<Types::WorkspaceDirectory>]

        # @!attribute [rw] next_token
        #   If not null, more results are available. Pass this value for the
        #   `NextToken` parameter in a subsequent call to this operation to
        #   retrieve the next set of items. This token is valid for one day and
        #   must be used within that time frame.
        #   @return [String]

      end

      # @note When making an API call, pass DescribeWorkspacesConnectionStatusRequest
      #   data as a hash:
      #
      #       {
      #         workspace_ids: ["WorkspaceId"],
      #         next_token: "PaginationToken",
      #       }
      class DescribeWorkspacesConnectionStatusRequest < Aws::Structure.new(
        :workspace_ids,
        :next_token)

        # @!attribute [rw] workspace_ids
        #   An array of strings that contain the identifiers of the WorkSpaces.
        #   @return [Array<String>]

        # @!attribute [rw] next_token
        #   The next token of the request.
        #   @return [String]

      end

      class DescribeWorkspacesConnectionStatusResult < Aws::Structure.new(
        :workspaces_connection_status,
        :next_token)

        # @!attribute [rw] workspaces_connection_status
        #   The connection status of the WorkSpace.
        #   @return [Array<Types::WorkspaceConnectionStatus>]

        # @!attribute [rw] next_token
        #   The next token of the result.
        #   @return [String]

      end

      # Contains the inputs for the DescribeWorkspaces operation.
      # @note When making an API call, pass DescribeWorkspacesRequest
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
      class DescribeWorkspacesRequest < Aws::Structure.new(
        :workspace_ids,
        :directory_id,
        :user_name,
        :bundle_id,
        :limit,
        :next_token)

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

        # @!attribute [rw] directory_id
        #   Specifies the directory identifier to which to limit the WorkSpaces.
        #   Optionally, you can specify a specific directory user with the
        #   `UserName` parameter. This parameter cannot be combined with any
        #   other filter parameter.
        #   @return [String]

        # @!attribute [rw] user_name
        #   Used with the `DirectoryId` parameter to specify the directory user
        #   for whom to obtain the WorkSpace.
        #   @return [String]

        # @!attribute [rw] bundle_id
        #   The identifier of a bundle to obtain the WorkSpaces for. All
        #   WorkSpaces that are created from this bundle will be retrieved. This
        #   parameter cannot be combined with any other filter parameter.
        #   @return [String]

        # @!attribute [rw] limit
        #   The maximum number of items to return.
        #   @return [Integer]

        # @!attribute [rw] next_token
        #   The `NextToken` value from a previous call to this operation. Pass
        #   null if this is the first call.
        #   @return [String]

      end

      # Contains the results for the DescribeWorkspaces operation.
      class DescribeWorkspacesResult < Aws::Structure.new(
        :workspaces,
        :next_token)

        # @!attribute [rw] workspaces
        #   An array of structures that contain the information about the
        #   WorkSpaces.
        #
        #   Because the CreateWorkspaces operation is asynchronous, some of this
        #   information may be incomplete for a newly-created WorkSpace.
        #   @return [Array<Types::Workspace>]

        # @!attribute [rw] next_token
        #   If not null, more results are available. Pass this value for the
        #   `NextToken` parameter in a subsequent call to this operation to
        #   retrieve the next set of items. This token is valid for one day and
        #   must be used within that time frame.
        #   @return [String]

      end

      # Contains information about a WorkSpace that could not be created.
      class FailedCreateWorkspaceRequest < Aws::Structure.new(
        :workspace_request,
        :error_code,
        :error_message)

        # @!attribute [rw] workspace_request
        #   A FailedCreateWorkspaceRequest$WorkspaceRequest object that contains
        #   the information about the WorkSpace that could not be created.
        #   @return [Types::WorkspaceRequest]

        # @!attribute [rw] error_code
        #   The error code.
        #   @return [String]

        # @!attribute [rw] error_message
        #   The textual error message.
        #   @return [String]

      end

      # Contains information about a WorkSpace that could not be rebooted
      # (RebootWorkspaces), rebuilt (RebuildWorkspaces), terminated
      # (TerminateWorkspaces), started (StartWorkspaces), or stopped
      # (StopWorkspaces).
      class FailedWorkspaceChangeRequest < Aws::Structure.new(
        :workspace_id,
        :error_code,
        :error_message)

        # @!attribute [rw] workspace_id
        #   The identifier of the WorkSpace.
        #   @return [String]

        # @!attribute [rw] error_code
        #   The error code.
        #   @return [String]

        # @!attribute [rw] error_message
        #   The textual error message.
        #   @return [String]

      end

      # @note When making an API call, pass ModifyWorkspacePropertiesRequest
      #   data as a hash:
      #
      #       {
      #         workspace_id: "WorkspaceId", # required
      #         workspace_properties: { # required
      #           running_mode: "AUTO_STOP", # accepts AUTO_STOP, ALWAYS_ON
      #           running_mode_auto_stop_timeout_in_minutes: 1,
      #         },
      #       }
      class ModifyWorkspacePropertiesRequest < Aws::Structure.new(
        :workspace_id,
        :workspace_properties)

        # @!attribute [rw] workspace_id
        #   The ID of the WorkSpace.
        #   @return [String]

        # @!attribute [rw] workspace_properties
        #   The WorkSpace properties of the request.
        #   @return [Types::WorkspaceProperties]

      end

      class ModifyWorkspacePropertiesResult < Aws::EmptyStructure; end

      # Contains information used with the RebootWorkspaces operation to
      # reboot a WorkSpace.
      # @note When making an API call, pass RebootRequest
      #   data as a hash:
      #
      #       {
      #         workspace_id: "WorkspaceId", # required
      #       }
      class RebootRequest < Aws::Structure.new(
        :workspace_id)

        # @!attribute [rw] workspace_id
        #   The identifier of the WorkSpace to reboot.
        #   @return [String]

      end

      # Contains the inputs for the RebootWorkspaces operation.
      # @note When making an API call, pass RebootWorkspacesRequest
      #   data as a hash:
      #
      #       {
      #         reboot_workspace_requests: [ # required
      #           {
      #             workspace_id: "WorkspaceId", # required
      #           },
      #         ],
      #       }
      class RebootWorkspacesRequest < Aws::Structure.new(
        :reboot_workspace_requests)

        # @!attribute [rw] reboot_workspace_requests
        #   An array of structures that specify the WorkSpaces to reboot.
        #   @return [Array<Types::RebootRequest>]

      end

      # Contains the results of the RebootWorkspaces operation.
      class RebootWorkspacesResult < Aws::Structure.new(
        :failed_requests)

        # @!attribute [rw] failed_requests
        #   An array of structures representing any WorkSpaces that could not be
        #   rebooted.
        #   @return [Array<Types::FailedWorkspaceChangeRequest>]

      end

      # Contains information used with the RebuildWorkspaces operation to
      # rebuild a WorkSpace.
      # @note When making an API call, pass RebuildRequest
      #   data as a hash:
      #
      #       {
      #         workspace_id: "WorkspaceId", # required
      #       }
      class RebuildRequest < Aws::Structure.new(
        :workspace_id)

        # @!attribute [rw] workspace_id
        #   The identifier of the WorkSpace to rebuild.
        #   @return [String]

      end

      # Contains the inputs for the RebuildWorkspaces operation.
      # @note When making an API call, pass RebuildWorkspacesRequest
      #   data as a hash:
      #
      #       {
      #         rebuild_workspace_requests: [ # required
      #           {
      #             workspace_id: "WorkspaceId", # required
      #           },
      #         ],
      #       }
      class RebuildWorkspacesRequest < Aws::Structure.new(
        :rebuild_workspace_requests)

        # @!attribute [rw] rebuild_workspace_requests
        #   An array of structures that specify the WorkSpaces to rebuild.
        #   @return [Array<Types::RebuildRequest>]

      end

      # Contains the results of the RebuildWorkspaces operation.
      class RebuildWorkspacesResult < Aws::Structure.new(
        :failed_requests)

        # @!attribute [rw] failed_requests
        #   An array of structures representing any WorkSpaces that could not be
        #   rebuilt.
        #   @return [Array<Types::FailedWorkspaceChangeRequest>]

      end

      # Describes the start request.
      # @note When making an API call, pass StartRequest
      #   data as a hash:
      #
      #       {
      #         workspace_id: "WorkspaceId",
      #       }
      class StartRequest < Aws::Structure.new(
        :workspace_id)

        # @!attribute [rw] workspace_id
        #   The ID of the WorkSpace.
        #   @return [String]

      end

      # @note When making an API call, pass StartWorkspacesRequest
      #   data as a hash:
      #
      #       {
      #         start_workspace_requests: [ # required
      #           {
      #             workspace_id: "WorkspaceId",
      #           },
      #         ],
      #       }
      class StartWorkspacesRequest < Aws::Structure.new(
        :start_workspace_requests)

        # @!attribute [rw] start_workspace_requests
        #   The requests.
        #   @return [Array<Types::StartRequest>]

      end

      class StartWorkspacesResult < Aws::Structure.new(
        :failed_requests)

        # @!attribute [rw] failed_requests
        #   The failed requests.
        #   @return [Array<Types::FailedWorkspaceChangeRequest>]

      end

      # Describes the stop request.
      # @note When making an API call, pass StopRequest
      #   data as a hash:
      #
      #       {
      #         workspace_id: "WorkspaceId",
      #       }
      class StopRequest < Aws::Structure.new(
        :workspace_id)

        # @!attribute [rw] workspace_id
        #   The ID of the WorkSpace.
        #   @return [String]

      end

      # @note When making an API call, pass StopWorkspacesRequest
      #   data as a hash:
      #
      #       {
      #         stop_workspace_requests: [ # required
      #           {
      #             workspace_id: "WorkspaceId",
      #           },
      #         ],
      #       }
      class StopWorkspacesRequest < Aws::Structure.new(
        :stop_workspace_requests)

        # @!attribute [rw] stop_workspace_requests
        #   The requests.
        #   @return [Array<Types::StopRequest>]

      end

      class StopWorkspacesResult < Aws::Structure.new(
        :failed_requests)

        # @!attribute [rw] failed_requests
        #   The failed requests.
        #   @return [Array<Types::FailedWorkspaceChangeRequest>]

      end

      # Describes the tag of the WorkSpace.
      # @note When making an API call, pass Tag
      #   data as a hash:
      #
      #       {
      #         key: "TagKey", # required
      #         value: "TagValue",
      #       }
      class Tag < Aws::Structure.new(
        :key,
        :value)

        # @!attribute [rw] key
        #   The key of the tag.
        #   @return [String]

        # @!attribute [rw] value
        #   The value of the tag.
        #   @return [String]

      end

      # Contains information used with the TerminateWorkspaces operation to
      # terminate a WorkSpace.
      # @note When making an API call, pass TerminateRequest
      #   data as a hash:
      #
      #       {
      #         workspace_id: "WorkspaceId", # required
      #       }
      class TerminateRequest < Aws::Structure.new(
        :workspace_id)

        # @!attribute [rw] workspace_id
        #   The identifier of the WorkSpace to terminate.
        #   @return [String]

      end

      # Contains the inputs for the TerminateWorkspaces operation.
      # @note When making an API call, pass TerminateWorkspacesRequest
      #   data as a hash:
      #
      #       {
      #         terminate_workspace_requests: [ # required
      #           {
      #             workspace_id: "WorkspaceId", # required
      #           },
      #         ],
      #       }
      class TerminateWorkspacesRequest < Aws::Structure.new(
        :terminate_workspace_requests)

        # @!attribute [rw] terminate_workspace_requests
        #   An array of structures that specify the WorkSpaces to terminate.
        #   @return [Array<Types::TerminateRequest>]

      end

      # Contains the results of the TerminateWorkspaces operation.
      class TerminateWorkspacesResult < Aws::Structure.new(
        :failed_requests)

        # @!attribute [rw] failed_requests
        #   An array of structures representing any WorkSpaces that could not be
        #   terminated.
        #   @return [Array<Types::FailedWorkspaceChangeRequest>]

      end

      # Contains information about the user storage for a WorkSpace bundle.
      class UserStorage < Aws::Structure.new(
        :capacity)

        # @!attribute [rw] capacity
        #   The amount of user storage for the bundle.
        #   @return [String]

      end

      # Contains information about a WorkSpace.
      class Workspace < Aws::Structure.new(
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

        # @!attribute [rw] workspace_id
        #   The identifier of the WorkSpace.
        #   @return [String]

        # @!attribute [rw] directory_id
        #   The identifier of the AWS Directory Service directory that the
        #   WorkSpace belongs to.
        #   @return [String]

        # @!attribute [rw] user_name
        #   The user that the WorkSpace is assigned to.
        #   @return [String]

        # @!attribute [rw] ip_address
        #   The IP address of the WorkSpace.
        #   @return [String]

        # @!attribute [rw] state
        #   The operational state of the WorkSpace.
        #   @return [String]

        # @!attribute [rw] bundle_id
        #   The identifier of the bundle that the WorkSpace was created from.
        #   @return [String]

        # @!attribute [rw] subnet_id
        #   The identifier of the subnet that the WorkSpace is in.
        #   @return [String]

        # @!attribute [rw] error_message
        #   If the WorkSpace could not be created, this contains a textual error
        #   message that describes the failure.
        #   @return [String]

        # @!attribute [rw] error_code
        #   If the WorkSpace could not be created, this contains the error code.
        #   @return [String]

        # @!attribute [rw] computer_name
        #   The name of the WorkSpace as seen by the operating system.
        #   @return [String]

        # @!attribute [rw] volume_encryption_key
        #   The KMS key used to encrypt data stored on your WorkSpace.
        #   @return [String]

        # @!attribute [rw] user_volume_encryption_enabled
        #   Specifies whether the data stored on the user volume, or D: drive,
        #   is encrypted.
        #   @return [Boolean]

        # @!attribute [rw] root_volume_encryption_enabled
        #   Specifies whether the data stored on the root volume, or C: drive,
        #   is encrypted.
        #   @return [Boolean]

        # @!attribute [rw] workspace_properties
        #   Describes the properties of a WorkSpace.
        #   @return [Types::WorkspaceProperties]

      end

      # Contains information about a WorkSpace bundle.
      class WorkspaceBundle < Aws::Structure.new(
        :bundle_id,
        :name,
        :owner,
        :description,
        :user_storage,
        :compute_type)

        # @!attribute [rw] bundle_id
        #   The bundle identifier.
        #   @return [String]

        # @!attribute [rw] name
        #   The name of the bundle.
        #   @return [String]

        # @!attribute [rw] owner
        #   The owner of the bundle. This contains the owner\'s account
        #   identifier, or `AMAZON` if the bundle is provided by AWS.
        #   @return [String]

        # @!attribute [rw] description
        #   The bundle description.
        #   @return [String]

        # @!attribute [rw] user_storage
        #   A UserStorage object that specifies the amount of user storage that
        #   the bundle contains.
        #   @return [Types::UserStorage]

        # @!attribute [rw] compute_type
        #   A ComputeType object that specifies the compute type for the bundle.
        #   @return [Types::ComputeType]

      end

      # Describes the connection status of a WorkSpace.
      class WorkspaceConnectionStatus < Aws::Structure.new(
        :workspace_id,
        :connection_state,
        :connection_state_check_timestamp,
        :last_known_user_connection_timestamp)

        # @!attribute [rw] workspace_id
        #   The ID of the WorkSpace.
        #   @return [String]

        # @!attribute [rw] connection_state
        #   The connection state of the WorkSpace. Returns UNKOWN if the
        #   WorkSpace is in a Stopped state.
        #   @return [String]

        # @!attribute [rw] connection_state_check_timestamp
        #   The timestamp of the connection state check.
        #   @return [Time]

        # @!attribute [rw] last_known_user_connection_timestamp
        #   The timestamp of the last known user connection.
        #   @return [Time]

      end

      # Contains information about an AWS Directory Service directory for use
      # with Amazon WorkSpaces.
      class WorkspaceDirectory < Aws::Structure.new(
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

        # @!attribute [rw] directory_id
        #   The directory identifier.
        #   @return [String]

        # @!attribute [rw] alias
        #   The directory alias.
        #   @return [String]

        # @!attribute [rw] directory_name
        #   The name of the directory.
        #   @return [String]

        # @!attribute [rw] registration_code
        #   The registration code for the directory. This is the code that users
        #   enter in their Amazon WorkSpaces client application to connect to
        #   the directory.
        #   @return [String]

        # @!attribute [rw] subnet_ids
        #   An array of strings that contains the identifiers of the subnets
        #   used with the directory.
        #   @return [Array<String>]

        # @!attribute [rw] dns_ip_addresses
        #   An array of strings that contains the IP addresses of the DNS
        #   servers for the directory.
        #   @return [Array<String>]

        # @!attribute [rw] customer_user_name
        #   The user name for the service account.
        #   @return [String]

        # @!attribute [rw] iam_role_id
        #   The identifier of the IAM role. This is the role that allows Amazon
        #   WorkSpaces to make calls to other services, such as Amazon EC2, on
        #   your behalf.
        #   @return [String]

        # @!attribute [rw] directory_type
        #   The directory type.
        #   @return [String]

        # @!attribute [rw] workspace_security_group_id
        #   The identifier of the security group that is assigned to new
        #   WorkSpaces.
        #   @return [String]

        # @!attribute [rw] state
        #   The state of the directory\'s registration with Amazon WorkSpaces
        #   @return [String]

        # @!attribute [rw] workspace_creation_properties
        #   A structure that specifies the default creation properties for all
        #   WorkSpaces in the directory.
        #   @return [Types::DefaultWorkspaceCreationProperties]

      end

      # Describes the properties of a WorkSpace.
      # @note When making an API call, pass WorkspaceProperties
      #   data as a hash:
      #
      #       {
      #         running_mode: "AUTO_STOP", # accepts AUTO_STOP, ALWAYS_ON
      #         running_mode_auto_stop_timeout_in_minutes: 1,
      #       }
      class WorkspaceProperties < Aws::Structure.new(
        :running_mode,
        :running_mode_auto_stop_timeout_in_minutes)

        # @!attribute [rw] running_mode
        #   The running mode of the WorkSpace. AlwaysOn WorkSpaces are billed
        #   monthly. AutoStop WorkSpaces are billed by the hour and stopped when
        #   no longer being used in order to save on costs.
        #   @return [String]

        # @!attribute [rw] running_mode_auto_stop_timeout_in_minutes
        #   The time after a user logs off when WorkSpaces are automatically
        #   stopped. Configured in 60 minute intervals.
        #   @return [Integer]

      end

      # Contains information about a WorkSpace creation request.
      # @note When making an API call, pass WorkspaceRequest
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
      class WorkspaceRequest < Aws::Structure.new(
        :directory_id,
        :user_name,
        :bundle_id,
        :volume_encryption_key,
        :user_volume_encryption_enabled,
        :root_volume_encryption_enabled,
        :workspace_properties,
        :tags)

        # @!attribute [rw] directory_id
        #   The identifier of the AWS Directory Service directory to create the
        #   WorkSpace in. You can use the DescribeWorkspaceDirectories operation
        #   to obtain a list of the directories that are available.
        #   @return [String]

        # @!attribute [rw] user_name
        #   The username that the WorkSpace is assigned to. This username must
        #   exist in the AWS Directory Service directory specified by the
        #   `DirectoryId` member.
        #   @return [String]

        # @!attribute [rw] bundle_id
        #   The identifier of the bundle to create the WorkSpace from. You can
        #   use the DescribeWorkspaceBundles operation to obtain a list of the
        #   bundles that are available.
        #   @return [String]

        # @!attribute [rw] volume_encryption_key
        #   The KMS key used to encrypt data stored on your WorkSpace.
        #   @return [String]

        # @!attribute [rw] user_volume_encryption_enabled
        #   Specifies whether the data stored on the user volume, or D: drive,
        #   is encrypted.
        #   @return [Boolean]

        # @!attribute [rw] root_volume_encryption_enabled
        #   Specifies whether the data stored on the root volume, or C: drive,
        #   is encrypted.
        #   @return [Boolean]

        # @!attribute [rw] workspace_properties
        #   Describes the properties of a WorkSpace.
        #   @return [Types::WorkspaceProperties]

        # @!attribute [rw] tags
        #   The tags of the WorkSpace request.
        #   @return [Array<Types::Tag>]

      end

    end
  end
end
