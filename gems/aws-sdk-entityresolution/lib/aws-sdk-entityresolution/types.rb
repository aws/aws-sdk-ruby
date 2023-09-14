# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EntityResolution
  module Types

    # You do not have sufficient access to perform this action. `HTTP Status
    # Code: 403`
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request could not be processed because of conflict in the current
    # state of the resource. Example: Workflow already exists, Schema
    # already exists, Workflow is currently running, etc. `HTTP Status Code:
    # 400`
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   A description of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] incremental_run_config
    #   An object which defines an incremental run type and has only
    #   `incrementalRunType` as a field.
    #   @return [Types::IncrementalRunConfig]
    #
    # @!attribute [rw] input_source_config
    #   A list of `InputSource` objects, which have the fields
    #   `InputSourceARN` and `SchemaName`.
    #   @return [Array<Types::InputSource>]
    #
    # @!attribute [rw] output_source_config
    #   A list of `OutputSource` objects, each of which contains fields
    #   `OutputS3Path`, `ApplyNormalization`, and `Output`.
    #   @return [Array<Types::OutputSource>]
    #
    # @!attribute [rw] resolution_techniques
    #   An object which defines the `resolutionType` and the
    #   `ruleBasedProperties`.
    #   @return [Types::ResolutionTechniques]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role. Entity Resolution
    #   assumes this role to create resources on your behalf as part of
    #   workflow execution.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] workflow_name
    #   The name of the workflow. There cannot be multiple
    #   `DataIntegrationWorkflows` with the same name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/CreateMatchingWorkflowInput AWS API Documentation
    #
    class CreateMatchingWorkflowInput < Struct.new(
      :description,
      :incremental_run_config,
      :input_source_config,
      :output_source_config,
      :resolution_techniques,
      :role_arn,
      :tags,
      :workflow_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   A description of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] incremental_run_config
    #   An object which defines an incremental run type and has only
    #   `incrementalRunType` as a field.
    #   @return [Types::IncrementalRunConfig]
    #
    # @!attribute [rw] input_source_config
    #   A list of `InputSource` objects, which have the fields
    #   `InputSourceARN` and `SchemaName`.
    #   @return [Array<Types::InputSource>]
    #
    # @!attribute [rw] output_source_config
    #   A list of `OutputSource` objects, each of which contains fields
    #   `OutputS3Path`, `ApplyNormalization`, and `Output`.
    #   @return [Array<Types::OutputSource>]
    #
    # @!attribute [rw] resolution_techniques
    #   An object which defines the `resolutionType` and the
    #   `ruleBasedProperties`.
    #   @return [Types::ResolutionTechniques]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role. Entity Resolution
    #   assumes this role to create resources on your behalf as part of
    #   workflow execution.
    #   @return [String]
    #
    # @!attribute [rw] workflow_arn
    #   The ARN (Amazon Resource Name) that Entity Resolution generated for
    #   the `MatchingWorkflow`.
    #   @return [String]
    #
    # @!attribute [rw] workflow_name
    #   The name of the workflow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/CreateMatchingWorkflowOutput AWS API Documentation
    #
    class CreateMatchingWorkflowOutput < Struct.new(
      :description,
      :incremental_run_config,
      :input_source_config,
      :output_source_config,
      :resolution_techniques,
      :role_arn,
      :workflow_arn,
      :workflow_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   A description of the schema.
    #   @return [String]
    #
    # @!attribute [rw] mapped_input_fields
    #   A list of `MappedInputFields`. Each `MappedInputField` corresponds
    #   to a column the source data table, and contains column name plus
    #   additional information that Entity Resolution uses for matching.
    #   @return [Array<Types::SchemaInputAttribute>]
    #
    # @!attribute [rw] schema_name
    #   The name of the schema. There cannot be multiple `SchemaMappings`
    #   with the same name.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/CreateSchemaMappingInput AWS API Documentation
    #
    class CreateSchemaMappingInput < Struct.new(
      :description,
      :mapped_input_fields,
      :schema_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   A description of the schema.
    #   @return [String]
    #
    # @!attribute [rw] mapped_input_fields
    #   A list of `MappedInputFields`. Each `MappedInputField` corresponds
    #   to a column the source data table, and contains column name plus
    #   additional information that Entity Resolution uses for matching.
    #   @return [Array<Types::SchemaInputAttribute>]
    #
    # @!attribute [rw] schema_arn
    #   The ARN (Amazon Resource Name) that Entity Resolution generated for
    #   the `SchemaMapping`.
    #   @return [String]
    #
    # @!attribute [rw] schema_name
    #   The name of the schema.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/CreateSchemaMappingOutput AWS API Documentation
    #
    class CreateSchemaMappingOutput < Struct.new(
      :description,
      :mapped_input_fields,
      :schema_arn,
      :schema_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_name
    #   The name of the workflow to be retrieved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/DeleteMatchingWorkflowInput AWS API Documentation
    #
    class DeleteMatchingWorkflowInput < Struct.new(
      :workflow_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   A successful operation message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/DeleteMatchingWorkflowOutput AWS API Documentation
    #
    class DeleteMatchingWorkflowOutput < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] schema_name
    #   The name of the schema to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/DeleteSchemaMappingInput AWS API Documentation
    #
    class DeleteSchemaMappingInput < Struct.new(
      :schema_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   A successful operation message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/DeleteSchemaMappingOutput AWS API Documentation
    #
    class DeleteSchemaMappingOutput < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object containing an error message, if there was an error.
    #
    # @!attribute [rw] error_message
    #   The error message from the job, if there is one.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ErrorDetails AWS API Documentation
    #
    class ErrorDetails < Struct.new(
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because it attempted to create resources
    # beyond the current Entity Resolution account limits. The error message
    # describes the limit exceeded. `HTTP Status Code: 402`
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] quota_name
    #   The name of the quota that has been breached.
    #   @return [String]
    #
    # @!attribute [rw] quota_value
    #   The current quota value for the customers.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ExceedsLimitException AWS API Documentation
    #
    class ExceedsLimitException < Struct.new(
      :message,
      :quota_name,
      :quota_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] record
    #   The record to fetch the Match ID for.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] workflow_name
    #   The name of the workflow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/GetMatchIdInput AWS API Documentation
    #
    class GetMatchIdInput < Struct.new(
      :record,
      :workflow_name)
      SENSITIVE = [:record]
      include Aws::Structure
    end

    # @!attribute [rw] match_id
    #   The unique identifiers for this group of match records.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/GetMatchIdOutput AWS API Documentation
    #
    class GetMatchIdOutput < Struct.new(
      :match_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The ID of the job.
    #   @return [String]
    #
    # @!attribute [rw] workflow_name
    #   The name of the workflow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/GetMatchingJobInput AWS API Documentation
    #
    class GetMatchingJobInput < Struct.new(
      :job_id,
      :workflow_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] end_time
    #   The time at which the job has finished.
    #   @return [Time]
    #
    # @!attribute [rw] error_details
    #   An object containing an error message, if there was an error.
    #   @return [Types::ErrorDetails]
    #
    # @!attribute [rw] job_id
    #   The ID of the job.
    #   @return [String]
    #
    # @!attribute [rw] metrics
    #   Metrics associated with the execution, specifically total records
    #   processed, unique IDs generated, and records the execution skipped.
    #   @return [Types::JobMetrics]
    #
    # @!attribute [rw] start_time
    #   The time at which the job was started.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/GetMatchingJobOutput AWS API Documentation
    #
    class GetMatchingJobOutput < Struct.new(
      :end_time,
      :error_details,
      :job_id,
      :metrics,
      :start_time,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_name
    #   The name of the workflow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/GetMatchingWorkflowInput AWS API Documentation
    #
    class GetMatchingWorkflowInput < Struct.new(
      :workflow_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] created_at
    #   The timestamp of when the workflow was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   A description of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] incremental_run_config
    #   An object which defines an incremental run type and has only
    #   `incrementalRunType` as a field.
    #   @return [Types::IncrementalRunConfig]
    #
    # @!attribute [rw] input_source_config
    #   A list of `InputSource` objects, which have the fields
    #   `InputSourceARN` and `SchemaName`.
    #   @return [Array<Types::InputSource>]
    #
    # @!attribute [rw] output_source_config
    #   A list of `OutputSource` objects, each of which contains fields
    #   `OutputS3Path`, `ApplyNormalization`, and `Output`.
    #   @return [Array<Types::OutputSource>]
    #
    # @!attribute [rw] resolution_techniques
    #   An object which defines the `resolutionType` and the
    #   `ruleBasedProperties`.
    #   @return [Types::ResolutionTechniques]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role. Entity Resolution
    #   assumes this role to access resources on your behalf.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the workflow was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] workflow_arn
    #   The ARN (Amazon Resource Name) that Entity Resolution generated for
    #   the `MatchingWorkflow`.
    #   @return [String]
    #
    # @!attribute [rw] workflow_name
    #   The name of the workflow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/GetMatchingWorkflowOutput AWS API Documentation
    #
    class GetMatchingWorkflowOutput < Struct.new(
      :created_at,
      :description,
      :incremental_run_config,
      :input_source_config,
      :output_source_config,
      :resolution_techniques,
      :role_arn,
      :tags,
      :updated_at,
      :workflow_arn,
      :workflow_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] schema_name
    #   The name of the schema to be retrieved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/GetSchemaMappingInput AWS API Documentation
    #
    class GetSchemaMappingInput < Struct.new(
      :schema_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] created_at
    #   The timestamp of when the `SchemaMapping` was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   A description of the schema.
    #   @return [String]
    #
    # @!attribute [rw] mapped_input_fields
    #   A list of `MappedInputFields`. Each `MappedInputField` corresponds
    #   to a column the source data table, and contains column name plus
    #   additional information Venice uses for matching.
    #   @return [Array<Types::SchemaInputAttribute>]
    #
    # @!attribute [rw] schema_arn
    #   The ARN (Amazon Resource Name) that Entity Resolution generated for
    #   the SchemaMapping.
    #   @return [String]
    #
    # @!attribute [rw] schema_name
    #   The name of the schema.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the `SchemaMapping` was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/GetSchemaMappingOutput AWS API Documentation
    #
    class GetSchemaMappingOutput < Struct.new(
      :created_at,
      :description,
      :mapped_input_fields,
      :schema_arn,
      :schema_name,
      :tags,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object which defines an incremental run type and has only
    # `incrementalRunType` as a field.
    #
    # @!attribute [rw] incremental_run_type
    #   The type of incremental run. It takes only one value: `IMMEDIATE`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/IncrementalRunConfig AWS API Documentation
    #
    class IncrementalRunConfig < Struct.new(
      :incremental_run_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object containing `InputSourceARN`, `SchemaName`, and
    # `ApplyNormalization`.
    #
    # @!attribute [rw] apply_normalization
    #   Normalizes the attributes defined in the schema in the input data.
    #   For example, if an attribute has an `AttributeType` of
    #   `PHONE_NUMBER`, and the data in the input table is in a format of
    #   1234567890, Entity Resolution will normalize this field in the
    #   output to (123)-456-7890.
    #   @return [Boolean]
    #
    # @!attribute [rw] input_source_arn
    #   An Glue table ARN for the input source table.
    #   @return [String]
    #
    # @!attribute [rw] schema_name
    #   The name of the schema to be retrieved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/InputSource AWS API Documentation
    #
    class InputSource < Struct.new(
      :apply_normalization,
      :input_source_arn,
      :schema_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception occurs when there is an internal failure in the Entity
    # Resolution service. `HTTP Status Code: 500`
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object containing `InputRecords`, `TotalRecordsProcessed`,
    # `MatchIDs`, and `RecordsNotProcessed`.
    #
    # @!attribute [rw] input_records
    #   The total number of input records.
    #   @return [Integer]
    #
    # @!attribute [rw] match_i_ds
    #   The total number of `matchID`s generated.
    #   @return [Integer]
    #
    # @!attribute [rw] records_not_processed
    #   The total number of records that did not get processed.
    #   @return [Integer]
    #
    # @!attribute [rw] total_records_processed
    #   The total number of records processed.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/JobMetrics AWS API Documentation
    #
    class JobMetrics < Struct.new(
      :input_records,
      :match_i_ds,
      :records_not_processed,
      :total_records_processed)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object containing the `JobId`, `Status`, `StartTime`, and `EndTime`
    # of a job.
    #
    # @!attribute [rw] end_time
    #   The time at which the job has finished.
    #   @return [Time]
    #
    # @!attribute [rw] job_id
    #   The ID of the job.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The time at which the job was started.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/JobSummary AWS API Documentation
    #
    class JobSummary < Struct.new(
      :end_time,
      :job_id,
      :start_time,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of objects returned per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the previous `ListSchemaMappings` API
    #   call.
    #   @return [String]
    #
    # @!attribute [rw] workflow_name
    #   The name of the workflow to be retrieved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ListMatchingJobsInput AWS API Documentation
    #
    class ListMatchingJobsInput < Struct.new(
      :max_results,
      :next_token,
      :workflow_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] jobs
    #   A list of `JobSummary` objects, each of which contain the ID,
    #   status, start time, and end time of a job.
    #   @return [Array<Types::JobSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the previous `ListSchemaMappings` API
    #   call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ListMatchingJobsOutput AWS API Documentation
    #
    class ListMatchingJobsOutput < Struct.new(
      :jobs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of objects returned per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the previous `ListSchemaMappings` API
    #   call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ListMatchingWorkflowsInput AWS API Documentation
    #
    class ListMatchingWorkflowsInput < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token from the previous `ListSchemaMappings` API
    #   call.
    #   @return [String]
    #
    # @!attribute [rw] workflow_summaries
    #   A list of `MatchingWorkflowSummary` objects, each of which contain
    #   the fields `WorkflowName`, `WorkflowArn`, `CreatedAt`, and
    #   `UpdatedAt`.
    #   @return [Array<Types::MatchingWorkflowSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ListMatchingWorkflowsOutput AWS API Documentation
    #
    class ListMatchingWorkflowsOutput < Struct.new(
      :next_token,
      :workflow_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of objects returned per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the previous `ListSchemaMappings` API
    #   call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ListSchemaMappingsInput AWS API Documentation
    #
    class ListSchemaMappingsInput < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token from the previous `ListDomains` API call.
    #   @return [String]
    #
    # @!attribute [rw] schema_list
    #   A list of `SchemaMappingSummary` objects, each of which contain the
    #   fields `SchemaName`, `SchemaArn`, `CreatedAt`, `UpdatedAt`.
    #   @return [Array<Types::SchemaMappingSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ListSchemaMappingsOutput AWS API Documentation
    #
    class ListSchemaMappingsOutput < Struct.new(
      :next_token,
      :schema_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource for which you want to view tags.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ListTagsForResourceInput AWS API Documentation
    #
    class ListTagsForResourceInput < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ListTagsForResourceOutput AWS API Documentation
    #
    class ListTagsForResourceOutput < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of `MatchingWorkflowSummary` objects, each of which contain the
    # fields `WorkflowName`, `WorkflowArn`, `CreatedAt`, `UpdatedAt`.
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the workflow was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the workflow was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] workflow_arn
    #   The ARN (Amazon Resource Name) that Entity Resolution generated for
    #   the `MatchingWorkflow`.
    #   @return [String]
    #
    # @!attribute [rw] workflow_name
    #   The name of the workflow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/MatchingWorkflowSummary AWS API Documentation
    #
    class MatchingWorkflowSummary < Struct.new(
      :created_at,
      :updated_at,
      :workflow_arn,
      :workflow_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of `OutputAttribute` objects, each of which have the fields
    # `Name` and `Hashed`. Each of these objects selects a column to be
    # included in the output table, and whether the values of the column
    # should be hashed.
    #
    # @!attribute [rw] hashed
    #   Enables the ability to hash the column values in the output.
    #   @return [Boolean]
    #
    # @!attribute [rw] name
    #   A name of a column to be written to the output. This must be an
    #   `InputField` name in the schema mapping.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/OutputAttribute AWS API Documentation
    #
    class OutputAttribute < Struct.new(
      :hashed,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of `OutputAttribute` objects, each of which have the fields
    # `Name` and `Hashed`. Each of these objects selects a column to be
    # included in the output table, and whether the values of the column
    # should be hashed.
    #
    # @!attribute [rw] kms_arn
    #   Customer KMS ARN for encryption at rest. If not provided, system
    #   will use an Entity Resolution managed KMS key.
    #   @return [String]
    #
    # @!attribute [rw] apply_normalization
    #   Normalizes the attributes defined in the schema in the input data.
    #   For example, if an attribute has an `AttributeType` of
    #   `PHONE_NUMBER`, and the data in the input table is in a format of
    #   1234567890, Entity Resolution will normalize this field in the
    #   output to (123)-456-7890.
    #   @return [Boolean]
    #
    # @!attribute [rw] output
    #   A list of `OutputAttribute` objects, each of which have the fields
    #   `Name` and `Hashed`. Each of these objects selects a column to be
    #   included in the output table, and whether the values of the column
    #   should be hashed.
    #   @return [Array<Types::OutputAttribute>]
    #
    # @!attribute [rw] output_s3_path
    #   The S3 path to which Entity Resolution will write the output table.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/OutputSource AWS API Documentation
    #
    class OutputSource < Struct.new(
      :kms_arn,
      :apply_normalization,
      :output,
      :output_s3_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object which defines the `resolutionType` and the
    # `ruleBasedProperties`.
    #
    # @!attribute [rw] resolution_type
    #   The type of matching. There are two types of matching:
    #   `RULE_MATCHING` and `ML_MATCHING`.
    #   @return [String]
    #
    # @!attribute [rw] rule_based_properties
    #   An object which defines the list of matching rules to run and has a
    #   field `Rules`, which is a list of rule objects.
    #   @return [Types::RuleBasedProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ResolutionTechniques AWS API Documentation
    #
    class ResolutionTechniques < Struct.new(
      :resolution_type,
      :rule_based_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource could not be found. `HTTP Status Code: 404`
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object containing `RuleName`, and `MatchingKeys`.
    #
    # @!attribute [rw] matching_keys
    #   A list of `MatchingKeys`. The `MatchingKeys` must have been defined
    #   in the `SchemaMapping`. Two records are considered to match
    #   according to this rule if all of the `MatchingKeys` match.
    #   @return [Array<String>]
    #
    # @!attribute [rw] rule_name
    #   A name for the matching rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/Rule AWS API Documentation
    #
    class Rule < Struct.new(
      :matching_keys,
      :rule_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object which defines the list of matching rules to run and has a
    # field `Rules`, which is a list of rule objects.
    #
    # @!attribute [rw] attribute_matching_model
    #   The comparison type. You can either choose `ONE_TO_ONE` or
    #   `MANY_TO_MANY` as the AttributeMatchingModel. When choosing
    #   `MANY_TO_MANY`, the system can match attributes across the sub-types
    #   of an attribute type. For example, if the value of the `Email` field
    #   of Profile A and the value of `BusinessEmail` field of Profile B
    #   matches, the two profiles are matched on the `Email` type. When
    #   choosing `ONE_TO_ONE` ,the system can only match if the sub-types
    #   are exact matches. For example, only when the value of the `Email`
    #   field of Profile A and the value of the `Email` field of Profile B
    #   matches, the two profiles are matched on the `Email` type.
    #   @return [String]
    #
    # @!attribute [rw] rules
    #   A list of `Rule` objects, each of which have fields `RuleName` and
    #   `MatchingKeys`.
    #   @return [Array<Types::Rule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/RuleBasedProperties AWS API Documentation
    #
    class RuleBasedProperties < Struct.new(
      :attribute_matching_model,
      :rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object containing `FieldField`, `Type`, `GroupName`, and
    # `MatchKey`.
    #
    # @!attribute [rw] field_name
    #   A string containing the field name.
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   Instruct Entity Resolution to combine several columns into a unified
    #   column with the identical attribute type. For example, when working
    #   with columns such as first\_name, middle\_name, and last\_name,
    #   assigning them a common `GroupName` will prompt Entity Resolution to
    #   concatenate them into a single value.
    #   @return [String]
    #
    # @!attribute [rw] match_key
    #   A key that allows grouping of multiple input attributes into a
    #   unified matching group. For example, let's consider a scenario
    #   where the source table contains various addresses, such as
    #   business\_address and shipping\_address. By assigning the `MatchKey`
    #   *Address* to both attributes, Entity Resolution will match records
    #   across these fields to create a consolidated matching group. If no
    #   `MatchKey` is specified for a column, it won't be utilized for
    #   matching purposes but will still be included in the output table.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the attribute, selected from a list of values.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/SchemaInputAttribute AWS API Documentation
    #
    class SchemaInputAttribute < Struct.new(
      :field_name,
      :group_name,
      :match_key,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object containing `SchemaName`, `SchemaArn`, `CreatedAt`,
    # and`UpdatedAt`.
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the `SchemaMapping` was created.
    #   @return [Time]
    #
    # @!attribute [rw] schema_arn
    #   The ARN (Amazon Resource Name) that Entity Resolution generated for
    #   the `SchemaMapping`.
    #   @return [String]
    #
    # @!attribute [rw] schema_name
    #   The name of the schema.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the `SchemaMapping` was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/SchemaMappingSummary AWS API Documentation
    #
    class SchemaMappingSummary < Struct.new(
      :created_at,
      :schema_arn,
      :schema_name,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_name
    #   The name of the matching job to be retrieved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/StartMatchingJobInput AWS API Documentation
    #
    class StartMatchingJobInput < Struct.new(
      :workflow_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The ID of the job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/StartMatchingJobOutput AWS API Documentation
    #
    class StartMatchingJobOutput < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource for which you want to view tags.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/TagResourceInput AWS API Documentation
    #
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/TagResourceOutput AWS API Documentation
    #
    class TagResourceOutput < Aws::EmptyStructure; end

    # The request was denied due to request throttling. `HTTP Status Code:
    # 429`
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource for which you want to untag.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The list of tag keys to remove from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/UntagResourceInput AWS API Documentation
    #
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/UntagResourceOutput AWS API Documentation
    #
    class UntagResourceOutput < Aws::EmptyStructure; end

    # @!attribute [rw] description
    #   A description of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] incremental_run_config
    #   An object which defines an incremental run type and has only
    #   `incrementalRunType` as a field.
    #   @return [Types::IncrementalRunConfig]
    #
    # @!attribute [rw] input_source_config
    #   A list of `InputSource` objects, which have the fields
    #   `InputSourceARN` and `SchemaName`.
    #   @return [Array<Types::InputSource>]
    #
    # @!attribute [rw] output_source_config
    #   A list of `OutputSource` objects, each of which contains fields
    #   `OutputS3Path`, `ApplyNormalization`, and `Output`.
    #   @return [Array<Types::OutputSource>]
    #
    # @!attribute [rw] resolution_techniques
    #   An object which defines the `resolutionType` and the
    #   `ruleBasedProperties`.
    #   @return [Types::ResolutionTechniques]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role. Entity Resolution
    #   assumes this role to create resources on your behalf as part of
    #   workflow execution.
    #   @return [String]
    #
    # @!attribute [rw] workflow_name
    #   The name of the workflow to be retrieved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/UpdateMatchingWorkflowInput AWS API Documentation
    #
    class UpdateMatchingWorkflowInput < Struct.new(
      :description,
      :incremental_run_config,
      :input_source_config,
      :output_source_config,
      :resolution_techniques,
      :role_arn,
      :workflow_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   A description of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] incremental_run_config
    #   An object which defines an incremental run type and has only
    #   `incrementalRunType` as a field.
    #   @return [Types::IncrementalRunConfig]
    #
    # @!attribute [rw] input_source_config
    #   A list of `InputSource` objects, which have the fields
    #   `InputSourceARN` and `SchemaName`.
    #   @return [Array<Types::InputSource>]
    #
    # @!attribute [rw] output_source_config
    #   A list of `OutputSource` objects, each of which contains fields
    #   `OutputS3Path`, `ApplyNormalization`, and `Output`.
    #   @return [Array<Types::OutputSource>]
    #
    # @!attribute [rw] resolution_techniques
    #   An object which defines the `resolutionType` and the
    #   `ruleBasedProperties`
    #   @return [Types::ResolutionTechniques]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role. Entity Resolution
    #   assumes this role to create resources on your behalf as part of
    #   workflow execution.
    #   @return [String]
    #
    # @!attribute [rw] workflow_name
    #   The name of the workflow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/UpdateMatchingWorkflowOutput AWS API Documentation
    #
    class UpdateMatchingWorkflowOutput < Struct.new(
      :description,
      :incremental_run_config,
      :input_source_config,
      :output_source_config,
      :resolution_techniques,
      :role_arn,
      :workflow_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by Entity
    # Resolution. `HTTP Status Code: 400`
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
