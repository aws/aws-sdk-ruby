# frozen_string_literal: true

# This is generated code!

module Aws::MigrationHub
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

    # <p>The state of an application discovered through Migration Hub import, the AWS Agentless
    #          Discovery Connector, or the AWS Application Discovery Agent.</p>
    # @!attribute application_id
    #   <p>The configurationId from the Application Discovery Service that uniquely identifies an
    #            application.</p>
    #   @return [String]
    # @!attribute application_status
    #   <p>The current status of an application.</p>
    #   @return [String]
    # @!attribute last_updated_time
    #   <p>The timestamp when the application status was last updated.</p>
    #   @return [Time]
    class ApplicationState < Struct.new(
      :application_id,
      :application_status,
      :last_updated_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ApplicationStatus
      NOT_STARTED = 'NOT_STARTED'
      IN_PROGRESS = 'IN_PROGRESS'
      COMPLETED = 'COMPLETED'
    end

    # @!attribute progress_update_stream
    #   <p>The name of the ProgressUpdateStream. </p>
    #   @return [String]
    # @!attribute migration_task_name
    #   <p>Unique identifier that references the migration task. <i>Do not store personal
    #               data in this field.</i>
    #            </p>
    #   @return [String]
    # @!attribute created_artifact
    #   <p>An ARN of the AWS resource related to the migration (e.g., AMI, EC2 instance, RDS
    #            instance, etc.) </p>
    #   @return [Types::CreatedArtifact]
    # @!attribute dry_run
    #   <p>Optional boolean flag to indicate whether any effect should take place. Used to test if
    #            the caller has permission to make the call.</p>
    #   @return [Boolean]
    class AssociateCreatedArtifactRequest < Struct.new(
      :progress_update_stream,
      :migration_task_name,
      :created_artifact,
      :dry_run,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class AssociateCreatedArtifactResult < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute progress_update_stream
    #   <p>The name of the ProgressUpdateStream.</p>
    #   @return [String]
    # @!attribute migration_task_name
    #   <p>The identifier given to the MigrationTask. <i>Do not store personal data in this
    #               field.</i>
    #            </p>
    #   @return [String]
    # @!attribute discovered_resource
    #   <p>Object representing a Resource.</p>
    #   @return [Types::DiscoveredResource]
    # @!attribute dry_run
    #   <p>Optional boolean flag to indicate whether any effect should take place. Used to test if
    #            the caller has permission to make the call.</p>
    #   @return [Boolean]
    class AssociateDiscoveredResourceRequest < Struct.new(
      :progress_update_stream,
      :migration_task_name,
      :discovered_resource,
      :dry_run,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class AssociateDiscoveredResourceResult < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute progress_update_stream
    #   <p>The name of the progress-update stream, which is used for access control as well as a
    #            namespace for migration-task names that is implicitly linked to your AWS account. The
    #            progress-update stream must uniquely identify the migration tool as it is used for all
    #            updates made by the tool; however, it does not need to be unique for each AWS account
    #            because it is scoped to the AWS account.</p>
    #   @return [String]
    # @!attribute migration_task_name
    #   <p>A unique identifier that references the migration task. <i>Do not include
    #               sensitive data in this field.</i>
    #            </p>
    #   @return [String]
    # @!attribute source_resource
    #   <p>The source resource that you want to associate.</p>
    #   @return [Types::SourceResource]
    # @!attribute dry_run
    #   <p>This is an optional parameter that you can use to test whether the call will succeed.
    #            Set this parameter to <code>true</code> to verify that you have the permissions that are
    #            required to make the call, and that you have specified the other parameters in the call
    #            correctly.</p>
    #   @return [Boolean]
    class AssociateSourceResourceRequest < Struct.new(
      :progress_update_stream,
      :migration_task_name,
      :source_resource,
      :dry_run,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class AssociateSourceResourceResult < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute progress_update_stream_name
    #   <p>The name of the ProgressUpdateStream. <i>Do not store personal data in this
    #               field.</i>
    #            </p>
    #   @return [String]
    # @!attribute dry_run
    #   <p>Optional boolean flag to indicate whether any effect should take place. Used to test if
    #            the caller has permission to make the call.</p>
    #   @return [Boolean]
    class CreateProgressUpdateStreamRequest < Struct.new(
      :progress_update_stream_name,
      :dry_run,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class CreateProgressUpdateStreamResult < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An ARN of the AWS cloud resource target receiving the migration (e.g., AMI, EC2
    #          instance, RDS instance, etc.).</p>
    # @!attribute name
    #   <p>An ARN that uniquely identifies the result of a migration task.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description that can be free-form text to record additional detail about the artifact
    #            for clarity or for later reference.</p>
    #   @return [String]
    class CreatedArtifact < Struct.new(
      :name,
      :description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute progress_update_stream_name
    #   <p>The name of the ProgressUpdateStream. <i>Do not store personal data in this
    #               field.</i>
    #            </p>
    #   @return [String]
    # @!attribute dry_run
    #   <p>Optional boolean flag to indicate whether any effect should take place. Used to test if
    #            the caller has permission to make the call.</p>
    #   @return [Boolean]
    class DeleteProgressUpdateStreamRequest < Struct.new(
      :progress_update_stream_name,
      :dry_run,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteProgressUpdateStreamResult < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The configurationId in Application Discovery Service that uniquely identifies the
    #            grouped application.</p>
    #   @return [String]
    class DescribeApplicationStateRequest < Struct.new(
      :application_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_status
    #   <p>Status of the application - Not Started, In-Progress, Complete.</p>
    #   @return [String]
    # @!attribute last_updated_time
    #   <p>The timestamp when the application status was last updated.</p>
    #   @return [Time]
    class DescribeApplicationStateResult < Struct.new(
      :application_status,
      :last_updated_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute progress_update_stream
    #   <p>The name of the ProgressUpdateStream. </p>
    #   @return [String]
    # @!attribute migration_task_name
    #   <p>The identifier given to the MigrationTask. <i>Do not store personal data in this
    #               field.</i>
    #            </p>
    #   @return [String]
    class DescribeMigrationTaskRequest < Struct.new(
      :progress_update_stream,
      :migration_task_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute migration_task
    #   <p>Object encapsulating information about the migration task.</p>
    #   @return [Types::MigrationTask]
    class DescribeMigrationTaskResult < Struct.new(
      :migration_task,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute progress_update_stream
    #   <p>The name of the ProgressUpdateStream. </p>
    #   @return [String]
    # @!attribute migration_task_name
    #   <p>Unique identifier that references the migration task to be disassociated with the
    #            artifact. <i>Do not store personal data in this field.</i>
    #            </p>
    #   @return [String]
    # @!attribute created_artifact_name
    #   <p>An ARN of the AWS resource related to the migration (e.g., AMI, EC2 instance, RDS
    #            instance, etc.)</p>
    #   @return [String]
    # @!attribute dry_run
    #   <p>Optional boolean flag to indicate whether any effect should take place. Used to test if
    #            the caller has permission to make the call.</p>
    #   @return [Boolean]
    class DisassociateCreatedArtifactRequest < Struct.new(
      :progress_update_stream,
      :migration_task_name,
      :created_artifact_name,
      :dry_run,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DisassociateCreatedArtifactResult < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute progress_update_stream
    #   <p>The name of the ProgressUpdateStream.</p>
    #   @return [String]
    # @!attribute migration_task_name
    #   <p>The identifier given to the MigrationTask. <i>Do not store personal data in this
    #               field.</i>
    #            </p>
    #   @return [String]
    # @!attribute configuration_id
    #   <p>ConfigurationId of the Application Discovery Service resource to be
    #            disassociated.</p>
    #   @return [String]
    # @!attribute dry_run
    #   <p>Optional boolean flag to indicate whether any effect should take place. Used to test if
    #            the caller has permission to make the call.</p>
    #   @return [Boolean]
    class DisassociateDiscoveredResourceRequest < Struct.new(
      :progress_update_stream,
      :migration_task_name,
      :configuration_id,
      :dry_run,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DisassociateDiscoveredResourceResult < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute progress_update_stream
    #   <p>The name of the progress-update stream, which is used for access control as well as a
    #            namespace for migration-task names that is implicitly linked to your AWS account. The
    #            progress-update stream must uniquely identify the migration tool as it is used for all
    #            updates made by the tool; however, it does not need to be unique for each AWS account
    #            because it is scoped to the AWS account.</p>
    #   @return [String]
    # @!attribute migration_task_name
    #   <p>A unique identifier that references the migration task. <i>Do not include
    #               sensitive data in this field.</i>
    #            </p>
    #   @return [String]
    # @!attribute source_resource_name
    #   <p>The name that was specified for the source resource.</p>
    #   @return [String]
    # @!attribute dry_run
    #   <p>This is an optional parameter that you can use to test whether the call will succeed.
    #            Set this parameter to <code>true</code> to verify that you have the permissions that are
    #            required to make the call, and that you have specified the other parameters in the call
    #            correctly.</p>
    #   @return [Boolean]
    class DisassociateSourceResourceRequest < Struct.new(
      :progress_update_stream,
      :migration_task_name,
      :source_resource_name,
      :dry_run,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DisassociateSourceResourceResult < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Object representing the on-premises resource being migrated.</p>
    # @!attribute configuration_id
    #   <p>The configurationId in Application Discovery Service that uniquely identifies the
    #            on-premise resource.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description that can be free-form text to record additional detail about the
    #            discovered resource for clarity or later reference.</p>
    #   @return [String]
    class DiscoveredResource < Struct.new(
      :configuration_id,
      :description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Exception raised to indicate a successfully authorized action when the
    #             <code>DryRun</code> flag is set to "true".</p>
    # @!attribute message
    #   @return [String]
    class DryRunOperation < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The home region is not set. Set the home region to continue.</p>
    # @!attribute message
    #   @return [String]
    class HomeRegionNotSetException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute progress_update_stream
    #   <p>The name of the ProgressUpdateStream. ></p>
    #   @return [String]
    # @!attribute migration_task_name
    #   <p>Unique identifier that references the migration task. <i>Do not store personal
    #               data in this field.</i>
    #            </p>
    #   @return [String]
    # @!attribute dry_run
    #   <p>Optional boolean flag to indicate whether any effect should take place. Used to test if
    #            the caller has permission to make the call.</p>
    #   @return [Boolean]
    class ImportMigrationTaskRequest < Struct.new(
      :progress_update_stream,
      :migration_task_name,
      :dry_run,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class ImportMigrationTaskResult < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Exception raised when an internal, configuration, or dependency error is
    #          encountered.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerError < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Exception raised when the provided input violates a policy constraint or is entered in
    #          the wrong format or data type.</p>
    # @!attribute message
    #   @return [String]
    class InvalidInputException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_ids
    #   <p>The configurationIds from the Application Discovery Service that uniquely identifies
    #            your applications.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>If a <code>NextToken</code> was returned by a previous call, there are more results
    #            available. To retrieve the next page of results, make the call again using the returned
    #            token in <code>NextToken</code>.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of results to be returned per page.</p>
    #   @return [Integer]
    class ListApplicationStatesRequest < Struct.new(
      :application_ids,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_state_list
    #   <p>A list of Applications that exist in Application Discovery Service.</p>
    #   @return [Array<Types::ApplicationState>]
    # @!attribute next_token
    #   <p>If a <code>NextToken</code> was returned by a previous call, there are more results
    #            available. To retrieve the next page of results, make the call again using the returned
    #            token in <code>NextToken</code>.</p>
    #   @return [String]
    class ListApplicationStatesResult < Struct.new(
      :application_state_list,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute progress_update_stream
    #   <p>The name of the ProgressUpdateStream. </p>
    #   @return [String]
    # @!attribute migration_task_name
    #   <p>Unique identifier that references the migration task. <i>Do not store personal
    #               data in this field.</i>
    #            </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If a <code>NextToken</code> was returned by a previous call, there are more results
    #            available. To retrieve the next page of results, make the call again using the returned
    #            token in <code>NextToken</code>.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of results to be returned per page.</p>
    #   @return [Integer]
    class ListCreatedArtifactsRequest < Struct.new(
      :progress_update_stream,
      :migration_task_name,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If there are more created artifacts than the max result, return the next token to be
    #            passed to the next call as a bookmark of where to start from.</p>
    #   @return [String]
    # @!attribute created_artifact_list
    #   <p>List of created artifacts up to the maximum number of results specified in the
    #            request.</p>
    #   @return [Array<Types::CreatedArtifact>]
    class ListCreatedArtifactsResult < Struct.new(
      :next_token,
      :created_artifact_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute progress_update_stream
    #   <p>The name of the ProgressUpdateStream.</p>
    #   @return [String]
    # @!attribute migration_task_name
    #   <p>The name of the MigrationTask. <i>Do not store personal data in this
    #               field.</i>
    #            </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If a <code>NextToken</code> was returned by a previous call, there are more results
    #            available. To retrieve the next page of results, make the call again using the returned
    #            token in <code>NextToken</code>.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results returned per page.</p>
    #   @return [Integer]
    class ListDiscoveredResourcesRequest < Struct.new(
      :progress_update_stream,
      :migration_task_name,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If there are more discovered resources than the max result, return the next token to be
    #            passed to the next call as a bookmark of where to start from.</p>
    #   @return [String]
    # @!attribute discovered_resource_list
    #   <p>Returned list of discovered resources associated with the given MigrationTask.</p>
    #   @return [Array<Types::DiscoveredResource>]
    class ListDiscoveredResourcesResult < Struct.new(
      :next_token,
      :discovered_resource_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute progress_update_stream
    #   <p>The name of the progress-update stream, which is used for access control as well as a
    #            namespace for migration-task names that is implicitly linked to your AWS account. The
    #            progress-update stream must uniquely identify the migration tool as it is used for all
    #            updates made by the tool; however, it does not need to be unique for each AWS account
    #            because it is scoped to the AWS account.</p>
    #   @return [String]
    # @!attribute migration_task_name
    #   <p>A unique identifier that references the migration task. <i>Do not include
    #               sensitive data in this field.</i>
    #            </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If <code>NextToken</code> was returned by a previous call, there are more results
    #            available. The value of <code>NextToken</code> is a unique pagination token for each page.
    #            To retrieve the next page of results, specify the <code>NextToken</code> value that the
    #            previous call returned. Keep all other arguments unchanged. Each pagination token expires
    #            after 24 hours. Using an expired pagination token will return an HTTP 400 InvalidToken
    #            error.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to include in the response. If more results exist than the
    #            value that you specify here for <code>MaxResults</code>, the response will include a token
    #            that you can use to retrieve the next set of results.</p>
    #   @return [Integer]
    class ListMigrationTaskUpdatesRequest < Struct.new(
      :progress_update_stream,
      :migration_task_name,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If the response includes a <code>NextToken</code> value, that means that there are more
    #            results available. The value of <code>NextToken</code> is a unique pagination token for
    #            each page. To retrieve the next page of results, call this API again and specify this
    #               <code>NextToken</code> value in the request. Keep all other arguments unchanged. Each
    #            pagination token expires after 24 hours. Using an expired pagination token will return an
    #            HTTP 400 InvalidToken error.</p>
    #   @return [String]
    # @!attribute migration_task_update_list
    #   <p>The list of migration-task updates.</p>
    #   @return [Array<Types::MigrationTaskUpdate>]
    class ListMigrationTaskUpdatesResult < Struct.new(
      :next_token,
      :migration_task_update_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If a <code>NextToken</code> was returned by a previous call, there are more results
    #            available. To retrieve the next page of results, make the call again using the returned
    #            token in <code>NextToken</code>.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Value to specify how many results are returned per page.</p>
    #   @return [Integer]
    # @!attribute resource_name
    #   <p>Filter migration tasks by discovered resource name.</p>
    #   @return [String]
    class ListMigrationTasksRequest < Struct.new(
      :next_token,
      :max_results,
      :resource_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If there are more migration tasks than the max result, return the next token to be
    #            passed to the next call as a bookmark of where to start from.</p>
    #   @return [String]
    # @!attribute migration_task_summary_list
    #   <p>Lists the migration task's summary which includes: <code>MigrationTaskName</code>,
    #               <code>ProgressPercent</code>, <code>ProgressUpdateStream</code>, <code>Status</code>,
    #            and the <code>UpdateDateTime</code> for each task.</p>
    #   @return [Array<Types::MigrationTaskSummary>]
    class ListMigrationTasksResult < Struct.new(
      :next_token,
      :migration_task_summary_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If a <code>NextToken</code> was returned by a previous call, there are more results
    #            available. To retrieve the next page of results, make the call again using the returned
    #            token in <code>NextToken</code>.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Filter to limit the maximum number of results to list per page.</p>
    #   @return [Integer]
    class ListProgressUpdateStreamsRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute progress_update_stream_summary_list
    #   <p>List of progress update streams up to the max number of results passed in the
    #            input.</p>
    #   @return [Array<Types::ProgressUpdateStreamSummary>]
    # @!attribute next_token
    #   <p>If there are more streams created than the max result, return the next token to be
    #            passed to the next call as a bookmark of where to start from.</p>
    #   @return [String]
    class ListProgressUpdateStreamsResult < Struct.new(
      :progress_update_stream_summary_list,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute progress_update_stream
    #   <p>The name of the progress-update stream, which is used for access control as well as a
    #            namespace for migration-task names that is implicitly linked to your AWS account. The
    #            progress-update stream must uniquely identify the migration tool as it is used for all
    #            updates made by the tool; however, it does not need to be unique for each AWS account
    #            because it is scoped to the AWS account.</p>
    #   @return [String]
    # @!attribute migration_task_name
    #   <p>A unique identifier that references the migration task. <i>Do not store
    #               confidential data in this field.</i>
    #            </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If <code>NextToken</code> was returned by a previous call, there are more results
    #            available. The value of <code>NextToken</code> is a unique pagination token for each page.
    #            To retrieve the next page of results, specify the <code>NextToken</code> value that the
    #            previous call returned. Keep all other arguments unchanged. Each pagination token expires
    #            after 24 hours. Using an expired pagination token will return an HTTP 400 InvalidToken
    #            error.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to include in the response. If more results exist than the
    #            value that you specify here for <code>MaxResults</code>, the response will include a token
    #            that you can use to retrieve the next set of results.</p>
    #   @return [Integer]
    class ListSourceResourcesRequest < Struct.new(
      :progress_update_stream,
      :migration_task_name,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If the response includes a <code>NextToken</code> value, that means that there are more
    #            results available. The value of <code>NextToken</code> is a unique pagination token for
    #            each page. To retrieve the next page of results, call this API again and specify this
    #               <code>NextToken</code> value in the request. Keep all other arguments unchanged. Each
    #            pagination token expires after 24 hours. Using an expired pagination token will return an
    #            HTTP 400 InvalidToken error.</p>
    #   @return [String]
    # @!attribute source_resource_list
    #   <p>The list of source resources.</p>
    #   @return [Array<Types::SourceResource>]
    class ListSourceResourcesResult < Struct.new(
      :next_token,
      :source_resource_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents a migration task in a migration tool.</p>
    # @!attribute progress_update_stream
    #   <p>A name that identifies the vendor of the migration tool being used.</p>
    #   @return [String]
    # @!attribute migration_task_name
    #   <p>Unique identifier that references the migration task. <i>Do not store personal
    #               data in this field.</i>
    #            </p>
    #   @return [String]
    # @!attribute task
    #   <p>Task object encapsulating task information.</p>
    #   @return [Types::Task]
    # @!attribute update_date_time
    #   <p>The timestamp when the task was gathered.</p>
    #   @return [Time]
    # @!attribute resource_attribute_list
    #   <p>Information about the resource that is being migrated. This data will be used to map the
    #            task to a resource in the Application Discovery Service repository.</p>
    #   @return [Array<Types::ResourceAttribute>]
    class MigrationTask < Struct.new(
      :progress_update_stream,
      :migration_task_name,
      :task,
      :update_date_time,
      :resource_attribute_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>MigrationTaskSummary includes <code>MigrationTaskName</code>,
    #             <code>ProgressPercent</code>, <code>ProgressUpdateStream</code>, <code>Status</code>,
    #          and <code>UpdateDateTime</code> for each task.</p>
    # @!attribute progress_update_stream
    #   <p>An AWS resource used for access control. It should uniquely identify the migration tool
    #            as it is used for all updates made by the tool.</p>
    #   @return [String]
    # @!attribute migration_task_name
    #   <p>Unique identifier that references the migration task. <i>Do not store personal
    #               data in this field.</i>
    #            </p>
    #   @return [String]
    # @!attribute status
    #   <p>Status of the task.</p>
    #   @return [String]
    # @!attribute progress_percent
    #   <p>Indication of the percentage completion of the task.</p>
    #   @return [Integer]
    # @!attribute status_detail
    #   <p>Detail information of what is being done within the overall status state.</p>
    #   @return [String]
    # @!attribute update_date_time
    #   <p>The timestamp when the task was gathered.</p>
    #   @return [Time]
    class MigrationTaskSummary < Struct.new(
      :progress_update_stream,
      :migration_task_name,
      :status,
      :progress_percent,
      :status_detail,
      :update_date_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A migration-task progress update.</p>
    # @!attribute update_date_time
    #   <p>The timestamp for the update.</p>
    #   @return [Time]
    # @!attribute update_type
    #   <p>The type of the update.</p>
    #   @return [String]
    # @!attribute migration_task_state
    #   <p>Task object encapsulating task information.</p>
    #   @return [Types::Task]
    class MigrationTaskUpdate < Struct.new(
      :update_date_time,
      :update_type,
      :migration_task_state,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The configurationId in Application Discovery Service that uniquely identifies the
    #            grouped application.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Status of the application - Not Started, In-Progress, Complete.</p>
    #   @return [String]
    # @!attribute update_date_time
    #   <p>The timestamp when the application state changed.</p>
    #   @return [Time]
    # @!attribute dry_run
    #   <p>Optional boolean flag to indicate whether any effect should take place. Used to test if
    #            the caller has permission to make the call.</p>
    #   @return [Boolean]
    class NotifyApplicationStateRequest < Struct.new(
      :application_id,
      :status,
      :update_date_time,
      :dry_run,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class NotifyApplicationStateResult < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute progress_update_stream
    #   <p>The name of the ProgressUpdateStream. </p>
    #   @return [String]
    # @!attribute migration_task_name
    #   <p>Unique identifier that references the migration task. <i>Do not store personal
    #               data in this field.</i>
    #            </p>
    #   @return [String]
    # @!attribute task
    #   <p>Information about the task's progress and status.</p>
    #   @return [Types::Task]
    # @!attribute update_date_time
    #   <p>The timestamp when the task was gathered.</p>
    #   @return [Time]
    # @!attribute next_update_seconds
    #   <p>Number of seconds after the UpdateDateTime within which the Migration Hub can expect an
    #            update. If Migration Hub does not receive an update within the specified interval, then the
    #            migration task will be considered stale.</p>
    #   @return [Integer]
    # @!attribute dry_run
    #   <p>Optional boolean flag to indicate whether any effect should take place. Used to test if
    #            the caller has permission to make the call.</p>
    #   @return [Boolean]
    class NotifyMigrationTaskStateRequest < Struct.new(
      :progress_update_stream,
      :migration_task_name,
      :task,
      :update_date_time,
      :next_update_seconds,
      :dry_run,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class NotifyMigrationTaskStateResult < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Exception raised when there are problems accessing Application Discovery Service
    #          (Application Discovery Service); most likely due to a misconfigured policy or the
    #             <code>migrationhub-discovery</code> role is missing or not configured correctly.</p>
    # @!attribute message
    #   @return [String]
    class PolicyErrorException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Summary of the AWS resource used for access control that is implicitly linked to your
    #          AWS account.</p>
    # @!attribute progress_update_stream_name
    #   <p>The name of the ProgressUpdateStream. <i>Do not store personal data in this
    #               field.</i>
    #            </p>
    #   @return [String]
    class ProgressUpdateStreamSummary < Struct.new(
      :progress_update_stream_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute progress_update_stream
    #   <p>The name of the ProgressUpdateStream. </p>
    #   @return [String]
    # @!attribute migration_task_name
    #   <p>Unique identifier that references the migration task. <i>Do not store personal
    #               data in this field.</i>
    #            </p>
    #   @return [String]
    # @!attribute resource_attribute_list
    #   <p>Information about the resource that is being migrated. This data will be used to map the
    #            task to a resource in the Application Discovery Service repository.</p>
    #            <note>
    #               <p>Takes the object array of <code>ResourceAttribute</code> where the <code>Type</code>
    #               field is reserved for the following values: <code>IPV4_ADDRESS | IPV6_ADDRESS |
    #                  MAC_ADDRESS | FQDN | VM_MANAGER_ID | VM_MANAGED_OBJECT_REFERENCE | VM_NAME | VM_PATH
    #                  | BIOS_ID | MOTHERBOARD_SERIAL_NUMBER</code> where the identifying value can be a
    #               string up to 256 characters.</p>
    #            </note>
    #            <important>
    #               <ul>
    #                  <li>
    #                     <p>If any "VM" related value is set for a <code>ResourceAttribute</code> object,
    #                     it is required that <code>VM_MANAGER_ID</code>, as a minimum, is always set. If
    #                        <code>VM_MANAGER_ID</code> is not set, then all "VM" fields will be discarded
    #                     and "VM" fields will not be used for matching the migration task to a server in
    #                     Application Discovery Service repository. See the <a href="https://docs.aws.amazon.com/migrationhub/latest/ug/API_PutResourceAttributes.html#API_PutResourceAttributes_Examples">Example</a> section below for a use case of specifying "VM" related
    #                     values.</p>
    #                  </li>
    #                  <li>
    #                     <p> If a server you are trying to match has multiple IP or MAC addresses, you
    #                     should provide as many as you know in separate type/value pairs passed to the
    #                        <code>ResourceAttributeList</code> parameter to maximize the chances of
    #                     matching.</p>
    #                  </li>
    #               </ul>
    #            </important>
    #   @return [Array<Types::ResourceAttribute>]
    # @!attribute dry_run
    #   <p>Optional boolean flag to indicate whether any effect should take place. Used to test if
    #            the caller has permission to make the call.</p>
    #   @return [Boolean]
    class PutResourceAttributesRequest < Struct.new(
      :progress_update_stream,
      :migration_task_name,
      :resource_attribute_list,
      :dry_run,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class PutResourceAttributesResult < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Attribute associated with a resource.</p>
    #          <p>Note the corresponding format required per type listed below:</p>
    #          <dl>
    #             <dt>IPV4</dt>
    #             <dd>
    #                <p>
    #                   <code>x.x.x.x</code>
    #                </p>
    #                <p>
    #                   <i>where x is an integer in the range [0,255]</i>
    #                </p>
    #             </dd>
    #             <dt>IPV6</dt>
    #             <dd>
    #                <p>
    #                   <code>y : y : y : y : y : y : y : y</code>
    #                </p>
    #                <p>
    #                   <i>where y is a hexadecimal between 0 and FFFF. [0,
    #                   FFFF]</i>
    #                </p>
    #             </dd>
    #             <dt>MAC_ADDRESS</dt>
    #             <dd>
    #                <p>
    #                   <code>^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$</code>
    #                </p>
    #             </dd>
    #             <dt>FQDN</dt>
    #             <dd>
    #                <p>
    #                   <code>^[^<>{}\\\\/?,=\\p{Cntrl}]{1,256}$</code>
    #                </p>
    #             </dd>
    #          </dl>
    # @!attribute type
    #   <p>Type of resource.</p>
    #   @return [String]
    # @!attribute value
    #   <p>Value of the resource type.</p>
    #   @return [String]
    class ResourceAttribute < Struct.new(
      :type,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ResourceAttributeType
      IPV4_ADDRESS = 'IPV4_ADDRESS'
      IPV6_ADDRESS = 'IPV6_ADDRESS'
      MAC_ADDRESS = 'MAC_ADDRESS'
      FQDN = 'FQDN'
      VM_MANAGER_ID = 'VM_MANAGER_ID'
      VM_MANAGED_OBJECT_REFERENCE = 'VM_MANAGED_OBJECT_REFERENCE'
      VM_NAME = 'VM_NAME'
      VM_PATH = 'VM_PATH'
      BIOS_ID = 'BIOS_ID'
      MOTHERBOARD_SERIAL_NUMBER = 'MOTHERBOARD_SERIAL_NUMBER'
    end

    # <p>Exception raised when the request references a resource (Application Discovery Service
    #          configuration, update stream, migration task, etc.) that does not exist in Application
    #          Discovery Service (Application Discovery Service) or in Migration Hub's repository.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Exception raised when there is an internal, configuration, or dependency error
    #          encountered.</p>
    # @!attribute message
    #   @return [String]
    class ServiceUnavailableException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A source resource can be a source server, a migration wave, an application, or any other
    #          resource that you track.</p>
    # @!attribute name
    #   <p>This is the name that you want to use to identify the resource. If the resource is an
    #            AWS resource, we recommend that you set this parameter to the ARN of the resource.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description that can be free-form text to record additional detail about the resource
    #            for clarity or later reference.</p>
    #   @return [String]
    # @!attribute status_detail
    #   <p>A free-form description of the status of the resource.</p>
    #   @return [String]
    class SourceResource < Struct.new(
      :name,
      :description,
      :status_detail,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module Status
      NOT_STARTED = 'NOT_STARTED'
      IN_PROGRESS = 'IN_PROGRESS'
      FAILED = 'FAILED'
      COMPLETED = 'COMPLETED'
    end

    # <p>Task object encapsulating task information.</p>
    # @!attribute status
    #   <p>Status of the task - Not Started, In-Progress, Complete.</p>
    #   @return [String]
    # @!attribute status_detail
    #   <p>Details of task status as notified by a migration tool. A tool might use this field to
    #            provide clarifying information about the status that is unique to that tool or that
    #            explains an error state.</p>
    #   @return [String]
    # @!attribute progress_percent
    #   <p>Indication of the percentage completion of the task.</p>
    #   @return [Integer]
    class Task < Struct.new(
      :status,
      :status_detail,
      :progress_percent,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    # @!attribute message
    #   <p>A message that provides information about the exception.</p>
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The number of seconds the caller should wait before retrying.</p>
    #   @return [Integer]
    class ThrottlingException < Struct.new(
      :message,
      :retry_after_seconds,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:retry_after_seconds] = 0 unless options.key?(:retry_after_seconds)
        super
      end
    end

    # <p>Exception raised to indicate a request was not authorized when the <code>DryRun</code>
    #          flag is set to "true".</p>
    # @!attribute message
    #   @return [String]
    class UnauthorizedOperation < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module UpdateType
      MigrationTaskStateUpdated = 'MIGRATION_TASK_STATE_UPDATED'
    end

  end
end
