# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MigrationHub
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The state of an application discovered through Migration Hub import,
    # the AWS Agentless Discovery Connector, or the AWS Application
    # Discovery Agent.
    #
    # @!attribute [rw] application_id
    #   The configurationId from the Application Discovery Service that
    #   uniquely identifies an application.
    #   @return [String]
    #
    # @!attribute [rw] application_status
    #   The current status of an application.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   The timestamp when the application status was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/ApplicationState AWS API Documentation
    #
    class ApplicationState < Struct.new(
      :application_id,
      :application_status,
      :last_updated_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass AssociateCreatedArtifactRequest
    #   data as a hash:
    #
    #       {
    #         progress_update_stream: "ProgressUpdateStream", # required
    #         migration_task_name: "MigrationTaskName", # required
    #         created_artifact: { # required
    #           name: "CreatedArtifactName", # required
    #           description: "CreatedArtifactDescription",
    #         },
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] progress_update_stream
    #   The name of the ProgressUpdateStream.
    #   @return [String]
    #
    # @!attribute [rw] migration_task_name
    #   Unique identifier that references the migration task. *Do not store
    #   personal data in this field.*
    #   @return [String]
    #
    # @!attribute [rw] created_artifact
    #   An ARN of the AWS resource related to the migration (e.g., AMI, EC2
    #   instance, RDS instance, etc.)
    #   @return [Types::CreatedArtifact]
    #
    # @!attribute [rw] dry_run
    #   Optional boolean flag to indicate whether any effect should take
    #   place. Used to test if the caller has permission to make the call.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/AssociateCreatedArtifactRequest AWS API Documentation
    #
    class AssociateCreatedArtifactRequest < Struct.new(
      :progress_update_stream,
      :migration_task_name,
      :created_artifact,
      :dry_run)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/AssociateCreatedArtifactResult AWS API Documentation
    #
    class AssociateCreatedArtifactResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass AssociateDiscoveredResourceRequest
    #   data as a hash:
    #
    #       {
    #         progress_update_stream: "ProgressUpdateStream", # required
    #         migration_task_name: "MigrationTaskName", # required
    #         discovered_resource: { # required
    #           configuration_id: "ConfigurationId", # required
    #           description: "DiscoveredResourceDescription",
    #         },
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] progress_update_stream
    #   The name of the ProgressUpdateStream.
    #   @return [String]
    #
    # @!attribute [rw] migration_task_name
    #   The identifier given to the MigrationTask. *Do not store personal
    #   data in this field.*
    #   @return [String]
    #
    # @!attribute [rw] discovered_resource
    #   Object representing a Resource.
    #   @return [Types::DiscoveredResource]
    #
    # @!attribute [rw] dry_run
    #   Optional boolean flag to indicate whether any effect should take
    #   place. Used to test if the caller has permission to make the call.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/AssociateDiscoveredResourceRequest AWS API Documentation
    #
    class AssociateDiscoveredResourceRequest < Struct.new(
      :progress_update_stream,
      :migration_task_name,
      :discovered_resource,
      :dry_run)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/AssociateDiscoveredResourceResult AWS API Documentation
    #
    class AssociateDiscoveredResourceResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass CreateProgressUpdateStreamRequest
    #   data as a hash:
    #
    #       {
    #         progress_update_stream_name: "ProgressUpdateStream", # required
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] progress_update_stream_name
    #   The name of the ProgressUpdateStream. *Do not store personal data in
    #   this field.*
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Optional boolean flag to indicate whether any effect should take
    #   place. Used to test if the caller has permission to make the call.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/CreateProgressUpdateStreamRequest AWS API Documentation
    #
    class CreateProgressUpdateStreamRequest < Struct.new(
      :progress_update_stream_name,
      :dry_run)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/CreateProgressUpdateStreamResult AWS API Documentation
    #
    class CreateProgressUpdateStreamResult < Aws::EmptyStructure; end

    # An ARN of the AWS cloud resource target receiving the migration (e.g.,
    # AMI, EC2 instance, RDS instance, etc.).
    #
    # @note When making an API call, you may pass CreatedArtifact
    #   data as a hash:
    #
    #       {
    #         name: "CreatedArtifactName", # required
    #         description: "CreatedArtifactDescription",
    #       }
    #
    # @!attribute [rw] name
    #   An ARN that uniquely identifies the result of a migration task.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description that can be free-form text to record additional detail
    #   about the artifact for clarity or for later reference.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/CreatedArtifact AWS API Documentation
    #
    class CreatedArtifact < Struct.new(
      :name,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteProgressUpdateStreamRequest
    #   data as a hash:
    #
    #       {
    #         progress_update_stream_name: "ProgressUpdateStream", # required
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] progress_update_stream_name
    #   The name of the ProgressUpdateStream. *Do not store personal data in
    #   this field.*
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Optional boolean flag to indicate whether any effect should take
    #   place. Used to test if the caller has permission to make the call.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/DeleteProgressUpdateStreamRequest AWS API Documentation
    #
    class DeleteProgressUpdateStreamRequest < Struct.new(
      :progress_update_stream_name,
      :dry_run)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/DeleteProgressUpdateStreamResult AWS API Documentation
    #
    class DeleteProgressUpdateStreamResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DescribeApplicationStateRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "ApplicationId", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   The configurationId in Application Discovery Service that uniquely
    #   identifies the grouped application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/DescribeApplicationStateRequest AWS API Documentation
    #
    class DescribeApplicationStateRequest < Struct.new(
      :application_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_status
    #   Status of the application - Not Started, In-Progress, Complete.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   The timestamp when the application status was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/DescribeApplicationStateResult AWS API Documentation
    #
    class DescribeApplicationStateResult < Struct.new(
      :application_status,
      :last_updated_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeMigrationTaskRequest
    #   data as a hash:
    #
    #       {
    #         progress_update_stream: "ProgressUpdateStream", # required
    #         migration_task_name: "MigrationTaskName", # required
    #       }
    #
    # @!attribute [rw] progress_update_stream
    #   The name of the ProgressUpdateStream.
    #   @return [String]
    #
    # @!attribute [rw] migration_task_name
    #   The identifier given to the MigrationTask. *Do not store personal
    #   data in this field.*
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/DescribeMigrationTaskRequest AWS API Documentation
    #
    class DescribeMigrationTaskRequest < Struct.new(
      :progress_update_stream,
      :migration_task_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] migration_task
    #   Object encapsulating information about the migration task.
    #   @return [Types::MigrationTask]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/DescribeMigrationTaskResult AWS API Documentation
    #
    class DescribeMigrationTaskResult < Struct.new(
      :migration_task)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisassociateCreatedArtifactRequest
    #   data as a hash:
    #
    #       {
    #         progress_update_stream: "ProgressUpdateStream", # required
    #         migration_task_name: "MigrationTaskName", # required
    #         created_artifact_name: "CreatedArtifactName", # required
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] progress_update_stream
    #   The name of the ProgressUpdateStream.
    #   @return [String]
    #
    # @!attribute [rw] migration_task_name
    #   Unique identifier that references the migration task to be
    #   disassociated with the artifact. *Do not store personal data in this
    #   field.*
    #   @return [String]
    #
    # @!attribute [rw] created_artifact_name
    #   An ARN of the AWS resource related to the migration (e.g., AMI, EC2
    #   instance, RDS instance, etc.)
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Optional boolean flag to indicate whether any effect should take
    #   place. Used to test if the caller has permission to make the call.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/DisassociateCreatedArtifactRequest AWS API Documentation
    #
    class DisassociateCreatedArtifactRequest < Struct.new(
      :progress_update_stream,
      :migration_task_name,
      :created_artifact_name,
      :dry_run)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/DisassociateCreatedArtifactResult AWS API Documentation
    #
    class DisassociateCreatedArtifactResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DisassociateDiscoveredResourceRequest
    #   data as a hash:
    #
    #       {
    #         progress_update_stream: "ProgressUpdateStream", # required
    #         migration_task_name: "MigrationTaskName", # required
    #         configuration_id: "ConfigurationId", # required
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] progress_update_stream
    #   The name of the ProgressUpdateStream.
    #   @return [String]
    #
    # @!attribute [rw] migration_task_name
    #   The identifier given to the MigrationTask. *Do not store personal
    #   data in this field.*
    #   @return [String]
    #
    # @!attribute [rw] configuration_id
    #   ConfigurationId of the Application Discovery Service resource to be
    #   disassociated.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Optional boolean flag to indicate whether any effect should take
    #   place. Used to test if the caller has permission to make the call.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/DisassociateDiscoveredResourceRequest AWS API Documentation
    #
    class DisassociateDiscoveredResourceRequest < Struct.new(
      :progress_update_stream,
      :migration_task_name,
      :configuration_id,
      :dry_run)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/DisassociateDiscoveredResourceResult AWS API Documentation
    #
    class DisassociateDiscoveredResourceResult < Aws::EmptyStructure; end

    # Object representing the on-premises resource being migrated.
    #
    # @note When making an API call, you may pass DiscoveredResource
    #   data as a hash:
    #
    #       {
    #         configuration_id: "ConfigurationId", # required
    #         description: "DiscoveredResourceDescription",
    #       }
    #
    # @!attribute [rw] configuration_id
    #   The configurationId in Application Discovery Service that uniquely
    #   identifies the on-premise resource.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description that can be free-form text to record additional detail
    #   about the discovered resource for clarity or later reference.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/DiscoveredResource AWS API Documentation
    #
    class DiscoveredResource < Struct.new(
      :configuration_id,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exception raised to indicate a successfully authorized action when the
    # `DryRun` flag is set to "true".
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/DryRunOperation AWS API Documentation
    #
    class DryRunOperation < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The home region is not set. Set the home region to continue.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/HomeRegionNotSetException AWS API Documentation
    #
    class HomeRegionNotSetException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ImportMigrationTaskRequest
    #   data as a hash:
    #
    #       {
    #         progress_update_stream: "ProgressUpdateStream", # required
    #         migration_task_name: "MigrationTaskName", # required
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] progress_update_stream
    #   The name of the ProgressUpdateStream. &gt;
    #   @return [String]
    #
    # @!attribute [rw] migration_task_name
    #   Unique identifier that references the migration task. *Do not store
    #   personal data in this field.*
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Optional boolean flag to indicate whether any effect should take
    #   place. Used to test if the caller has permission to make the call.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/ImportMigrationTaskRequest AWS API Documentation
    #
    class ImportMigrationTaskRequest < Struct.new(
      :progress_update_stream,
      :migration_task_name,
      :dry_run)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/ImportMigrationTaskResult AWS API Documentation
    #
    class ImportMigrationTaskResult < Aws::EmptyStructure; end

    # Exception raised when an internal, configuration, or dependency error
    # is encountered.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/InternalServerError AWS API Documentation
    #
    class InternalServerError < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exception raised when the provided input violates a policy constraint
    # or is entered in the wrong format or data type.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/InvalidInputException AWS API Documentation
    #
    class InvalidInputException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListApplicationStatesRequest
    #   data as a hash:
    #
    #       {
    #         application_ids: ["ApplicationId"],
    #         next_token: "Token",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] application_ids
    #   The configurationIds from the Application Discovery Service that
    #   uniquely identifies your applications.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   If a `NextToken` was returned by a previous call, there are more
    #   results available. To retrieve the next page of results, make the
    #   call again using the returned token in `NextToken`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to be returned per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/ListApplicationStatesRequest AWS API Documentation
    #
    class ListApplicationStatesRequest < Struct.new(
      :application_ids,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_state_list
    #   A list of Applications that exist in Application Discovery Service.
    #   @return [Array<Types::ApplicationState>]
    #
    # @!attribute [rw] next_token
    #   If a `NextToken` was returned by a previous call, there are more
    #   results available. To retrieve the next page of results, make the
    #   call again using the returned token in `NextToken`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/ListApplicationStatesResult AWS API Documentation
    #
    class ListApplicationStatesResult < Struct.new(
      :application_state_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListCreatedArtifactsRequest
    #   data as a hash:
    #
    #       {
    #         progress_update_stream: "ProgressUpdateStream", # required
    #         migration_task_name: "MigrationTaskName", # required
    #         next_token: "Token",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] progress_update_stream
    #   The name of the ProgressUpdateStream.
    #   @return [String]
    #
    # @!attribute [rw] migration_task_name
    #   Unique identifier that references the migration task. *Do not store
    #   personal data in this field.*
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If a `NextToken` was returned by a previous call, there are more
    #   results available. To retrieve the next page of results, make the
    #   call again using the returned token in `NextToken`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to be returned per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/ListCreatedArtifactsRequest AWS API Documentation
    #
    class ListCreatedArtifactsRequest < Struct.new(
      :progress_update_stream,
      :migration_task_name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If there are more created artifacts than the max result, return the
    #   next token to be passed to the next call as a bookmark of where to
    #   start from.
    #   @return [String]
    #
    # @!attribute [rw] created_artifact_list
    #   List of created artifacts up to the maximum number of results
    #   specified in the request.
    #   @return [Array<Types::CreatedArtifact>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/ListCreatedArtifactsResult AWS API Documentation
    #
    class ListCreatedArtifactsResult < Struct.new(
      :next_token,
      :created_artifact_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDiscoveredResourcesRequest
    #   data as a hash:
    #
    #       {
    #         progress_update_stream: "ProgressUpdateStream", # required
    #         migration_task_name: "MigrationTaskName", # required
    #         next_token: "Token",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] progress_update_stream
    #   The name of the ProgressUpdateStream.
    #   @return [String]
    #
    # @!attribute [rw] migration_task_name
    #   The name of the MigrationTask. *Do not store personal data in this
    #   field.*
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If a `NextToken` was returned by a previous call, there are more
    #   results available. To retrieve the next page of results, make the
    #   call again using the returned token in `NextToken`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results returned per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/ListDiscoveredResourcesRequest AWS API Documentation
    #
    class ListDiscoveredResourcesRequest < Struct.new(
      :progress_update_stream,
      :migration_task_name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If there are more discovered resources than the max result, return
    #   the next token to be passed to the next call as a bookmark of where
    #   to start from.
    #   @return [String]
    #
    # @!attribute [rw] discovered_resource_list
    #   Returned list of discovered resources associated with the given
    #   MigrationTask.
    #   @return [Array<Types::DiscoveredResource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/ListDiscoveredResourcesResult AWS API Documentation
    #
    class ListDiscoveredResourcesResult < Struct.new(
      :next_token,
      :discovered_resource_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListMigrationTasksRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "Token",
    #         max_results: 1,
    #         resource_name: "ResourceName",
    #       }
    #
    # @!attribute [rw] next_token
    #   If a `NextToken` was returned by a previous call, there are more
    #   results available. To retrieve the next page of results, make the
    #   call again using the returned token in `NextToken`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Value to specify how many results are returned per page.
    #   @return [Integer]
    #
    # @!attribute [rw] resource_name
    #   Filter migration tasks by discovered resource name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/ListMigrationTasksRequest AWS API Documentation
    #
    class ListMigrationTasksRequest < Struct.new(
      :next_token,
      :max_results,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If there are more migration tasks than the max result, return the
    #   next token to be passed to the next call as a bookmark of where to
    #   start from.
    #   @return [String]
    #
    # @!attribute [rw] migration_task_summary_list
    #   Lists the migration task's summary which includes:
    #   `MigrationTaskName`, `ProgressPercent`, `ProgressUpdateStream`,
    #   `Status`, and the `UpdateDateTime` for each task.
    #   @return [Array<Types::MigrationTaskSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/ListMigrationTasksResult AWS API Documentation
    #
    class ListMigrationTasksResult < Struct.new(
      :next_token,
      :migration_task_summary_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListProgressUpdateStreamsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "Token",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   If a `NextToken` was returned by a previous call, there are more
    #   results available. To retrieve the next page of results, make the
    #   call again using the returned token in `NextToken`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Filter to limit the maximum number of results to list per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/ListProgressUpdateStreamsRequest AWS API Documentation
    #
    class ListProgressUpdateStreamsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] progress_update_stream_summary_list
    #   List of progress update streams up to the max number of results
    #   passed in the input.
    #   @return [Array<Types::ProgressUpdateStreamSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are more streams created than the max result, return the
    #   next token to be passed to the next call as a bookmark of where to
    #   start from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/ListProgressUpdateStreamsResult AWS API Documentation
    #
    class ListProgressUpdateStreamsResult < Struct.new(
      :progress_update_stream_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a migration task in a migration tool.
    #
    # @!attribute [rw] progress_update_stream
    #   A name that identifies the vendor of the migration tool being used.
    #   @return [String]
    #
    # @!attribute [rw] migration_task_name
    #   Unique identifier that references the migration task. *Do not store
    #   personal data in this field.*
    #   @return [String]
    #
    # @!attribute [rw] task
    #   Task object encapsulating task information.
    #   @return [Types::Task]
    #
    # @!attribute [rw] update_date_time
    #   The timestamp when the task was gathered.
    #   @return [Time]
    #
    # @!attribute [rw] resource_attribute_list
    #   Information about the resource that is being migrated. This data
    #   will be used to map the task to a resource in the Application
    #   Discovery Service repository.
    #   @return [Array<Types::ResourceAttribute>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/MigrationTask AWS API Documentation
    #
    class MigrationTask < Struct.new(
      :progress_update_stream,
      :migration_task_name,
      :task,
      :update_date_time,
      :resource_attribute_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # MigrationTaskSummary includes `MigrationTaskName`, `ProgressPercent`,
    # `ProgressUpdateStream`, `Status`, and `UpdateDateTime` for each task.
    #
    # @!attribute [rw] progress_update_stream
    #   An AWS resource used for access control. It should uniquely identify
    #   the migration tool as it is used for all updates made by the tool.
    #   @return [String]
    #
    # @!attribute [rw] migration_task_name
    #   Unique identifier that references the migration task. *Do not store
    #   personal data in this field.*
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Status of the task.
    #   @return [String]
    #
    # @!attribute [rw] progress_percent
    #   Indication of the percentage completion of the task.
    #   @return [Integer]
    #
    # @!attribute [rw] status_detail
    #   Detail information of what is being done within the overall status
    #   state.
    #   @return [String]
    #
    # @!attribute [rw] update_date_time
    #   The timestamp when the task was gathered.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/MigrationTaskSummary AWS API Documentation
    #
    class MigrationTaskSummary < Struct.new(
      :progress_update_stream,
      :migration_task_name,
      :status,
      :progress_percent,
      :status_detail,
      :update_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass NotifyApplicationStateRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "ApplicationId", # required
    #         status: "NOT_STARTED", # required, accepts NOT_STARTED, IN_PROGRESS, COMPLETED
    #         update_date_time: Time.now,
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] application_id
    #   The configurationId in Application Discovery Service that uniquely
    #   identifies the grouped application.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Status of the application - Not Started, In-Progress, Complete.
    #   @return [String]
    #
    # @!attribute [rw] update_date_time
    #   The timestamp when the application state changed.
    #   @return [Time]
    #
    # @!attribute [rw] dry_run
    #   Optional boolean flag to indicate whether any effect should take
    #   place. Used to test if the caller has permission to make the call.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/NotifyApplicationStateRequest AWS API Documentation
    #
    class NotifyApplicationStateRequest < Struct.new(
      :application_id,
      :status,
      :update_date_time,
      :dry_run)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/NotifyApplicationStateResult AWS API Documentation
    #
    class NotifyApplicationStateResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass NotifyMigrationTaskStateRequest
    #   data as a hash:
    #
    #       {
    #         progress_update_stream: "ProgressUpdateStream", # required
    #         migration_task_name: "MigrationTaskName", # required
    #         task: { # required
    #           status: "NOT_STARTED", # required, accepts NOT_STARTED, IN_PROGRESS, FAILED, COMPLETED
    #           status_detail: "StatusDetail",
    #           progress_percent: 1,
    #         },
    #         update_date_time: Time.now, # required
    #         next_update_seconds: 1, # required
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] progress_update_stream
    #   The name of the ProgressUpdateStream.
    #   @return [String]
    #
    # @!attribute [rw] migration_task_name
    #   Unique identifier that references the migration task. *Do not store
    #   personal data in this field.*
    #   @return [String]
    #
    # @!attribute [rw] task
    #   Information about the task's progress and status.
    #   @return [Types::Task]
    #
    # @!attribute [rw] update_date_time
    #   The timestamp when the task was gathered.
    #   @return [Time]
    #
    # @!attribute [rw] next_update_seconds
    #   Number of seconds after the UpdateDateTime within which the
    #   Migration Hub can expect an update. If Migration Hub does not
    #   receive an update within the specified interval, then the migration
    #   task will be considered stale.
    #   @return [Integer]
    #
    # @!attribute [rw] dry_run
    #   Optional boolean flag to indicate whether any effect should take
    #   place. Used to test if the caller has permission to make the call.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/NotifyMigrationTaskStateRequest AWS API Documentation
    #
    class NotifyMigrationTaskStateRequest < Struct.new(
      :progress_update_stream,
      :migration_task_name,
      :task,
      :update_date_time,
      :next_update_seconds,
      :dry_run)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/NotifyMigrationTaskStateResult AWS API Documentation
    #
    class NotifyMigrationTaskStateResult < Aws::EmptyStructure; end

    # Exception raised when there are problems accessing Application
    # Discovery Service (Application Discovery Service); most likely due to
    # a misconfigured policy or the `migrationhub-discovery` role is missing
    # or not configured correctly.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/PolicyErrorException AWS API Documentation
    #
    class PolicyErrorException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary of the AWS resource used for access control that is implicitly
    # linked to your AWS account.
    #
    # @!attribute [rw] progress_update_stream_name
    #   The name of the ProgressUpdateStream. *Do not store personal data in
    #   this field.*
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/ProgressUpdateStreamSummary AWS API Documentation
    #
    class ProgressUpdateStreamSummary < Struct.new(
      :progress_update_stream_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutResourceAttributesRequest
    #   data as a hash:
    #
    #       {
    #         progress_update_stream: "ProgressUpdateStream", # required
    #         migration_task_name: "MigrationTaskName", # required
    #         resource_attribute_list: [ # required
    #           {
    #             type: "IPV4_ADDRESS", # required, accepts IPV4_ADDRESS, IPV6_ADDRESS, MAC_ADDRESS, FQDN, VM_MANAGER_ID, VM_MANAGED_OBJECT_REFERENCE, VM_NAME, VM_PATH, BIOS_ID, MOTHERBOARD_SERIAL_NUMBER
    #             value: "ResourceAttributeValue", # required
    #           },
    #         ],
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] progress_update_stream
    #   The name of the ProgressUpdateStream.
    #   @return [String]
    #
    # @!attribute [rw] migration_task_name
    #   Unique identifier that references the migration task. *Do not store
    #   personal data in this field.*
    #   @return [String]
    #
    # @!attribute [rw] resource_attribute_list
    #   Information about the resource that is being migrated. This data
    #   will be used to map the task to a resource in the Application
    #   Discovery Service repository.
    #
    #   <note markdown="1"> Takes the object array of `ResourceAttribute` where the `Type` field
    #   is reserved for the following values: `IPV4_ADDRESS | IPV6_ADDRESS |
    #   MAC_ADDRESS | FQDN | VM_MANAGER_ID | VM_MANAGED_OBJECT_REFERENCE |
    #   VM_NAME | VM_PATH | BIOS_ID | MOTHERBOARD_SERIAL_NUMBER` where the
    #   identifying value can be a string up to 256 characters.
    #
    #    </note>
    #
    #   * If any "VM" related value is set for a `ResourceAttribute`
    #     object, it is required that `VM_MANAGER_ID`, as a minimum, is
    #     always set. If `VM_MANAGER_ID` is not set, then all "VM" fields
    #     will be discarded and "VM" fields will not be used for matching
    #     the migration task to a server in Application Discovery Service
    #     repository. See the [Example][1] section below for a use case of
    #     specifying "VM" related values.
    #
    #   * If a server you are trying to match has multiple IP or MAC
    #     addresses, you should provide as many as you know in separate
    #     type/value pairs passed to the `ResourceAttributeList` parameter
    #     to maximize the chances of matching.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/migrationhub/latest/ug/API_PutResourceAttributes.html#API_PutResourceAttributes_Examples
    #   @return [Array<Types::ResourceAttribute>]
    #
    # @!attribute [rw] dry_run
    #   Optional boolean flag to indicate whether any effect should take
    #   place. Used to test if the caller has permission to make the call.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/PutResourceAttributesRequest AWS API Documentation
    #
    class PutResourceAttributesRequest < Struct.new(
      :progress_update_stream,
      :migration_task_name,
      :resource_attribute_list,
      :dry_run)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/PutResourceAttributesResult AWS API Documentation
    #
    class PutResourceAttributesResult < Aws::EmptyStructure; end

    # Attribute associated with a resource.
    #
    # Note the corresponding format required per type listed below:
    #
    # IPV4
    #
    # : `x.x.x.x`
    #
    #   *where x is an integer in the range \[0,255\]*
    #
    # IPV6
    #
    # : `y : y : y : y : y : y : y : y`
    #
    #   *where y is a hexadecimal between 0 and FFFF. \[0, FFFF\]*
    #
    # MAC\_ADDRESS
    #
    # : `^([0-9A-Fa-f]\{2\}[:-])\{5\}([0-9A-Fa-f]\{2\})$`
    #
    # FQDN
    #
    # : `^[^<>\{\}\\\\/?,=\\p\{Cntrl\}]\{1,256\}$`
    #
    # @note When making an API call, you may pass ResourceAttribute
    #   data as a hash:
    #
    #       {
    #         type: "IPV4_ADDRESS", # required, accepts IPV4_ADDRESS, IPV6_ADDRESS, MAC_ADDRESS, FQDN, VM_MANAGER_ID, VM_MANAGED_OBJECT_REFERENCE, VM_NAME, VM_PATH, BIOS_ID, MOTHERBOARD_SERIAL_NUMBER
    #         value: "ResourceAttributeValue", # required
    #       }
    #
    # @!attribute [rw] type
    #   Type of resource.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Value of the resource type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/ResourceAttribute AWS API Documentation
    #
    class ResourceAttribute < Struct.new(
      :type,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exception raised when the request references a resource (Application
    # Discovery Service configuration, update stream, migration task, etc.)
    # that does not exist in Application Discovery Service (Application
    # Discovery Service) or in Migration Hub's repository.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exception raised when there is an internal, configuration, or
    # dependency error encountered.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/ServiceUnavailableException AWS API Documentation
    #
    class ServiceUnavailableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Task object encapsulating task information.
    #
    # @note When making an API call, you may pass Task
    #   data as a hash:
    #
    #       {
    #         status: "NOT_STARTED", # required, accepts NOT_STARTED, IN_PROGRESS, FAILED, COMPLETED
    #         status_detail: "StatusDetail",
    #         progress_percent: 1,
    #       }
    #
    # @!attribute [rw] status
    #   Status of the task - Not Started, In-Progress, Complete.
    #   @return [String]
    #
    # @!attribute [rw] status_detail
    #   Details of task status as notified by a migration tool. A tool might
    #   use this field to provide clarifying information about the status
    #   that is unique to that tool or that explains an error state.
    #   @return [String]
    #
    # @!attribute [rw] progress_percent
    #   Indication of the percentage completion of the task.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/Task AWS API Documentation
    #
    class Task < Struct.new(
      :status,
      :status_detail,
      :progress_percent)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   A message that provides information about the exception.
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds the caller should wait before retrying.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exception raised to indicate a request was not authorized when the
    # `DryRun` flag is set to "true".
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/UnauthorizedOperation AWS API Documentation
    #
    class UnauthorizedOperation < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
