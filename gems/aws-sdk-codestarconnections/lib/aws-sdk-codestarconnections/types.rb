# frozen_string_literal: true

# This is generated code!

module Aws::CodeStarconnections
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module BlockerStatus
      ACTIVE = 'ACTIVE'
      RESOLVED = 'RESOLVED'
    end

    module BlockerType
      AUTOMATED = 'AUTOMATED'
    end

    # <p>Exception thrown as a result of concurrent modification to an application. For example, two individuals attempting to edit the same application at the same time. </p>
    # @!attribute message
    #   @return [String]
    class ConcurrentModificationException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The conditional check failed. Try again later.</p>
    # @!attribute message
    #   @return [String]
    class ConditionalCheckFailedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Two conflicting operations have been made on the same resource.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A resource that is used to connect third-party source providers with services like CodePipeline.</p>
    #          <p>Note: A connection created through CloudFormation, the CLI, or the SDK is in `PENDING` status by default. You can make its status `AVAILABLE` by updating the 
    #       connection in the console.</p>
    # @!attribute connection_name
    #   <p>The name of the connection. Connection names must be unique in an Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute connection_arn
    #   <p>The Amazon Resource Name (ARN) of the connection. The ARN is used as the connection
    #         reference when the connection is shared between Amazon Web Services.</p>
    #            <note>
    #               <p>The ARN is never reused if the connection is deleted.</p>
    #            </note>
    #   @return [String]
    # @!attribute provider_type
    #   <p>The name of the external provider where your third-party code repository is
    #         configured.</p>
    #   @return [String]
    # @!attribute owner_account_id
    #   <p>The identifier of the external provider where your third-party code repository is configured.
    #         For Bitbucket, this is the account ID of the owner of the Bitbucket repository.</p>
    #   @return [String]
    # @!attribute connection_status
    #   <p>The current status of the connection. </p>
    #   @return [String]
    # @!attribute host_arn
    #   <p>The Amazon Resource Name (ARN) of the host associated with the connection.</p>
    #   @return [String]
    class Connection < Struct.new(
      :connection_name,
      :connection_arn,
      :provider_type,
      :owner_account_id,
      :connection_status,
      :host_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ConnectionStatus
      PENDING = 'PENDING'
      AVAILABLE = 'AVAILABLE'
      ERROR = 'ERROR'
    end

    # @!attribute provider_type
    #   <p>The name of the external provider where your third-party code repository is
    #         configured.</p>
    #   @return [String]
    # @!attribute connection_name
    #   <p>The name of the connection to be created.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The key-value pair to use when tagging the resource.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute host_arn
    #   <p>The Amazon Resource Name (ARN) of the host associated with the connection to be created.</p>
    #   @return [String]
    class CreateConnectionInput < Struct.new(
      :provider_type,
      :connection_name,
      :tags,
      :host_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute connection_arn
    #   <p>The Amazon Resource Name (ARN) of the connection to be created. The ARN is used as the
    #         connection reference when the connection is shared between Amazon Web Services services.</p>
    #            <note>
    #               <p>The ARN is never reused if the connection is deleted.</p>
    #            </note>
    #   @return [String]
    # @!attribute tags
    #   <p>Specifies the tags applied to the resource.</p>
    #   @return [Array<Types::Tag>]
    class CreateConnectionOutput < Struct.new(
      :connection_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the host to be created.</p>
    #   @return [String]
    # @!attribute provider_type
    #   <p>The name of the installed provider to be associated with your connection. The host
    #         resource represents the infrastructure where your provider type is installed. The valid
    #         provider type is GitHub Enterprise Server.</p>
    #   @return [String]
    # @!attribute provider_endpoint
    #   <p>The endpoint of the infrastructure to be represented by the host after it is
    #         created.</p>
    #   @return [String]
    # @!attribute vpc_configuration
    #   <p>The VPC configuration to be provisioned for the host. A VPC must be configured and the
    #         infrastructure to be represented by the host must already be connected to the VPC.</p>
    #   @return [Types::VpcConfiguration]
    # @!attribute tags
    #   <p>Tags for the host to be created.</p>
    #   @return [Array<Types::Tag>]
    class CreateHostInput < Struct.new(
      :name,
      :provider_type,
      :provider_endpoint,
      :vpc_configuration,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute host_arn
    #   <p>The Amazon Resource Name (ARN) of the host to be created.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags for the created host.</p>
    #   @return [Array<Types::Tag>]
    class CreateHostOutput < Struct.new(
      :host_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute connection_arn
    #   <p>The Amazon Resource Name (ARN) of the connection to be associated with the repository link.</p>
    #   @return [String]
    # @!attribute owner_id
    #   <p>The owner ID for the repository associated with a specific sync configuration, such as
    #         the owner ID in GitHub.</p>
    #   @return [String]
    # @!attribute repository_name
    #   <p>The name of the repository to be associated with the repository link.</p>
    #   @return [String]
    # @!attribute encryption_key_arn
    #   <p>The Amazon Resource Name (ARN) encryption key for the repository to be associated with the repository link.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags for the repository to be associated with the repository link.</p>
    #   @return [Array<Types::Tag>]
    class CreateRepositoryLinkInput < Struct.new(
      :connection_arn,
      :owner_id,
      :repository_name,
      :encryption_key_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute repository_link_info
    #   <p>The returned information about the created repository link.</p>
    #   @return [Types::RepositoryLinkInfo]
    class CreateRepositoryLinkOutput < Struct.new(
      :repository_link_info,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute branch
    #   <p>The branch in the repository from which changes will be synced.</p>
    #   @return [String]
    # @!attribute config_file
    #   <p>The file name of the configuration file that manages syncing between the connection and the repository. This configuration file is stored in the repository.</p>
    #   @return [String]
    # @!attribute repository_link_id
    #   <p>The ID of the repository link created for the connection. A repository link allows Git
    #         sync to monitor and sync changes to files in a specified Git repository.</p>
    #   @return [String]
    # @!attribute resource_name
    #   <p>The name of the Amazon Web Services resource (for example, a CloudFormation stack in the
    #         case of CFN_STACK_SYNC) that will be synchronized from the linked repository.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that grants permission for Amazon Web Services to use Git sync to
    #         update a given Amazon Web Services resource on your behalf.</p>
    #   @return [String]
    # @!attribute sync_type
    #   <p>The type of sync configuration.</p>
    #   @return [String]
    # @!attribute publish_deployment_status
    #   <p>Whether to enable or disable publishing of deployment status to source providers.</p>
    #   @return [String]
    # @!attribute trigger_resource_update_on
    #   <p>When to trigger Git sync to begin the stack update.</p>
    #   @return [String]
    class CreateSyncConfigurationInput < Struct.new(
      :branch,
      :config_file,
      :repository_link_id,
      :resource_name,
      :role_arn,
      :sync_type,
      :publish_deployment_status,
      :trigger_resource_update_on,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute sync_configuration
    #   <p>The created sync configuration for the connection. A sync configuration allows Amazon Web Services to sync content from a Git repository to update a specified Amazon Web Services
    #         resource. </p>
    #   @return [Types::SyncConfiguration]
    class CreateSyncConfigurationOutput < Struct.new(
      :sync_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute connection_arn
    #   <p>The Amazon Resource Name (ARN) of the connection to be deleted.</p>
    #            <note>
    #               <p>The ARN is never reused if the connection is deleted.</p>
    #            </note>
    #   @return [String]
    class DeleteConnectionInput < Struct.new(
      :connection_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteConnectionOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute host_arn
    #   <p>The Amazon Resource Name (ARN) of the host to be deleted.</p>
    #   @return [String]
    class DeleteHostInput < Struct.new(
      :host_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteHostOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute repository_link_id
    #   <p>The ID of the repository link to be deleted.</p>
    #   @return [String]
    class DeleteRepositoryLinkInput < Struct.new(
      :repository_link_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteRepositoryLinkOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute sync_type
    #   <p>The type of sync configuration to be deleted.</p>
    #   @return [String]
    # @!attribute resource_name
    #   <p>The name of the Amazon Web Services resource associated with the sync configuration to be
    #         deleted.</p>
    #   @return [String]
    class DeleteSyncConfigurationInput < Struct.new(
      :sync_type,
      :resource_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteSyncConfigurationOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute connection_arn
    #   <p>The Amazon Resource Name (ARN) of a connection.</p>
    #   @return [String]
    class GetConnectionInput < Struct.new(
      :connection_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute connection
    #   <p>The connection details, such as status, owner, and provider type.</p>
    #   @return [Types::Connection]
    class GetConnectionOutput < Struct.new(
      :connection,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute host_arn
    #   <p>The Amazon Resource Name (ARN) of the requested host.</p>
    #   @return [String]
    class GetHostInput < Struct.new(
      :host_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the requested host.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the requested host.</p>
    #   @return [String]
    # @!attribute provider_type
    #   <p>The provider type of the requested host, such as GitHub Enterprise Server.</p>
    #   @return [String]
    # @!attribute provider_endpoint
    #   <p>The endpoint of the infrastructure represented by the requested host.</p>
    #   @return [String]
    # @!attribute vpc_configuration
    #   <p>The VPC configuration of the requested host.</p>
    #   @return [Types::VpcConfiguration]
    class GetHostOutput < Struct.new(
      :name,
      :status,
      :provider_type,
      :provider_endpoint,
      :vpc_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute repository_link_id
    #   <p>The ID of the repository link to get.</p>
    #   @return [String]
    class GetRepositoryLinkInput < Struct.new(
      :repository_link_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute repository_link_info
    #   <p>The information returned for a specified repository link.</p>
    #   @return [Types::RepositoryLinkInfo]
    class GetRepositoryLinkOutput < Struct.new(
      :repository_link_info,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute branch
    #   <p>The branch of the repository link for the requested repository sync status.</p>
    #   @return [String]
    # @!attribute repository_link_id
    #   <p>The repository link ID for the requested repository sync status.</p>
    #   @return [String]
    # @!attribute sync_type
    #   <p>The sync type of the requested sync status.</p>
    #   @return [String]
    class GetRepositorySyncStatusInput < Struct.new(
      :branch,
      :repository_link_id,
      :sync_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute latest_sync
    #   <p>The status of the latest sync returned for a specified repository and branch.</p>
    #   @return [Types::RepositorySyncAttempt]
    class GetRepositorySyncStatusOutput < Struct.new(
      :latest_sync,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_name
    #   <p>The name of the Amazon Web Services resource for the sync status with the Git
    #         repository.</p>
    #   @return [String]
    # @!attribute sync_type
    #   <p>The sync type for the sync status with the Git repository.</p>
    #   @return [String]
    class GetResourceSyncStatusInput < Struct.new(
      :resource_name,
      :sync_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute desired_state
    #   <p>The desired state of the Amazon Web Services resource for the sync status with the Git
    #         repository.</p>
    #   @return [Types::Revision]
    # @!attribute latest_successful_sync
    #   <p>The latest successful sync for the sync status with the Git repository.</p>
    #   @return [Types::ResourceSyncAttempt]
    # @!attribute latest_sync
    #   <p>The latest sync for the sync status with the Git repository, whether successful or not.</p>
    #   @return [Types::ResourceSyncAttempt]
    class GetResourceSyncStatusOutput < Struct.new(
      :desired_state,
      :latest_successful_sync,
      :latest_sync,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute sync_type
    #   <p>The sync type for the sync blocker summary.</p>
    #   @return [String]
    # @!attribute resource_name
    #   <p>The name of the Amazon Web Services resource currently blocked from automatically being synced from a Git repository.</p>
    #   @return [String]
    class GetSyncBlockerSummaryInput < Struct.new(
      :sync_type,
      :resource_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute sync_blocker_summary
    #   <p>The list of sync blockers for a specified resource.</p>
    #   @return [Types::SyncBlockerSummary]
    class GetSyncBlockerSummaryOutput < Struct.new(
      :sync_blocker_summary,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute sync_type
    #   <p>The sync type for the sync configuration for which you want to retrieve information.</p>
    #   @return [String]
    # @!attribute resource_name
    #   <p>The name of the Amazon Web Services resource for the sync configuration for which you
    #         want to retrieve information.</p>
    #   @return [String]
    class GetSyncConfigurationInput < Struct.new(
      :sync_type,
      :resource_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute sync_configuration
    #   <p>The details about the sync configuration for which you want to retrieve information.</p>
    #   @return [Types::SyncConfiguration]
    class GetSyncConfigurationOutput < Struct.new(
      :sync_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A resource that represents the infrastructure where a third-party provider is installed.
    #       The host is used when you create connections to an installed third-party provider type, such
    #       as GitHub Enterprise Server. You create one host for all connections to that provider.</p>
    #          <note>
    #             <p>A host created through the CLI or the SDK is in `PENDING` status by
    #         default. You can make its status `AVAILABLE` by setting up the host in the console.</p>
    #          </note>
    # @!attribute name
    #   <p>The name of the host.</p>
    #   @return [String]
    # @!attribute host_arn
    #   <p>The Amazon Resource Name (ARN) of the host.</p>
    #   @return [String]
    # @!attribute provider_type
    #   <p>The name of the installed provider to be associated with your connection. The host
    #         resource represents the infrastructure where your provider type is installed. The valid
    #         provider type is GitHub Enterprise Server.</p>
    #   @return [String]
    # @!attribute provider_endpoint
    #   <p>The endpoint of the infrastructure where your provider type is installed.</p>
    #   @return [String]
    # @!attribute vpc_configuration
    #   <p>The VPC configuration provisioned for the host.</p>
    #   @return [Types::VpcConfiguration]
    # @!attribute status
    #   <p>The status of the host, such as PENDING, AVAILABLE, VPC_CONFIG_DELETING, VPC_CONFIG_INITIALIZING, and VPC_CONFIG_FAILED_INITIALIZATION.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>The status description for the host.</p>
    #   @return [String]
    class Host < Struct.new(
      :name,
      :host_arn,
      :provider_type,
      :provider_endpoint,
      :vpc_configuration,
      :status,
      :status_message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Received an internal server exception. Try again later.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The input is not valid. Verify that the action is typed correctly.</p>
    # @!attribute message
    #   @return [String]
    class InvalidInputException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Exceeded the maximum limit for connections.</p>
    # @!attribute message
    #   @return [String]
    class LimitExceededException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute provider_type_filter
    #   <p>Filters the list of connections to those associated with a specified provider, such as
    #         Bitbucket.</p>
    #   @return [String]
    # @!attribute host_arn_filter
    #   <p>Filters the list of connections to those associated with a specified host.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. To retrieve the remaining
    #         results, make another call with the returned <code>nextToken</code> value.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token that was returned from the previous <code>ListConnections</code> call, which
    #         can be used to return the next set of connections in the list.</p>
    #   @return [String]
    class ListConnectionsInput < Struct.new(
      :provider_type_filter,
      :host_arn_filter,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute connections
    #   <p>A list of connections and the details for each connection, such as status, owner, and
    #         provider type.</p>
    #   @return [Array<Types::Connection>]
    # @!attribute next_token
    #   <p>A token that can be used in the next <code>ListConnections</code> call. To view all
    #         items in the list, continue to call this operation with each subsequent token until no more
    #         <code>nextToken</code> values are returned.</p>
    #   @return [String]
    class ListConnectionsOutput < Struct.new(
      :connections,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. To retrieve the remaining
    #         results, make another call with the returned <code>nextToken</code> value.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token that was returned from the previous <code>ListHosts</code> call, which can be
    #         used to return the next set of hosts in the list.</p>
    #   @return [String]
    class ListHostsInput < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute hosts
    #   <p>A list of hosts and the details for each host, such as status, endpoint, and provider
    #         type.</p>
    #   @return [Array<Types::Host>]
    # @!attribute next_token
    #   <p>A token that can be used in the next <code>ListHosts</code> call. To view all items in the
    #         list, continue to call this operation with each subsequent token until no more
    #         <code>nextToken</code> values are returned.</p>
    #   @return [String]
    class ListHostsOutput < Struct.new(
      :hosts,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>
    #   A non-zero, non-negative integer used to limit the number of returned results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>
    #   An enumeration token that, when provided in a request, returns the next batch of the results.</p>
    #   @return [String]
    class ListRepositoryLinksInput < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute repository_links
    #   <p>Lists the repository links called by the list repository links operation.</p>
    #   @return [Array<Types::RepositoryLinkInfo>]
    # @!attribute next_token
    #   <p>An enumeration token that allows the operation to batch the results of the operation. </p>
    #   @return [String]
    class ListRepositoryLinksOutput < Struct.new(
      :repository_links,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute repository_link_id
    #   <p>The ID of the repository link for the sync definition for which you want to retrieve information.</p>
    #   @return [String]
    # @!attribute sync_type
    #   <p>The sync type of the repository link for the the sync definition for which you want to retrieve information.</p>
    #   @return [String]
    class ListRepositorySyncDefinitionsInput < Struct.new(
      :repository_link_id,
      :sync_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute repository_sync_definitions
    #   <p>The list of repository sync definitions returned by the request. A
    #           <code>RepositorySyncDefinition</code> is a mapping from a repository branch to all the
    #           Amazon Web Services resources that are being synced from that branch.</p>
    #   @return [Array<Types::RepositorySyncDefinition>]
    # @!attribute next_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the
    #         results.</p>
    #   @return [String]
    class ListRepositorySyncDefinitionsOutput < Struct.new(
      :repository_sync_definitions,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>A non-zero, non-negative integer used to limit the number of returned results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>An enumeration token that allows the operation to batch the results of the operation.</p>
    #   @return [String]
    # @!attribute repository_link_id
    #   <p>The ID of the repository link for the requested list of sync configurations.</p>
    #   @return [String]
    # @!attribute sync_type
    #   <p>The sync type for the requested list of sync configurations.</p>
    #   @return [String]
    class ListSyncConfigurationsInput < Struct.new(
      :max_results,
      :next_token,
      :repository_link_id,
      :sync_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute sync_configurations
    #   <p>The list of repository sync definitions returned by the request.</p>
    #   @return [Array<Types::SyncConfiguration>]
    # @!attribute next_token
    #   <p>An enumeration token that allows the operation to batch the next results of the operation.</p>
    #   @return [String]
    class ListSyncConfigurationsOutput < Struct.new(
      :sync_configurations,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which you want to get information about tags, if any.</p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>A list of tag key and value pairs associated with the specified resource.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceOutput < Struct.new(
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ProviderType
      BITBUCKET = 'Bitbucket'
      GITHUB = 'GitHub'
      GITHUB_ENTERPRISE_SERVER = 'GitHubEnterpriseServer'
      GITLAB = 'GitLab'
      GITLAB_SELF_MANAGED = 'GitLabSelfManaged'
    end

    module PublishDeploymentStatus
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    # <p>Information about the repository link resource, such as the repository link ARN, the associated connection ARN, encryption key ARN, and owner ID.</p>
    # @!attribute connection_arn
    #   <p>The Amazon Resource Name (ARN) of the connection associated with the repository link.</p>
    #   @return [String]
    # @!attribute encryption_key_arn
    #   <p>The Amazon Resource Name (ARN) of the encryption key for the repository associated with the repository link.</p>
    #   @return [String]
    # @!attribute owner_id
    #   <p>The owner ID for the repository associated with the repository link, such as the owner
    #         ID in GitHub.</p>
    #   @return [String]
    # @!attribute provider_type
    #   <p>The provider type for the connection, such as GitHub, associated with the repository link.</p>
    #   @return [String]
    # @!attribute repository_link_arn
    #   <p>The Amazon Resource Name (ARN) of the repository link.</p>
    #   @return [String]
    # @!attribute repository_link_id
    #   <p>The ID of the repository link.</p>
    #   @return [String]
    # @!attribute repository_name
    #   <p>The name of the repository associated with the repository link.</p>
    #   @return [String]
    class RepositoryLinkInfo < Struct.new(
      :connection_arn,
      :encryption_key_arn,
      :owner_id,
      :provider_type,
      :repository_link_arn,
      :repository_link_id,
      :repository_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about a repository sync attempt for a repository with a sync configuration.</p>
    # @!attribute started_at
    #   <p>The start time of a specific sync attempt.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of a specific sync attempt. The following are valid statuses:</p>
    #            <ul>
    #               <li>
    #                  <p>INITIATED - A repository sync attempt has been created and will begin soon.</p>
    #               </li>
    #               <li>
    #                  <p>IN_PROGRESS - A repository sync attempt has started and work is being done to
    #             reconcile the branch.</p>
    #               </li>
    #               <li>
    #                  <p>SUCCEEDED - The repository sync attempt has completed successfully.</p>
    #               </li>
    #               <li>
    #                  <p>FAILED - The repository sync attempt has failed.</p>
    #               </li>
    #               <li>
    #                  <p>QUEUED - The repository sync attempt didn't execute and was queued.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute events
    #   <p>The events associated with a specific sync attempt.</p>
    #   @return [Array<Types::RepositorySyncEvent>]
    class RepositorySyncAttempt < Struct.new(
      :started_at,
      :status,
      :events,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The definition for a repository with a sync configuration.</p>
    # @!attribute branch
    #   <p>The branch specified for a repository sync definition.</p>
    #   @return [String]
    # @!attribute directory
    #   <p>The configuration file for a repository sync definition. This value comes from creating
    #         or updating the <code>config-file</code> field of a <code>sync-configuration</code>.</p>
    #   @return [String]
    # @!attribute parent
    #   <p>The parent resource specified for a repository sync definition.</p>
    #   @return [String]
    # @!attribute target
    #   <p>The target resource specified for a repository sync definition. In some cases, such as CFN_STACK_SYNC, the parent and target resource are the same.</p>
    #   @return [String]
    class RepositorySyncDefinition < Struct.new(
      :branch,
      :directory,
      :parent,
      :target,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about a repository sync event.</p>
    # @!attribute event
    #   <p>A description of a repository sync event.</p>
    #   @return [String]
    # @!attribute external_id
    #   <p>The ID for a repository sync event.</p>
    #   @return [String]
    # @!attribute time
    #   <p>The time that a repository sync event occurred.</p>
    #   @return [Time]
    # @!attribute type
    #   <p>The event type for a repository sync event.</p>
    #   @return [String]
    class RepositorySyncEvent < Struct.new(
      :event,
      :external_id,
      :time,
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module RepositorySyncStatus
      FAILED = 'FAILED'
      INITIATED = 'INITIATED'
      IN_PROGRESS = 'IN_PROGRESS'
      SUCCEEDED = 'SUCCEEDED'
      QUEUED = 'QUEUED'
    end

    # <p>Unable to create resource. Resource already exists.</p>
    # @!attribute message
    #   @return [String]
    class ResourceAlreadyExistsException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Resource not found. Verify the connection resource ARN and try again.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about a resource sync attempt.</p>
    # @!attribute events
    #   <p>The events related to a resource sync attempt.</p>
    #   @return [Array<Types::ResourceSyncEvent>]
    # @!attribute initial_revision
    #   <p>The current state of the resource as defined in the resource's <code>config-file</code>
    #         in the linked repository.</p>
    #   @return [Types::Revision]
    # @!attribute started_at
    #   <p>The start time for a resource sync attempt.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status for a resource sync attempt. The follow are valid statuses:</p>
    #            <ul>
    #               <li>
    #                  <p>SYNC-INITIATED - A resource sync attempt has been created and will begin soon.</p>
    #               </li>
    #               <li>
    #                  <p>SYNCING - Syncing has started and work is being done to reconcile state.</p>
    #               </li>
    #               <li>
    #                  <p>SYNCED - Syncing has completed successfully.</p>
    #               </li>
    #               <li>
    #                  <p>SYNC_FAILED - A resource sync attempt has failed.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute target_revision
    #   <p>The desired state of the resource as defined in the resource's <code>config-file</code>
    #         in the linked repository. Git sync attempts to update the resource to this state.</p>
    #   @return [Types::Revision]
    # @!attribute target
    #   <p>The name of the Amazon Web Services resource that is attempted to be synchronized.</p>
    #   @return [String]
    class ResourceSyncAttempt < Struct.new(
      :events,
      :initial_revision,
      :started_at,
      :status,
      :target_revision,
      :target,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about a resource sync event for the resource associated with a sync configuration.</p>
    # @!attribute event
    #   <p>The event for a resource sync event.</p>
    #   @return [String]
    # @!attribute external_id
    #   <p>The ID for a resource sync event.</p>
    #   @return [String]
    # @!attribute time
    #   <p>The time that a resource sync event occurred.</p>
    #   @return [Time]
    # @!attribute type
    #   <p>The type of resource sync event.</p>
    #   @return [String]
    class ResourceSyncEvent < Struct.new(
      :event,
      :external_id,
      :time,
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ResourceSyncStatus
      FAILED = 'FAILED'
      INITIATED = 'INITIATED'
      IN_PROGRESS = 'IN_PROGRESS'
      SUCCEEDED = 'SUCCEEDED'
    end

    # <p>Resource not found. Verify the ARN for the host resource and try again.</p>
    # @!attribute message
    #   @return [String]
    class ResourceUnavailableException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Retrying the latest commit failed. Try again later.</p>
    # @!attribute message
    #   @return [String]
    class RetryLatestCommitFailedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about the revision for a specific sync event, such as the branch, owner ID, and name of the repository.</p>
    # @!attribute branch
    #   <p>The branch name for a specific revision.</p>
    #   @return [String]
    # @!attribute directory
    #   <p>The directory, if any, for a specific revision.</p>
    #   @return [String]
    # @!attribute owner_id
    #   <p>The owner ID for a specific revision, such as the GitHub owner ID for a GitHub repository.</p>
    #   @return [String]
    # @!attribute repository_name
    #   <p>The repository name for a specific revision.</p>
    #   @return [String]
    # @!attribute provider_type
    #   <p>The provider type for a revision, such as GitHub.</p>
    #   @return [String]
    # @!attribute sha
    #   <p>The SHA, such as the commit ID, for a specific revision.</p>
    #   @return [String]
    class Revision < Struct.new(
      :branch,
      :directory,
      :owner_id,
      :repository_name,
      :provider_type,
      :sha,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about a blocker for a sync event.</p>
    # @!attribute id
    #   <p>The ID for a specific sync blocker.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The sync blocker type.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status for a specific sync blocker.</p>
    #   @return [String]
    # @!attribute created_reason
    #   <p>The provided reason for a specific sync blocker.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The creation time for a specific sync blocker.</p>
    #   @return [Time]
    # @!attribute contexts
    #   <p>The contexts for a specific sync blocker.</p>
    #   @return [Array<Types::SyncBlockerContext>]
    # @!attribute resolved_reason
    #   <p>The resolved reason for a specific sync blocker.</p>
    #   @return [String]
    # @!attribute resolved_at
    #   <p>The time that a specific sync blocker was resolved.</p>
    #   @return [Time]
    class SyncBlocker < Struct.new(
      :id,
      :type,
      :status,
      :created_reason,
      :created_at,
      :contexts,
      :resolved_reason,
      :resolved_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The context for a specific sync blocker.</p>
    # @!attribute key
    #   <p>The key provided for a context key-value pair for a specific sync blocker.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value provided for a context key-value pair for a specific sync blocker.</p>
    #   @return [String]
    class SyncBlockerContext < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Unable to continue. The sync blocker does not exist.</p>
    # @!attribute message
    #   @return [String]
    class SyncBlockerDoesNotExistException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A summary for sync blockers.</p>
    # @!attribute resource_name
    #   <p>The resource name for sync blocker summary.</p>
    #   @return [String]
    # @!attribute parent_resource_name
    #   <p>The parent resource name for a sync blocker summary.</p>
    #   @return [String]
    # @!attribute latest_blockers
    #   <p>The latest events for a sync blocker summary.</p>
    #   @return [Array<Types::SyncBlocker>]
    class SyncBlockerSummary < Struct.new(
      :resource_name,
      :parent_resource_name,
      :latest_blockers,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information, such as repository, branch, provider, and resource names for a specific sync configuration.</p>
    # @!attribute branch
    #   <p>The branch associated with a specific sync configuration.</p>
    #   @return [String]
    # @!attribute config_file
    #   <p>The file path to the configuration file associated with a specific sync configuration. The path should point to an actual file in the sync configurations linked repository.</p>
    #   @return [String]
    # @!attribute owner_id
    #   <p>The owner ID for the repository associated with a specific sync configuration, such as
    #         the owner ID in GitHub.</p>
    #   @return [String]
    # @!attribute provider_type
    #   <p>The connection provider type associated with a specific sync configuration, such as
    #         GitHub.</p>
    #   @return [String]
    # @!attribute repository_link_id
    #   <p>The ID of the repository link associated with a specific sync configuration.</p>
    #   @return [String]
    # @!attribute repository_name
    #   <p>The name of the repository associated with a specific sync configuration.</p>
    #   @return [String]
    # @!attribute resource_name
    #   <p>The name of the connection resource associated with a specific sync configuration.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role associated with a specific sync configuration.</p>
    #   @return [String]
    # @!attribute sync_type
    #   <p>The type of sync for a specific sync configuration.</p>
    #   @return [String]
    # @!attribute publish_deployment_status
    #   <p>Whether to enable or disable publishing of deployment status to source providers.</p>
    #   @return [String]
    # @!attribute trigger_resource_update_on
    #   <p>When to trigger Git sync to begin the stack update.</p>
    #   @return [String]
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
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Unable to continue. The sync blocker still exists.</p>
    # @!attribute message
    #   @return [String]
    class SyncConfigurationStillExistsException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module SyncConfigurationType
      CFN_STACK_SYNC = 'CFN_STACK_SYNC'
    end

    # <p>A tag is a key-value pair that is used to manage the resource.</p>
    #          <p>This tag is available for use by Amazon Web Services services that support tags.</p>
    # @!attribute key
    #   <p>The tag's key.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The tag's value.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to which you want to add or update tags.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags you want to modify or add to the resource.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class TagResourceOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module TriggerResourceUpdateOn
      ANY_CHANGE = 'ANY_CHANGE'
      FILE_CHANGE = 'FILE_CHANGE'
    end

    # <p>The operation is not supported. Check the connection status and try again.</p>
    # @!attribute message
    #   @return [String]
    class UnsupportedOperationException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified provider type is not supported for connections.</p>
    # @!attribute message
    #   @return [String]
    class UnsupportedProviderTypeException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to remove tags from.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The list of keys for the tags to be removed from the resource.</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UntagResourceOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute host_arn
    #   <p>The Amazon Resource Name (ARN) of the host to be updated.</p>
    #   @return [String]
    # @!attribute provider_endpoint
    #   <p>The URL or endpoint of the host to be updated.</p>
    #   @return [String]
    # @!attribute vpc_configuration
    #   <p>The VPC configuration of the host to be updated. A VPC must be configured and the
    #         infrastructure to be represented by the host must already be connected to the VPC.</p>
    #   @return [Types::VpcConfiguration]
    class UpdateHostInput < Struct.new(
      :host_arn,
      :provider_endpoint,
      :vpc_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UpdateHostOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The update is out of sync. Try syncing again.</p>
    # @!attribute message
    #   @return [String]
    class UpdateOutOfSyncException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute connection_arn
    #   <p>The Amazon Resource Name (ARN) of the connection for the repository link to be updated. The updated connection ARN must have the same providerType (such as GitHub) as the original connection ARN for the repo link.</p>
    #   @return [String]
    # @!attribute encryption_key_arn
    #   <p>The Amazon Resource Name (ARN) of the encryption key for the repository link to be updated.</p>
    #   @return [String]
    # @!attribute repository_link_id
    #   <p>The ID of the repository link to be updated.</p>
    #   @return [String]
    class UpdateRepositoryLinkInput < Struct.new(
      :connection_arn,
      :encryption_key_arn,
      :repository_link_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute repository_link_info
    #   <p>Information about the repository link to be updated.</p>
    #   @return [Types::RepositoryLinkInfo]
    class UpdateRepositoryLinkOutput < Struct.new(
      :repository_link_info,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the sync blocker to be updated.</p>
    #   @return [String]
    # @!attribute sync_type
    #   <p>The sync type of the sync blocker to be updated.</p>
    #   @return [String]
    # @!attribute resource_name
    #   <p>The name of the resource for the sync blocker to be updated.</p>
    #   @return [String]
    # @!attribute resolved_reason
    #   <p>The reason for resolving the sync blocker.</p>
    #   @return [String]
    class UpdateSyncBlockerInput < Struct.new(
      :id,
      :sync_type,
      :resource_name,
      :resolved_reason,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_name
    #   <p>The resource name for the sync blocker.</p>
    #   @return [String]
    # @!attribute parent_resource_name
    #   <p>The parent resource name for the sync blocker.</p>
    #   @return [String]
    # @!attribute sync_blocker
    #   <p>Information about the sync blocker to be updated.</p>
    #   @return [Types::SyncBlocker]
    class UpdateSyncBlockerOutput < Struct.new(
      :resource_name,
      :parent_resource_name,
      :sync_blocker,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute branch
    #   <p>The branch for the sync configuration to be updated.</p>
    #   @return [String]
    # @!attribute config_file
    #   <p>The configuration file for the sync configuration to be updated.</p>
    #   @return [String]
    # @!attribute repository_link_id
    #   <p>The ID of the repository link for the sync configuration to be updated.</p>
    #   @return [String]
    # @!attribute resource_name
    #   <p>The name of the Amazon Web Services resource for the sync configuration to be
    #         updated.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of the IAM role for the sync configuration to be updated.</p>
    #   @return [String]
    # @!attribute sync_type
    #   <p>The sync type for the sync configuration to be updated.</p>
    #   @return [String]
    # @!attribute publish_deployment_status
    #   <p>Whether to enable or disable publishing of deployment status to source providers.</p>
    #   @return [String]
    # @!attribute trigger_resource_update_on
    #   <p>When to trigger Git sync to begin the stack update.</p>
    #   @return [String]
    class UpdateSyncConfigurationInput < Struct.new(
      :branch,
      :config_file,
      :repository_link_id,
      :resource_name,
      :role_arn,
      :sync_type,
      :publish_deployment_status,
      :trigger_resource_update_on,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute sync_configuration
    #   <p>The information returned for the sync configuration to be updated.</p>
    #   @return [Types::SyncConfiguration]
    class UpdateSyncConfigurationOutput < Struct.new(
      :sync_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The VPC configuration provisioned for the host.</p>
    # @!attribute vpc_id
    #   <p>The ID of the Amazon VPC connected to the infrastructure where your provider type is
    #         installed.</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>The ID of the subnet or subnets associated with the Amazon VPC connected to the
    #         infrastructure where your provider type is installed.</p>
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   <p>The ID of the security group or security groups associated with the Amazon VPC connected
    #         to the infrastructure where your provider type is installed.</p>
    #   @return [Array<String>]
    # @!attribute tls_certificate
    #   <p>The value of the Transport Layer Security (TLS) certificate associated with the infrastructure where your provider type is installed.</p>
    #   @return [String]
    class VpcConfiguration < Struct.new(
      :vpc_id,
      :subnet_ids,
      :security_group_ids,
      :tls_certificate,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

  end
end
