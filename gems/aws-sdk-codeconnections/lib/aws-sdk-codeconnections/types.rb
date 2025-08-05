# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CodeConnections
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exception thrown as a result of concurrent modification to an
    # application. For example, two individuals attempting to edit the same
    # application at the same time.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/ConcurrentModificationException AWS API Documentation
    #
    class ConcurrentModificationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The conditional check failed. Try again later.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/ConditionalCheckFailedException AWS API Documentation
    #
    class ConditionalCheckFailedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Two conflicting operations have been made on the same resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A resource that is used to connect third-party source providers with
    # services like CodePipeline.
    #
    # Note: A connection created through CloudFormation, the CLI, or the SDK
    # is in `PENDING` status by default. You can make its status
    # `AVAILABLE` by updating the connection in the console.
    #
    # @!attribute [rw] connection_name
    #   The name of the connection. Connection names must be unique in an
    #   Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] connection_arn
    #   The Amazon Resource Name (ARN) of the connection. The ARN is used as
    #   the connection reference when the connection is shared between
    #   Amazon Web Services services.
    #
    #   <note markdown="1"> The ARN is never reused if the connection is deleted.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] provider_type
    #   The name of the external provider where your third-party code
    #   repository is configured.
    #   @return [String]
    #
    # @!attribute [rw] owner_account_id
    #   The identifier of the external provider where your third-party code
    #   repository is configured. For Bitbucket, this is the account ID of
    #   the owner of the Bitbucket repository.
    #   @return [String]
    #
    # @!attribute [rw] connection_status
    #   The current status of the connection.
    #   @return [String]
    #
    # @!attribute [rw] host_arn
    #   The Amazon Resource Name (ARN) of the host associated with the
    #   connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/Connection AWS API Documentation
    #
    class Connection < Struct.new(
      :connection_name,
      :connection_arn,
      :provider_type,
      :owner_account_id,
      :connection_status,
      :host_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] provider_type
    #   The name of the external provider where your third-party code
    #   repository is configured.
    #   @return [String]
    #
    # @!attribute [rw] connection_name
    #   The name of the connection to be created.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key-value pair to use when tagging the resource.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] host_arn
    #   The Amazon Resource Name (ARN) of the host associated with the
    #   connection to be created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/CreateConnectionInput AWS API Documentation
    #
    class CreateConnectionInput < Struct.new(
      :provider_type,
      :connection_name,
      :tags,
      :host_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connection_arn
    #   The Amazon Resource Name (ARN) of the connection to be created. The
    #   ARN is used as the connection reference when the connection is
    #   shared between Amazon Web Services services.
    #
    #   <note markdown="1"> The ARN is never reused if the connection is deleted.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Specifies the tags applied to the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/CreateConnectionOutput AWS API Documentation
    #
    class CreateConnectionOutput < Struct.new(
      :connection_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the host to be created.
    #   @return [String]
    #
    # @!attribute [rw] provider_type
    #   The name of the installed provider to be associated with your
    #   connection. The host resource represents the infrastructure where
    #   your provider type is installed. The valid provider type is GitHub
    #   Enterprise Server.
    #   @return [String]
    #
    # @!attribute [rw] provider_endpoint
    #   The endpoint of the infrastructure to be represented by the host
    #   after it is created.
    #   @return [String]
    #
    # @!attribute [rw] vpc_configuration
    #   The VPC configuration to be provisioned for the host. A VPC must be
    #   configured and the infrastructure to be represented by the host must
    #   already be connected to the VPC.
    #   @return [Types::VpcConfiguration]
    #
    # @!attribute [rw] tags
    #   Tags for the host to be created.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/CreateHostInput AWS API Documentation
    #
    class CreateHostInput < Struct.new(
      :name,
      :provider_type,
      :provider_endpoint,
      :vpc_configuration,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] host_arn
    #   The Amazon Resource Name (ARN) of the host to be created.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags for the created host.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/CreateHostOutput AWS API Documentation
    #
    class CreateHostOutput < Struct.new(
      :host_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connection_arn
    #   The Amazon Resource Name (ARN) of the connection to be associated
    #   with the repository link.
    #   @return [String]
    #
    # @!attribute [rw] owner_id
    #   The owner ID for the repository associated with a specific sync
    #   configuration, such as the owner ID in GitHub.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository to be associated with the repository
    #   link.
    #   @return [String]
    #
    # @!attribute [rw] encryption_key_arn
    #   The Amazon Resource Name (ARN) encryption key for the repository to
    #   be associated with the repository link.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags for the repository to be associated with the repository
    #   link.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/CreateRepositoryLinkInput AWS API Documentation
    #
    class CreateRepositoryLinkInput < Struct.new(
      :connection_arn,
      :owner_id,
      :repository_name,
      :encryption_key_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] repository_link_info
    #   The returned information about the created repository link.
    #   @return [Types::RepositoryLinkInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/CreateRepositoryLinkOutput AWS API Documentation
    #
    class CreateRepositoryLinkOutput < Struct.new(
      :repository_link_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] branch
    #   The branch in the repository from which changes will be synced.
    #   @return [String]
    #
    # @!attribute [rw] config_file
    #   The file name of the configuration file that manages syncing between
    #   the connection and the repository. This configuration file is stored
    #   in the repository.
    #   @return [String]
    #
    # @!attribute [rw] repository_link_id
    #   The ID of the repository link created for the connection. A
    #   repository link allows Git sync to monitor and sync changes to files
    #   in a specified Git repository.
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   The name of the Amazon Web Services resource (for example, a
    #   CloudFormation stack in the case of CFN\_STACK\_SYNC) that will be
    #   synchronized from the linked repository.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that grants permission for Amazon Web
    #   Services to use Git sync to update a given Amazon Web Services
    #   resource on your behalf.
    #   @return [String]
    #
    # @!attribute [rw] sync_type
    #   The type of sync configuration.
    #   @return [String]
    #
    # @!attribute [rw] publish_deployment_status
    #   Whether to enable or disable publishing of deployment status to
    #   source providers.
    #   @return [String]
    #
    # @!attribute [rw] trigger_resource_update_on
    #   When to trigger Git sync to begin the stack update.
    #   @return [String]
    #
    # @!attribute [rw] pull_request_comment
    #   A toggle that specifies whether to enable or disable pull request
    #   comments for the sync configuration to be created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/CreateSyncConfigurationInput AWS API Documentation
    #
    class CreateSyncConfigurationInput < Struct.new(
      :branch,
      :config_file,
      :repository_link_id,
      :resource_name,
      :role_arn,
      :sync_type,
      :publish_deployment_status,
      :trigger_resource_update_on,
      :pull_request_comment)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sync_configuration
    #   The created sync configuration for the connection. A sync
    #   configuration allows Amazon Web Services to sync content from a Git
    #   repository to update a specified Amazon Web Services resource.
    #   @return [Types::SyncConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/CreateSyncConfigurationOutput AWS API Documentation
    #
    class CreateSyncConfigurationOutput < Struct.new(
      :sync_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connection_arn
    #   The Amazon Resource Name (ARN) of the connection to be deleted.
    #
    #   <note markdown="1"> The ARN is never reused if the connection is deleted.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/DeleteConnectionInput AWS API Documentation
    #
    class DeleteConnectionInput < Struct.new(
      :connection_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/DeleteConnectionOutput AWS API Documentation
    #
    class DeleteConnectionOutput < Aws::EmptyStructure; end

    # @!attribute [rw] host_arn
    #   The Amazon Resource Name (ARN) of the host to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/DeleteHostInput AWS API Documentation
    #
    class DeleteHostInput < Struct.new(
      :host_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/DeleteHostOutput AWS API Documentation
    #
    class DeleteHostOutput < Aws::EmptyStructure; end

    # @!attribute [rw] repository_link_id
    #   The ID of the repository link to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/DeleteRepositoryLinkInput AWS API Documentation
    #
    class DeleteRepositoryLinkInput < Struct.new(
      :repository_link_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/DeleteRepositoryLinkOutput AWS API Documentation
    #
    class DeleteRepositoryLinkOutput < Aws::EmptyStructure; end

    # @!attribute [rw] sync_type
    #   The type of sync configuration to be deleted.
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   The name of the Amazon Web Services resource associated with the
    #   sync configuration to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/DeleteSyncConfigurationInput AWS API Documentation
    #
    class DeleteSyncConfigurationInput < Struct.new(
      :sync_type,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/DeleteSyncConfigurationOutput AWS API Documentation
    #
    class DeleteSyncConfigurationOutput < Aws::EmptyStructure; end

    # @!attribute [rw] connection_arn
    #   The Amazon Resource Name (ARN) of a connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/GetConnectionInput AWS API Documentation
    #
    class GetConnectionInput < Struct.new(
      :connection_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connection
    #   The connection details, such as status, owner, and provider type.
    #   @return [Types::Connection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/GetConnectionOutput AWS API Documentation
    #
    class GetConnectionOutput < Struct.new(
      :connection)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] host_arn
    #   The Amazon Resource Name (ARN) of the requested host.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/GetHostInput AWS API Documentation
    #
    class GetHostInput < Struct.new(
      :host_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the requested host.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the requested host.
    #   @return [String]
    #
    # @!attribute [rw] provider_type
    #   The provider type of the requested host, such as GitHub Enterprise
    #   Server.
    #   @return [String]
    #
    # @!attribute [rw] provider_endpoint
    #   The endpoint of the infrastructure represented by the requested
    #   host.
    #   @return [String]
    #
    # @!attribute [rw] vpc_configuration
    #   The VPC configuration of the requested host.
    #   @return [Types::VpcConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/GetHostOutput AWS API Documentation
    #
    class GetHostOutput < Struct.new(
      :name,
      :status,
      :provider_type,
      :provider_endpoint,
      :vpc_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] repository_link_id
    #   The ID of the repository link to get.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/GetRepositoryLinkInput AWS API Documentation
    #
    class GetRepositoryLinkInput < Struct.new(
      :repository_link_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] repository_link_info
    #   The information returned for a specified repository link.
    #   @return [Types::RepositoryLinkInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/GetRepositoryLinkOutput AWS API Documentation
    #
    class GetRepositoryLinkOutput < Struct.new(
      :repository_link_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] branch
    #   The branch of the repository link for the requested repository sync
    #   status.
    #   @return [String]
    #
    # @!attribute [rw] repository_link_id
    #   The repository link ID for the requested repository sync status.
    #   @return [String]
    #
    # @!attribute [rw] sync_type
    #   The sync type of the requested sync status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/GetRepositorySyncStatusInput AWS API Documentation
    #
    class GetRepositorySyncStatusInput < Struct.new(
      :branch,
      :repository_link_id,
      :sync_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] latest_sync
    #   The status of the latest sync returned for a specified repository
    #   and branch.
    #   @return [Types::RepositorySyncAttempt]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/GetRepositorySyncStatusOutput AWS API Documentation
    #
    class GetRepositorySyncStatusOutput < Struct.new(
      :latest_sync)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_name
    #   The name of the Amazon Web Services resource for the sync status
    #   with the Git repository.
    #   @return [String]
    #
    # @!attribute [rw] sync_type
    #   The sync type for the sync status with the Git repository.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/GetResourceSyncStatusInput AWS API Documentation
    #
    class GetResourceSyncStatusInput < Struct.new(
      :resource_name,
      :sync_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] desired_state
    #   The desired state of the Amazon Web Services resource for the sync
    #   status with the Git repository.
    #   @return [Types::Revision]
    #
    # @!attribute [rw] latest_successful_sync
    #   The latest successful sync for the sync status with the Git
    #   repository.
    #   @return [Types::ResourceSyncAttempt]
    #
    # @!attribute [rw] latest_sync
    #   The latest sync for the sync status with the Git repository, whether
    #   successful or not.
    #   @return [Types::ResourceSyncAttempt]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/GetResourceSyncStatusOutput AWS API Documentation
    #
    class GetResourceSyncStatusOutput < Struct.new(
      :desired_state,
      :latest_successful_sync,
      :latest_sync)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sync_type
    #   The sync type for the sync blocker summary.
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   The name of the Amazon Web Services resource currently blocked from
    #   automatically being synced from a Git repository.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/GetSyncBlockerSummaryInput AWS API Documentation
    #
    class GetSyncBlockerSummaryInput < Struct.new(
      :sync_type,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sync_blocker_summary
    #   The list of sync blockers for a specified resource.
    #   @return [Types::SyncBlockerSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/GetSyncBlockerSummaryOutput AWS API Documentation
    #
    class GetSyncBlockerSummaryOutput < Struct.new(
      :sync_blocker_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sync_type
    #   The sync type for the sync configuration for which you want to
    #   retrieve information.
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   The name of the Amazon Web Services resource for the sync
    #   configuration for which you want to retrieve information.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/GetSyncConfigurationInput AWS API Documentation
    #
    class GetSyncConfigurationInput < Struct.new(
      :sync_type,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sync_configuration
    #   The details about the sync configuration for which you want to
    #   retrieve information.
    #   @return [Types::SyncConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/GetSyncConfigurationOutput AWS API Documentation
    #
    class GetSyncConfigurationOutput < Struct.new(
      :sync_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # A resource that represents the infrastructure where a third-party
    # provider is installed. The host is used when you create connections to
    # an installed third-party provider type, such as GitHub Enterprise
    # Server. You create one host for all connections to that provider.
    #
    # <note markdown="1"> A host created through the CLI or the SDK is in `PENDING` status by
    # default. You can make its status `AVAILABLE` by setting up the host
    # in the console.
    #
    #  </note>
    #
    # @!attribute [rw] name
    #   The name of the host.
    #   @return [String]
    #
    # @!attribute [rw] host_arn
    #   The Amazon Resource Name (ARN) of the host.
    #   @return [String]
    #
    # @!attribute [rw] provider_type
    #   The name of the installed provider to be associated with your
    #   connection. The host resource represents the infrastructure where
    #   your provider type is installed. The valid provider type is GitHub
    #   Enterprise Server.
    #   @return [String]
    #
    # @!attribute [rw] provider_endpoint
    #   The endpoint of the infrastructure where your provider type is
    #   installed.
    #   @return [String]
    #
    # @!attribute [rw] vpc_configuration
    #   The VPC configuration provisioned for the host.
    #   @return [Types::VpcConfiguration]
    #
    # @!attribute [rw] status
    #   The status of the host, such as PENDING, AVAILABLE,
    #   VPC\_CONFIG\_DELETING, VPC\_CONFIG\_INITIALIZING, and
    #   VPC\_CONFIG\_FAILED\_INITIALIZATION.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The status description for the host.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/Host AWS API Documentation
    #
    class Host < Struct.new(
      :name,
      :host_arn,
      :provider_type,
      :provider_endpoint,
      :vpc_configuration,
      :status,
      :status_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Received an internal server exception. Try again later.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input is not valid. Verify that the action is typed correctly.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/InvalidInputException AWS API Documentation
    #
    class InvalidInputException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exceeded the maximum limit for connections.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] provider_type_filter
    #   Filters the list of connections to those associated with a specified
    #   provider, such as Bitbucket.
    #   @return [String]
    #
    # @!attribute [rw] host_arn_filter
    #   Filters the list of connections to those associated with a specified
    #   host.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token that was returned from the previous `ListConnections`
    #   call, which can be used to return the next set of connections in the
    #   list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/ListConnectionsInput AWS API Documentation
    #
    class ListConnectionsInput < Struct.new(
      :provider_type_filter,
      :host_arn_filter,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connections
    #   A list of connections and the details for each connection, such as
    #   status, owner, and provider type.
    #   @return [Array<Types::Connection>]
    #
    # @!attribute [rw] next_token
    #   A token that can be used in the next `ListConnections` call. To view
    #   all items in the list, continue to call this operation with each
    #   subsequent token until no more `nextToken` values are returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/ListConnectionsOutput AWS API Documentation
    #
    class ListConnectionsOutput < Struct.new(
      :connections,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token that was returned from the previous `ListHosts` call,
    #   which can be used to return the next set of hosts in the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/ListHostsInput AWS API Documentation
    #
    class ListHostsInput < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] hosts
    #   A list of hosts and the details for each host, such as status,
    #   endpoint, and provider type.
    #   @return [Array<Types::Host>]
    #
    # @!attribute [rw] next_token
    #   A token that can be used in the next `ListHosts` call. To view all
    #   items in the list, continue to call this operation with each
    #   subsequent token until no more `nextToken` values are returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/ListHostsOutput AWS API Documentation
    #
    class ListHostsOutput < Struct.new(
      :hosts,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   A non-zero, non-negative integer used to limit the number of
    #   returned results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   An enumeration token that, when provided in a request, returns the
    #   next batch of the results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/ListRepositoryLinksInput AWS API Documentation
    #
    class ListRepositoryLinksInput < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] repository_links
    #   Lists the repository links called by the list repository links
    #   operation.
    #   @return [Array<Types::RepositoryLinkInfo>]
    #
    # @!attribute [rw] next_token
    #   An enumeration token that allows the operation to batch the results
    #   of the operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/ListRepositoryLinksOutput AWS API Documentation
    #
    class ListRepositoryLinksOutput < Struct.new(
      :repository_links,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] repository_link_id
    #   The ID of the repository link for the sync definition for which you
    #   want to retrieve information.
    #   @return [String]
    #
    # @!attribute [rw] sync_type
    #   The sync type of the repository link for the the sync definition for
    #   which you want to retrieve information.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/ListRepositorySyncDefinitionsInput AWS API Documentation
    #
    class ListRepositorySyncDefinitionsInput < Struct.new(
      :repository_link_id,
      :sync_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] repository_sync_definitions
    #   The list of repository sync definitions returned by the request. A
    #   `RepositorySyncDefinition` is a mapping from a repository branch to
    #   all the Amazon Web Services resources that are being synced from
    #   that branch.
    #   @return [Array<Types::RepositorySyncDefinition>]
    #
    # @!attribute [rw] next_token
    #   An enumeration token that, when provided in a request, returns the
    #   next batch of the results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/ListRepositorySyncDefinitionsOutput AWS API Documentation
    #
    class ListRepositorySyncDefinitionsOutput < Struct.new(
      :repository_sync_definitions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   A non-zero, non-negative integer used to limit the number of
    #   returned results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   An enumeration token that allows the operation to batch the results
    #   of the operation.
    #   @return [String]
    #
    # @!attribute [rw] repository_link_id
    #   The ID of the repository link for the requested list of sync
    #   configurations.
    #   @return [String]
    #
    # @!attribute [rw] sync_type
    #   The sync type for the requested list of sync configurations.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/ListSyncConfigurationsInput AWS API Documentation
    #
    class ListSyncConfigurationsInput < Struct.new(
      :max_results,
      :next_token,
      :repository_link_id,
      :sync_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sync_configurations
    #   The list of repository sync definitions returned by the request.
    #   @return [Array<Types::SyncConfiguration>]
    #
    # @!attribute [rw] next_token
    #   An enumeration token that allows the operation to batch the next
    #   results of the operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/ListSyncConfigurationsOutput AWS API Documentation
    #
    class ListSyncConfigurationsOutput < Struct.new(
      :sync_configurations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource for which you want to
    #   get information about tags, if any.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/ListTagsForResourceInput AWS API Documentation
    #
    class ListTagsForResourceInput < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A list of tag key and value pairs associated with the specified
    #   resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/ListTagsForResourceOutput AWS API Documentation
    #
    class ListTagsForResourceOutput < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the repository link resource, such as the repository
    # link ARN, the associated connection ARN, encryption key ARN, and owner
    # ID.
    #
    # @!attribute [rw] connection_arn
    #   The Amazon Resource Name (ARN) of the connection associated with the
    #   repository link.
    #   @return [String]
    #
    # @!attribute [rw] encryption_key_arn
    #   The Amazon Resource Name (ARN) of the encryption key for the
    #   repository associated with the repository link.
    #   @return [String]
    #
    # @!attribute [rw] owner_id
    #   The owner ID for the repository associated with the repository link,
    #   such as the owner ID in GitHub.
    #   @return [String]
    #
    # @!attribute [rw] provider_type
    #   The provider type for the connection, such as GitHub, associated
    #   with the repository link.
    #   @return [String]
    #
    # @!attribute [rw] repository_link_arn
    #   The Amazon Resource Name (ARN) of the repository link.
    #   @return [String]
    #
    # @!attribute [rw] repository_link_id
    #   The ID of the repository link.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository associated with the repository link.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/RepositoryLinkInfo AWS API Documentation
    #
    class RepositoryLinkInfo < Struct.new(
      :connection_arn,
      :encryption_key_arn,
      :owner_id,
      :provider_type,
      :repository_link_arn,
      :repository_link_id,
      :repository_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a repository sync attempt for a repository with a
    # sync configuration.
    #
    # @!attribute [rw] started_at
    #   The start time of a specific sync attempt.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of a specific sync attempt. The following are valid
    #   statuses:
    #
    #   * INITIATED - A repository sync attempt has been created and will
    #     begin soon.
    #
    #   * IN\_PROGRESS - A repository sync attempt has started and work is
    #     being done to reconcile the branch.
    #
    #   * SUCCEEDED - The repository sync attempt has completed
    #     successfully.
    #
    #   * FAILED - The repository sync attempt has failed.
    #
    #   * QUEUED - The repository sync attempt didn't execute and was
    #     queued.
    #   @return [String]
    #
    # @!attribute [rw] events
    #   The events associated with a specific sync attempt.
    #   @return [Array<Types::RepositorySyncEvent>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/RepositorySyncAttempt AWS API Documentation
    #
    class RepositorySyncAttempt < Struct.new(
      :started_at,
      :status,
      :events)
      SENSITIVE = []
      include Aws::Structure
    end

    # The definition for a repository with a sync configuration.
    #
    # @!attribute [rw] branch
    #   The branch specified for a repository sync definition.
    #   @return [String]
    #
    # @!attribute [rw] directory
    #   The configuration file for a repository sync definition. This value
    #   comes from creating or updating the `config-file` field of a
    #   `sync-configuration`.
    #   @return [String]
    #
    # @!attribute [rw] parent
    #   The parent resource specified for a repository sync definition.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The target resource specified for a repository sync definition. In
    #   some cases, such as CFN\_STACK\_SYNC, the parent and target resource
    #   are the same.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/RepositorySyncDefinition AWS API Documentation
    #
    class RepositorySyncDefinition < Struct.new(
      :branch,
      :directory,
      :parent,
      :target)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a repository sync event.
    #
    # @!attribute [rw] event
    #   A description of a repository sync event.
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   The ID for a repository sync event.
    #   @return [String]
    #
    # @!attribute [rw] time
    #   The time that a repository sync event occurred.
    #   @return [Time]
    #
    # @!attribute [rw] type
    #   The event type for a repository sync event.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/RepositorySyncEvent AWS API Documentation
    #
    class RepositorySyncEvent < Struct.new(
      :event,
      :external_id,
      :time,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Unable to create resource. Resource already exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/ResourceAlreadyExistsException AWS API Documentation
    #
    class ResourceAlreadyExistsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Resource not found. Verify the connection resource ARN and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a resource sync attempt.
    #
    # @!attribute [rw] events
    #   The events related to a resource sync attempt.
    #   @return [Array<Types::ResourceSyncEvent>]
    #
    # @!attribute [rw] initial_revision
    #   The current state of the resource as defined in the resource's
    #   `config-file` in the linked repository.
    #   @return [Types::Revision]
    #
    # @!attribute [rw] started_at
    #   The start time for a resource sync attempt.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status for a resource sync attempt. The follow are valid
    #   statuses:
    #
    #   * SYNC-INITIATED - A resource sync attempt has been created and will
    #     begin soon.
    #
    #   * SYNCING - Syncing has started and work is being done to reconcile
    #     state.
    #
    #   * SYNCED - Syncing has completed successfully.
    #
    #   * SYNC\_FAILED - A resource sync attempt has failed.
    #   @return [String]
    #
    # @!attribute [rw] target_revision
    #   The desired state of the resource as defined in the resource's
    #   `config-file` in the linked repository. Git sync attempts to update
    #   the resource to this state.
    #   @return [Types::Revision]
    #
    # @!attribute [rw] target
    #   The name of the Amazon Web Services resource that is attempted to be
    #   synchronized.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/ResourceSyncAttempt AWS API Documentation
    #
    class ResourceSyncAttempt < Struct.new(
      :events,
      :initial_revision,
      :started_at,
      :status,
      :target_revision,
      :target)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a resource sync event for the resource associated
    # with a sync configuration.
    #
    # @!attribute [rw] event
    #   The event for a resource sync event.
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   The ID for a resource sync event.
    #   @return [String]
    #
    # @!attribute [rw] time
    #   The time that a resource sync event occurred.
    #   @return [Time]
    #
    # @!attribute [rw] type
    #   The type of resource sync event.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/ResourceSyncEvent AWS API Documentation
    #
    class ResourceSyncEvent < Struct.new(
      :event,
      :external_id,
      :time,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Resource not found. Verify the ARN for the host resource and try
    # again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/ResourceUnavailableException AWS API Documentation
    #
    class ResourceUnavailableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Retrying the latest commit failed. Try again later.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/RetryLatestCommitFailedException AWS API Documentation
    #
    class RetryLatestCommitFailedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the revision for a specific sync event, such as the
    # branch, owner ID, and name of the repository.
    #
    # @!attribute [rw] branch
    #   The branch name for a specific revision.
    #   @return [String]
    #
    # @!attribute [rw] directory
    #   The directory, if any, for a specific revision.
    #   @return [String]
    #
    # @!attribute [rw] owner_id
    #   The owner ID for a specific revision, such as the GitHub owner ID
    #   for a GitHub repository.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The repository name for a specific revision.
    #   @return [String]
    #
    # @!attribute [rw] provider_type
    #   The provider type for a revision, such as GitHub.
    #   @return [String]
    #
    # @!attribute [rw] sha
    #   The SHA, such as the commit ID, for a specific revision.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/Revision AWS API Documentation
    #
    class Revision < Struct.new(
      :branch,
      :directory,
      :owner_id,
      :repository_name,
      :provider_type,
      :sha)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a blocker for a sync event.
    #
    # @!attribute [rw] id
    #   The ID for a specific sync blocker.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The sync blocker type.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status for a specific sync blocker.
    #   @return [String]
    #
    # @!attribute [rw] created_reason
    #   The provided reason for a specific sync blocker.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The creation time for a specific sync blocker.
    #   @return [Time]
    #
    # @!attribute [rw] contexts
    #   The contexts for a specific sync blocker.
    #   @return [Array<Types::SyncBlockerContext>]
    #
    # @!attribute [rw] resolved_reason
    #   The resolved reason for a specific sync blocker.
    #   @return [String]
    #
    # @!attribute [rw] resolved_at
    #   The time that a specific sync blocker was resolved.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/SyncBlocker AWS API Documentation
    #
    class SyncBlocker < Struct.new(
      :id,
      :type,
      :status,
      :created_reason,
      :created_at,
      :contexts,
      :resolved_reason,
      :resolved_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The context for a specific sync blocker.
    #
    # @!attribute [rw] key
    #   The key provided for a context key-value pair for a specific sync
    #   blocker.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value provided for a context key-value pair for a specific sync
    #   blocker.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/SyncBlockerContext AWS API Documentation
    #
    class SyncBlockerContext < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Unable to continue. The sync blocker does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/SyncBlockerDoesNotExistException AWS API Documentation
    #
    class SyncBlockerDoesNotExistException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary for sync blockers.
    #
    # @!attribute [rw] resource_name
    #   The resource name for sync blocker summary.
    #   @return [String]
    #
    # @!attribute [rw] parent_resource_name
    #   The parent resource name for a sync blocker summary.
    #   @return [String]
    #
    # @!attribute [rw] latest_blockers
    #   The latest events for a sync blocker summary.
    #   @return [Array<Types::SyncBlocker>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/SyncBlockerSummary AWS API Documentation
    #
    class SyncBlockerSummary < Struct.new(
      :resource_name,
      :parent_resource_name,
      :latest_blockers)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information, such as repository, branch, provider, and resource names
    # for a specific sync configuration.
    #
    # @!attribute [rw] branch
    #   The branch associated with a specific sync configuration.
    #   @return [String]
    #
    # @!attribute [rw] config_file
    #   The file path to the configuration file associated with a specific
    #   sync configuration. The path should point to an actual file in the
    #   sync configurations linked repository.
    #   @return [String]
    #
    # @!attribute [rw] owner_id
    #   The owner ID for the repository associated with a specific sync
    #   configuration, such as the owner ID in GitHub.
    #   @return [String]
    #
    # @!attribute [rw] provider_type
    #   The connection provider type associated with a specific sync
    #   configuration, such as GitHub.
    #   @return [String]
    #
    # @!attribute [rw] repository_link_id
    #   The ID of the repository link associated with a specific sync
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository associated with a specific sync
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   The name of the connection resource associated with a specific sync
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role associated with a
    #   specific sync configuration.
    #   @return [String]
    #
    # @!attribute [rw] sync_type
    #   The type of sync for a specific sync configuration.
    #   @return [String]
    #
    # @!attribute [rw] publish_deployment_status
    #   Whether to enable or disable publishing of deployment status to
    #   source providers.
    #   @return [String]
    #
    # @!attribute [rw] trigger_resource_update_on
    #   When to trigger Git sync to begin the stack update.
    #   @return [String]
    #
    # @!attribute [rw] pull_request_comment
    #   A toggle that specifies whether to enable or disable pull request
    #   comments for the sync configuration to be created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/SyncConfiguration AWS API Documentation
    #
    class SyncConfiguration < Struct.new(
      :branch,
      :config_file,
      :owner_id,
      :provider_type,
      :repository_link_id,
      :repository_name,
      :resource_name,
      :role_arn,
      :sync_type,
      :publish_deployment_status,
      :trigger_resource_update_on,
      :pull_request_comment)
      SENSITIVE = []
      include Aws::Structure
    end

    # Unable to continue. The sync blocker still exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/SyncConfigurationStillExistsException AWS API Documentation
    #
    class SyncConfigurationStillExistsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A tag is a key-value pair that is used to manage the resource.
    #
    # This tag is available for use by Amazon Web Services services that
    # support tags.
    #
    # @!attribute [rw] key
    #   The tag's key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The tag's value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to which you want to
    #   add or update tags.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags you want to modify or add to the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/TagResourceInput AWS API Documentation
    #
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/TagResourceOutput AWS API Documentation
    #
    class TagResourceOutput < Aws::EmptyStructure; end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation is not supported. Check the connection status and try
    # again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/UnsupportedOperationException AWS API Documentation
    #
    class UnsupportedOperationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified provider type is not supported for connections.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/UnsupportedProviderTypeException AWS API Documentation
    #
    class UnsupportedProviderTypeException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to remove tags from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The list of keys for the tags to be removed from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/UntagResourceInput AWS API Documentation
    #
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/UntagResourceOutput AWS API Documentation
    #
    class UntagResourceOutput < Aws::EmptyStructure; end

    # @!attribute [rw] host_arn
    #   The Amazon Resource Name (ARN) of the host to be updated.
    #   @return [String]
    #
    # @!attribute [rw] provider_endpoint
    #   The URL or endpoint of the host to be updated.
    #   @return [String]
    #
    # @!attribute [rw] vpc_configuration
    #   The VPC configuration of the host to be updated. A VPC must be
    #   configured and the infrastructure to be represented by the host must
    #   already be connected to the VPC.
    #   @return [Types::VpcConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/UpdateHostInput AWS API Documentation
    #
    class UpdateHostInput < Struct.new(
      :host_arn,
      :provider_endpoint,
      :vpc_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/UpdateHostOutput AWS API Documentation
    #
    class UpdateHostOutput < Aws::EmptyStructure; end

    # The update is out of sync. Try syncing again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/UpdateOutOfSyncException AWS API Documentation
    #
    class UpdateOutOfSyncException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connection_arn
    #   The Amazon Resource Name (ARN) of the connection for the repository
    #   link to be updated. The updated connection ARN must have the same
    #   providerType (such as GitHub) as the original connection ARN for the
    #   repo link.
    #   @return [String]
    #
    # @!attribute [rw] encryption_key_arn
    #   The Amazon Resource Name (ARN) of the encryption key for the
    #   repository link to be updated.
    #   @return [String]
    #
    # @!attribute [rw] repository_link_id
    #   The ID of the repository link to be updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/UpdateRepositoryLinkInput AWS API Documentation
    #
    class UpdateRepositoryLinkInput < Struct.new(
      :connection_arn,
      :encryption_key_arn,
      :repository_link_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] repository_link_info
    #   Information about the repository link to be updated.
    #   @return [Types::RepositoryLinkInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/UpdateRepositoryLinkOutput AWS API Documentation
    #
    class UpdateRepositoryLinkOutput < Struct.new(
      :repository_link_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the sync blocker to be updated.
    #   @return [String]
    #
    # @!attribute [rw] sync_type
    #   The sync type of the sync blocker to be updated.
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   The name of the resource for the sync blocker to be updated.
    #   @return [String]
    #
    # @!attribute [rw] resolved_reason
    #   The reason for resolving the sync blocker.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/UpdateSyncBlockerInput AWS API Documentation
    #
    class UpdateSyncBlockerInput < Struct.new(
      :id,
      :sync_type,
      :resource_name,
      :resolved_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_name
    #   The resource name for the sync blocker.
    #   @return [String]
    #
    # @!attribute [rw] parent_resource_name
    #   The parent resource name for the sync blocker.
    #   @return [String]
    #
    # @!attribute [rw] sync_blocker
    #   Information about the sync blocker to be updated.
    #   @return [Types::SyncBlocker]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/UpdateSyncBlockerOutput AWS API Documentation
    #
    class UpdateSyncBlockerOutput < Struct.new(
      :resource_name,
      :parent_resource_name,
      :sync_blocker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] branch
    #   The branch for the sync configuration to be updated.
    #   @return [String]
    #
    # @!attribute [rw] config_file
    #   The configuration file for the sync configuration to be updated.
    #   @return [String]
    #
    # @!attribute [rw] repository_link_id
    #   The ID of the repository link for the sync configuration to be
    #   updated.
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   The name of the Amazon Web Services resource for the sync
    #   configuration to be updated.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role for the sync configuration to be updated.
    #   @return [String]
    #
    # @!attribute [rw] sync_type
    #   The sync type for the sync configuration to be updated.
    #   @return [String]
    #
    # @!attribute [rw] publish_deployment_status
    #   Whether to enable or disable publishing of deployment status to
    #   source providers.
    #   @return [String]
    #
    # @!attribute [rw] trigger_resource_update_on
    #   When to trigger Git sync to begin the stack update.
    #   @return [String]
    #
    # @!attribute [rw] pull_request_comment
    #   TA toggle that specifies whether to enable or disable pull request
    #   comments for the sync configuration to be updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/UpdateSyncConfigurationInput AWS API Documentation
    #
    class UpdateSyncConfigurationInput < Struct.new(
      :branch,
      :config_file,
      :repository_link_id,
      :resource_name,
      :role_arn,
      :sync_type,
      :publish_deployment_status,
      :trigger_resource_update_on,
      :pull_request_comment)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sync_configuration
    #   The information returned for the sync configuration to be updated.
    #   @return [Types::SyncConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/UpdateSyncConfigurationOutput AWS API Documentation
    #
    class UpdateSyncConfigurationOutput < Struct.new(
      :sync_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The VPC configuration provisioned for the host.
    #
    # @!attribute [rw] vpc_id
    #   The ID of the Amazon VPC connected to the infrastructure where your
    #   provider type is installed.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The ID of the subnet or subnets associated with the Amazon VPC
    #   connected to the infrastructure where your provider type is
    #   installed.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   The ID of the security group or security groups associated with the
    #   Amazon VPC connected to the infrastructure where your provider type
    #   is installed.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tls_certificate
    #   The value of the Transport Layer Security (TLS) certificate
    #   associated with the infrastructure where your provider type is
    #   installed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01/VpcConfiguration AWS API Documentation
    #
    class VpcConfiguration < Struct.new(
      :vpc_id,
      :subnet_ids,
      :security_group_ids,
      :tls_certificate)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

