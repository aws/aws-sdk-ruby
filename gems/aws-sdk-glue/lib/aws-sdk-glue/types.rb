# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Glue
  module Types

    # Access to a resource was denied.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      include Aws::Structure
    end

    # Defines an action to be initiated by a trigger.
    #
    # @note When making an API call, you may pass Action
    #   data as a hash:
    #
    #       {
    #         job_name: "NameString",
    #         arguments: {
    #           "GenericString" => "GenericString",
    #         },
    #         timeout: 1,
    #         security_configuration: "NameString",
    #         notification_property: {
    #           notify_delay_after: 1,
    #         },
    #         crawler_name: "NameString",
    #       }
    #
    # @!attribute [rw] job_name
    #   The name of a job to be executed.
    #   @return [String]
    #
    # @!attribute [rw] arguments
    #   The job arguments used when this trigger fires. For this job run,
    #   they replace the default arguments set in the job definition itself.
    #
    #   You can specify arguments here that your own job-execution script
    #   consumes, as well as arguments that AWS Glue itself consumes.
    #
    #   For information about how to specify and consume your own Job
    #   arguments, see the [Calling AWS Glue APIs in Python][1] topic in the
    #   developer guide.
    #
    #   For information about the key-value pairs that AWS Glue consumes to
    #   set up your job, see the [Special Parameters Used by AWS Glue][2]
    #   topic in the developer guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html
    #   [2]: https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] timeout
    #   The `JobRun` timeout in minutes. This is the maximum time that a job
    #   run can consume resources before it is terminated and enters
    #   `TIMEOUT` status. The default is 2,880 minutes (48 hours). This
    #   overrides the timeout value set in the parent job.
    #   @return [Integer]
    #
    # @!attribute [rw] security_configuration
    #   The name of the `SecurityConfiguration` structure to be used with
    #   this action.
    #   @return [String]
    #
    # @!attribute [rw] notification_property
    #   Specifies configuration properties of a job run notification.
    #   @return [Types::NotificationProperty]
    #
    # @!attribute [rw] crawler_name
    #   The name of the crawler to be used with this action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Action AWS API Documentation
    #
    class Action < Struct.new(
      :job_name,
      :arguments,
      :timeout,
      :security_configuration,
      :notification_property,
      :crawler_name)
      include Aws::Structure
    end

    # A resource to be created or added already exists.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/AlreadyExistsException AWS API Documentation
    #
    class AlreadyExistsException < Struct.new(
      :message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchCreatePartitionRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         table_name: "NameString", # required
    #         partition_input_list: [ # required
    #           {
    #             values: ["ValueString"],
    #             last_access_time: Time.now,
    #             storage_descriptor: {
    #               columns: [
    #                 {
    #                   name: "NameString", # required
    #                   type: "ColumnTypeString",
    #                   comment: "CommentString",
    #                   parameters: {
    #                     "KeyString" => "ParametersMapValue",
    #                   },
    #                 },
    #               ],
    #               location: "LocationString",
    #               input_format: "FormatString",
    #               output_format: "FormatString",
    #               compressed: false,
    #               number_of_buckets: 1,
    #               serde_info: {
    #                 name: "NameString",
    #                 serialization_library: "NameString",
    #                 parameters: {
    #                   "KeyString" => "ParametersMapValue",
    #                 },
    #               },
    #               bucket_columns: ["NameString"],
    #               sort_columns: [
    #                 {
    #                   column: "NameString", # required
    #                   sort_order: 1, # required
    #                 },
    #               ],
    #               parameters: {
    #                 "KeyString" => "ParametersMapValue",
    #               },
    #               skewed_info: {
    #                 skewed_column_names: ["NameString"],
    #                 skewed_column_values: ["ColumnValuesString"],
    #                 skewed_column_value_location_maps: {
    #                   "ColumnValuesString" => "ColumnValuesString",
    #                 },
    #               },
    #               stored_as_sub_directories: false,
    #             },
    #             parameters: {
    #               "KeyString" => "ParametersMapValue",
    #             },
    #             last_analyzed_time: Time.now,
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the catalog in which the partition is to be created.
    #   Currently, this should be the AWS account ID.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the metadata database in which the partition is to be
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the metadata table in which the partition is to be
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] partition_input_list
    #   A list of `PartitionInput` structures that define the partitions to
    #   be created.
    #   @return [Array<Types::PartitionInput>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchCreatePartitionRequest AWS API Documentation
    #
    class BatchCreatePartitionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :partition_input_list)
      include Aws::Structure
    end

    # @!attribute [rw] errors
    #   The errors encountered when trying to create the requested
    #   partitions.
    #   @return [Array<Types::PartitionError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchCreatePartitionResponse AWS API Documentation
    #
    class BatchCreatePartitionResponse < Struct.new(
      :errors)
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchDeleteConnectionRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         connection_name_list: ["NameString"], # required
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog in which the connections reside. If none
    #   is provided, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] connection_name_list
    #   A list of names of the connections to delete.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchDeleteConnectionRequest AWS API Documentation
    #
    class BatchDeleteConnectionRequest < Struct.new(
      :catalog_id,
      :connection_name_list)
      include Aws::Structure
    end

    # @!attribute [rw] succeeded
    #   A list of names of the connection definitions that were successfully
    #   deleted.
    #   @return [Array<String>]
    #
    # @!attribute [rw] errors
    #   A map of the names of connections that were not successfully deleted
    #   to error details.
    #   @return [Hash<String,Types::ErrorDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchDeleteConnectionResponse AWS API Documentation
    #
    class BatchDeleteConnectionResponse < Struct.new(
      :succeeded,
      :errors)
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchDeletePartitionRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         table_name: "NameString", # required
    #         partitions_to_delete: [ # required
    #           {
    #             values: ["ValueString"], # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the partition to be deleted
    #   resides. If none is provided, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the catalog database in which the table in question
    #   resides.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table that contains the partitions to be deleted.
    #   @return [String]
    #
    # @!attribute [rw] partitions_to_delete
    #   A list of `PartitionInput` structures that define the partitions to
    #   be deleted.
    #   @return [Array<Types::PartitionValueList>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchDeletePartitionRequest AWS API Documentation
    #
    class BatchDeletePartitionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :partitions_to_delete)
      include Aws::Structure
    end

    # @!attribute [rw] errors
    #   The errors encountered when trying to delete the requested
    #   partitions.
    #   @return [Array<Types::PartitionError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchDeletePartitionResponse AWS API Documentation
    #
    class BatchDeletePartitionResponse < Struct.new(
      :errors)
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchDeleteTableRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         tables_to_delete: ["NameString"], # required
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the table resides. If none is
    #   provided, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the catalog database in which the tables to delete
    #   reside. For Hive compatibility, this name is entirely lowercase.
    #   @return [String]
    #
    # @!attribute [rw] tables_to_delete
    #   A list of the table to delete.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchDeleteTableRequest AWS API Documentation
    #
    class BatchDeleteTableRequest < Struct.new(
      :catalog_id,
      :database_name,
      :tables_to_delete)
      include Aws::Structure
    end

    # @!attribute [rw] errors
    #   A list of errors encountered in attempting to delete the specified
    #   tables.
    #   @return [Array<Types::TableError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchDeleteTableResponse AWS API Documentation
    #
    class BatchDeleteTableResponse < Struct.new(
      :errors)
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchDeleteTableVersionRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         table_name: "NameString", # required
    #         version_ids: ["VersionString"], # required
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the tables reside. If none is
    #   provided, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The database in the catalog in which the table resides. For Hive
    #   compatibility, this name is entirely lowercase.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table. For Hive compatibility, this name is entirely
    #   lowercase.
    #   @return [String]
    #
    # @!attribute [rw] version_ids
    #   A list of the IDs of versions to be deleted. A `VersionId` is a
    #   string representation of an integer. Each version is incremented by
    #   1.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchDeleteTableVersionRequest AWS API Documentation
    #
    class BatchDeleteTableVersionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :version_ids)
      include Aws::Structure
    end

    # @!attribute [rw] errors
    #   A list of errors encountered while trying to delete the specified
    #   table versions.
    #   @return [Array<Types::TableVersionError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchDeleteTableVersionResponse AWS API Documentation
    #
    class BatchDeleteTableVersionResponse < Struct.new(
      :errors)
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchGetCrawlersRequest
    #   data as a hash:
    #
    #       {
    #         crawler_names: ["NameString"], # required
    #       }
    #
    # @!attribute [rw] crawler_names
    #   A list of crawler names, which might be the names returned from the
    #   `ListCrawlers` operation.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchGetCrawlersRequest AWS API Documentation
    #
    class BatchGetCrawlersRequest < Struct.new(
      :crawler_names)
      include Aws::Structure
    end

    # @!attribute [rw] crawlers
    #   A list of crawler definitions.
    #   @return [Array<Types::Crawler>]
    #
    # @!attribute [rw] crawlers_not_found
    #   A list of names of crawlers that were not found.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchGetCrawlersResponse AWS API Documentation
    #
    class BatchGetCrawlersResponse < Struct.new(
      :crawlers,
      :crawlers_not_found)
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchGetDevEndpointsRequest
    #   data as a hash:
    #
    #       {
    #         dev_endpoint_names: ["GenericString"], # required
    #       }
    #
    # @!attribute [rw] dev_endpoint_names
    #   The list of `DevEndpoint` names, which might be the names returned
    #   from the `ListDevEndpoint` operation.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchGetDevEndpointsRequest AWS API Documentation
    #
    class BatchGetDevEndpointsRequest < Struct.new(
      :dev_endpoint_names)
      include Aws::Structure
    end

    # @!attribute [rw] dev_endpoints
    #   A list of `DevEndpoint` definitions.
    #   @return [Array<Types::DevEndpoint>]
    #
    # @!attribute [rw] dev_endpoints_not_found
    #   A list of `DevEndpoints` not found.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchGetDevEndpointsResponse AWS API Documentation
    #
    class BatchGetDevEndpointsResponse < Struct.new(
      :dev_endpoints,
      :dev_endpoints_not_found)
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchGetJobsRequest
    #   data as a hash:
    #
    #       {
    #         job_names: ["NameString"], # required
    #       }
    #
    # @!attribute [rw] job_names
    #   A list of job names, which might be the names returned from the
    #   `ListJobs` operation.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchGetJobsRequest AWS API Documentation
    #
    class BatchGetJobsRequest < Struct.new(
      :job_names)
      include Aws::Structure
    end

    # @!attribute [rw] jobs
    #   A list of job definitions.
    #   @return [Array<Types::Job>]
    #
    # @!attribute [rw] jobs_not_found
    #   A list of names of jobs not found.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchGetJobsResponse AWS API Documentation
    #
    class BatchGetJobsResponse < Struct.new(
      :jobs,
      :jobs_not_found)
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchGetPartitionRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         table_name: "NameString", # required
    #         partitions_to_get: [ # required
    #           {
    #             values: ["ValueString"], # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the partitions in question reside.
    #   If none is supplied, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the catalog database where the partitions reside.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the partitions' table.
    #   @return [String]
    #
    # @!attribute [rw] partitions_to_get
    #   A list of partition values identifying the partitions to retrieve.
    #   @return [Array<Types::PartitionValueList>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchGetPartitionRequest AWS API Documentation
    #
    class BatchGetPartitionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :partitions_to_get)
      include Aws::Structure
    end

    # @!attribute [rw] partitions
    #   A list of the requested partitions.
    #   @return [Array<Types::Partition>]
    #
    # @!attribute [rw] unprocessed_keys
    #   A list of the partition values in the request for which partitions
    #   were not returned.
    #   @return [Array<Types::PartitionValueList>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchGetPartitionResponse AWS API Documentation
    #
    class BatchGetPartitionResponse < Struct.new(
      :partitions,
      :unprocessed_keys)
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchGetTriggersRequest
    #   data as a hash:
    #
    #       {
    #         trigger_names: ["NameString"], # required
    #       }
    #
    # @!attribute [rw] trigger_names
    #   A list of trigger names, which may be the names returned from the
    #   `ListTriggers` operation.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchGetTriggersRequest AWS API Documentation
    #
    class BatchGetTriggersRequest < Struct.new(
      :trigger_names)
      include Aws::Structure
    end

    # @!attribute [rw] triggers
    #   A list of trigger definitions.
    #   @return [Array<Types::Trigger>]
    #
    # @!attribute [rw] triggers_not_found
    #   A list of names of triggers not found.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchGetTriggersResponse AWS API Documentation
    #
    class BatchGetTriggersResponse < Struct.new(
      :triggers,
      :triggers_not_found)
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchGetWorkflowsRequest
    #   data as a hash:
    #
    #       {
    #         names: ["NameString"], # required
    #         include_graph: false,
    #       }
    #
    # @!attribute [rw] names
    #   A list of workflow names, which may be the names returned from the
    #   `ListWorkflows` operation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] include_graph
    #   Specifies whether to include a graph when returning the workflow
    #   resource metadata.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchGetWorkflowsRequest AWS API Documentation
    #
    class BatchGetWorkflowsRequest < Struct.new(
      :names,
      :include_graph)
      include Aws::Structure
    end

    # @!attribute [rw] workflows
    #   A list of workflow resource metadata.
    #   @return [Array<Types::Workflow>]
    #
    # @!attribute [rw] missing_workflows
    #   A list of names of workflows not found.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchGetWorkflowsResponse AWS API Documentation
    #
    class BatchGetWorkflowsResponse < Struct.new(
      :workflows,
      :missing_workflows)
      include Aws::Structure
    end

    # Records an error that occurred when attempting to stop a specified job
    # run.
    #
    # @!attribute [rw] job_name
    #   The name of the job definition that is used in the job run in
    #   question.
    #   @return [String]
    #
    # @!attribute [rw] job_run_id
    #   The `JobRunId` of the job run in question.
    #   @return [String]
    #
    # @!attribute [rw] error_detail
    #   Specifies details about the error that was encountered.
    #   @return [Types::ErrorDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchStopJobRunError AWS API Documentation
    #
    class BatchStopJobRunError < Struct.new(
      :job_name,
      :job_run_id,
      :error_detail)
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchStopJobRunRequest
    #   data as a hash:
    #
    #       {
    #         job_name: "NameString", # required
    #         job_run_ids: ["IdString"], # required
    #       }
    #
    # @!attribute [rw] job_name
    #   The name of the job definition for which to stop job runs.
    #   @return [String]
    #
    # @!attribute [rw] job_run_ids
    #   A list of the `JobRunIds` that should be stopped for that job
    #   definition.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchStopJobRunRequest AWS API Documentation
    #
    class BatchStopJobRunRequest < Struct.new(
      :job_name,
      :job_run_ids)
      include Aws::Structure
    end

    # @!attribute [rw] successful_submissions
    #   A list of the JobRuns that were successfully submitted for stopping.
    #   @return [Array<Types::BatchStopJobRunSuccessfulSubmission>]
    #
    # @!attribute [rw] errors
    #   A list of the errors that were encountered in trying to stop
    #   `JobRuns`, including the `JobRunId` for which each error was
    #   encountered and details about the error.
    #   @return [Array<Types::BatchStopJobRunError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchStopJobRunResponse AWS API Documentation
    #
    class BatchStopJobRunResponse < Struct.new(
      :successful_submissions,
      :errors)
      include Aws::Structure
    end

    # Records a successful request to stop a specified `JobRun`.
    #
    # @!attribute [rw] job_name
    #   The name of the job definition used in the job run that was stopped.
    #   @return [String]
    #
    # @!attribute [rw] job_run_id
    #   The `JobRunId` of the job run that was stopped.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchStopJobRunSuccessfulSubmission AWS API Documentation
    #
    class BatchStopJobRunSuccessfulSubmission < Struct.new(
      :job_name,
      :job_run_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CancelMLTaskRunRequest
    #   data as a hash:
    #
    #       {
    #         transform_id: "HashString", # required
    #         task_run_id: "HashString", # required
    #       }
    #
    # @!attribute [rw] transform_id
    #   The unique identifier of the machine learning transform.
    #   @return [String]
    #
    # @!attribute [rw] task_run_id
    #   A unique identifier for the task run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CancelMLTaskRunRequest AWS API Documentation
    #
    class CancelMLTaskRunRequest < Struct.new(
      :transform_id,
      :task_run_id)
      include Aws::Structure
    end

    # @!attribute [rw] transform_id
    #   The unique identifier of the machine learning transform.
    #   @return [String]
    #
    # @!attribute [rw] task_run_id
    #   The unique identifier for the task run.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status for this run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CancelMLTaskRunResponse AWS API Documentation
    #
    class CancelMLTaskRunResponse < Struct.new(
      :transform_id,
      :task_run_id,
      :status)
      include Aws::Structure
    end

    # Specifies a table definition in the AWS Glue Data Catalog.
    #
    # @note When making an API call, you may pass CatalogEntry
    #   data as a hash:
    #
    #       {
    #         database_name: "NameString", # required
    #         table_name: "NameString", # required
    #       }
    #
    # @!attribute [rw] database_name
    #   The database in which the table metadata resides.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table in question.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CatalogEntry AWS API Documentation
    #
    class CatalogEntry < Struct.new(
      :database_name,
      :table_name)
      include Aws::Structure
    end

    # A structure containing migration status information.
    #
    # @!attribute [rw] import_completed
    #   `True` if the migration has completed, or `False` otherwise.
    #   @return [Boolean]
    #
    # @!attribute [rw] import_time
    #   The time that the migration was started.
    #   @return [Time]
    #
    # @!attribute [rw] imported_by
    #   The name of the person who initiated the migration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CatalogImportStatus AWS API Documentation
    #
    class CatalogImportStatus < Struct.new(
      :import_completed,
      :import_time,
      :imported_by)
      include Aws::Structure
    end

    # Specifies an AWS Glue Data Catalog target.
    #
    # @note When making an API call, you may pass CatalogTarget
    #   data as a hash:
    #
    #       {
    #         database_name: "NameString", # required
    #         tables: ["NameString"], # required
    #       }
    #
    # @!attribute [rw] database_name
    #   The name of the database to be synchronized.
    #   @return [String]
    #
    # @!attribute [rw] tables
    #   A list of the tables to be synchronized.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CatalogTarget AWS API Documentation
    #
    class CatalogTarget < Struct.new(
      :database_name,
      :tables)
      include Aws::Structure
    end

    # Classifiers are triggered during a crawl task. A classifier checks
    # whether a given file is in a format it can handle. If it is, the
    # classifier creates a schema in the form of a `StructType` object that
    # matches that data format.
    #
    # You can use the standard classifiers that AWS Glue provides, or you
    # can write your own classifiers to best categorize your data sources
    # and specify the appropriate schemas to use for them. A classifier can
    # be a `grok` classifier, an `XML` classifier, a `JSON` classifier, or a
    # custom `CSV` classifier, as specified in one of the fields in the
    # `Classifier` object.
    #
    # @!attribute [rw] grok_classifier
    #   A classifier that uses `grok`.
    #   @return [Types::GrokClassifier]
    #
    # @!attribute [rw] xml_classifier
    #   A classifier for XML content.
    #   @return [Types::XMLClassifier]
    #
    # @!attribute [rw] json_classifier
    #   A classifier for JSON content.
    #   @return [Types::JsonClassifier]
    #
    # @!attribute [rw] csv_classifier
    #   A classifier for comma-separated values (CSV).
    #   @return [Types::CsvClassifier]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Classifier AWS API Documentation
    #
    class Classifier < Struct.new(
      :grok_classifier,
      :xml_classifier,
      :json_classifier,
      :csv_classifier)
      include Aws::Structure
    end

    # Specifies how Amazon CloudWatch data should be encrypted.
    #
    # @note When making an API call, you may pass CloudWatchEncryption
    #   data as a hash:
    #
    #       {
    #         cloud_watch_encryption_mode: "DISABLED", # accepts DISABLED, SSE-KMS
    #         kms_key_arn: "KmsKeyArn",
    #       }
    #
    # @!attribute [rw] cloud_watch_encryption_mode
    #   The encryption mode to use for CloudWatch data.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key to be used to encrypt
    #   the data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CloudWatchEncryption AWS API Documentation
    #
    class CloudWatchEncryption < Struct.new(
      :cloud_watch_encryption_mode,
      :kms_key_arn)
      include Aws::Structure
    end

    # Represents a directional edge in a directed acyclic graph (DAG).
    #
    # @note When making an API call, you may pass CodeGenEdge
    #   data as a hash:
    #
    #       {
    #         source: "CodeGenIdentifier", # required
    #         target: "CodeGenIdentifier", # required
    #         target_parameter: "CodeGenArgName",
    #       }
    #
    # @!attribute [rw] source
    #   The ID of the node at which the edge starts.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The ID of the node at which the edge ends.
    #   @return [String]
    #
    # @!attribute [rw] target_parameter
    #   The target of the edge.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CodeGenEdge AWS API Documentation
    #
    class CodeGenEdge < Struct.new(
      :source,
      :target,
      :target_parameter)
      include Aws::Structure
    end

    # Represents a node in a directed acyclic graph (DAG)
    #
    # @note When making an API call, you may pass CodeGenNode
    #   data as a hash:
    #
    #       {
    #         id: "CodeGenIdentifier", # required
    #         node_type: "CodeGenNodeType", # required
    #         args: [ # required
    #           {
    #             name: "CodeGenArgName", # required
    #             value: "CodeGenArgValue", # required
    #             param: false,
    #           },
    #         ],
    #         line_number: 1,
    #       }
    #
    # @!attribute [rw] id
    #   A node identifier that is unique within the node's graph.
    #   @return [String]
    #
    # @!attribute [rw] node_type
    #   The type of node that this is.
    #   @return [String]
    #
    # @!attribute [rw] args
    #   Properties of the node, in the form of name-value pairs.
    #   @return [Array<Types::CodeGenNodeArg>]
    #
    # @!attribute [rw] line_number
    #   The line number of the node.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CodeGenNode AWS API Documentation
    #
    class CodeGenNode < Struct.new(
      :id,
      :node_type,
      :args,
      :line_number)
      include Aws::Structure
    end

    # An argument or property of a node.
    #
    # @note When making an API call, you may pass CodeGenNodeArg
    #   data as a hash:
    #
    #       {
    #         name: "CodeGenArgName", # required
    #         value: "CodeGenArgValue", # required
    #         param: false,
    #       }
    #
    # @!attribute [rw] name
    #   The name of the argument or property.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the argument or property.
    #   @return [String]
    #
    # @!attribute [rw] param
    #   True if the value is used as a parameter.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CodeGenNodeArg AWS API Documentation
    #
    class CodeGenNodeArg < Struct.new(
      :name,
      :value,
      :param)
      include Aws::Structure
    end

    # A column in a `Table`.
    #
    # @note When making an API call, you may pass Column
    #   data as a hash:
    #
    #       {
    #         name: "NameString", # required
    #         type: "ColumnTypeString",
    #         comment: "CommentString",
    #         parameters: {
    #           "KeyString" => "ParametersMapValue",
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name of the `Column`.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The data type of the `Column`.
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   A free-form text comment.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   These key-value pairs define properties associated with the column.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Column AWS API Documentation
    #
    class Column < Struct.new(
      :name,
      :type,
      :comment,
      :parameters)
      include Aws::Structure
    end

    # Two processes are trying to modify a resource simultaneously.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ConcurrentModificationException AWS API Documentation
    #
    class ConcurrentModificationException < Struct.new(
      :message)
      include Aws::Structure
    end

    # Too many jobs are being run concurrently.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ConcurrentRunsExceededException AWS API Documentation
    #
    class ConcurrentRunsExceededException < Struct.new(
      :message)
      include Aws::Structure
    end

    # Defines a condition under which a trigger fires.
    #
    # @note When making an API call, you may pass Condition
    #   data as a hash:
    #
    #       {
    #         logical_operator: "EQUALS", # accepts EQUALS
    #         job_name: "NameString",
    #         state: "STARTING", # accepts STARTING, RUNNING, STOPPING, STOPPED, SUCCEEDED, FAILED, TIMEOUT
    #         crawler_name: "NameString",
    #         crawl_state: "RUNNING", # accepts RUNNING, CANCELLING, CANCELLED, SUCCEEDED, FAILED
    #       }
    #
    # @!attribute [rw] logical_operator
    #   A logical operator.
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The name of the job whose `JobRuns` this condition applies to, and
    #   on which this trigger waits.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The condition state. Currently, the only job states that a trigger
    #   can listen for are `SUCCEEDED`, `STOPPED`, `FAILED`, and `TIMEOUT`.
    #   The only crawler states that a trigger can listen for are
    #   `SUCCEEDED`, `FAILED`, and `CANCELLED`.
    #   @return [String]
    #
    # @!attribute [rw] crawler_name
    #   The name of the crawler to which this condition applies.
    #   @return [String]
    #
    # @!attribute [rw] crawl_state
    #   The state of the crawler to which this condition applies.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Condition AWS API Documentation
    #
    class Condition < Struct.new(
      :logical_operator,
      :job_name,
      :state,
      :crawler_name,
      :crawl_state)
      include Aws::Structure
    end

    # A specified condition was not satisfied.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ConditionCheckFailureException AWS API Documentation
    #
    class ConditionCheckFailureException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The confusion matrix shows you what your transform is predicting
    # accurately and what types of errors it is making.
    #
    # For more information, see [Confusion matrix][1] in Wikipedia.
    #
    #
    #
    # [1]: https://en.wikipedia.org/wiki/Confusion_matrix
    #
    # @!attribute [rw] num_true_positives
    #   The number of matches in the data that the transform correctly
    #   found, in the confusion matrix for your transform.
    #   @return [Integer]
    #
    # @!attribute [rw] num_false_positives
    #   The number of nonmatches in the data that the transform incorrectly
    #   classified as a match, in the confusion matrix for your transform.
    #   @return [Integer]
    #
    # @!attribute [rw] num_true_negatives
    #   The number of nonmatches in the data that the transform correctly
    #   rejected, in the confusion matrix for your transform.
    #   @return [Integer]
    #
    # @!attribute [rw] num_false_negatives
    #   The number of matches in the data that the transform didn't find,
    #   in the confusion matrix for your transform.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ConfusionMatrix AWS API Documentation
    #
    class ConfusionMatrix < Struct.new(
      :num_true_positives,
      :num_false_positives,
      :num_true_negatives,
      :num_false_negatives)
      include Aws::Structure
    end

    # Defines a connection to a data source.
    #
    # @!attribute [rw] name
    #   The name of the connection definition.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the connection.
    #   @return [String]
    #
    # @!attribute [rw] connection_type
    #   The type of the connection. Currently, only JDBC is supported; SFTP
    #   is not supported.
    #   @return [String]
    #
    # @!attribute [rw] match_criteria
    #   A list of criteria that can be used in selecting this connection.
    #   @return [Array<String>]
    #
    # @!attribute [rw] connection_properties
    #   These key-value pairs define parameters for the connection:
    #
    #   * `HOST` - The host URI: either the fully qualified domain name
    #     (FQDN) or the IPv4 address of the database host.
    #
    #   * `PORT` - The port number, between 1024 and 65535, of the port on
    #     which the database host is listening for database connections.
    #
    #   * `USER_NAME` - The name under which to log in to the database. The
    #     value string for `USER_NAME` is "`USERNAME`".
    #
    #   * `PASSWORD` - A password, if one is used, for the user name.
    #
    #   * `ENCRYPTED_PASSWORD` - When you enable connection password
    #     protection by setting `ConnectionPasswordEncryption` in the Data
    #     Catalog encryption settings, this field stores the encrypted
    #     password.
    #
    #   * `JDBC_DRIVER_JAR_URI` - The Amazon Simple Storage Service (Amazon
    #     S3) path of the JAR file that contains the JDBC driver to use.
    #
    #   * `JDBC_DRIVER_CLASS_NAME` - The class name of the JDBC driver to
    #     use.
    #
    #   * `JDBC_ENGINE` - The name of the JDBC engine to use.
    #
    #   * `JDBC_ENGINE_VERSION` - The version of the JDBC engine to use.
    #
    #   * `CONFIG_FILES` - (Reserved for future use.)
    #
    #   * `INSTANCE_ID` - The instance ID to use.
    #
    #   * `JDBC_CONNECTION_URL` - The URL for connecting to a JDBC data
    #     source.
    #
    #   * `JDBC_ENFORCE_SSL` - A Boolean string (true, false) specifying
    #     whether Secure Sockets Layer (SSL) with hostname matching is
    #     enforced for the JDBC connection on the client. The default is
    #     false.
    #
    #   * `CUSTOM_JDBC_CERT` - An Amazon S3 location specifying the
    #     customer's root certificate. AWS Glue uses this root certificate
    #     to validate the customer’s certificate when connecting to the
    #     customer database. AWS Glue only handles X.509 certificates. The
    #     certificate provided must be DER-encoded and supplied in Base64
    #     encoding PEM format.
    #
    #   * `SKIP_CUSTOM_JDBC_CERT_VALIDATION` - By default, this is `false`.
    #     AWS Glue validates the Signature algorithm and Subject Public Key
    #     Algorithm for the customer certificate. The only permitted
    #     algorithms for the Signature algorithm are SHA256withRSA,
    #     SHA384withRSA or SHA512withRSA. For the Subject Public Key
    #     Algorithm, the key length must be at least 2048. You can set the
    #     value of this property to `true` to skip AWS Glue’s validation of
    #     the customer certificate.
    #
    #   * `CUSTOM_JDBC_CERT_STRING` - A custom JDBC certificate string which
    #     is used for domain match or distinguished name match to prevent a
    #     man-in-the-middle attack. In Oracle database, this is used as the
    #     `SSL_SERVER_CERT_DN`; in Microsoft SQL Server, this is used as the
    #     `hostNameInCertificate`.
    #
    #   * `CONNECTION_URL` - The URL for connecting to a general (non-JDBC)
    #     data source.
    #
    #   * `KAFKA_BOOTSTRAP_SERVERS` - A comma-separated list of host and
    #     port pairs that are the addresses of the Apache Kafka brokers in a
    #     Kafka cluster to which a Kafka client will connect to and
    #     bootstrap itself.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] physical_connection_requirements
    #   A map of physical connection requirements, such as virtual private
    #   cloud (VPC) and `SecurityGroup`, that are needed to make this
    #   connection successfully.
    #   @return [Types::PhysicalConnectionRequirements]
    #
    # @!attribute [rw] creation_time
    #   The time that this connection definition was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The last time that this connection definition was updated.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_by
    #   The user, group, or role that last updated this connection
    #   definition.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Connection AWS API Documentation
    #
    class Connection < Struct.new(
      :name,
      :description,
      :connection_type,
      :match_criteria,
      :connection_properties,
      :physical_connection_requirements,
      :creation_time,
      :last_updated_time,
      :last_updated_by)
      include Aws::Structure
    end

    # A structure that is used to specify a connection to create or update.
    #
    # @note When making an API call, you may pass ConnectionInput
    #   data as a hash:
    #
    #       {
    #         name: "NameString", # required
    #         description: "DescriptionString",
    #         connection_type: "JDBC", # required, accepts JDBC, SFTP, MONGODB, KAFKA
    #         match_criteria: ["NameString"],
    #         connection_properties: { # required
    #           "HOST" => "ValueString",
    #         },
    #         physical_connection_requirements: {
    #           subnet_id: "NameString",
    #           security_group_id_list: ["NameString"],
    #           availability_zone: "NameString",
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name of the connection.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the connection.
    #   @return [String]
    #
    # @!attribute [rw] connection_type
    #   The type of the connection. Currently, these types are supported:
    #
    #   * `JDBC` - Designates a connection to a database through Java
    #     Database Connectivity (JDBC).
    #
    #   * `KAFKA` - Designates a connection to an Apache Kafka streaming
    #     platform.
    #
    #   * `MONGODB` - Designates a connection to a MongoDB document
    #     database.
    #
    #   SFTP is not supported.
    #   @return [String]
    #
    # @!attribute [rw] match_criteria
    #   A list of criteria that can be used in selecting this connection.
    #   @return [Array<String>]
    #
    # @!attribute [rw] connection_properties
    #   These key-value pairs define parameters for the connection.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] physical_connection_requirements
    #   A map of physical connection requirements, such as virtual private
    #   cloud (VPC) and `SecurityGroup`, that are needed to successfully
    #   make this connection.
    #   @return [Types::PhysicalConnectionRequirements]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ConnectionInput AWS API Documentation
    #
    class ConnectionInput < Struct.new(
      :name,
      :description,
      :connection_type,
      :match_criteria,
      :connection_properties,
      :physical_connection_requirements)
      include Aws::Structure
    end

    # The data structure used by the Data Catalog to encrypt the password as
    # part of `CreateConnection` or `UpdateConnection` and store it in the
    # `ENCRYPTED_PASSWORD` field in the connection properties. You can
    # enable catalog encryption or only password encryption.
    #
    # When a `CreationConnection` request arrives containing a password, the
    # Data Catalog first encrypts the password using your AWS KMS key. It
    # then encrypts the whole connection object again if catalog encryption
    # is also enabled.
    #
    # This encryption requires that you set AWS KMS key permissions to
    # enable or restrict access on the password key according to your
    # security requirements. For example, you might want only administrators
    # to have decrypt permission on the password key.
    #
    # @note When making an API call, you may pass ConnectionPasswordEncryption
    #   data as a hash:
    #
    #       {
    #         return_connection_password_encrypted: false, # required
    #         aws_kms_key_id: "NameString",
    #       }
    #
    # @!attribute [rw] return_connection_password_encrypted
    #   When the `ReturnConnectionPasswordEncrypted` flag is set to
    #   "true", passwords remain encrypted in the responses of
    #   `GetConnection` and `GetConnections`. This encryption takes effect
    #   independently from catalog encryption.
    #   @return [Boolean]
    #
    # @!attribute [rw] aws_kms_key_id
    #   An AWS KMS key that is used to encrypt the connection password.
    #
    #   If connection password protection is enabled, the caller of
    #   `CreateConnection` and `UpdateConnection` needs at least
    #   `kms:Encrypt` permission on the specified AWS KMS key, to encrypt
    #   passwords before storing them in the Data Catalog.
    #
    #   You can set the decrypt permission to enable or restrict access on
    #   the password key according to your security requirements.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ConnectionPasswordEncryption AWS API Documentation
    #
    class ConnectionPasswordEncryption < Struct.new(
      :return_connection_password_encrypted,
      :aws_kms_key_id)
      include Aws::Structure
    end

    # Specifies the connections used by a job.
    #
    # @note When making an API call, you may pass ConnectionsList
    #   data as a hash:
    #
    #       {
    #         connections: ["GenericString"],
    #       }
    #
    # @!attribute [rw] connections
    #   A list of connections used by the job.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ConnectionsList AWS API Documentation
    #
    class ConnectionsList < Struct.new(
      :connections)
      include Aws::Structure
    end

    # The details of a crawl in the workflow.
    #
    # @!attribute [rw] state
    #   The state of the crawler.
    #   @return [String]
    #
    # @!attribute [rw] started_on
    #   The date and time on which the crawl started.
    #   @return [Time]
    #
    # @!attribute [rw] completed_on
    #   The date and time on which the crawl completed.
    #   @return [Time]
    #
    # @!attribute [rw] error_message
    #   The error message associated with the crawl.
    #   @return [String]
    #
    # @!attribute [rw] log_group
    #   The log group associated with the crawl.
    #   @return [String]
    #
    # @!attribute [rw] log_stream
    #   The log stream associated with the crawl.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Crawl AWS API Documentation
    #
    class Crawl < Struct.new(
      :state,
      :started_on,
      :completed_on,
      :error_message,
      :log_group,
      :log_stream)
      include Aws::Structure
    end

    # Specifies a crawler program that examines a data source and uses
    # classifiers to try to determine its schema. If successful, the crawler
    # records metadata concerning the data source in the AWS Glue Data
    # Catalog.
    #
    # @!attribute [rw] name
    #   The name of the crawler.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The Amazon Resource Name (ARN) of an IAM role that's used to access
    #   customer resources, such as Amazon Simple Storage Service (Amazon
    #   S3) data.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   A collection of targets to crawl.
    #   @return [Types::CrawlerTargets]
    #
    # @!attribute [rw] database_name
    #   The name of the database in which the crawler's output is stored.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the crawler.
    #   @return [String]
    #
    # @!attribute [rw] classifiers
    #   A list of UTF-8 strings that specify the custom classifiers that are
    #   associated with the crawler.
    #   @return [Array<String>]
    #
    # @!attribute [rw] schema_change_policy
    #   The policy that specifies update and delete behaviors for the
    #   crawler.
    #   @return [Types::SchemaChangePolicy]
    #
    # @!attribute [rw] state
    #   Indicates whether the crawler is running, or whether a run is
    #   pending.
    #   @return [String]
    #
    # @!attribute [rw] table_prefix
    #   The prefix added to the names of tables that are created.
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   For scheduled crawlers, the schedule when the crawler runs.
    #   @return [Types::Schedule]
    #
    # @!attribute [rw] crawl_elapsed_time
    #   If the crawler is running, contains the total time elapsed since the
    #   last crawl began.
    #   @return [Integer]
    #
    # @!attribute [rw] creation_time
    #   The time that the crawler was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated
    #   The time that the crawler was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] last_crawl
    #   The status of the last crawl, and potentially error information if
    #   an error occurred.
    #   @return [Types::LastCrawlInfo]
    #
    # @!attribute [rw] version
    #   The version of the crawler.
    #   @return [Integer]
    #
    # @!attribute [rw] configuration
    #   Crawler configuration information. This versioned JSON string allows
    #   users to specify aspects of a crawler's behavior. For more
    #   information, see [Configuring a Crawler][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/glue/latest/dg/crawler-configuration.html
    #   @return [String]
    #
    # @!attribute [rw] crawler_security_configuration
    #   The name of the `SecurityConfiguration` structure to be used by this
    #   crawler.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Crawler AWS API Documentation
    #
    class Crawler < Struct.new(
      :name,
      :role,
      :targets,
      :database_name,
      :description,
      :classifiers,
      :schema_change_policy,
      :state,
      :table_prefix,
      :schedule,
      :crawl_elapsed_time,
      :creation_time,
      :last_updated,
      :last_crawl,
      :version,
      :configuration,
      :crawler_security_configuration)
      include Aws::Structure
    end

    # Metrics for a specified crawler.
    #
    # @!attribute [rw] crawler_name
    #   The name of the crawler.
    #   @return [String]
    #
    # @!attribute [rw] time_left_seconds
    #   The estimated time left to complete a running crawl.
    #   @return [Float]
    #
    # @!attribute [rw] still_estimating
    #   True if the crawler is still estimating how long it will take to
    #   complete this run.
    #   @return [Boolean]
    #
    # @!attribute [rw] last_runtime_seconds
    #   The duration of the crawler's most recent run, in seconds.
    #   @return [Float]
    #
    # @!attribute [rw] median_runtime_seconds
    #   The median duration of this crawler's runs, in seconds.
    #   @return [Float]
    #
    # @!attribute [rw] tables_created
    #   The number of tables created by this crawler.
    #   @return [Integer]
    #
    # @!attribute [rw] tables_updated
    #   The number of tables updated by this crawler.
    #   @return [Integer]
    #
    # @!attribute [rw] tables_deleted
    #   The number of tables deleted by this crawler.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CrawlerMetrics AWS API Documentation
    #
    class CrawlerMetrics < Struct.new(
      :crawler_name,
      :time_left_seconds,
      :still_estimating,
      :last_runtime_seconds,
      :median_runtime_seconds,
      :tables_created,
      :tables_updated,
      :tables_deleted)
      include Aws::Structure
    end

    # The details of a Crawler node present in the workflow.
    #
    # @!attribute [rw] crawls
    #   A list of crawls represented by the crawl node.
    #   @return [Array<Types::Crawl>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CrawlerNodeDetails AWS API Documentation
    #
    class CrawlerNodeDetails < Struct.new(
      :crawls)
      include Aws::Structure
    end

    # The specified crawler is not running.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CrawlerNotRunningException AWS API Documentation
    #
    class CrawlerNotRunningException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The operation cannot be performed because the crawler is already
    # running.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CrawlerRunningException AWS API Documentation
    #
    class CrawlerRunningException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The specified crawler is stopping.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CrawlerStoppingException AWS API Documentation
    #
    class CrawlerStoppingException < Struct.new(
      :message)
      include Aws::Structure
    end

    # Specifies data stores to crawl.
    #
    # @note When making an API call, you may pass CrawlerTargets
    #   data as a hash:
    #
    #       {
    #         s3_targets: [
    #           {
    #             path: "Path",
    #             exclusions: ["Path"],
    #           },
    #         ],
    #         jdbc_targets: [
    #           {
    #             connection_name: "ConnectionName",
    #             path: "Path",
    #             exclusions: ["Path"],
    #           },
    #         ],
    #         dynamo_db_targets: [
    #           {
    #             path: "Path",
    #           },
    #         ],
    #         catalog_targets: [
    #           {
    #             database_name: "NameString", # required
    #             tables: ["NameString"], # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] s3_targets
    #   Specifies Amazon Simple Storage Service (Amazon S3) targets.
    #   @return [Array<Types::S3Target>]
    #
    # @!attribute [rw] jdbc_targets
    #   Specifies JDBC targets.
    #   @return [Array<Types::JdbcTarget>]
    #
    # @!attribute [rw] dynamo_db_targets
    #   Specifies Amazon DynamoDB targets.
    #   @return [Array<Types::DynamoDBTarget>]
    #
    # @!attribute [rw] catalog_targets
    #   Specifies AWS Glue Data Catalog targets.
    #   @return [Array<Types::CatalogTarget>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CrawlerTargets AWS API Documentation
    #
    class CrawlerTargets < Struct.new(
      :s3_targets,
      :jdbc_targets,
      :dynamo_db_targets,
      :catalog_targets)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateClassifierRequest
    #   data as a hash:
    #
    #       {
    #         grok_classifier: {
    #           classification: "Classification", # required
    #           name: "NameString", # required
    #           grok_pattern: "GrokPattern", # required
    #           custom_patterns: "CustomPatterns",
    #         },
    #         xml_classifier: {
    #           classification: "Classification", # required
    #           name: "NameString", # required
    #           row_tag: "RowTag",
    #         },
    #         json_classifier: {
    #           name: "NameString", # required
    #           json_path: "JsonPath", # required
    #         },
    #         csv_classifier: {
    #           name: "NameString", # required
    #           delimiter: "CsvColumnDelimiter",
    #           quote_symbol: "CsvQuoteSymbol",
    #           contains_header: "UNKNOWN", # accepts UNKNOWN, PRESENT, ABSENT
    #           header: ["NameString"],
    #           disable_value_trimming: false,
    #           allow_single_column: false,
    #         },
    #       }
    #
    # @!attribute [rw] grok_classifier
    #   A `GrokClassifier` object specifying the classifier to create.
    #   @return [Types::CreateGrokClassifierRequest]
    #
    # @!attribute [rw] xml_classifier
    #   An `XMLClassifier` object specifying the classifier to create.
    #   @return [Types::CreateXMLClassifierRequest]
    #
    # @!attribute [rw] json_classifier
    #   A `JsonClassifier` object specifying the classifier to create.
    #   @return [Types::CreateJsonClassifierRequest]
    #
    # @!attribute [rw] csv_classifier
    #   A `CsvClassifier` object specifying the classifier to create.
    #   @return [Types::CreateCsvClassifierRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateClassifierRequest AWS API Documentation
    #
    class CreateClassifierRequest < Struct.new(
      :grok_classifier,
      :xml_classifier,
      :json_classifier,
      :csv_classifier)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateClassifierResponse AWS API Documentation
    #
    class CreateClassifierResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass CreateConnectionRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         connection_input: { # required
    #           name: "NameString", # required
    #           description: "DescriptionString",
    #           connection_type: "JDBC", # required, accepts JDBC, SFTP, MONGODB, KAFKA
    #           match_criteria: ["NameString"],
    #           connection_properties: { # required
    #             "HOST" => "ValueString",
    #           },
    #           physical_connection_requirements: {
    #             subnet_id: "NameString",
    #             security_group_id_list: ["NameString"],
    #             availability_zone: "NameString",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog in which to create the connection. If
    #   none is provided, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] connection_input
    #   A `ConnectionInput` object defining the connection to create.
    #   @return [Types::ConnectionInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateConnectionRequest AWS API Documentation
    #
    class CreateConnectionRequest < Struct.new(
      :catalog_id,
      :connection_input)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateConnectionResponse AWS API Documentation
    #
    class CreateConnectionResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass CreateCrawlerRequest
    #   data as a hash:
    #
    #       {
    #         name: "NameString", # required
    #         role: "Role", # required
    #         database_name: "DatabaseName",
    #         description: "DescriptionString",
    #         targets: { # required
    #           s3_targets: [
    #             {
    #               path: "Path",
    #               exclusions: ["Path"],
    #             },
    #           ],
    #           jdbc_targets: [
    #             {
    #               connection_name: "ConnectionName",
    #               path: "Path",
    #               exclusions: ["Path"],
    #             },
    #           ],
    #           dynamo_db_targets: [
    #             {
    #               path: "Path",
    #             },
    #           ],
    #           catalog_targets: [
    #             {
    #               database_name: "NameString", # required
    #               tables: ["NameString"], # required
    #             },
    #           ],
    #         },
    #         schedule: "CronExpression",
    #         classifiers: ["NameString"],
    #         table_prefix: "TablePrefix",
    #         schema_change_policy: {
    #           update_behavior: "LOG", # accepts LOG, UPDATE_IN_DATABASE
    #           delete_behavior: "LOG", # accepts LOG, DELETE_FROM_DATABASE, DEPRECATE_IN_DATABASE
    #         },
    #         configuration: "CrawlerConfiguration",
    #         crawler_security_configuration: "CrawlerSecurityConfiguration",
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   Name of the new crawler.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The IAM role or Amazon Resource Name (ARN) of an IAM role used by
    #   the new crawler to access customer resources.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The AWS Glue database where results are written, such as:
    #   `arn:aws:daylight:us-east-1::database/sometable/*`.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the new crawler.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   A list of collection of targets to crawl.
    #   @return [Types::CrawlerTargets]
    #
    # @!attribute [rw] schedule
    #   A `cron` expression used to specify the schedule. For more
    #   information, see [Time-Based Schedules for Jobs and Crawlers][1].
    #   For example, to run something every day at 12:15 UTC, specify
    #   `cron(15 12 * * ? *)`.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html
    #   @return [String]
    #
    # @!attribute [rw] classifiers
    #   A list of custom classifiers that the user has registered. By
    #   default, all built-in classifiers are included in a crawl, but these
    #   custom classifiers always override the default classifiers for a
    #   given classification.
    #   @return [Array<String>]
    #
    # @!attribute [rw] table_prefix
    #   The table prefix used for catalog tables that are created.
    #   @return [String]
    #
    # @!attribute [rw] schema_change_policy
    #   The policy for the crawler's update and deletion behavior.
    #   @return [Types::SchemaChangePolicy]
    #
    # @!attribute [rw] configuration
    #   The crawler configuration information. This versioned JSON string
    #   allows users to specify aspects of a crawler's behavior. For more
    #   information, see [Configuring a Crawler][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/glue/latest/dg/crawler-configuration.html
    #   @return [String]
    #
    # @!attribute [rw] crawler_security_configuration
    #   The name of the `SecurityConfiguration` structure to be used by this
    #   crawler.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to use with this crawler request. You can use tags to limit
    #   access to the crawler. For more information, see [AWS Tags in AWS
    #   Glue][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateCrawlerRequest AWS API Documentation
    #
    class CreateCrawlerRequest < Struct.new(
      :name,
      :role,
      :database_name,
      :description,
      :targets,
      :schedule,
      :classifiers,
      :table_prefix,
      :schema_change_policy,
      :configuration,
      :crawler_security_configuration,
      :tags)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateCrawlerResponse AWS API Documentation
    #
    class CreateCrawlerResponse < Aws::EmptyStructure; end

    # Specifies a custom CSV classifier for `CreateClassifier` to create.
    #
    # @note When making an API call, you may pass CreateCsvClassifierRequest
    #   data as a hash:
    #
    #       {
    #         name: "NameString", # required
    #         delimiter: "CsvColumnDelimiter",
    #         quote_symbol: "CsvQuoteSymbol",
    #         contains_header: "UNKNOWN", # accepts UNKNOWN, PRESENT, ABSENT
    #         header: ["NameString"],
    #         disable_value_trimming: false,
    #         allow_single_column: false,
    #       }
    #
    # @!attribute [rw] name
    #   The name of the classifier.
    #   @return [String]
    #
    # @!attribute [rw] delimiter
    #   A custom symbol to denote what separates each column entry in the
    #   row.
    #   @return [String]
    #
    # @!attribute [rw] quote_symbol
    #   A custom symbol to denote what combines content into a single column
    #   value. Must be different from the column delimiter.
    #   @return [String]
    #
    # @!attribute [rw] contains_header
    #   Indicates whether the CSV file contains a header.
    #   @return [String]
    #
    # @!attribute [rw] header
    #   A list of strings representing column names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] disable_value_trimming
    #   Specifies not to trim values before identifying the type of column
    #   values. The default value is true.
    #   @return [Boolean]
    #
    # @!attribute [rw] allow_single_column
    #   Enables the processing of files that contain only one column.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateCsvClassifierRequest AWS API Documentation
    #
    class CreateCsvClassifierRequest < Struct.new(
      :name,
      :delimiter,
      :quote_symbol,
      :contains_header,
      :header,
      :disable_value_trimming,
      :allow_single_column)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDatabaseRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         database_input: { # required
    #           name: "NameString", # required
    #           description: "DescriptionString",
    #           location_uri: "URI",
    #           parameters: {
    #             "KeyString" => "ParametersMapValue",
    #           },
    #           create_table_default_permissions: [
    #             {
    #               principal: {
    #                 data_lake_principal_identifier: "DataLakePrincipalString",
    #               },
    #               permissions: ["ALL"], # accepts ALL, SELECT, ALTER, DROP, DELETE, INSERT, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog in which to create the database. If none
    #   is provided, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_input
    #   The metadata for the database.
    #   @return [Types::DatabaseInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateDatabaseRequest AWS API Documentation
    #
    class CreateDatabaseRequest < Struct.new(
      :catalog_id,
      :database_input)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateDatabaseResponse AWS API Documentation
    #
    class CreateDatabaseResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass CreateDevEndpointRequest
    #   data as a hash:
    #
    #       {
    #         endpoint_name: "GenericString", # required
    #         role_arn: "RoleArn", # required
    #         security_group_ids: ["GenericString"],
    #         subnet_id: "GenericString",
    #         public_key: "GenericString",
    #         public_keys: ["GenericString"],
    #         number_of_nodes: 1,
    #         worker_type: "Standard", # accepts Standard, G.1X, G.2X
    #         glue_version: "GlueVersionString",
    #         number_of_workers: 1,
    #         extra_python_libs_s3_path: "GenericString",
    #         extra_jars_s3_path: "GenericString",
    #         security_configuration: "NameString",
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         arguments: {
    #           "GenericString" => "GenericString",
    #         },
    #       }
    #
    # @!attribute [rw] endpoint_name
    #   The name to be assigned to the new `DevEndpoint`.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The IAM role for the `DevEndpoint`.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   Security group IDs for the security groups to be used by the new
    #   `DevEndpoint`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_id
    #   The subnet ID for the new `DevEndpoint` to use.
    #   @return [String]
    #
    # @!attribute [rw] public_key
    #   The public key to be used by this `DevEndpoint` for authentication.
    #   This attribute is provided for backward compatibility because the
    #   recommended attribute to use is public keys.
    #   @return [String]
    #
    # @!attribute [rw] public_keys
    #   A list of public keys to be used by the development endpoints for
    #   authentication. The use of this attribute is preferred over a single
    #   public key because the public keys allow you to have a different
    #   private key per client.
    #
    #   <note markdown="1"> If you previously created an endpoint with a public key, you must
    #   remove that key to be able to set a list of public keys. Call the
    #   `UpdateDevEndpoint` API with the public key content in the
    #   `deletePublicKeys` attribute, and the list of new keys in the
    #   `addPublicKeys` attribute.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] number_of_nodes
    #   The number of AWS Glue Data Processing Units (DPUs) to allocate to
    #   this `DevEndpoint`.
    #   @return [Integer]
    #
    # @!attribute [rw] worker_type
    #   The type of predefined worker that is allocated to the development
    #   endpoint. Accepts a value of Standard, G.1X, or G.2X.
    #
    #   * For the `Standard` worker type, each worker provides 4 vCPU, 16 GB
    #     of memory and a 50GB disk, and 2 executors per worker.
    #
    #   * For the `G.1X` worker type, each worker maps to 1 DPU (4 vCPU, 16
    #     GB of memory, 64 GB disk), and provides 1 executor per worker. We
    #     recommend this worker type for memory-intensive jobs.
    #
    #   * For the `G.2X` worker type, each worker maps to 2 DPU (8 vCPU, 32
    #     GB of memory, 128 GB disk), and provides 1 executor per worker. We
    #     recommend this worker type for memory-intensive jobs.
    #
    #   Known issue: when a development endpoint is created with the `G.2X`
    #   `WorkerType` configuration, the Spark drivers for the development
    #   endpoint will run on 4 vCPU, 16 GB of memory, and a 64 GB disk.
    #   @return [String]
    #
    # @!attribute [rw] glue_version
    #   Glue version determines the versions of Apache Spark and Python that
    #   AWS Glue supports. The Python version indicates the version
    #   supported for running your ETL scripts on development endpoints.
    #
    #   For more information about the available AWS Glue versions and
    #   corresponding Spark and Python versions, see [Glue version][1] in
    #   the developer guide.
    #
    #   Development endpoints that are created without specifying a Glue
    #   version default to Glue 0.9.
    #
    #   You can specify a version of Python support for development
    #   endpoints by using the `Arguments` parameter in the
    #   `CreateDevEndpoint` or `UpdateDevEndpoint` APIs. If no arguments are
    #   provided, the version defaults to Python 2.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/add-job.html
    #   @return [String]
    #
    # @!attribute [rw] number_of_workers
    #   The number of workers of a defined `workerType` that are allocated
    #   to the development endpoint.
    #
    #   The maximum number of workers you can define are 299 for `G.1X`, and
    #   149 for `G.2X`.
    #   @return [Integer]
    #
    # @!attribute [rw] extra_python_libs_s3_path
    #   The paths to one or more Python libraries in an Amazon S3 bucket
    #   that should be loaded in your `DevEndpoint`. Multiple values must be
    #   complete paths separated by a comma.
    #
    #   <note markdown="1"> You can only use pure Python libraries with a `DevEndpoint`.
    #   Libraries that rely on C extensions, such as the [pandas][1] Python
    #   data analysis library, are not yet supported.
    #
    #    </note>
    #
    #
    #
    #   [1]: http://pandas.pydata.org/
    #   @return [String]
    #
    # @!attribute [rw] extra_jars_s3_path
    #   The path to one or more Java `.jar` files in an S3 bucket that
    #   should be loaded in your `DevEndpoint`.
    #   @return [String]
    #
    # @!attribute [rw] security_configuration
    #   The name of the `SecurityConfiguration` structure to be used with
    #   this `DevEndpoint`.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to use with this DevEndpoint. You may use tags to limit
    #   access to the DevEndpoint. For more information about tags in AWS
    #   Glue, see [AWS Tags in AWS Glue][1] in the developer guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] arguments
    #   A map of arguments used to configure the `DevEndpoint`.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateDevEndpointRequest AWS API Documentation
    #
    class CreateDevEndpointRequest < Struct.new(
      :endpoint_name,
      :role_arn,
      :security_group_ids,
      :subnet_id,
      :public_key,
      :public_keys,
      :number_of_nodes,
      :worker_type,
      :glue_version,
      :number_of_workers,
      :extra_python_libs_s3_path,
      :extra_jars_s3_path,
      :security_configuration,
      :tags,
      :arguments)
      include Aws::Structure
    end

    # @!attribute [rw] endpoint_name
    #   The name assigned to the new `DevEndpoint`.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the new `DevEndpoint`.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   The security groups assigned to the new `DevEndpoint`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_id
    #   The subnet ID assigned to the new `DevEndpoint`.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the role assigned to the new
    #   `DevEndpoint`.
    #   @return [String]
    #
    # @!attribute [rw] yarn_endpoint_address
    #   The address of the YARN endpoint used by this `DevEndpoint`.
    #   @return [String]
    #
    # @!attribute [rw] zeppelin_remote_spark_interpreter_port
    #   The Apache Zeppelin port for the remote Apache Spark interpreter.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_nodes
    #   The number of AWS Glue Data Processing Units (DPUs) allocated to
    #   this DevEndpoint.
    #   @return [Integer]
    #
    # @!attribute [rw] worker_type
    #   The type of predefined worker that is allocated to the development
    #   endpoint. May be a value of Standard, G.1X, or G.2X.
    #   @return [String]
    #
    # @!attribute [rw] glue_version
    #   Glue version determines the versions of Apache Spark and Python that
    #   AWS Glue supports. The Python version indicates the version
    #   supported for running your ETL scripts on development endpoints.
    #   @return [String]
    #
    # @!attribute [rw] number_of_workers
    #   The number of workers of a defined `workerType` that are allocated
    #   to the development endpoint.
    #   @return [Integer]
    #
    # @!attribute [rw] availability_zone
    #   The AWS Availability Zone where this `DevEndpoint` is located.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the virtual private cloud (VPC) used by this
    #   `DevEndpoint`.
    #   @return [String]
    #
    # @!attribute [rw] extra_python_libs_s3_path
    #   The paths to one or more Python libraries in an S3 bucket that will
    #   be loaded in your `DevEndpoint`.
    #   @return [String]
    #
    # @!attribute [rw] extra_jars_s3_path
    #   Path to one or more Java `.jar` files in an S3 bucket that will be
    #   loaded in your `DevEndpoint`.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   The reason for a current failure in this `DevEndpoint`.
    #   @return [String]
    #
    # @!attribute [rw] security_configuration
    #   The name of the `SecurityConfiguration` structure being used with
    #   this `DevEndpoint`.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The point in time at which this `DevEndpoint` was created.
    #   @return [Time]
    #
    # @!attribute [rw] arguments
    #   The map of arguments used to configure this `DevEndpoint`.
    #
    #   Valid arguments are:
    #
    #   * `"--enable-glue-datacatalog": ""`
    #
    #   * `"GLUE_PYTHON_VERSION": "3"`
    #
    #   * `"GLUE_PYTHON_VERSION": "2"`
    #
    #   You can specify a version of Python support for development
    #   endpoints by using the `Arguments` parameter in the
    #   `CreateDevEndpoint` or `UpdateDevEndpoint` APIs. If no arguments are
    #   provided, the version defaults to Python 2.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateDevEndpointResponse AWS API Documentation
    #
    class CreateDevEndpointResponse < Struct.new(
      :endpoint_name,
      :status,
      :security_group_ids,
      :subnet_id,
      :role_arn,
      :yarn_endpoint_address,
      :zeppelin_remote_spark_interpreter_port,
      :number_of_nodes,
      :worker_type,
      :glue_version,
      :number_of_workers,
      :availability_zone,
      :vpc_id,
      :extra_python_libs_s3_path,
      :extra_jars_s3_path,
      :failure_reason,
      :security_configuration,
      :created_timestamp,
      :arguments)
      include Aws::Structure
    end

    # Specifies a `grok` classifier for `CreateClassifier` to create.
    #
    # @note When making an API call, you may pass CreateGrokClassifierRequest
    #   data as a hash:
    #
    #       {
    #         classification: "Classification", # required
    #         name: "NameString", # required
    #         grok_pattern: "GrokPattern", # required
    #         custom_patterns: "CustomPatterns",
    #       }
    #
    # @!attribute [rw] classification
    #   An identifier of the data format that the classifier matches, such
    #   as Twitter, JSON, Omniture logs, Amazon CloudWatch Logs, and so on.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the new classifier.
    #   @return [String]
    #
    # @!attribute [rw] grok_pattern
    #   The grok pattern used by this classifier.
    #   @return [String]
    #
    # @!attribute [rw] custom_patterns
    #   Optional custom grok patterns used by this classifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateGrokClassifierRequest AWS API Documentation
    #
    class CreateGrokClassifierRequest < Struct.new(
      :classification,
      :name,
      :grok_pattern,
      :custom_patterns)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateJobRequest
    #   data as a hash:
    #
    #       {
    #         name: "NameString", # required
    #         description: "DescriptionString",
    #         log_uri: "UriString",
    #         role: "RoleString", # required
    #         execution_property: {
    #           max_concurrent_runs: 1,
    #         },
    #         command: { # required
    #           name: "GenericString",
    #           script_location: "ScriptLocationString",
    #           python_version: "PythonVersionString",
    #         },
    #         default_arguments: {
    #           "GenericString" => "GenericString",
    #         },
    #         non_overridable_arguments: {
    #           "GenericString" => "GenericString",
    #         },
    #         connections: {
    #           connections: ["GenericString"],
    #         },
    #         max_retries: 1,
    #         allocated_capacity: 1,
    #         timeout: 1,
    #         max_capacity: 1.0,
    #         security_configuration: "NameString",
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         notification_property: {
    #           notify_delay_after: 1,
    #         },
    #         glue_version: "GlueVersionString",
    #         number_of_workers: 1,
    #         worker_type: "Standard", # accepts Standard, G.1X, G.2X
    #       }
    #
    # @!attribute [rw] name
    #   The name you assign to this job definition. It must be unique in
    #   your account.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the job being defined.
    #   @return [String]
    #
    # @!attribute [rw] log_uri
    #   This field is reserved for future use.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The name or Amazon Resource Name (ARN) of the IAM role associated
    #   with this job.
    #   @return [String]
    #
    # @!attribute [rw] execution_property
    #   An `ExecutionProperty` specifying the maximum number of concurrent
    #   runs allowed for this job.
    #   @return [Types::ExecutionProperty]
    #
    # @!attribute [rw] command
    #   The `JobCommand` that executes this job.
    #   @return [Types::JobCommand]
    #
    # @!attribute [rw] default_arguments
    #   The default arguments for this job.
    #
    #   You can specify arguments here that your own job-execution script
    #   consumes, as well as arguments that AWS Glue itself consumes.
    #
    #   For information about how to specify and consume your own Job
    #   arguments, see the [Calling AWS Glue APIs in Python][1] topic in the
    #   developer guide.
    #
    #   For information about the key-value pairs that AWS Glue consumes to
    #   set up your job, see the [Special Parameters Used by AWS Glue][2]
    #   topic in the developer guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html
    #   [2]: https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] non_overridable_arguments
    #   Non-overridable arguments for this job, specified as name-value
    #   pairs.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] connections
    #   The connections used for this job.
    #   @return [Types::ConnectionsList]
    #
    # @!attribute [rw] max_retries
    #   The maximum number of times to retry this job if it fails.
    #   @return [Integer]
    #
    # @!attribute [rw] allocated_capacity
    #   This parameter is deprecated. Use `MaxCapacity` instead.
    #
    #   The number of AWS Glue data processing units (DPUs) to allocate to
    #   this Job. You can allocate from 2 to 100 DPUs; the default is 10. A
    #   DPU is a relative measure of processing power that consists of 4
    #   vCPUs of compute capacity and 16 GB of memory. For more information,
    #   see the [AWS Glue pricing page][1].
    #
    #
    #
    #   [1]: https://aws.amazon.com/glue/pricing/
    #   @return [Integer]
    #
    # @!attribute [rw] timeout
    #   The job timeout in minutes. This is the maximum time that a job run
    #   can consume resources before it is terminated and enters `TIMEOUT`
    #   status. The default is 2,880 minutes (48 hours).
    #   @return [Integer]
    #
    # @!attribute [rw] max_capacity
    #   The number of AWS Glue data processing units (DPUs) that can be
    #   allocated when this job runs. A DPU is a relative measure of
    #   processing power that consists of 4 vCPUs of compute capacity and 16
    #   GB of memory. For more information, see the [AWS Glue pricing
    #   page][1].
    #
    #   Do not set `Max Capacity` if using `WorkerType` and
    #   `NumberOfWorkers`.
    #
    #   The value that can be allocated for `MaxCapacity` depends on whether
    #   you are running a Python shell job or an Apache Spark ETL job:
    #
    #   * When you specify a Python shell job
    #     (`JobCommand.Name`="pythonshell"), you can allocate either
    #     0.0625 or 1 DPU. The default is 0.0625 DPU.
    #
    #   * When you specify an Apache Spark ETL job
    #     (`JobCommand.Name`="glueetl"), you can allocate from 2 to 100
    #     DPUs. The default is 10 DPUs. This job type cannot have a
    #     fractional DPU allocation.
    #
    #
    #
    #   [1]: https://aws.amazon.com/glue/pricing/
    #   @return [Float]
    #
    # @!attribute [rw] security_configuration
    #   The name of the `SecurityConfiguration` structure to be used with
    #   this job.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to use with this job. You may use tags to limit access to
    #   the job. For more information about tags in AWS Glue, see [AWS Tags
    #   in AWS Glue][1] in the developer guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] notification_property
    #   Specifies configuration properties of a job notification.
    #   @return [Types::NotificationProperty]
    #
    # @!attribute [rw] glue_version
    #   Glue version determines the versions of Apache Spark and Python that
    #   AWS Glue supports. The Python version indicates the version
    #   supported for jobs of type Spark.
    #
    #   For more information about the available AWS Glue versions and
    #   corresponding Spark and Python versions, see [Glue version][1] in
    #   the developer guide.
    #
    #   Jobs that are created without specifying a Glue version default to
    #   Glue 0.9.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/add-job.html
    #   @return [String]
    #
    # @!attribute [rw] number_of_workers
    #   The number of workers of a defined `workerType` that are allocated
    #   when a job runs.
    #
    #   The maximum number of workers you can define are 299 for `G.1X`, and
    #   149 for `G.2X`.
    #   @return [Integer]
    #
    # @!attribute [rw] worker_type
    #   The type of predefined worker that is allocated when a job runs.
    #   Accepts a value of Standard, G.1X, or G.2X.
    #
    #   * For the `Standard` worker type, each worker provides 4 vCPU, 16 GB
    #     of memory and a 50GB disk, and 2 executors per worker.
    #
    #   * For the `G.1X` worker type, each worker maps to 1 DPU (4 vCPU, 16
    #     GB of memory, 64 GB disk), and provides 1 executor per worker. We
    #     recommend this worker type for memory-intensive jobs.
    #
    #   * For the `G.2X` worker type, each worker maps to 2 DPU (8 vCPU, 32
    #     GB of memory, 128 GB disk), and provides 1 executor per worker. We
    #     recommend this worker type for memory-intensive jobs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateJobRequest AWS API Documentation
    #
    class CreateJobRequest < Struct.new(
      :name,
      :description,
      :log_uri,
      :role,
      :execution_property,
      :command,
      :default_arguments,
      :non_overridable_arguments,
      :connections,
      :max_retries,
      :allocated_capacity,
      :timeout,
      :max_capacity,
      :security_configuration,
      :tags,
      :notification_property,
      :glue_version,
      :number_of_workers,
      :worker_type)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The unique name that was provided for this job definition.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateJobResponse AWS API Documentation
    #
    class CreateJobResponse < Struct.new(
      :name)
      include Aws::Structure
    end

    # Specifies a JSON classifier for `CreateClassifier` to create.
    #
    # @note When making an API call, you may pass CreateJsonClassifierRequest
    #   data as a hash:
    #
    #       {
    #         name: "NameString", # required
    #         json_path: "JsonPath", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the classifier.
    #   @return [String]
    #
    # @!attribute [rw] json_path
    #   A `JsonPath` string defining the JSON data for the classifier to
    #   classify. AWS Glue supports a subset of `JsonPath`, as described in
    #   [Writing JsonPath Custom Classifiers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/custom-classifier.html#custom-classifier-json
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateJsonClassifierRequest AWS API Documentation
    #
    class CreateJsonClassifierRequest < Struct.new(
      :name,
      :json_path)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateMLTransformRequest
    #   data as a hash:
    #
    #       {
    #         name: "NameString", # required
    #         description: "DescriptionString",
    #         input_record_tables: [ # required
    #           {
    #             database_name: "NameString", # required
    #             table_name: "NameString", # required
    #             catalog_id: "NameString",
    #             connection_name: "NameString",
    #           },
    #         ],
    #         parameters: { # required
    #           transform_type: "FIND_MATCHES", # required, accepts FIND_MATCHES
    #           find_matches_parameters: {
    #             primary_key_column_name: "ColumnNameString",
    #             precision_recall_tradeoff: 1.0,
    #             accuracy_cost_tradeoff: 1.0,
    #             enforce_provided_labels: false,
    #           },
    #         },
    #         role: "RoleString", # required
    #         glue_version: "GlueVersionString",
    #         max_capacity: 1.0,
    #         worker_type: "Standard", # accepts Standard, G.1X, G.2X
    #         number_of_workers: 1,
    #         timeout: 1,
    #         max_retries: 1,
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The unique name that you give the transform when you create it.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the machine learning transform that is being
    #   defined. The default is an empty string.
    #   @return [String]
    #
    # @!attribute [rw] input_record_tables
    #   A list of AWS Glue table definitions used by the transform.
    #   @return [Array<Types::GlueTable>]
    #
    # @!attribute [rw] parameters
    #   The algorithmic parameters that are specific to the transform type
    #   used. Conditionally dependent on the transform type.
    #   @return [Types::TransformParameters]
    #
    # @!attribute [rw] role
    #   The name or Amazon Resource Name (ARN) of the IAM role with the
    #   required permissions. The required permissions include both AWS Glue
    #   service role permissions to AWS Glue resources, and Amazon S3
    #   permissions required by the transform.
    #
    #   * This role needs AWS Glue service role permissions to allow access
    #     to resources in AWS Glue. See [Attach a Policy to IAM Users That
    #     Access AWS Glue][1].
    #
    #   * This role needs permission to your Amazon Simple Storage Service
    #     (Amazon S3) sources, targets, temporary directory, scripts, and
    #     any libraries used by the task run for this transform.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/attach-policy-iam-user.html
    #   @return [String]
    #
    # @!attribute [rw] glue_version
    #   This value determines which version of AWS Glue this machine
    #   learning transform is compatible with. Glue 1.0 is recommended for
    #   most customers. If the value is not set, the Glue compatibility
    #   defaults to Glue 0.9. For more information, see [AWS Glue
    #   Versions][1] in the developer guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/release-notes.html#release-notes-versions
    #   @return [String]
    #
    # @!attribute [rw] max_capacity
    #   The number of AWS Glue data processing units (DPUs) that are
    #   allocated to task runs for this transform. You can allocate from 2
    #   to 100 DPUs; the default is 10. A DPU is a relative measure of
    #   processing power that consists of 4 vCPUs of compute capacity and 16
    #   GB of memory. For more information, see the [AWS Glue pricing
    #   page][1].
    #
    #   `MaxCapacity` is a mutually exclusive option with `NumberOfWorkers`
    #   and `WorkerType`.
    #
    #   * If either `NumberOfWorkers` or `WorkerType` is set, then
    #     `MaxCapacity` cannot be set.
    #
    #   * If `MaxCapacity` is set then neither `NumberOfWorkers` or
    #     `WorkerType` can be set.
    #
    #   * If `WorkerType` is set, then `NumberOfWorkers` is required (and
    #     vice versa).
    #
    #   * `MaxCapacity` and `NumberOfWorkers` must both be at least 1.
    #
    #   When the `WorkerType` field is set to a value other than `Standard`,
    #   the `MaxCapacity` field is set automatically and becomes read-only.
    #
    #   When the `WorkerType` field is set to a value other than `Standard`,
    #   the `MaxCapacity` field is set automatically and becomes read-only.
    #
    #
    #
    #   [1]: https://aws.amazon.com/glue/pricing/
    #   @return [Float]
    #
    # @!attribute [rw] worker_type
    #   The type of predefined worker that is allocated when this task runs.
    #   Accepts a value of Standard, G.1X, or G.2X.
    #
    #   * For the `Standard` worker type, each worker provides 4 vCPU, 16 GB
    #     of memory and a 50GB disk, and 2 executors per worker.
    #
    #   * For the `G.1X` worker type, each worker provides 4 vCPU, 16 GB of
    #     memory and a 64GB disk, and 1 executor per worker.
    #
    #   * For the `G.2X` worker type, each worker provides 8 vCPU, 32 GB of
    #     memory and a 128GB disk, and 1 executor per worker.
    #
    #   `MaxCapacity` is a mutually exclusive option with `NumberOfWorkers`
    #   and `WorkerType`.
    #
    #   * If either `NumberOfWorkers` or `WorkerType` is set, then
    #     `MaxCapacity` cannot be set.
    #
    #   * If `MaxCapacity` is set then neither `NumberOfWorkers` or
    #     `WorkerType` can be set.
    #
    #   * If `WorkerType` is set, then `NumberOfWorkers` is required (and
    #     vice versa).
    #
    #   * `MaxCapacity` and `NumberOfWorkers` must both be at least 1.
    #   @return [String]
    #
    # @!attribute [rw] number_of_workers
    #   The number of workers of a defined `workerType` that are allocated
    #   when this task runs.
    #
    #   If `WorkerType` is set, then `NumberOfWorkers` is required (and vice
    #   versa).
    #   @return [Integer]
    #
    # @!attribute [rw] timeout
    #   The timeout of the task run for this transform in minutes. This is
    #   the maximum time that a task run for this transform can consume
    #   resources before it is terminated and enters `TIMEOUT` status. The
    #   default is 2,880 minutes (48 hours).
    #   @return [Integer]
    #
    # @!attribute [rw] max_retries
    #   The maximum number of times to retry a task for this transform after
    #   a task run fails.
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   The tags to use with this machine learning transform. You may use
    #   tags to limit access to the machine learning transform. For more
    #   information about tags in AWS Glue, see [AWS Tags in AWS Glue][1] in
    #   the developer guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateMLTransformRequest AWS API Documentation
    #
    class CreateMLTransformRequest < Struct.new(
      :name,
      :description,
      :input_record_tables,
      :parameters,
      :role,
      :glue_version,
      :max_capacity,
      :worker_type,
      :number_of_workers,
      :timeout,
      :max_retries,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] transform_id
    #   A unique identifier that is generated for the transform.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateMLTransformResponse AWS API Documentation
    #
    class CreateMLTransformResponse < Struct.new(
      :transform_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreatePartitionRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         table_name: "NameString", # required
    #         partition_input: { # required
    #           values: ["ValueString"],
    #           last_access_time: Time.now,
    #           storage_descriptor: {
    #             columns: [
    #               {
    #                 name: "NameString", # required
    #                 type: "ColumnTypeString",
    #                 comment: "CommentString",
    #                 parameters: {
    #                   "KeyString" => "ParametersMapValue",
    #                 },
    #               },
    #             ],
    #             location: "LocationString",
    #             input_format: "FormatString",
    #             output_format: "FormatString",
    #             compressed: false,
    #             number_of_buckets: 1,
    #             serde_info: {
    #               name: "NameString",
    #               serialization_library: "NameString",
    #               parameters: {
    #                 "KeyString" => "ParametersMapValue",
    #               },
    #             },
    #             bucket_columns: ["NameString"],
    #             sort_columns: [
    #               {
    #                 column: "NameString", # required
    #                 sort_order: 1, # required
    #               },
    #             ],
    #             parameters: {
    #               "KeyString" => "ParametersMapValue",
    #             },
    #             skewed_info: {
    #               skewed_column_names: ["NameString"],
    #               skewed_column_values: ["ColumnValuesString"],
    #               skewed_column_value_location_maps: {
    #                 "ColumnValuesString" => "ColumnValuesString",
    #               },
    #             },
    #             stored_as_sub_directories: false,
    #           },
    #           parameters: {
    #             "KeyString" => "ParametersMapValue",
    #           },
    #           last_analyzed_time: Time.now,
    #         },
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The AWS account ID of the catalog in which the partition is to be
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the metadata database in which the partition is to be
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the metadata table in which the partition is to be
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] partition_input
    #   A `PartitionInput` structure defining the partition to be created.
    #   @return [Types::PartitionInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreatePartitionRequest AWS API Documentation
    #
    class CreatePartitionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :partition_input)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreatePartitionResponse AWS API Documentation
    #
    class CreatePartitionResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass CreateScriptRequest
    #   data as a hash:
    #
    #       {
    #         dag_nodes: [
    #           {
    #             id: "CodeGenIdentifier", # required
    #             node_type: "CodeGenNodeType", # required
    #             args: [ # required
    #               {
    #                 name: "CodeGenArgName", # required
    #                 value: "CodeGenArgValue", # required
    #                 param: false,
    #               },
    #             ],
    #             line_number: 1,
    #           },
    #         ],
    #         dag_edges: [
    #           {
    #             source: "CodeGenIdentifier", # required
    #             target: "CodeGenIdentifier", # required
    #             target_parameter: "CodeGenArgName",
    #           },
    #         ],
    #         language: "PYTHON", # accepts PYTHON, SCALA
    #       }
    #
    # @!attribute [rw] dag_nodes
    #   A list of the nodes in the DAG.
    #   @return [Array<Types::CodeGenNode>]
    #
    # @!attribute [rw] dag_edges
    #   A list of the edges in the DAG.
    #   @return [Array<Types::CodeGenEdge>]
    #
    # @!attribute [rw] language
    #   The programming language of the resulting code from the DAG.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateScriptRequest AWS API Documentation
    #
    class CreateScriptRequest < Struct.new(
      :dag_nodes,
      :dag_edges,
      :language)
      include Aws::Structure
    end

    # @!attribute [rw] python_script
    #   The Python script generated from the DAG.
    #   @return [String]
    #
    # @!attribute [rw] scala_code
    #   The Scala code generated from the DAG.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateScriptResponse AWS API Documentation
    #
    class CreateScriptResponse < Struct.new(
      :python_script,
      :scala_code)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateSecurityConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         name: "NameString", # required
    #         encryption_configuration: { # required
    #           s3_encryption: [
    #             {
    #               s3_encryption_mode: "DISABLED", # accepts DISABLED, SSE-KMS, SSE-S3
    #               kms_key_arn: "KmsKeyArn",
    #             },
    #           ],
    #           cloud_watch_encryption: {
    #             cloud_watch_encryption_mode: "DISABLED", # accepts DISABLED, SSE-KMS
    #             kms_key_arn: "KmsKeyArn",
    #           },
    #           job_bookmarks_encryption: {
    #             job_bookmarks_encryption_mode: "DISABLED", # accepts DISABLED, CSE-KMS
    #             kms_key_arn: "KmsKeyArn",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name for the new security configuration.
    #   @return [String]
    #
    # @!attribute [rw] encryption_configuration
    #   The encryption configuration for the new security configuration.
    #   @return [Types::EncryptionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateSecurityConfigurationRequest AWS API Documentation
    #
    class CreateSecurityConfigurationRequest < Struct.new(
      :name,
      :encryption_configuration)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name assigned to the new security configuration.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The time at which the new security configuration was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateSecurityConfigurationResponse AWS API Documentation
    #
    class CreateSecurityConfigurationResponse < Struct.new(
      :name,
      :created_timestamp)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateTableRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         table_input: { # required
    #           name: "NameString", # required
    #           description: "DescriptionString",
    #           owner: "NameString",
    #           last_access_time: Time.now,
    #           last_analyzed_time: Time.now,
    #           retention: 1,
    #           storage_descriptor: {
    #             columns: [
    #               {
    #                 name: "NameString", # required
    #                 type: "ColumnTypeString",
    #                 comment: "CommentString",
    #                 parameters: {
    #                   "KeyString" => "ParametersMapValue",
    #                 },
    #               },
    #             ],
    #             location: "LocationString",
    #             input_format: "FormatString",
    #             output_format: "FormatString",
    #             compressed: false,
    #             number_of_buckets: 1,
    #             serde_info: {
    #               name: "NameString",
    #               serialization_library: "NameString",
    #               parameters: {
    #                 "KeyString" => "ParametersMapValue",
    #               },
    #             },
    #             bucket_columns: ["NameString"],
    #             sort_columns: [
    #               {
    #                 column: "NameString", # required
    #                 sort_order: 1, # required
    #               },
    #             ],
    #             parameters: {
    #               "KeyString" => "ParametersMapValue",
    #             },
    #             skewed_info: {
    #               skewed_column_names: ["NameString"],
    #               skewed_column_values: ["ColumnValuesString"],
    #               skewed_column_value_location_maps: {
    #                 "ColumnValuesString" => "ColumnValuesString",
    #               },
    #             },
    #             stored_as_sub_directories: false,
    #           },
    #           partition_keys: [
    #             {
    #               name: "NameString", # required
    #               type: "ColumnTypeString",
    #               comment: "CommentString",
    #               parameters: {
    #                 "KeyString" => "ParametersMapValue",
    #               },
    #             },
    #           ],
    #           view_original_text: "ViewTextString",
    #           view_expanded_text: "ViewTextString",
    #           table_type: "TableTypeString",
    #           parameters: {
    #             "KeyString" => "ParametersMapValue",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog in which to create the `Table`. If none
    #   is supplied, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The catalog database in which to create the new table. For Hive
    #   compatibility, this name is entirely lowercase.
    #   @return [String]
    #
    # @!attribute [rw] table_input
    #   The `TableInput` object that defines the metadata table to create in
    #   the catalog.
    #   @return [Types::TableInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateTableRequest AWS API Documentation
    #
    class CreateTableRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_input)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateTableResponse AWS API Documentation
    #
    class CreateTableResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass CreateTriggerRequest
    #   data as a hash:
    #
    #       {
    #         name: "NameString", # required
    #         workflow_name: "NameString",
    #         type: "SCHEDULED", # required, accepts SCHEDULED, CONDITIONAL, ON_DEMAND
    #         schedule: "GenericString",
    #         predicate: {
    #           logical: "AND", # accepts AND, ANY
    #           conditions: [
    #             {
    #               logical_operator: "EQUALS", # accepts EQUALS
    #               job_name: "NameString",
    #               state: "STARTING", # accepts STARTING, RUNNING, STOPPING, STOPPED, SUCCEEDED, FAILED, TIMEOUT
    #               crawler_name: "NameString",
    #               crawl_state: "RUNNING", # accepts RUNNING, CANCELLING, CANCELLED, SUCCEEDED, FAILED
    #             },
    #           ],
    #         },
    #         actions: [ # required
    #           {
    #             job_name: "NameString",
    #             arguments: {
    #               "GenericString" => "GenericString",
    #             },
    #             timeout: 1,
    #             security_configuration: "NameString",
    #             notification_property: {
    #               notify_delay_after: 1,
    #             },
    #             crawler_name: "NameString",
    #           },
    #         ],
    #         description: "DescriptionString",
    #         start_on_creation: false,
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name of the trigger.
    #   @return [String]
    #
    # @!attribute [rw] workflow_name
    #   The name of the workflow associated with the trigger.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the new trigger.
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   A `cron` expression used to specify the schedule (see [Time-Based
    #   Schedules for Jobs and Crawlers][1]. For example, to run something
    #   every day at 12:15 UTC, you would specify: `cron(15 12 * * ? *)`.
    #
    #   This field is required when the trigger type is SCHEDULED.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html
    #   @return [String]
    #
    # @!attribute [rw] predicate
    #   A predicate to specify when the new trigger should fire.
    #
    #   This field is required when the trigger type is `CONDITIONAL`.
    #   @return [Types::Predicate]
    #
    # @!attribute [rw] actions
    #   The actions initiated by this trigger when it fires.
    #   @return [Array<Types::Action>]
    #
    # @!attribute [rw] description
    #   A description of the new trigger.
    #   @return [String]
    #
    # @!attribute [rw] start_on_creation
    #   Set to `true` to start `SCHEDULED` and `CONDITIONAL` triggers when
    #   created. True is not supported for `ON_DEMAND` triggers.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   The tags to use with this trigger. You may use tags to limit access
    #   to the trigger. For more information about tags in AWS Glue, see
    #   [AWS Tags in AWS Glue][1] in the developer guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateTriggerRequest AWS API Documentation
    #
    class CreateTriggerRequest < Struct.new(
      :name,
      :workflow_name,
      :type,
      :schedule,
      :predicate,
      :actions,
      :description,
      :start_on_creation,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the trigger.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateTriggerResponse AWS API Documentation
    #
    class CreateTriggerResponse < Struct.new(
      :name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateUserDefinedFunctionRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         function_input: { # required
    #           function_name: "NameString",
    #           class_name: "NameString",
    #           owner_name: "NameString",
    #           owner_type: "USER", # accepts USER, ROLE, GROUP
    #           resource_uris: [
    #             {
    #               resource_type: "JAR", # accepts JAR, FILE, ARCHIVE
    #               uri: "URI",
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog in which to create the function. If none
    #   is provided, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the catalog database in which to create the function.
    #   @return [String]
    #
    # @!attribute [rw] function_input
    #   A `FunctionInput` object that defines the function to create in the
    #   Data Catalog.
    #   @return [Types::UserDefinedFunctionInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateUserDefinedFunctionRequest AWS API Documentation
    #
    class CreateUserDefinedFunctionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :function_input)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateUserDefinedFunctionResponse AWS API Documentation
    #
    class CreateUserDefinedFunctionResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass CreateWorkflowRequest
    #   data as a hash:
    #
    #       {
    #         name: "NameString", # required
    #         description: "GenericString",
    #         default_run_properties: {
    #           "IdString" => "GenericString",
    #         },
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name to be assigned to the workflow. It should be unique within
    #   your account.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] default_run_properties
    #   A collection of properties to be used as part of each execution of
    #   the workflow.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tags
    #   The tags to be used with this workflow.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateWorkflowRequest AWS API Documentation
    #
    class CreateWorkflowRequest < Struct.new(
      :name,
      :description,
      :default_run_properties,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the workflow which was provided as part of the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateWorkflowResponse AWS API Documentation
    #
    class CreateWorkflowResponse < Struct.new(
      :name)
      include Aws::Structure
    end

    # Specifies an XML classifier for `CreateClassifier` to create.
    #
    # @note When making an API call, you may pass CreateXMLClassifierRequest
    #   data as a hash:
    #
    #       {
    #         classification: "Classification", # required
    #         name: "NameString", # required
    #         row_tag: "RowTag",
    #       }
    #
    # @!attribute [rw] classification
    #   An identifier of the data format that the classifier matches.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the classifier.
    #   @return [String]
    #
    # @!attribute [rw] row_tag
    #   The XML tag designating the element that contains each record in an
    #   XML document being parsed. This can't identify a self-closing
    #   element (closed by `/>`). An empty row element that contains only
    #   attributes can be parsed as long as it ends with a closing tag (for
    #   example, `<row item_a="A" item_b="B"></row>` is okay, but `<row
    #   item_a="A" item_b="B" />` is not).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateXMLClassifierRequest AWS API Documentation
    #
    class CreateXMLClassifierRequest < Struct.new(
      :classification,
      :name,
      :row_tag)
      include Aws::Structure
    end

    # A classifier for custom `CSV` content.
    #
    # @!attribute [rw] name
    #   The name of the classifier.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time that this classifier was registered.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated
    #   The time that this classifier was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] version
    #   The version of this classifier.
    #   @return [Integer]
    #
    # @!attribute [rw] delimiter
    #   A custom symbol to denote what separates each column entry in the
    #   row.
    #   @return [String]
    #
    # @!attribute [rw] quote_symbol
    #   A custom symbol to denote what combines content into a single column
    #   value. It must be different from the column delimiter.
    #   @return [String]
    #
    # @!attribute [rw] contains_header
    #   Indicates whether the CSV file contains a header.
    #   @return [String]
    #
    # @!attribute [rw] header
    #   A list of strings representing column names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] disable_value_trimming
    #   Specifies not to trim values before identifying the type of column
    #   values. The default value is `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] allow_single_column
    #   Enables the processing of files that contain only one column.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CsvClassifier AWS API Documentation
    #
    class CsvClassifier < Struct.new(
      :name,
      :creation_time,
      :last_updated,
      :version,
      :delimiter,
      :quote_symbol,
      :contains_header,
      :header,
      :disable_value_trimming,
      :allow_single_column)
      include Aws::Structure
    end

    # Contains configuration information for maintaining Data Catalog
    # security.
    #
    # @note When making an API call, you may pass DataCatalogEncryptionSettings
    #   data as a hash:
    #
    #       {
    #         encryption_at_rest: {
    #           catalog_encryption_mode: "DISABLED", # required, accepts DISABLED, SSE-KMS
    #           sse_aws_kms_key_id: "NameString",
    #         },
    #         connection_password_encryption: {
    #           return_connection_password_encrypted: false, # required
    #           aws_kms_key_id: "NameString",
    #         },
    #       }
    #
    # @!attribute [rw] encryption_at_rest
    #   Specifies the encryption-at-rest configuration for the Data Catalog.
    #   @return [Types::EncryptionAtRest]
    #
    # @!attribute [rw] connection_password_encryption
    #   When connection password protection is enabled, the Data Catalog
    #   uses a customer-provided key to encrypt the password as part of
    #   `CreateConnection` or `UpdateConnection` and store it in the
    #   `ENCRYPTED_PASSWORD` field in the connection properties. You can
    #   enable catalog encryption or only password encryption.
    #   @return [Types::ConnectionPasswordEncryption]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DataCatalogEncryptionSettings AWS API Documentation
    #
    class DataCatalogEncryptionSettings < Struct.new(
      :encryption_at_rest,
      :connection_password_encryption)
      include Aws::Structure
    end

    # The AWS Lake Formation principal.
    #
    # @note When making an API call, you may pass DataLakePrincipal
    #   data as a hash:
    #
    #       {
    #         data_lake_principal_identifier: "DataLakePrincipalString",
    #       }
    #
    # @!attribute [rw] data_lake_principal_identifier
    #   An identifier for the AWS Lake Formation principal.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DataLakePrincipal AWS API Documentation
    #
    class DataLakePrincipal < Struct.new(
      :data_lake_principal_identifier)
      include Aws::Structure
    end

    # The `Database` object represents a logical grouping of tables that
    # might reside in a Hive metastore or an RDBMS.
    #
    # @!attribute [rw] name
    #   The name of the database. For Hive compatibility, this is folded to
    #   lowercase when it is stored.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the database.
    #   @return [String]
    #
    # @!attribute [rw] location_uri
    #   The location of the database (for example, an HDFS path).
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   These key-value pairs define parameters and properties of the
    #   database.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] create_time
    #   The time at which the metadata database was created in the catalog.
    #   @return [Time]
    #
    # @!attribute [rw] create_table_default_permissions
    #   Creates a set of default permissions on the table for principals.
    #   @return [Array<Types::PrincipalPermissions>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Database AWS API Documentation
    #
    class Database < Struct.new(
      :name,
      :description,
      :location_uri,
      :parameters,
      :create_time,
      :create_table_default_permissions)
      include Aws::Structure
    end

    # The structure used to create or update a database.
    #
    # @note When making an API call, you may pass DatabaseInput
    #   data as a hash:
    #
    #       {
    #         name: "NameString", # required
    #         description: "DescriptionString",
    #         location_uri: "URI",
    #         parameters: {
    #           "KeyString" => "ParametersMapValue",
    #         },
    #         create_table_default_permissions: [
    #           {
    #             principal: {
    #               data_lake_principal_identifier: "DataLakePrincipalString",
    #             },
    #             permissions: ["ALL"], # accepts ALL, SELECT, ALTER, DROP, DELETE, INSERT, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] name
    #   The name of the database. For Hive compatibility, this is folded to
    #   lowercase when it is stored.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the database.
    #   @return [String]
    #
    # @!attribute [rw] location_uri
    #   The location of the database (for example, an HDFS path).
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   These key-value pairs define parameters and properties of the
    #   database.
    #
    #   These key-value pairs define parameters and properties of the
    #   database.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] create_table_default_permissions
    #   Creates a set of default permissions on the table for principals.
    #   @return [Array<Types::PrincipalPermissions>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DatabaseInput AWS API Documentation
    #
    class DatabaseInput < Struct.new(
      :name,
      :description,
      :location_uri,
      :parameters,
      :create_table_default_permissions)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteClassifierRequest
    #   data as a hash:
    #
    #       {
    #         name: "NameString", # required
    #       }
    #
    # @!attribute [rw] name
    #   Name of the classifier to remove.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteClassifierRequest AWS API Documentation
    #
    class DeleteClassifierRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteClassifierResponse AWS API Documentation
    #
    class DeleteClassifierResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteConnectionRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         connection_name: "NameString", # required
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog in which the connection resides. If none
    #   is provided, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] connection_name
    #   The name of the connection to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteConnectionRequest AWS API Documentation
    #
    class DeleteConnectionRequest < Struct.new(
      :catalog_id,
      :connection_name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteConnectionResponse AWS API Documentation
    #
    class DeleteConnectionResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteCrawlerRequest
    #   data as a hash:
    #
    #       {
    #         name: "NameString", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the crawler to remove.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteCrawlerRequest AWS API Documentation
    #
    class DeleteCrawlerRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteCrawlerResponse AWS API Documentation
    #
    class DeleteCrawlerResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteDatabaseRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         name: "NameString", # required
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog in which the database resides. If none is
    #   provided, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the database to delete. For Hive compatibility, this
    #   must be all lowercase.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteDatabaseRequest AWS API Documentation
    #
    class DeleteDatabaseRequest < Struct.new(
      :catalog_id,
      :name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteDatabaseResponse AWS API Documentation
    #
    class DeleteDatabaseResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteDevEndpointRequest
    #   data as a hash:
    #
    #       {
    #         endpoint_name: "GenericString", # required
    #       }
    #
    # @!attribute [rw] endpoint_name
    #   The name of the `DevEndpoint`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteDevEndpointRequest AWS API Documentation
    #
    class DeleteDevEndpointRequest < Struct.new(
      :endpoint_name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteDevEndpointResponse AWS API Documentation
    #
    class DeleteDevEndpointResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteJobRequest
    #   data as a hash:
    #
    #       {
    #         job_name: "NameString", # required
    #       }
    #
    # @!attribute [rw] job_name
    #   The name of the job definition to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteJobRequest AWS API Documentation
    #
    class DeleteJobRequest < Struct.new(
      :job_name)
      include Aws::Structure
    end

    # @!attribute [rw] job_name
    #   The name of the job definition that was deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteJobResponse AWS API Documentation
    #
    class DeleteJobResponse < Struct.new(
      :job_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteMLTransformRequest
    #   data as a hash:
    #
    #       {
    #         transform_id: "HashString", # required
    #       }
    #
    # @!attribute [rw] transform_id
    #   The unique identifier of the transform to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteMLTransformRequest AWS API Documentation
    #
    class DeleteMLTransformRequest < Struct.new(
      :transform_id)
      include Aws::Structure
    end

    # @!attribute [rw] transform_id
    #   The unique identifier of the transform that was deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteMLTransformResponse AWS API Documentation
    #
    class DeleteMLTransformResponse < Struct.new(
      :transform_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeletePartitionRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         table_name: "NameString", # required
    #         partition_values: ["ValueString"], # required
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the partition to be deleted
    #   resides. If none is provided, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the catalog database in which the table in question
    #   resides.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table that contains the partition to be deleted.
    #   @return [String]
    #
    # @!attribute [rw] partition_values
    #   The values that define the partition.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeletePartitionRequest AWS API Documentation
    #
    class DeletePartitionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :partition_values)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeletePartitionResponse AWS API Documentation
    #
    class DeletePartitionResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteResourcePolicyRequest
    #   data as a hash:
    #
    #       {
    #         policy_hash_condition: "HashString",
    #       }
    #
    # @!attribute [rw] policy_hash_condition
    #   The hash value returned when this policy was set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteResourcePolicyRequest AWS API Documentation
    #
    class DeleteResourcePolicyRequest < Struct.new(
      :policy_hash_condition)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteResourcePolicyResponse AWS API Documentation
    #
    class DeleteResourcePolicyResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteSecurityConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         name: "NameString", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the security configuration to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteSecurityConfigurationRequest AWS API Documentation
    #
    class DeleteSecurityConfigurationRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteSecurityConfigurationResponse AWS API Documentation
    #
    class DeleteSecurityConfigurationResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteTableRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         name: "NameString", # required
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the table resides. If none is
    #   provided, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the catalog database in which the table resides. For
    #   Hive compatibility, this name is entirely lowercase.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the table to be deleted. For Hive compatibility, this
    #   name is entirely lowercase.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteTableRequest AWS API Documentation
    #
    class DeleteTableRequest < Struct.new(
      :catalog_id,
      :database_name,
      :name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteTableResponse AWS API Documentation
    #
    class DeleteTableResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteTableVersionRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         table_name: "NameString", # required
    #         version_id: "VersionString", # required
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the tables reside. If none is
    #   provided, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The database in the catalog in which the table resides. For Hive
    #   compatibility, this name is entirely lowercase.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table. For Hive compatibility, this name is entirely
    #   lowercase.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The ID of the table version to be deleted. A `VersionID` is a string
    #   representation of an integer. Each version is incremented by 1.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteTableVersionRequest AWS API Documentation
    #
    class DeleteTableVersionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :version_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteTableVersionResponse AWS API Documentation
    #
    class DeleteTableVersionResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteTriggerRequest
    #   data as a hash:
    #
    #       {
    #         name: "NameString", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the trigger to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteTriggerRequest AWS API Documentation
    #
    class DeleteTriggerRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the trigger that was deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteTriggerResponse AWS API Documentation
    #
    class DeleteTriggerResponse < Struct.new(
      :name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteUserDefinedFunctionRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         function_name: "NameString", # required
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the function to be deleted is
    #   located. If none is supplied, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the catalog database where the function is located.
    #   @return [String]
    #
    # @!attribute [rw] function_name
    #   The name of the function definition to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteUserDefinedFunctionRequest AWS API Documentation
    #
    class DeleteUserDefinedFunctionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :function_name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteUserDefinedFunctionResponse AWS API Documentation
    #
    class DeleteUserDefinedFunctionResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteWorkflowRequest
    #   data as a hash:
    #
    #       {
    #         name: "NameString", # required
    #       }
    #
    # @!attribute [rw] name
    #   Name of the workflow to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteWorkflowRequest AWS API Documentation
    #
    class DeleteWorkflowRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   Name of the workflow specified in input.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteWorkflowResponse AWS API Documentation
    #
    class DeleteWorkflowResponse < Struct.new(
      :name)
      include Aws::Structure
    end

    # A development endpoint where a developer can remotely debug extract,
    # transform, and load (ETL) scripts.
    #
    # @!attribute [rw] endpoint_name
    #   The name of the `DevEndpoint`.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role used in this
    #   `DevEndpoint`.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   A list of security group identifiers used in this `DevEndpoint`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_id
    #   The subnet ID for this `DevEndpoint`.
    #   @return [String]
    #
    # @!attribute [rw] yarn_endpoint_address
    #   The YARN endpoint address used by this `DevEndpoint`.
    #   @return [String]
    #
    # @!attribute [rw] private_address
    #   A private IP address to access the `DevEndpoint` within a VPC if the
    #   `DevEndpoint` is created within one. The `PrivateAddress` field is
    #   present only when you create the `DevEndpoint` within your VPC.
    #   @return [String]
    #
    # @!attribute [rw] zeppelin_remote_spark_interpreter_port
    #   The Apache Zeppelin port for the remote Apache Spark interpreter.
    #   @return [Integer]
    #
    # @!attribute [rw] public_address
    #   The public IP address used by this `DevEndpoint`. The
    #   `PublicAddress` field is present only when you create a non-virtual
    #   private cloud (VPC) `DevEndpoint`.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of this `DevEndpoint`.
    #   @return [String]
    #
    # @!attribute [rw] worker_type
    #   The type of predefined worker that is allocated to the development
    #   endpoint. Accepts a value of Standard, G.1X, or G.2X.
    #
    #   * For the `Standard` worker type, each worker provides 4 vCPU, 16 GB
    #     of memory and a 50GB disk, and 2 executors per worker.
    #
    #   * For the `G.1X` worker type, each worker maps to 1 DPU (4 vCPU, 16
    #     GB of memory, 64 GB disk), and provides 1 executor per worker. We
    #     recommend this worker type for memory-intensive jobs.
    #
    #   * For the `G.2X` worker type, each worker maps to 2 DPU (8 vCPU, 32
    #     GB of memory, 128 GB disk), and provides 1 executor per worker. We
    #     recommend this worker type for memory-intensive jobs.
    #
    #   Known issue: when a development endpoint is created with the `G.2X`
    #   `WorkerType` configuration, the Spark drivers for the development
    #   endpoint will run on 4 vCPU, 16 GB of memory, and a 64 GB disk.
    #   @return [String]
    #
    # @!attribute [rw] glue_version
    #   Glue version determines the versions of Apache Spark and Python that
    #   AWS Glue supports. The Python version indicates the version
    #   supported for running your ETL scripts on development endpoints.
    #
    #   For more information about the available AWS Glue versions and
    #   corresponding Spark and Python versions, see [Glue version][1] in
    #   the developer guide.
    #
    #   Development endpoints that are created without specifying a Glue
    #   version default to Glue 0.9.
    #
    #   You can specify a version of Python support for development
    #   endpoints by using the `Arguments` parameter in the
    #   `CreateDevEndpoint` or `UpdateDevEndpoint` APIs. If no arguments are
    #   provided, the version defaults to Python 2.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/add-job.html
    #   @return [String]
    #
    # @!attribute [rw] number_of_workers
    #   The number of workers of a defined `workerType` that are allocated
    #   to the development endpoint.
    #
    #   The maximum number of workers you can define are 299 for `G.1X`, and
    #   149 for `G.2X`.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_nodes
    #   The number of AWS Glue Data Processing Units (DPUs) allocated to
    #   this `DevEndpoint`.
    #   @return [Integer]
    #
    # @!attribute [rw] availability_zone
    #   The AWS Availability Zone where this `DevEndpoint` is located.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the virtual private cloud (VPC) used by this
    #   `DevEndpoint`.
    #   @return [String]
    #
    # @!attribute [rw] extra_python_libs_s3_path
    #   The paths to one or more Python libraries in an Amazon S3 bucket
    #   that should be loaded in your `DevEndpoint`. Multiple values must be
    #   complete paths separated by a comma.
    #
    #   <note markdown="1"> You can only use pure Python libraries with a `DevEndpoint`.
    #   Libraries that rely on C extensions, such as the [pandas][1] Python
    #   data analysis library, are not currently supported.
    #
    #    </note>
    #
    #
    #
    #   [1]: http://pandas.pydata.org/
    #   @return [String]
    #
    # @!attribute [rw] extra_jars_s3_path
    #   The path to one or more Java `.jar` files in an S3 bucket that
    #   should be loaded in your `DevEndpoint`.
    #
    #   <note markdown="1"> You can only use pure Java/Scala libraries with a `DevEndpoint`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   The reason for a current failure in this `DevEndpoint`.
    #   @return [String]
    #
    # @!attribute [rw] last_update_status
    #   The status of the last update.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The point in time at which this DevEndpoint was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_timestamp
    #   The point in time at which this `DevEndpoint` was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] public_key
    #   The public key to be used by this `DevEndpoint` for authentication.
    #   This attribute is provided for backward compatibility because the
    #   recommended attribute to use is public keys.
    #   @return [String]
    #
    # @!attribute [rw] public_keys
    #   A list of public keys to be used by the `DevEndpoints` for
    #   authentication. Using this attribute is preferred over a single
    #   public key because the public keys allow you to have a different
    #   private key per client.
    #
    #   <note markdown="1"> If you previously created an endpoint with a public key, you must
    #   remove that key to be able to set a list of public keys. Call the
    #   `UpdateDevEndpoint` API operation with the public key content in the
    #   `deletePublicKeys` attribute, and the list of new keys in the
    #   `addPublicKeys` attribute.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_configuration
    #   The name of the `SecurityConfiguration` structure to be used with
    #   this `DevEndpoint`.
    #   @return [String]
    #
    # @!attribute [rw] arguments
    #   A map of arguments used to configure the `DevEndpoint`.
    #
    #   Valid arguments are:
    #
    #   * `"--enable-glue-datacatalog": ""`
    #
    #   * `"GLUE_PYTHON_VERSION": "3"`
    #
    #   * `"GLUE_PYTHON_VERSION": "2"`
    #
    #   You can specify a version of Python support for development
    #   endpoints by using the `Arguments` parameter in the
    #   `CreateDevEndpoint` or `UpdateDevEndpoint` APIs. If no arguments are
    #   provided, the version defaults to Python 2.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DevEndpoint AWS API Documentation
    #
    class DevEndpoint < Struct.new(
      :endpoint_name,
      :role_arn,
      :security_group_ids,
      :subnet_id,
      :yarn_endpoint_address,
      :private_address,
      :zeppelin_remote_spark_interpreter_port,
      :public_address,
      :status,
      :worker_type,
      :glue_version,
      :number_of_workers,
      :number_of_nodes,
      :availability_zone,
      :vpc_id,
      :extra_python_libs_s3_path,
      :extra_jars_s3_path,
      :failure_reason,
      :last_update_status,
      :created_timestamp,
      :last_modified_timestamp,
      :public_key,
      :public_keys,
      :security_configuration,
      :arguments)
      include Aws::Structure
    end

    # Custom libraries to be loaded into a development endpoint.
    #
    # @note When making an API call, you may pass DevEndpointCustomLibraries
    #   data as a hash:
    #
    #       {
    #         extra_python_libs_s3_path: "GenericString",
    #         extra_jars_s3_path: "GenericString",
    #       }
    #
    # @!attribute [rw] extra_python_libs_s3_path
    #   The paths to one or more Python libraries in an Amazon Simple
    #   Storage Service (Amazon S3) bucket that should be loaded in your
    #   `DevEndpoint`. Multiple values must be complete paths separated by a
    #   comma.
    #
    #   <note markdown="1"> You can only use pure Python libraries with a `DevEndpoint`.
    #   Libraries that rely on C extensions, such as the [pandas][1] Python
    #   data analysis library, are not currently supported.
    #
    #    </note>
    #
    #
    #
    #   [1]: http://pandas.pydata.org/
    #   @return [String]
    #
    # @!attribute [rw] extra_jars_s3_path
    #   The path to one or more Java `.jar` files in an S3 bucket that
    #   should be loaded in your `DevEndpoint`.
    #
    #   <note markdown="1"> You can only use pure Java/Scala libraries with a `DevEndpoint`.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DevEndpointCustomLibraries AWS API Documentation
    #
    class DevEndpointCustomLibraries < Struct.new(
      :extra_python_libs_s3_path,
      :extra_jars_s3_path)
      include Aws::Structure
    end

    # Specifies an Amazon DynamoDB table to crawl.
    #
    # @note When making an API call, you may pass DynamoDBTarget
    #   data as a hash:
    #
    #       {
    #         path: "Path",
    #       }
    #
    # @!attribute [rw] path
    #   The name of the DynamoDB table to crawl.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DynamoDBTarget AWS API Documentation
    #
    class DynamoDBTarget < Struct.new(
      :path)
      include Aws::Structure
    end

    # An edge represents a directed connection between two AWS Glue
    # components which are part of the workflow the edge belongs to.
    #
    # @!attribute [rw] source_id
    #   The unique of the node within the workflow where the edge starts.
    #   @return [String]
    #
    # @!attribute [rw] destination_id
    #   The unique of the node within the workflow where the edge ends.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Edge AWS API Documentation
    #
    class Edge < Struct.new(
      :source_id,
      :destination_id)
      include Aws::Structure
    end

    # Specifies the encryption-at-rest configuration for the Data Catalog.
    #
    # @note When making an API call, you may pass EncryptionAtRest
    #   data as a hash:
    #
    #       {
    #         catalog_encryption_mode: "DISABLED", # required, accepts DISABLED, SSE-KMS
    #         sse_aws_kms_key_id: "NameString",
    #       }
    #
    # @!attribute [rw] catalog_encryption_mode
    #   The encryption-at-rest mode for encrypting Data Catalog data.
    #   @return [String]
    #
    # @!attribute [rw] sse_aws_kms_key_id
    #   The ID of the AWS KMS key to use for encryption at rest.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/EncryptionAtRest AWS API Documentation
    #
    class EncryptionAtRest < Struct.new(
      :catalog_encryption_mode,
      :sse_aws_kms_key_id)
      include Aws::Structure
    end

    # Specifies an encryption configuration.
    #
    # @note When making an API call, you may pass EncryptionConfiguration
    #   data as a hash:
    #
    #       {
    #         s3_encryption: [
    #           {
    #             s3_encryption_mode: "DISABLED", # accepts DISABLED, SSE-KMS, SSE-S3
    #             kms_key_arn: "KmsKeyArn",
    #           },
    #         ],
    #         cloud_watch_encryption: {
    #           cloud_watch_encryption_mode: "DISABLED", # accepts DISABLED, SSE-KMS
    #           kms_key_arn: "KmsKeyArn",
    #         },
    #         job_bookmarks_encryption: {
    #           job_bookmarks_encryption_mode: "DISABLED", # accepts DISABLED, CSE-KMS
    #           kms_key_arn: "KmsKeyArn",
    #         },
    #       }
    #
    # @!attribute [rw] s3_encryption
    #   The encryption configuration for Amazon Simple Storage Service
    #   (Amazon S3) data.
    #   @return [Array<Types::S3Encryption>]
    #
    # @!attribute [rw] cloud_watch_encryption
    #   The encryption configuration for Amazon CloudWatch.
    #   @return [Types::CloudWatchEncryption]
    #
    # @!attribute [rw] job_bookmarks_encryption
    #   The encryption configuration for job bookmarks.
    #   @return [Types::JobBookmarksEncryption]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/EncryptionConfiguration AWS API Documentation
    #
    class EncryptionConfiguration < Struct.new(
      :s3_encryption,
      :cloud_watch_encryption,
      :job_bookmarks_encryption)
      include Aws::Structure
    end

    # A specified entity does not exist
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/EntityNotFoundException AWS API Documentation
    #
    class EntityNotFoundException < Struct.new(
      :message)
      include Aws::Structure
    end

    # Contains details about an error.
    #
    # @!attribute [rw] error_code
    #   The code associated with this error.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   A message describing the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ErrorDetail AWS API Documentation
    #
    class ErrorDetail < Struct.new(
      :error_code,
      :error_message)
      include Aws::Structure
    end

    # Evaluation metrics provide an estimate of the quality of your machine
    # learning transform.
    #
    # @!attribute [rw] transform_type
    #   The type of machine learning transform.
    #   @return [String]
    #
    # @!attribute [rw] find_matches_metrics
    #   The evaluation metrics for the find matches algorithm.
    #   @return [Types::FindMatchesMetrics]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/EvaluationMetrics AWS API Documentation
    #
    class EvaluationMetrics < Struct.new(
      :transform_type,
      :find_matches_metrics)
      include Aws::Structure
    end

    # An execution property of a job.
    #
    # @note When making an API call, you may pass ExecutionProperty
    #   data as a hash:
    #
    #       {
    #         max_concurrent_runs: 1,
    #       }
    #
    # @!attribute [rw] max_concurrent_runs
    #   The maximum number of concurrent runs allowed for the job. The
    #   default is 1. An error is returned when this threshold is reached.
    #   The maximum value you can specify is controlled by a service limit.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ExecutionProperty AWS API Documentation
    #
    class ExecutionProperty < Struct.new(
      :max_concurrent_runs)
      include Aws::Structure
    end

    # Specifies configuration properties for an exporting labels task run.
    #
    # @!attribute [rw] output_s3_path
    #   The Amazon Simple Storage Service (Amazon S3) path where you will
    #   export the labels.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ExportLabelsTaskRunProperties AWS API Documentation
    #
    class ExportLabelsTaskRunProperties < Struct.new(
      :output_s3_path)
      include Aws::Structure
    end

    # The evaluation metrics for the find matches algorithm. The quality of
    # your machine learning transform is measured by getting your transform
    # to predict some matches and comparing the results to known matches
    # from the same dataset. The quality metrics are based on a subset of
    # your data, so they are not precise.
    #
    # @!attribute [rw] area_under_pr_curve
    #   The area under the precision/recall curve (AUPRC) is a single number
    #   measuring the overall quality of the transform, that is independent
    #   of the choice made for precision vs. recall. Higher values indicate
    #   that you have a more attractive precision vs. recall tradeoff.
    #
    #   For more information, see [Precision and recall][1] in Wikipedia.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/Precision_and_recall
    #   @return [Float]
    #
    # @!attribute [rw] precision
    #   The precision metric indicates when often your transform is correct
    #   when it predicts a match. Specifically, it measures how well the
    #   transform finds true positives from the total true positives
    #   possible.
    #
    #   For more information, see [Precision and recall][1] in Wikipedia.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/Precision_and_recall
    #   @return [Float]
    #
    # @!attribute [rw] recall
    #   The recall metric indicates that for an actual match, how often your
    #   transform predicts the match. Specifically, it measures how well the
    #   transform finds true positives from the total records in the source
    #   data.
    #
    #   For more information, see [Precision and recall][1] in Wikipedia.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/Precision_and_recall
    #   @return [Float]
    #
    # @!attribute [rw] f1
    #   The maximum F1 metric indicates the transform's accuracy between 0
    #   and 1, where 1 is the best accuracy.
    #
    #   For more information, see [F1 score][1] in Wikipedia.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/F1_score
    #   @return [Float]
    #
    # @!attribute [rw] confusion_matrix
    #   The confusion matrix shows you what your transform is predicting
    #   accurately and what types of errors it is making.
    #
    #   For more information, see [Confusion matrix][1] in Wikipedia.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/Confusion_matrix
    #   @return [Types::ConfusionMatrix]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/FindMatchesMetrics AWS API Documentation
    #
    class FindMatchesMetrics < Struct.new(
      :area_under_pr_curve,
      :precision,
      :recall,
      :f1,
      :confusion_matrix)
      include Aws::Structure
    end

    # The parameters to configure the find matches transform.
    #
    # @note When making an API call, you may pass FindMatchesParameters
    #   data as a hash:
    #
    #       {
    #         primary_key_column_name: "ColumnNameString",
    #         precision_recall_tradeoff: 1.0,
    #         accuracy_cost_tradeoff: 1.0,
    #         enforce_provided_labels: false,
    #       }
    #
    # @!attribute [rw] primary_key_column_name
    #   The name of a column that uniquely identifies rows in the source
    #   table. Used to help identify matching records.
    #   @return [String]
    #
    # @!attribute [rw] precision_recall_tradeoff
    #   The value selected when tuning your transform for a balance between
    #   precision and recall. A value of 0.5 means no preference; a value of
    #   1.0 means a bias purely for precision, and a value of 0.0 means a
    #   bias for recall. Because this is a tradeoff, choosing values close
    #   to 1.0 means very low recall, and choosing values close to 0.0
    #   results in very low precision.
    #
    #   The precision metric indicates how often your model is correct when
    #   it predicts a match.
    #
    #   The recall metric indicates that for an actual match, how often your
    #   model predicts the match.
    #   @return [Float]
    #
    # @!attribute [rw] accuracy_cost_tradeoff
    #   The value that is selected when tuning your transform for a balance
    #   between accuracy and cost. A value of 0.5 means that the system
    #   balances accuracy and cost concerns. A value of 1.0 means a bias
    #   purely for accuracy, which typically results in a higher cost,
    #   sometimes substantially higher. A value of 0.0 means a bias purely
    #   for cost, which results in a less accurate `FindMatches` transform,
    #   sometimes with unacceptable accuracy.
    #
    #   Accuracy measures how well the transform finds true positives and
    #   true negatives. Increasing accuracy requires more machine resources
    #   and cost. But it also results in increased recall.
    #
    #   Cost measures how many compute resources, and thus money, are
    #   consumed to run the transform.
    #   @return [Float]
    #
    # @!attribute [rw] enforce_provided_labels
    #   The value to switch on or off to force the output to match the
    #   provided labels from users. If the value is `True`, the `find
    #   matches` transform forces the output to match the provided labels.
    #   The results override the normal conflation results. If the value is
    #   `False`, the `find matches` transform does not ensure all the labels
    #   provided are respected, and the results rely on the trained model.
    #
    #   Note that setting this value to true may increase the conflation
    #   execution time.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/FindMatchesParameters AWS API Documentation
    #
    class FindMatchesParameters < Struct.new(
      :primary_key_column_name,
      :precision_recall_tradeoff,
      :accuracy_cost_tradeoff,
      :enforce_provided_labels)
      include Aws::Structure
    end

    # Specifies configuration properties for a Find Matches task run.
    #
    # @!attribute [rw] job_id
    #   The job ID for the Find Matches task run.
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The name assigned to the job for the Find Matches task run.
    #   @return [String]
    #
    # @!attribute [rw] job_run_id
    #   The job run ID for the Find Matches task run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/FindMatchesTaskRunProperties AWS API Documentation
    #
    class FindMatchesTaskRunProperties < Struct.new(
      :job_id,
      :job_name,
      :job_run_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetCatalogImportStatusRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the catalog to migrate. Currently, this should be the AWS
    #   account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetCatalogImportStatusRequest AWS API Documentation
    #
    class GetCatalogImportStatusRequest < Struct.new(
      :catalog_id)
      include Aws::Structure
    end

    # @!attribute [rw] import_status
    #   The status of the specified catalog migration.
    #   @return [Types::CatalogImportStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetCatalogImportStatusResponse AWS API Documentation
    #
    class GetCatalogImportStatusResponse < Struct.new(
      :import_status)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetClassifierRequest
    #   data as a hash:
    #
    #       {
    #         name: "NameString", # required
    #       }
    #
    # @!attribute [rw] name
    #   Name of the classifier to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetClassifierRequest AWS API Documentation
    #
    class GetClassifierRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # @!attribute [rw] classifier
    #   The requested classifier.
    #   @return [Types::Classifier]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetClassifierResponse AWS API Documentation
    #
    class GetClassifierResponse < Struct.new(
      :classifier)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetClassifiersRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "Token",
    #       }
    #
    # @!attribute [rw] max_results
    #   The size of the list to return (optional).
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   An optional continuation token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetClassifiersRequest AWS API Documentation
    #
    class GetClassifiersRequest < Struct.new(
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] classifiers
    #   The requested list of classifier objects.
    #   @return [Array<Types::Classifier>]
    #
    # @!attribute [rw] next_token
    #   A continuation token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetClassifiersResponse AWS API Documentation
    #
    class GetClassifiersResponse < Struct.new(
      :classifiers,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetConnectionRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         name: "NameString", # required
    #         hide_password: false,
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog in which the connection resides. If none
    #   is provided, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the connection definition to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] hide_password
    #   Allows you to retrieve the connection metadata without returning the
    #   password. For instance, the AWS Glue console uses this flag to
    #   retrieve the connection, and does not display the password. Set this
    #   parameter when the caller might not have permission to use the AWS
    #   KMS key to decrypt the password, but it does have permission to
    #   access the rest of the connection properties.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetConnectionRequest AWS API Documentation
    #
    class GetConnectionRequest < Struct.new(
      :catalog_id,
      :name,
      :hide_password)
      include Aws::Structure
    end

    # @!attribute [rw] connection
    #   The requested connection definition.
    #   @return [Types::Connection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetConnectionResponse AWS API Documentation
    #
    class GetConnectionResponse < Struct.new(
      :connection)
      include Aws::Structure
    end

    # Filters the connection definitions that are returned by the
    # `GetConnections` API operation.
    #
    # @note When making an API call, you may pass GetConnectionsFilter
    #   data as a hash:
    #
    #       {
    #         match_criteria: ["NameString"],
    #         connection_type: "JDBC", # accepts JDBC, SFTP, MONGODB, KAFKA
    #       }
    #
    # @!attribute [rw] match_criteria
    #   A criteria string that must match the criteria recorded in the
    #   connection definition for that connection definition to be returned.
    #   @return [Array<String>]
    #
    # @!attribute [rw] connection_type
    #   The type of connections to return. Currently, only JDBC is
    #   supported; SFTP is not supported.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetConnectionsFilter AWS API Documentation
    #
    class GetConnectionsFilter < Struct.new(
      :match_criteria,
      :connection_type)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetConnectionsRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         filter: {
    #           match_criteria: ["NameString"],
    #           connection_type: "JDBC", # accepts JDBC, SFTP, MONGODB, KAFKA
    #         },
    #         hide_password: false,
    #         next_token: "Token",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog in which the connections reside. If none
    #   is provided, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   A filter that controls which connections are returned.
    #   @return [Types::GetConnectionsFilter]
    #
    # @!attribute [rw] hide_password
    #   Allows you to retrieve the connection metadata without returning the
    #   password. For instance, the AWS Glue console uses this flag to
    #   retrieve the connection, and does not display the password. Set this
    #   parameter when the caller might not have permission to use the AWS
    #   KMS key to decrypt the password, but it does have permission to
    #   access the rest of the connection properties.
    #   @return [Boolean]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is a continuation call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of connections to return in one response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetConnectionsRequest AWS API Documentation
    #
    class GetConnectionsRequest < Struct.new(
      :catalog_id,
      :filter,
      :hide_password,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] connection_list
    #   A list of requested connection definitions.
    #   @return [Array<Types::Connection>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if the list of connections returned does not
    #   include the last of the filtered connections.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetConnectionsResponse AWS API Documentation
    #
    class GetConnectionsResponse < Struct.new(
      :connection_list,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetCrawlerMetricsRequest
    #   data as a hash:
    #
    #       {
    #         crawler_name_list: ["NameString"],
    #         max_results: 1,
    #         next_token: "Token",
    #       }
    #
    # @!attribute [rw] crawler_name_list
    #   A list of the names of crawlers about which to retrieve metrics.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum size of a list to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is a continuation call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetCrawlerMetricsRequest AWS API Documentation
    #
    class GetCrawlerMetricsRequest < Struct.new(
      :crawler_name_list,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] crawler_metrics_list
    #   A list of metrics for the specified crawler.
    #   @return [Array<Types::CrawlerMetrics>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if the returned list does not contain the last
    #   metric available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetCrawlerMetricsResponse AWS API Documentation
    #
    class GetCrawlerMetricsResponse < Struct.new(
      :crawler_metrics_list,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetCrawlerRequest
    #   data as a hash:
    #
    #       {
    #         name: "NameString", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the crawler to retrieve metadata for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetCrawlerRequest AWS API Documentation
    #
    class GetCrawlerRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # @!attribute [rw] crawler
    #   The metadata for the specified crawler.
    #   @return [Types::Crawler]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetCrawlerResponse AWS API Documentation
    #
    class GetCrawlerResponse < Struct.new(
      :crawler)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetCrawlersRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "Token",
    #       }
    #
    # @!attribute [rw] max_results
    #   The number of crawlers to return on each call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is a continuation request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetCrawlersRequest AWS API Documentation
    #
    class GetCrawlersRequest < Struct.new(
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] crawlers
    #   A list of crawler metadata.
    #   @return [Array<Types::Crawler>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if the returned list has not reached the end
    #   of those defined in this customer account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetCrawlersResponse AWS API Documentation
    #
    class GetCrawlersResponse < Struct.new(
      :crawlers,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDataCatalogEncryptionSettingsRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog to retrieve the security configuration
    #   for. If none is provided, the AWS account ID is used by default.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDataCatalogEncryptionSettingsRequest AWS API Documentation
    #
    class GetDataCatalogEncryptionSettingsRequest < Struct.new(
      :catalog_id)
      include Aws::Structure
    end

    # @!attribute [rw] data_catalog_encryption_settings
    #   The requested security configuration.
    #   @return [Types::DataCatalogEncryptionSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDataCatalogEncryptionSettingsResponse AWS API Documentation
    #
    class GetDataCatalogEncryptionSettingsResponse < Struct.new(
      :data_catalog_encryption_settings)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDatabaseRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         name: "NameString", # required
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog in which the database resides. If none is
    #   provided, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the database to retrieve. For Hive compatibility, this
    #   should be all lowercase.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDatabaseRequest AWS API Documentation
    #
    class GetDatabaseRequest < Struct.new(
      :catalog_id,
      :name)
      include Aws::Structure
    end

    # @!attribute [rw] database
    #   The definition of the specified database in the Data Catalog.
    #   @return [Types::Database]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDatabaseResponse AWS API Documentation
    #
    class GetDatabaseResponse < Struct.new(
      :database)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDatabasesRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         next_token: "Token",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog from which to retrieve `Databases`. If
    #   none is provided, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is a continuation call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of databases to return in one response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDatabasesRequest AWS API Documentation
    #
    class GetDatabasesRequest < Struct.new(
      :catalog_id,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] database_list
    #   A list of `Database` objects from the specified catalog.
    #   @return [Array<Types::Database>]
    #
    # @!attribute [rw] next_token
    #   A continuation token for paginating the returned list of tokens,
    #   returned if the current segment of the list is not the last.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDatabasesResponse AWS API Documentation
    #
    class GetDatabasesResponse < Struct.new(
      :database_list,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDataflowGraphRequest
    #   data as a hash:
    #
    #       {
    #         python_script: "PythonScript",
    #       }
    #
    # @!attribute [rw] python_script
    #   The Python script to transform.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDataflowGraphRequest AWS API Documentation
    #
    class GetDataflowGraphRequest < Struct.new(
      :python_script)
      include Aws::Structure
    end

    # @!attribute [rw] dag_nodes
    #   A list of the nodes in the resulting DAG.
    #   @return [Array<Types::CodeGenNode>]
    #
    # @!attribute [rw] dag_edges
    #   A list of the edges in the resulting DAG.
    #   @return [Array<Types::CodeGenEdge>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDataflowGraphResponse AWS API Documentation
    #
    class GetDataflowGraphResponse < Struct.new(
      :dag_nodes,
      :dag_edges)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDevEndpointRequest
    #   data as a hash:
    #
    #       {
    #         endpoint_name: "GenericString", # required
    #       }
    #
    # @!attribute [rw] endpoint_name
    #   Name of the `DevEndpoint` to retrieve information for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDevEndpointRequest AWS API Documentation
    #
    class GetDevEndpointRequest < Struct.new(
      :endpoint_name)
      include Aws::Structure
    end

    # @!attribute [rw] dev_endpoint
    #   A `DevEndpoint` definition.
    #   @return [Types::DevEndpoint]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDevEndpointResponse AWS API Documentation
    #
    class GetDevEndpointResponse < Struct.new(
      :dev_endpoint)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDevEndpointsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "GenericString",
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum size of information to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is a continuation call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDevEndpointsRequest AWS API Documentation
    #
    class GetDevEndpointsRequest < Struct.new(
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] dev_endpoints
    #   A list of `DevEndpoint` definitions.
    #   @return [Array<Types::DevEndpoint>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if not all `DevEndpoint` definitions have yet
    #   been returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDevEndpointsResponse AWS API Documentation
    #
    class GetDevEndpointsResponse < Struct.new(
      :dev_endpoints,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetJobBookmarkRequest
    #   data as a hash:
    #
    #       {
    #         job_name: "JobName", # required
    #         run_id: "RunId",
    #       }
    #
    # @!attribute [rw] job_name
    #   The name of the job in question.
    #   @return [String]
    #
    # @!attribute [rw] run_id
    #   The unique run identifier associated with this job run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetJobBookmarkRequest AWS API Documentation
    #
    class GetJobBookmarkRequest < Struct.new(
      :job_name,
      :run_id)
      include Aws::Structure
    end

    # @!attribute [rw] job_bookmark_entry
    #   A structure that defines a point that a job can resume processing.
    #   @return [Types::JobBookmarkEntry]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetJobBookmarkResponse AWS API Documentation
    #
    class GetJobBookmarkResponse < Struct.new(
      :job_bookmark_entry)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetJobRequest
    #   data as a hash:
    #
    #       {
    #         job_name: "NameString", # required
    #       }
    #
    # @!attribute [rw] job_name
    #   The name of the job definition to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetJobRequest AWS API Documentation
    #
    class GetJobRequest < Struct.new(
      :job_name)
      include Aws::Structure
    end

    # @!attribute [rw] job
    #   The requested job definition.
    #   @return [Types::Job]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetJobResponse AWS API Documentation
    #
    class GetJobResponse < Struct.new(
      :job)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetJobRunRequest
    #   data as a hash:
    #
    #       {
    #         job_name: "NameString", # required
    #         run_id: "IdString", # required
    #         predecessors_included: false,
    #       }
    #
    # @!attribute [rw] job_name
    #   Name of the job definition being run.
    #   @return [String]
    #
    # @!attribute [rw] run_id
    #   The ID of the job run.
    #   @return [String]
    #
    # @!attribute [rw] predecessors_included
    #   True if a list of predecessor runs should be returned.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetJobRunRequest AWS API Documentation
    #
    class GetJobRunRequest < Struct.new(
      :job_name,
      :run_id,
      :predecessors_included)
      include Aws::Structure
    end

    # @!attribute [rw] job_run
    #   The requested job-run metadata.
    #   @return [Types::JobRun]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetJobRunResponse AWS API Documentation
    #
    class GetJobRunResponse < Struct.new(
      :job_run)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetJobRunsRequest
    #   data as a hash:
    #
    #       {
    #         job_name: "NameString", # required
    #         next_token: "GenericString",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] job_name
    #   The name of the job definition for which to retrieve all job runs.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is a continuation call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum size of the response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetJobRunsRequest AWS API Documentation
    #
    class GetJobRunsRequest < Struct.new(
      :job_name,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] job_runs
    #   A list of job-run metadata objects.
    #   @return [Array<Types::JobRun>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if not all requested job runs have been
    #   returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetJobRunsResponse AWS API Documentation
    #
    class GetJobRunsResponse < Struct.new(
      :job_runs,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetJobsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "GenericString",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is a continuation call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum size of the response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetJobsRequest AWS API Documentation
    #
    class GetJobsRequest < Struct.new(
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] jobs
    #   A list of job definitions.
    #   @return [Array<Types::Job>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if not all job definitions have yet been
    #   returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetJobsResponse AWS API Documentation
    #
    class GetJobsResponse < Struct.new(
      :jobs,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetMLTaskRunRequest
    #   data as a hash:
    #
    #       {
    #         transform_id: "HashString", # required
    #         task_run_id: "HashString", # required
    #       }
    #
    # @!attribute [rw] transform_id
    #   The unique identifier of the machine learning transform.
    #   @return [String]
    #
    # @!attribute [rw] task_run_id
    #   The unique identifier of the task run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetMLTaskRunRequest AWS API Documentation
    #
    class GetMLTaskRunRequest < Struct.new(
      :transform_id,
      :task_run_id)
      include Aws::Structure
    end

    # @!attribute [rw] transform_id
    #   The unique identifier of the task run.
    #   @return [String]
    #
    # @!attribute [rw] task_run_id
    #   The unique run identifier associated with this run.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status for this task run.
    #   @return [String]
    #
    # @!attribute [rw] log_group_name
    #   The names of the log groups that are associated with the task run.
    #   @return [String]
    #
    # @!attribute [rw] properties
    #   The list of properties that are associated with the task run.
    #   @return [Types::TaskRunProperties]
    #
    # @!attribute [rw] error_string
    #   The error strings that are associated with the task run.
    #   @return [String]
    #
    # @!attribute [rw] started_on
    #   The date and time when this task run started.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_on
    #   The date and time when this task run was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] completed_on
    #   The date and time when this task run was completed.
    #   @return [Time]
    #
    # @!attribute [rw] execution_time
    #   The amount of time (in seconds) that the task run consumed
    #   resources.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetMLTaskRunResponse AWS API Documentation
    #
    class GetMLTaskRunResponse < Struct.new(
      :transform_id,
      :task_run_id,
      :status,
      :log_group_name,
      :properties,
      :error_string,
      :started_on,
      :last_modified_on,
      :completed_on,
      :execution_time)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetMLTaskRunsRequest
    #   data as a hash:
    #
    #       {
    #         transform_id: "HashString", # required
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #         filter: {
    #           task_run_type: "EVALUATION", # accepts EVALUATION, LABELING_SET_GENERATION, IMPORT_LABELS, EXPORT_LABELS, FIND_MATCHES
    #           status: "STARTING", # accepts STARTING, RUNNING, STOPPING, STOPPED, SUCCEEDED, FAILED, TIMEOUT
    #           started_before: Time.now,
    #           started_after: Time.now,
    #         },
    #         sort: {
    #           column: "TASK_RUN_TYPE", # required, accepts TASK_RUN_TYPE, STATUS, STARTED
    #           sort_direction: "DESCENDING", # required, accepts DESCENDING, ASCENDING
    #         },
    #       }
    #
    # @!attribute [rw] transform_id
    #   The unique identifier of the machine learning transform.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token for pagination of the results. The default is empty.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] filter
    #   The filter criteria, in the `TaskRunFilterCriteria` structure, for
    #   the task run.
    #   @return [Types::TaskRunFilterCriteria]
    #
    # @!attribute [rw] sort
    #   The sorting criteria, in the `TaskRunSortCriteria` structure, for
    #   the task run.
    #   @return [Types::TaskRunSortCriteria]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetMLTaskRunsRequest AWS API Documentation
    #
    class GetMLTaskRunsRequest < Struct.new(
      :transform_id,
      :next_token,
      :max_results,
      :filter,
      :sort)
      include Aws::Structure
    end

    # @!attribute [rw] task_runs
    #   A list of task runs that are associated with the transform.
    #   @return [Array<Types::TaskRun>]
    #
    # @!attribute [rw] next_token
    #   A pagination token, if more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetMLTaskRunsResponse AWS API Documentation
    #
    class GetMLTaskRunsResponse < Struct.new(
      :task_runs,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetMLTransformRequest
    #   data as a hash:
    #
    #       {
    #         transform_id: "HashString", # required
    #       }
    #
    # @!attribute [rw] transform_id
    #   The unique identifier of the transform, generated at the time that
    #   the transform was created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetMLTransformRequest AWS API Documentation
    #
    class GetMLTransformRequest < Struct.new(
      :transform_id)
      include Aws::Structure
    end

    # @!attribute [rw] transform_id
    #   The unique identifier of the transform, generated at the time that
    #   the transform was created.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The unique name given to the transform when it was created.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the transform.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The last known status of the transform (to indicate whether it can
    #   be used or not). One of "NOT\_READY", "READY", or "DELETING".
    #   @return [String]
    #
    # @!attribute [rw] created_on
    #   The date and time when the transform was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_on
    #   The date and time when the transform was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] input_record_tables
    #   A list of AWS Glue table definitions used by the transform.
    #   @return [Array<Types::GlueTable>]
    #
    # @!attribute [rw] parameters
    #   The configuration parameters that are specific to the algorithm
    #   used.
    #   @return [Types::TransformParameters]
    #
    # @!attribute [rw] evaluation_metrics
    #   The latest evaluation metrics.
    #   @return [Types::EvaluationMetrics]
    #
    # @!attribute [rw] label_count
    #   The number of labels available for this transform.
    #   @return [Integer]
    #
    # @!attribute [rw] schema
    #   The `Map<Column, Type>` object that represents the schema that this
    #   transform accepts. Has an upper bound of 100 columns.
    #   @return [Array<Types::SchemaColumn>]
    #
    # @!attribute [rw] role
    #   The name or Amazon Resource Name (ARN) of the IAM role with the
    #   required permissions.
    #   @return [String]
    #
    # @!attribute [rw] glue_version
    #   This value determines which version of AWS Glue this machine
    #   learning transform is compatible with. Glue 1.0 is recommended for
    #   most customers. If the value is not set, the Glue compatibility
    #   defaults to Glue 0.9. For more information, see [AWS Glue
    #   Versions][1] in the developer guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/release-notes.html#release-notes-versions
    #   @return [String]
    #
    # @!attribute [rw] max_capacity
    #   The number of AWS Glue data processing units (DPUs) that are
    #   allocated to task runs for this transform. You can allocate from 2
    #   to 100 DPUs; the default is 10. A DPU is a relative measure of
    #   processing power that consists of 4 vCPUs of compute capacity and 16
    #   GB of memory. For more information, see the [AWS Glue pricing
    #   page][1].
    #
    #   When the `WorkerType` field is set to a value other than `Standard`,
    #   the `MaxCapacity` field is set automatically and becomes read-only.
    #
    #
    #
    #   [1]: https://aws.amazon.com/glue/pricing/
    #   @return [Float]
    #
    # @!attribute [rw] worker_type
    #   The type of predefined worker that is allocated when this task runs.
    #   Accepts a value of Standard, G.1X, or G.2X.
    #
    #   * For the `Standard` worker type, each worker provides 4 vCPU, 16 GB
    #     of memory and a 50GB disk, and 2 executors per worker.
    #
    #   * For the `G.1X` worker type, each worker provides 4 vCPU, 16 GB of
    #     memory and a 64GB disk, and 1 executor per worker.
    #
    #   * For the `G.2X` worker type, each worker provides 8 vCPU, 32 GB of
    #     memory and a 128GB disk, and 1 executor per worker.
    #   @return [String]
    #
    # @!attribute [rw] number_of_workers
    #   The number of workers of a defined `workerType` that are allocated
    #   when this task runs.
    #   @return [Integer]
    #
    # @!attribute [rw] timeout
    #   The timeout for a task run for this transform in minutes. This is
    #   the maximum time that a task run for this transform can consume
    #   resources before it is terminated and enters `TIMEOUT` status. The
    #   default is 2,880 minutes (48 hours).
    #   @return [Integer]
    #
    # @!attribute [rw] max_retries
    #   The maximum number of times to retry a task for this transform after
    #   a task run fails.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetMLTransformResponse AWS API Documentation
    #
    class GetMLTransformResponse < Struct.new(
      :transform_id,
      :name,
      :description,
      :status,
      :created_on,
      :last_modified_on,
      :input_record_tables,
      :parameters,
      :evaluation_metrics,
      :label_count,
      :schema,
      :role,
      :glue_version,
      :max_capacity,
      :worker_type,
      :number_of_workers,
      :timeout,
      :max_retries)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetMLTransformsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #         filter: {
    #           name: "NameString",
    #           transform_type: "FIND_MATCHES", # accepts FIND_MATCHES
    #           status: "NOT_READY", # accepts NOT_READY, READY, DELETING
    #           glue_version: "GlueVersionString",
    #           created_before: Time.now,
    #           created_after: Time.now,
    #           last_modified_before: Time.now,
    #           last_modified_after: Time.now,
    #           schema: [
    #             {
    #               name: "ColumnNameString",
    #               data_type: "ColumnTypeString",
    #             },
    #           ],
    #         },
    #         sort: {
    #           column: "NAME", # required, accepts NAME, TRANSFORM_TYPE, STATUS, CREATED, LAST_MODIFIED
    #           sort_direction: "DESCENDING", # required, accepts DESCENDING, ASCENDING
    #         },
    #       }
    #
    # @!attribute [rw] next_token
    #   A paginated token to offset the results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] filter
    #   The filter transformation criteria.
    #   @return [Types::TransformFilterCriteria]
    #
    # @!attribute [rw] sort
    #   The sorting criteria.
    #   @return [Types::TransformSortCriteria]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetMLTransformsRequest AWS API Documentation
    #
    class GetMLTransformsRequest < Struct.new(
      :next_token,
      :max_results,
      :filter,
      :sort)
      include Aws::Structure
    end

    # @!attribute [rw] transforms
    #   A list of machine learning transforms.
    #   @return [Array<Types::MLTransform>]
    #
    # @!attribute [rw] next_token
    #   A pagination token, if more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetMLTransformsResponse AWS API Documentation
    #
    class GetMLTransformsResponse < Struct.new(
      :transforms,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetMappingRequest
    #   data as a hash:
    #
    #       {
    #         source: { # required
    #           database_name: "NameString", # required
    #           table_name: "NameString", # required
    #         },
    #         sinks: [
    #           {
    #             database_name: "NameString", # required
    #             table_name: "NameString", # required
    #           },
    #         ],
    #         location: {
    #           jdbc: [
    #             {
    #               name: "CodeGenArgName", # required
    #               value: "CodeGenArgValue", # required
    #               param: false,
    #             },
    #           ],
    #           s3: [
    #             {
    #               name: "CodeGenArgName", # required
    #               value: "CodeGenArgValue", # required
    #               param: false,
    #             },
    #           ],
    #           dynamo_db: [
    #             {
    #               name: "CodeGenArgName", # required
    #               value: "CodeGenArgValue", # required
    #               param: false,
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] source
    #   Specifies the source table.
    #   @return [Types::CatalogEntry]
    #
    # @!attribute [rw] sinks
    #   A list of target tables.
    #   @return [Array<Types::CatalogEntry>]
    #
    # @!attribute [rw] location
    #   Parameters for the mapping.
    #   @return [Types::Location]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetMappingRequest AWS API Documentation
    #
    class GetMappingRequest < Struct.new(
      :source,
      :sinks,
      :location)
      include Aws::Structure
    end

    # @!attribute [rw] mapping
    #   A list of mappings to the specified targets.
    #   @return [Array<Types::MappingEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetMappingResponse AWS API Documentation
    #
    class GetMappingResponse < Struct.new(
      :mapping)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetPartitionRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         table_name: "NameString", # required
    #         partition_values: ["ValueString"], # required
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the partition in question resides.
    #   If none is provided, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the catalog database where the partition resides.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the partition's table.
    #   @return [String]
    #
    # @!attribute [rw] partition_values
    #   The values that define the partition.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetPartitionRequest AWS API Documentation
    #
    class GetPartitionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :partition_values)
      include Aws::Structure
    end

    # @!attribute [rw] partition
    #   The requested information, in the form of a `Partition` object.
    #   @return [Types::Partition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetPartitionResponse AWS API Documentation
    #
    class GetPartitionResponse < Struct.new(
      :partition)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetPartitionsRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         table_name: "NameString", # required
    #         expression: "PredicateString",
    #         next_token: "Token",
    #         segment: {
    #           segment_number: 1, # required
    #           total_segments: 1, # required
    #         },
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the partitions in question reside.
    #   If none is provided, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the catalog database where the partitions reside.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the partitions' table.
    #   @return [String]
    #
    # @!attribute [rw] expression
    #   An expression that filters the partitions to be returned.
    #
    #   The expression uses SQL syntax similar to the SQL `WHERE` filter
    #   clause. The SQL statement parser [JSQLParser][1] parses the
    #   expression.
    #
    #   *Operators*\: The following are the operators that you can use in
    #   the `Expression` API call:
    #
    #   =
    #
    #   : Checks whether the values of the two operands are equal; if yes,
    #     then the condition becomes true.
    #
    #     Example: Assume 'variable a' holds 10 and 'variable b' holds
    #     20.
    #
    #     (a = b) is not true.
    #
    #   &lt; &gt;
    #
    #   : Checks whether the values of two operands are equal; if the values
    #     are not equal, then the condition becomes true.
    #
    #     Example: (a &lt; &gt; b) is true.
    #
    #   &gt;
    #
    #   : Checks whether the value of the left operand is greater than the
    #     value of the right operand; if yes, then the condition becomes
    #     true.
    #
    #     Example: (a &gt; b) is not true.
    #
    #   &lt;
    #
    #   : Checks whether the value of the left operand is less than the
    #     value of the right operand; if yes, then the condition becomes
    #     true.
    #
    #     Example: (a &lt; b) is true.
    #
    #   &gt;=
    #
    #   : Checks whether the value of the left operand is greater than or
    #     equal to the value of the right operand; if yes, then the
    #     condition becomes true.
    #
    #     Example: (a &gt;= b) is not true.
    #
    #   &lt;=
    #
    #   : Checks whether the value of the left operand is less than or equal
    #     to the value of the right operand; if yes, then the condition
    #     becomes true.
    #
    #     Example: (a &lt;= b) is true.
    #
    #   AND, OR, IN, BETWEEN, LIKE, NOT, IS NULL
    #
    #   : Logical operators.
    #
    #   *Supported Partition Key Types*\: The following are the supported
    #   partition keys.
    #
    #   * `string`
    #
    #   * `date`
    #
    #   * `timestamp`
    #
    #   * `int`
    #
    #   * `bigint`
    #
    #   * `long`
    #
    #   * `tinyint`
    #
    #   * `smallint`
    #
    #   * `decimal`
    #
    #   If an invalid type is encountered, an exception is thrown.
    #
    #   The following list shows the valid operators on each type. When you
    #   define a crawler, the `partitionKey` type is created as a `STRING`,
    #   to be compatible with the catalog partitions.
    #
    #   *Sample API Call*\:
    #
    #
    #
    #   [1]: http://jsqlparser.sourceforge.net/home.php
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is not the first call to retrieve
    #   these partitions.
    #   @return [String]
    #
    # @!attribute [rw] segment
    #   The segment of the table's partitions to scan in this request.
    #   @return [Types::Segment]
    #
    # @!attribute [rw] max_results
    #   The maximum number of partitions to return in a single response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetPartitionsRequest AWS API Documentation
    #
    class GetPartitionsRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :expression,
      :next_token,
      :segment,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] partitions
    #   A list of requested partitions.
    #   @return [Array<Types::Partition>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if the returned list of partitions does not
    #   include the last one.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetPartitionsResponse AWS API Documentation
    #
    class GetPartitionsResponse < Struct.new(
      :partitions,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetPlanRequest
    #   data as a hash:
    #
    #       {
    #         mapping: [ # required
    #           {
    #             source_table: "TableName",
    #             source_path: "SchemaPathString",
    #             source_type: "FieldType",
    #             target_table: "TableName",
    #             target_path: "SchemaPathString",
    #             target_type: "FieldType",
    #           },
    #         ],
    #         source: { # required
    #           database_name: "NameString", # required
    #           table_name: "NameString", # required
    #         },
    #         sinks: [
    #           {
    #             database_name: "NameString", # required
    #             table_name: "NameString", # required
    #           },
    #         ],
    #         location: {
    #           jdbc: [
    #             {
    #               name: "CodeGenArgName", # required
    #               value: "CodeGenArgValue", # required
    #               param: false,
    #             },
    #           ],
    #           s3: [
    #             {
    #               name: "CodeGenArgName", # required
    #               value: "CodeGenArgValue", # required
    #               param: false,
    #             },
    #           ],
    #           dynamo_db: [
    #             {
    #               name: "CodeGenArgName", # required
    #               value: "CodeGenArgValue", # required
    #               param: false,
    #             },
    #           ],
    #         },
    #         language: "PYTHON", # accepts PYTHON, SCALA
    #       }
    #
    # @!attribute [rw] mapping
    #   The list of mappings from a source table to target tables.
    #   @return [Array<Types::MappingEntry>]
    #
    # @!attribute [rw] source
    #   The source table.
    #   @return [Types::CatalogEntry]
    #
    # @!attribute [rw] sinks
    #   The target tables.
    #   @return [Array<Types::CatalogEntry>]
    #
    # @!attribute [rw] location
    #   The parameters for the mapping.
    #   @return [Types::Location]
    #
    # @!attribute [rw] language
    #   The programming language of the code to perform the mapping.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetPlanRequest AWS API Documentation
    #
    class GetPlanRequest < Struct.new(
      :mapping,
      :source,
      :sinks,
      :location,
      :language)
      include Aws::Structure
    end

    # @!attribute [rw] python_script
    #   A Python script to perform the mapping.
    #   @return [String]
    #
    # @!attribute [rw] scala_code
    #   The Scala code to perform the mapping.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetPlanResponse AWS API Documentation
    #
    class GetPlanResponse < Struct.new(
      :python_script,
      :scala_code)
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetResourcePolicyRequest AWS API Documentation
    #
    class GetResourcePolicyRequest < Aws::EmptyStructure; end

    # @!attribute [rw] policy_in_json
    #   Contains the requested policy document, in JSON format.
    #   @return [String]
    #
    # @!attribute [rw] policy_hash
    #   Contains the hash value associated with this policy.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The date and time at which the policy was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The date and time at which the policy was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetResourcePolicyResponse AWS API Documentation
    #
    class GetResourcePolicyResponse < Struct.new(
      :policy_in_json,
      :policy_hash,
      :create_time,
      :update_time)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetSecurityConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         name: "NameString", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the security configuration to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetSecurityConfigurationRequest AWS API Documentation
    #
    class GetSecurityConfigurationRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # @!attribute [rw] security_configuration
    #   The requested security configuration.
    #   @return [Types::SecurityConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetSecurityConfigurationResponse AWS API Documentation
    #
    class GetSecurityConfigurationResponse < Struct.new(
      :security_configuration)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetSecurityConfigurationsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "GenericString",
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is a continuation call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetSecurityConfigurationsRequest AWS API Documentation
    #
    class GetSecurityConfigurationsRequest < Struct.new(
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] security_configurations
    #   A list of security configurations.
    #   @return [Array<Types::SecurityConfiguration>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if there are more security configurations to
    #   return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetSecurityConfigurationsResponse AWS API Documentation
    #
    class GetSecurityConfigurationsResponse < Struct.new(
      :security_configurations,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetTableRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         name: "NameString", # required
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the table resides. If none is
    #   provided, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the database in the catalog in which the table resides.
    #   For Hive compatibility, this name is entirely lowercase.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the table for which to retrieve the definition. For Hive
    #   compatibility, this name is entirely lowercase.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTableRequest AWS API Documentation
    #
    class GetTableRequest < Struct.new(
      :catalog_id,
      :database_name,
      :name)
      include Aws::Structure
    end

    # @!attribute [rw] table
    #   The `Table` object that defines the specified table.
    #   @return [Types::Table]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTableResponse AWS API Documentation
    #
    class GetTableResponse < Struct.new(
      :table)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetTableVersionRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         table_name: "NameString", # required
    #         version_id: "VersionString",
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the tables reside. If none is
    #   provided, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The database in the catalog in which the table resides. For Hive
    #   compatibility, this name is entirely lowercase.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table. For Hive compatibility, this name is entirely
    #   lowercase.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The ID value of the table version to be retrieved. A `VersionID` is
    #   a string representation of an integer. Each version is incremented
    #   by 1.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTableVersionRequest AWS API Documentation
    #
    class GetTableVersionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :version_id)
      include Aws::Structure
    end

    # @!attribute [rw] table_version
    #   The requested table version.
    #   @return [Types::TableVersion]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTableVersionResponse AWS API Documentation
    #
    class GetTableVersionResponse < Struct.new(
      :table_version)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetTableVersionsRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         table_name: "NameString", # required
    #         next_token: "Token",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the tables reside. If none is
    #   provided, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The database in the catalog in which the table resides. For Hive
    #   compatibility, this name is entirely lowercase.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table. For Hive compatibility, this name is entirely
    #   lowercase.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is not the first call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of table versions to return in one response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTableVersionsRequest AWS API Documentation
    #
    class GetTableVersionsRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] table_versions
    #   A list of strings identifying available versions of the specified
    #   table.
    #   @return [Array<Types::TableVersion>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if the list of available versions does not
    #   include the last one.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTableVersionsResponse AWS API Documentation
    #
    class GetTableVersionsResponse < Struct.new(
      :table_versions,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetTablesRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         expression: "FilterString",
    #         next_token: "Token",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the tables reside. If none is
    #   provided, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The database in the catalog whose tables to list. For Hive
    #   compatibility, this name is entirely lowercase.
    #   @return [String]
    #
    # @!attribute [rw] expression
    #   A regular expression pattern. If present, only those tables whose
    #   names match the pattern are returned.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A continuation token, included if this is a continuation call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of tables to return in a single response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTablesRequest AWS API Documentation
    #
    class GetTablesRequest < Struct.new(
      :catalog_id,
      :database_name,
      :expression,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] table_list
    #   A list of the requested `Table` objects.
    #   @return [Array<Types::Table>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, present if the current list segment is not the
    #   last.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTablesResponse AWS API Documentation
    #
    class GetTablesResponse < Struct.new(
      :table_list,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetTagsRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "GlueResourceArn", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource for which to retrieve
    #   tags.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTagsRequest AWS API Documentation
    #
    class GetTagsRequest < Struct.new(
      :resource_arn)
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The requested tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTagsResponse AWS API Documentation
    #
    class GetTagsResponse < Struct.new(
      :tags)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetTriggerRequest
    #   data as a hash:
    #
    #       {
    #         name: "NameString", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the trigger to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTriggerRequest AWS API Documentation
    #
    class GetTriggerRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # @!attribute [rw] trigger
    #   The requested trigger definition.
    #   @return [Types::Trigger]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTriggerResponse AWS API Documentation
    #
    class GetTriggerResponse < Struct.new(
      :trigger)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetTriggersRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "GenericString",
    #         dependent_job_name: "NameString",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is a continuation call.
    #   @return [String]
    #
    # @!attribute [rw] dependent_job_name
    #   The name of the job to retrieve triggers for. The trigger that can
    #   start this job is returned, and if there is no such trigger, all
    #   triggers are returned.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum size of the response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTriggersRequest AWS API Documentation
    #
    class GetTriggersRequest < Struct.new(
      :next_token,
      :dependent_job_name,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] triggers
    #   A list of triggers for the specified job.
    #   @return [Array<Types::Trigger>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if not all the requested triggers have yet
    #   been returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTriggersResponse AWS API Documentation
    #
    class GetTriggersResponse < Struct.new(
      :triggers,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetUserDefinedFunctionRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         function_name: "NameString", # required
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the function to be retrieved is
    #   located. If none is provided, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the catalog database where the function is located.
    #   @return [String]
    #
    # @!attribute [rw] function_name
    #   The name of the function.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetUserDefinedFunctionRequest AWS API Documentation
    #
    class GetUserDefinedFunctionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :function_name)
      include Aws::Structure
    end

    # @!attribute [rw] user_defined_function
    #   The requested function definition.
    #   @return [Types::UserDefinedFunction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetUserDefinedFunctionResponse AWS API Documentation
    #
    class GetUserDefinedFunctionResponse < Struct.new(
      :user_defined_function)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetUserDefinedFunctionsRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString",
    #         pattern: "NameString", # required
    #         next_token: "Token",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the functions to be retrieved are
    #   located. If none is provided, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the catalog database where the functions are located. If
    #   none is provided, functions from all the databases across the
    #   catalog will be returned.
    #   @return [String]
    #
    # @!attribute [rw] pattern
    #   An optional function-name pattern string that filters the function
    #   definitions returned.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is a continuation call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of functions to return in one response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetUserDefinedFunctionsRequest AWS API Documentation
    #
    class GetUserDefinedFunctionsRequest < Struct.new(
      :catalog_id,
      :database_name,
      :pattern,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] user_defined_functions
    #   A list of requested function definitions.
    #   @return [Array<Types::UserDefinedFunction>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if the list of functions returned does not
    #   include the last requested function.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetUserDefinedFunctionsResponse AWS API Documentation
    #
    class GetUserDefinedFunctionsResponse < Struct.new(
      :user_defined_functions,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetWorkflowRequest
    #   data as a hash:
    #
    #       {
    #         name: "NameString", # required
    #         include_graph: false,
    #       }
    #
    # @!attribute [rw] name
    #   The name of the workflow to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] include_graph
    #   Specifies whether to include a graph when returning the workflow
    #   resource metadata.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetWorkflowRequest AWS API Documentation
    #
    class GetWorkflowRequest < Struct.new(
      :name,
      :include_graph)
      include Aws::Structure
    end

    # @!attribute [rw] workflow
    #   The resource metadata for the workflow.
    #   @return [Types::Workflow]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetWorkflowResponse AWS API Documentation
    #
    class GetWorkflowResponse < Struct.new(
      :workflow)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetWorkflowRunPropertiesRequest
    #   data as a hash:
    #
    #       {
    #         name: "NameString", # required
    #         run_id: "IdString", # required
    #       }
    #
    # @!attribute [rw] name
    #   Name of the workflow which was run.
    #   @return [String]
    #
    # @!attribute [rw] run_id
    #   The ID of the workflow run whose run properties should be returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetWorkflowRunPropertiesRequest AWS API Documentation
    #
    class GetWorkflowRunPropertiesRequest < Struct.new(
      :name,
      :run_id)
      include Aws::Structure
    end

    # @!attribute [rw] run_properties
    #   The workflow run properties which were set during the specified run.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetWorkflowRunPropertiesResponse AWS API Documentation
    #
    class GetWorkflowRunPropertiesResponse < Struct.new(
      :run_properties)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetWorkflowRunRequest
    #   data as a hash:
    #
    #       {
    #         name: "NameString", # required
    #         run_id: "IdString", # required
    #         include_graph: false,
    #       }
    #
    # @!attribute [rw] name
    #   Name of the workflow being run.
    #   @return [String]
    #
    # @!attribute [rw] run_id
    #   The ID of the workflow run.
    #   @return [String]
    #
    # @!attribute [rw] include_graph
    #   Specifies whether to include the workflow graph in response or not.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetWorkflowRunRequest AWS API Documentation
    #
    class GetWorkflowRunRequest < Struct.new(
      :name,
      :run_id,
      :include_graph)
      include Aws::Structure
    end

    # @!attribute [rw] run
    #   The requested workflow run metadata.
    #   @return [Types::WorkflowRun]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetWorkflowRunResponse AWS API Documentation
    #
    class GetWorkflowRunResponse < Struct.new(
      :run)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetWorkflowRunsRequest
    #   data as a hash:
    #
    #       {
    #         name: "NameString", # required
    #         include_graph: false,
    #         next_token: "GenericString",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] name
    #   Name of the workflow whose metadata of runs should be returned.
    #   @return [String]
    #
    # @!attribute [rw] include_graph
    #   Specifies whether to include the workflow graph in response or not.
    #   @return [Boolean]
    #
    # @!attribute [rw] next_token
    #   The maximum size of the response.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of workflow runs to be included in the response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetWorkflowRunsRequest AWS API Documentation
    #
    class GetWorkflowRunsRequest < Struct.new(
      :name,
      :include_graph,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] runs
    #   A list of workflow run metadata objects.
    #   @return [Array<Types::WorkflowRun>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if not all requested workflow runs have been
    #   returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetWorkflowRunsResponse AWS API Documentation
    #
    class GetWorkflowRunsResponse < Struct.new(
      :runs,
      :next_token)
      include Aws::Structure
    end

    # An encryption operation failed.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GlueEncryptionException AWS API Documentation
    #
    class GlueEncryptionException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The database and table in the AWS Glue Data Catalog that is used for
    # input or output data.
    #
    # @note When making an API call, you may pass GlueTable
    #   data as a hash:
    #
    #       {
    #         database_name: "NameString", # required
    #         table_name: "NameString", # required
    #         catalog_id: "NameString",
    #         connection_name: "NameString",
    #       }
    #
    # @!attribute [rw] database_name
    #   A database name in the AWS Glue Data Catalog.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   A table name in the AWS Glue Data Catalog.
    #   @return [String]
    #
    # @!attribute [rw] catalog_id
    #   A unique identifier for the AWS Glue Data Catalog.
    #   @return [String]
    #
    # @!attribute [rw] connection_name
    #   The name of the connection to the AWS Glue Data Catalog.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GlueTable AWS API Documentation
    #
    class GlueTable < Struct.new(
      :database_name,
      :table_name,
      :catalog_id,
      :connection_name)
      include Aws::Structure
    end

    # A classifier that uses `grok` patterns.
    #
    # @!attribute [rw] name
    #   The name of the classifier.
    #   @return [String]
    #
    # @!attribute [rw] classification
    #   An identifier of the data format that the classifier matches, such
    #   as Twitter, JSON, Omniture logs, and so on.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time that this classifier was registered.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated
    #   The time that this classifier was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] version
    #   The version of this classifier.
    #   @return [Integer]
    #
    # @!attribute [rw] grok_pattern
    #   The grok pattern applied to a data store by this classifier. For
    #   more information, see built-in patterns in [Writing Custom
    #   Classifiers][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/glue/latest/dg/custom-classifier.html
    #   @return [String]
    #
    # @!attribute [rw] custom_patterns
    #   Optional custom grok patterns defined by this classifier. For more
    #   information, see custom patterns in [Writing Custom Classifiers][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/glue/latest/dg/custom-classifier.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GrokClassifier AWS API Documentation
    #
    class GrokClassifier < Struct.new(
      :name,
      :classification,
      :creation_time,
      :last_updated,
      :version,
      :grok_pattern,
      :custom_patterns)
      include Aws::Structure
    end

    # The same unique identifier was associated with two different records.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/IdempotentParameterMismatchException AWS API Documentation
    #
    class IdempotentParameterMismatchException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The workflow is in an invalid state to perform a requested operation.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/IllegalWorkflowStateException AWS API Documentation
    #
    class IllegalWorkflowStateException < Struct.new(
      :message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ImportCatalogToGlueRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the catalog to import. Currently, this should be the AWS
    #   account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ImportCatalogToGlueRequest AWS API Documentation
    #
    class ImportCatalogToGlueRequest < Struct.new(
      :catalog_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ImportCatalogToGlueResponse AWS API Documentation
    #
    class ImportCatalogToGlueResponse < Aws::EmptyStructure; end

    # Specifies configuration properties for an importing labels task run.
    #
    # @!attribute [rw] input_s3_path
    #   The Amazon Simple Storage Service (Amazon S3) path from where you
    #   will import the labels.
    #   @return [String]
    #
    # @!attribute [rw] replace
    #   Indicates whether to overwrite your existing labels.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ImportLabelsTaskRunProperties AWS API Documentation
    #
    class ImportLabelsTaskRunProperties < Struct.new(
      :input_s3_path,
      :replace)
      include Aws::Structure
    end

    # An internal service error occurred.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/InternalServiceException AWS API Documentation
    #
    class InternalServiceException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The input provided was not valid.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/InvalidInputException AWS API Documentation
    #
    class InvalidInputException < Struct.new(
      :message)
      include Aws::Structure
    end

    # Specifies a JDBC data store to crawl.
    #
    # @note When making an API call, you may pass JdbcTarget
    #   data as a hash:
    #
    #       {
    #         connection_name: "ConnectionName",
    #         path: "Path",
    #         exclusions: ["Path"],
    #       }
    #
    # @!attribute [rw] connection_name
    #   The name of the connection to use to connect to the JDBC target.
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The path of the JDBC target.
    #   @return [String]
    #
    # @!attribute [rw] exclusions
    #   A list of glob patterns used to exclude from the crawl. For more
    #   information, see [Catalog Tables with a Crawler][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/glue/latest/dg/add-crawler.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/JdbcTarget AWS API Documentation
    #
    class JdbcTarget < Struct.new(
      :connection_name,
      :path,
      :exclusions)
      include Aws::Structure
    end

    # Specifies a job definition.
    #
    # @!attribute [rw] name
    #   The name you assign to this job definition.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the job.
    #   @return [String]
    #
    # @!attribute [rw] log_uri
    #   This field is reserved for future use.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The name or Amazon Resource Name (ARN) of the IAM role associated
    #   with this job.
    #   @return [String]
    #
    # @!attribute [rw] created_on
    #   The time and date that this job definition was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_on
    #   The last point in time when this job definition was modified.
    #   @return [Time]
    #
    # @!attribute [rw] execution_property
    #   An `ExecutionProperty` specifying the maximum number of concurrent
    #   runs allowed for this job.
    #   @return [Types::ExecutionProperty]
    #
    # @!attribute [rw] command
    #   The `JobCommand` that executes this job.
    #   @return [Types::JobCommand]
    #
    # @!attribute [rw] default_arguments
    #   The default arguments for this job, specified as name-value pairs.
    #
    #   You can specify arguments here that your own job-execution script
    #   consumes, as well as arguments that AWS Glue itself consumes.
    #
    #   For information about how to specify and consume your own Job
    #   arguments, see the [Calling AWS Glue APIs in Python][1] topic in the
    #   developer guide.
    #
    #   For information about the key-value pairs that AWS Glue consumes to
    #   set up your job, see the [Special Parameters Used by AWS Glue][2]
    #   topic in the developer guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html
    #   [2]: https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] non_overridable_arguments
    #   Non-overridable arguments for this job, specified as name-value
    #   pairs.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] connections
    #   The connections used for this job.
    #   @return [Types::ConnectionsList]
    #
    # @!attribute [rw] max_retries
    #   The maximum number of times to retry this job after a JobRun fails.
    #   @return [Integer]
    #
    # @!attribute [rw] allocated_capacity
    #   This field is deprecated. Use `MaxCapacity` instead.
    #
    #   The number of AWS Glue data processing units (DPUs) allocated to
    #   runs of this job. You can allocate from 2 to 100 DPUs; the default
    #   is 10. A DPU is a relative measure of processing power that consists
    #   of 4 vCPUs of compute capacity and 16 GB of memory. For more
    #   information, see the [AWS Glue pricing page][1].
    #
    #
    #
    #
    #
    #   [1]: https://aws.amazon.com/glue/pricing/
    #   @return [Integer]
    #
    # @!attribute [rw] timeout
    #   The job timeout in minutes. This is the maximum time that a job run
    #   can consume resources before it is terminated and enters `TIMEOUT`
    #   status. The default is 2,880 minutes (48 hours).
    #   @return [Integer]
    #
    # @!attribute [rw] max_capacity
    #   The number of AWS Glue data processing units (DPUs) that can be
    #   allocated when this job runs. A DPU is a relative measure of
    #   processing power that consists of 4 vCPUs of compute capacity and 16
    #   GB of memory. For more information, see the [AWS Glue pricing
    #   page][1].
    #
    #   Do not set `Max Capacity` if using `WorkerType` and
    #   `NumberOfWorkers`.
    #
    #   The value that can be allocated for `MaxCapacity` depends on whether
    #   you are running a Python shell job or an Apache Spark ETL job:
    #
    #   * When you specify a Python shell job
    #     (`JobCommand.Name`="pythonshell"), you can allocate either
    #     0.0625 or 1 DPU. The default is 0.0625 DPU.
    #
    #   * When you specify an Apache Spark ETL job
    #     (`JobCommand.Name`="glueetl"), you can allocate from 2 to 100
    #     DPUs. The default is 10 DPUs. This job type cannot have a
    #     fractional DPU allocation.
    #
    #
    #
    #   [1]: https://aws.amazon.com/glue/pricing/
    #   @return [Float]
    #
    # @!attribute [rw] worker_type
    #   The type of predefined worker that is allocated when a job runs.
    #   Accepts a value of Standard, G.1X, or G.2X.
    #
    #   * For the `Standard` worker type, each worker provides 4 vCPU, 16 GB
    #     of memory and a 50GB disk, and 2 executors per worker.
    #
    #   * For the `G.1X` worker type, each worker maps to 1 DPU (4 vCPU, 16
    #     GB of memory, 64 GB disk), and provides 1 executor per worker. We
    #     recommend this worker type for memory-intensive jobs.
    #
    #   * For the `G.2X` worker type, each worker maps to 2 DPU (8 vCPU, 32
    #     GB of memory, 128 GB disk), and provides 1 executor per worker. We
    #     recommend this worker type for memory-intensive jobs.
    #   @return [String]
    #
    # @!attribute [rw] number_of_workers
    #   The number of workers of a defined `workerType` that are allocated
    #   when a job runs.
    #
    #   The maximum number of workers you can define are 299 for `G.1X`, and
    #   149 for `G.2X`.
    #   @return [Integer]
    #
    # @!attribute [rw] security_configuration
    #   The name of the `SecurityConfiguration` structure to be used with
    #   this job.
    #   @return [String]
    #
    # @!attribute [rw] notification_property
    #   Specifies configuration properties of a job notification.
    #   @return [Types::NotificationProperty]
    #
    # @!attribute [rw] glue_version
    #   Glue version determines the versions of Apache Spark and Python that
    #   AWS Glue supports. The Python version indicates the version
    #   supported for jobs of type Spark.
    #
    #   For more information about the available AWS Glue versions and
    #   corresponding Spark and Python versions, see [Glue version][1] in
    #   the developer guide.
    #
    #   Jobs that are created without specifying a Glue version default to
    #   Glue 0.9.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/add-job.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Job AWS API Documentation
    #
    class Job < Struct.new(
      :name,
      :description,
      :log_uri,
      :role,
      :created_on,
      :last_modified_on,
      :execution_property,
      :command,
      :default_arguments,
      :non_overridable_arguments,
      :connections,
      :max_retries,
      :allocated_capacity,
      :timeout,
      :max_capacity,
      :worker_type,
      :number_of_workers,
      :security_configuration,
      :notification_property,
      :glue_version)
      include Aws::Structure
    end

    # Defines a point that a job can resume processing.
    #
    # @!attribute [rw] job_name
    #   The name of the job in question.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the job.
    #   @return [Integer]
    #
    # @!attribute [rw] run
    #   The run ID number.
    #   @return [Integer]
    #
    # @!attribute [rw] attempt
    #   The attempt ID number.
    #   @return [Integer]
    #
    # @!attribute [rw] previous_run_id
    #   The unique run identifier associated with the previous job run.
    #   @return [String]
    #
    # @!attribute [rw] run_id
    #   The run ID number.
    #   @return [String]
    #
    # @!attribute [rw] job_bookmark
    #   The bookmark itself.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/JobBookmarkEntry AWS API Documentation
    #
    class JobBookmarkEntry < Struct.new(
      :job_name,
      :version,
      :run,
      :attempt,
      :previous_run_id,
      :run_id,
      :job_bookmark)
      include Aws::Structure
    end

    # Specifies how job bookmark data should be encrypted.
    #
    # @note When making an API call, you may pass JobBookmarksEncryption
    #   data as a hash:
    #
    #       {
    #         job_bookmarks_encryption_mode: "DISABLED", # accepts DISABLED, CSE-KMS
    #         kms_key_arn: "KmsKeyArn",
    #       }
    #
    # @!attribute [rw] job_bookmarks_encryption_mode
    #   The encryption mode to use for job bookmarks data.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key to be used to encrypt
    #   the data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/JobBookmarksEncryption AWS API Documentation
    #
    class JobBookmarksEncryption < Struct.new(
      :job_bookmarks_encryption_mode,
      :kms_key_arn)
      include Aws::Structure
    end

    # Specifies code executed when a job is run.
    #
    # @note When making an API call, you may pass JobCommand
    #   data as a hash:
    #
    #       {
    #         name: "GenericString",
    #         script_location: "ScriptLocationString",
    #         python_version: "PythonVersionString",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the job command. For an Apache Spark ETL job, this must
    #   be `glueetl`. For a Python shell job, it must be `pythonshell`.
    #   @return [String]
    #
    # @!attribute [rw] script_location
    #   Specifies the Amazon Simple Storage Service (Amazon S3) path to a
    #   script that executes a job.
    #   @return [String]
    #
    # @!attribute [rw] python_version
    #   The Python version being used to execute a Python shell job. Allowed
    #   values are 2 or 3.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/JobCommand AWS API Documentation
    #
    class JobCommand < Struct.new(
      :name,
      :script_location,
      :python_version)
      include Aws::Structure
    end

    # The details of a Job node present in the workflow.
    #
    # @!attribute [rw] job_runs
    #   The information for the job runs represented by the job node.
    #   @return [Array<Types::JobRun>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/JobNodeDetails AWS API Documentation
    #
    class JobNodeDetails < Struct.new(
      :job_runs)
      include Aws::Structure
    end

    # Contains information about a job run.
    #
    # @!attribute [rw] id
    #   The ID of this job run.
    #   @return [String]
    #
    # @!attribute [rw] attempt
    #   The number of the attempt to run this job.
    #   @return [Integer]
    #
    # @!attribute [rw] previous_run_id
    #   The ID of the previous run of this job. For example, the `JobRunId`
    #   specified in the `StartJobRun` action.
    #   @return [String]
    #
    # @!attribute [rw] trigger_name
    #   The name of the trigger that started this job run.
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The name of the job definition being used in this run.
    #   @return [String]
    #
    # @!attribute [rw] started_on
    #   The date and time at which this job run was started.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_on
    #   The last time that this job run was modified.
    #   @return [Time]
    #
    # @!attribute [rw] completed_on
    #   The date and time that this job run completed.
    #   @return [Time]
    #
    # @!attribute [rw] job_run_state
    #   The current state of the job run. For more information about the
    #   statuses of jobs that have terminated abnormally, see [AWS Glue Job
    #   Run Statuses][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/job-run-statuses.html
    #   @return [String]
    #
    # @!attribute [rw] arguments
    #   The job arguments associated with this run. For this job run, they
    #   replace the default arguments set in the job definition itself.
    #
    #   You can specify arguments here that your own job-execution script
    #   consumes, as well as arguments that AWS Glue itself consumes.
    #
    #   For information about how to specify and consume your own job
    #   arguments, see the [Calling AWS Glue APIs in Python][1] topic in the
    #   developer guide.
    #
    #   For information about the key-value pairs that AWS Glue consumes to
    #   set up your job, see the [Special Parameters Used by AWS Glue][2]
    #   topic in the developer guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html
    #   [2]: https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] error_message
    #   An error message associated with this job run.
    #   @return [String]
    #
    # @!attribute [rw] predecessor_runs
    #   A list of predecessors to this job run.
    #   @return [Array<Types::Predecessor>]
    #
    # @!attribute [rw] allocated_capacity
    #   This field is deprecated. Use `MaxCapacity` instead.
    #
    #   The number of AWS Glue data processing units (DPUs) allocated to
    #   this JobRun. From 2 to 100 DPUs can be allocated; the default is 10.
    #   A DPU is a relative measure of processing power that consists of 4
    #   vCPUs of compute capacity and 16 GB of memory. For more information,
    #   see the [AWS Glue pricing page][1].
    #
    #
    #
    #   [1]: https://aws.amazon.com/glue/pricing/
    #   @return [Integer]
    #
    # @!attribute [rw] execution_time
    #   The amount of time (in seconds) that the job run consumed resources.
    #   @return [Integer]
    #
    # @!attribute [rw] timeout
    #   The `JobRun` timeout in minutes. This is the maximum time that a job
    #   run can consume resources before it is terminated and enters
    #   `TIMEOUT` status. The default is 2,880 minutes (48 hours). This
    #   overrides the timeout value set in the parent job.
    #   @return [Integer]
    #
    # @!attribute [rw] max_capacity
    #   The number of AWS Glue data processing units (DPUs) that can be
    #   allocated when this job runs. A DPU is a relative measure of
    #   processing power that consists of 4 vCPUs of compute capacity and 16
    #   GB of memory. For more information, see the [AWS Glue pricing
    #   page][1].
    #
    #   Do not set `Max Capacity` if using `WorkerType` and
    #   `NumberOfWorkers`.
    #
    #   The value that can be allocated for `MaxCapacity` depends on whether
    #   you are running a Python shell job or an Apache Spark ETL job:
    #
    #   * When you specify a Python shell job
    #     (`JobCommand.Name`="pythonshell"), you can allocate either
    #     0.0625 or 1 DPU. The default is 0.0625 DPU.
    #
    #   * When you specify an Apache Spark ETL job
    #     (`JobCommand.Name`="glueetl"), you can allocate from 2 to 100
    #     DPUs. The default is 10 DPUs. This job type cannot have a
    #     fractional DPU allocation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/https:/aws.amazon.com/glue/pricing/
    #   @return [Float]
    #
    # @!attribute [rw] worker_type
    #   The type of predefined worker that is allocated when a job runs.
    #   Accepts a value of Standard, G.1X, or G.2X.
    #
    #   * For the `Standard` worker type, each worker provides 4 vCPU, 16 GB
    #     of memory and a 50GB disk, and 2 executors per worker.
    #
    #   * For the `G.1X` worker type, each worker provides 4 vCPU, 16 GB of
    #     memory and a 64GB disk, and 1 executor per worker.
    #
    #   * For the `G.2X` worker type, each worker provides 8 vCPU, 32 GB of
    #     memory and a 128GB disk, and 1 executor per worker.
    #   @return [String]
    #
    # @!attribute [rw] number_of_workers
    #   The number of workers of a defined `workerType` that are allocated
    #   when a job runs.
    #
    #   The maximum number of workers you can define are 299 for `G.1X`, and
    #   149 for `G.2X`.
    #   @return [Integer]
    #
    # @!attribute [rw] security_configuration
    #   The name of the `SecurityConfiguration` structure to be used with
    #   this job run.
    #   @return [String]
    #
    # @!attribute [rw] log_group_name
    #   The name of the log group for secure logging that can be server-side
    #   encrypted in Amazon CloudWatch using AWS KMS. This name can be
    #   `/aws-glue/jobs/`, in which case the default encryption is `NONE`.
    #   If you add a role name and `SecurityConfiguration` name (in other
    #   words,
    #   `/aws-glue/jobs-yourRoleName-yourSecurityConfigurationName/`), then
    #   that security configuration is used to encrypt the log group.
    #   @return [String]
    #
    # @!attribute [rw] notification_property
    #   Specifies configuration properties of a job run notification.
    #   @return [Types::NotificationProperty]
    #
    # @!attribute [rw] glue_version
    #   Glue version determines the versions of Apache Spark and Python that
    #   AWS Glue supports. The Python version indicates the version
    #   supported for jobs of type Spark.
    #
    #   For more information about the available AWS Glue versions and
    #   corresponding Spark and Python versions, see [Glue version][1] in
    #   the developer guide.
    #
    #   Jobs that are created without specifying a Glue version default to
    #   Glue 0.9.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/add-job.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/JobRun AWS API Documentation
    #
    class JobRun < Struct.new(
      :id,
      :attempt,
      :previous_run_id,
      :trigger_name,
      :job_name,
      :started_on,
      :last_modified_on,
      :completed_on,
      :job_run_state,
      :arguments,
      :error_message,
      :predecessor_runs,
      :allocated_capacity,
      :execution_time,
      :timeout,
      :max_capacity,
      :worker_type,
      :number_of_workers,
      :security_configuration,
      :log_group_name,
      :notification_property,
      :glue_version)
      include Aws::Structure
    end

    # Specifies information used to update an existing job definition. The
    # previous job definition is completely overwritten by this information.
    #
    # @note When making an API call, you may pass JobUpdate
    #   data as a hash:
    #
    #       {
    #         description: "DescriptionString",
    #         log_uri: "UriString",
    #         role: "RoleString",
    #         execution_property: {
    #           max_concurrent_runs: 1,
    #         },
    #         command: {
    #           name: "GenericString",
    #           script_location: "ScriptLocationString",
    #           python_version: "PythonVersionString",
    #         },
    #         default_arguments: {
    #           "GenericString" => "GenericString",
    #         },
    #         non_overridable_arguments: {
    #           "GenericString" => "GenericString",
    #         },
    #         connections: {
    #           connections: ["GenericString"],
    #         },
    #         max_retries: 1,
    #         allocated_capacity: 1,
    #         timeout: 1,
    #         max_capacity: 1.0,
    #         worker_type: "Standard", # accepts Standard, G.1X, G.2X
    #         number_of_workers: 1,
    #         security_configuration: "NameString",
    #         notification_property: {
    #           notify_delay_after: 1,
    #         },
    #         glue_version: "GlueVersionString",
    #       }
    #
    # @!attribute [rw] description
    #   Description of the job being defined.
    #   @return [String]
    #
    # @!attribute [rw] log_uri
    #   This field is reserved for future use.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The name or Amazon Resource Name (ARN) of the IAM role associated
    #   with this job (required).
    #   @return [String]
    #
    # @!attribute [rw] execution_property
    #   An `ExecutionProperty` specifying the maximum number of concurrent
    #   runs allowed for this job.
    #   @return [Types::ExecutionProperty]
    #
    # @!attribute [rw] command
    #   The `JobCommand` that executes this job (required).
    #   @return [Types::JobCommand]
    #
    # @!attribute [rw] default_arguments
    #   The default arguments for this job.
    #
    #   You can specify arguments here that your own job-execution script
    #   consumes, as well as arguments that AWS Glue itself consumes.
    #
    #   For information about how to specify and consume your own Job
    #   arguments, see the [Calling AWS Glue APIs in Python][1] topic in the
    #   developer guide.
    #
    #   For information about the key-value pairs that AWS Glue consumes to
    #   set up your job, see the [Special Parameters Used by AWS Glue][2]
    #   topic in the developer guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html
    #   [2]: https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] non_overridable_arguments
    #   Non-overridable arguments for this job, specified as name-value
    #   pairs.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] connections
    #   The connections used for this job.
    #   @return [Types::ConnectionsList]
    #
    # @!attribute [rw] max_retries
    #   The maximum number of times to retry this job if it fails.
    #   @return [Integer]
    #
    # @!attribute [rw] allocated_capacity
    #   This field is deprecated. Use `MaxCapacity` instead.
    #
    #   The number of AWS Glue data processing units (DPUs) to allocate to
    #   this job. You can allocate from 2 to 100 DPUs; the default is 10. A
    #   DPU is a relative measure of processing power that consists of 4
    #   vCPUs of compute capacity and 16 GB of memory. For more information,
    #   see the [AWS Glue pricing page][1].
    #
    #
    #
    #   [1]: https://aws.amazon.com/glue/pricing/
    #   @return [Integer]
    #
    # @!attribute [rw] timeout
    #   The job timeout in minutes. This is the maximum time that a job run
    #   can consume resources before it is terminated and enters `TIMEOUT`
    #   status. The default is 2,880 minutes (48 hours).
    #   @return [Integer]
    #
    # @!attribute [rw] max_capacity
    #   The number of AWS Glue data processing units (DPUs) that can be
    #   allocated when this job runs. A DPU is a relative measure of
    #   processing power that consists of 4 vCPUs of compute capacity and 16
    #   GB of memory. For more information, see the [AWS Glue pricing
    #   page][1].
    #
    #   Do not set `Max Capacity` if using `WorkerType` and
    #   `NumberOfWorkers`.
    #
    #   The value that can be allocated for `MaxCapacity` depends on whether
    #   you are running a Python shell job or an Apache Spark ETL job:
    #
    #   * When you specify a Python shell job
    #     (`JobCommand.Name`="pythonshell"), you can allocate either
    #     0.0625 or 1 DPU. The default is 0.0625 DPU.
    #
    #   * When you specify an Apache Spark ETL job
    #     (`JobCommand.Name`="glueetl"), you can allocate from 2 to 100
    #     DPUs. The default is 10 DPUs. This job type cannot have a
    #     fractional DPU allocation.
    #
    #
    #
    #   [1]: https://aws.amazon.com/glue/pricing/
    #   @return [Float]
    #
    # @!attribute [rw] worker_type
    #   The type of predefined worker that is allocated when a job runs.
    #   Accepts a value of Standard, G.1X, or G.2X.
    #
    #   * For the `Standard` worker type, each worker provides 4 vCPU, 16 GB
    #     of memory and a 50GB disk, and 2 executors per worker.
    #
    #   * For the `G.1X` worker type, each worker maps to 1 DPU (4 vCPU, 16
    #     GB of memory, 64 GB disk), and provides 1 executor per worker. We
    #     recommend this worker type for memory-intensive jobs.
    #
    #   * For the `G.2X` worker type, each worker maps to 2 DPU (8 vCPU, 32
    #     GB of memory, 128 GB disk), and provides 1 executor per worker. We
    #     recommend this worker type for memory-intensive jobs.
    #   @return [String]
    #
    # @!attribute [rw] number_of_workers
    #   The number of workers of a defined `workerType` that are allocated
    #   when a job runs.
    #
    #   The maximum number of workers you can define are 299 for `G.1X`, and
    #   149 for `G.2X`.
    #   @return [Integer]
    #
    # @!attribute [rw] security_configuration
    #   The name of the `SecurityConfiguration` structure to be used with
    #   this job.
    #   @return [String]
    #
    # @!attribute [rw] notification_property
    #   Specifies the configuration properties of a job notification.
    #   @return [Types::NotificationProperty]
    #
    # @!attribute [rw] glue_version
    #   Glue version determines the versions of Apache Spark and Python that
    #   AWS Glue supports. The Python version indicates the version
    #   supported for jobs of type Spark.
    #
    #   For more information about the available AWS Glue versions and
    #   corresponding Spark and Python versions, see [Glue version][1] in
    #   the developer guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/add-job.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/JobUpdate AWS API Documentation
    #
    class JobUpdate < Struct.new(
      :description,
      :log_uri,
      :role,
      :execution_property,
      :command,
      :default_arguments,
      :non_overridable_arguments,
      :connections,
      :max_retries,
      :allocated_capacity,
      :timeout,
      :max_capacity,
      :worker_type,
      :number_of_workers,
      :security_configuration,
      :notification_property,
      :glue_version)
      include Aws::Structure
    end

    # A classifier for `JSON` content.
    #
    # @!attribute [rw] name
    #   The name of the classifier.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time that this classifier was registered.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated
    #   The time that this classifier was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] version
    #   The version of this classifier.
    #   @return [Integer]
    #
    # @!attribute [rw] json_path
    #   A `JsonPath` string defining the JSON data for the classifier to
    #   classify. AWS Glue supports a subset of `JsonPath`, as described in
    #   [Writing JsonPath Custom Classifiers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/custom-classifier.html#custom-classifier-json
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/JsonClassifier AWS API Documentation
    #
    class JsonClassifier < Struct.new(
      :name,
      :creation_time,
      :last_updated,
      :version,
      :json_path)
      include Aws::Structure
    end

    # Specifies configuration properties for a labeling set generation task
    # run.
    #
    # @!attribute [rw] output_s3_path
    #   The Amazon Simple Storage Service (Amazon S3) path where you will
    #   generate the labeling set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/LabelingSetGenerationTaskRunProperties AWS API Documentation
    #
    class LabelingSetGenerationTaskRunProperties < Struct.new(
      :output_s3_path)
      include Aws::Structure
    end

    # Status and error information about the most recent crawl.
    #
    # @!attribute [rw] status
    #   Status of the last crawl.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   If an error occurred, the error information about the last crawl.
    #   @return [String]
    #
    # @!attribute [rw] log_group
    #   The log group for the last crawl.
    #   @return [String]
    #
    # @!attribute [rw] log_stream
    #   The log stream for the last crawl.
    #   @return [String]
    #
    # @!attribute [rw] message_prefix
    #   The prefix for a message about this crawl.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The time at which the crawl started.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/LastCrawlInfo AWS API Documentation
    #
    class LastCrawlInfo < Struct.new(
      :status,
      :error_message,
      :log_group,
      :log_stream,
      :message_prefix,
      :start_time)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListCrawlersRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "Token",
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum size of a list to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is a continuation request.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Specifies to return only these tagged resources.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListCrawlersRequest AWS API Documentation
    #
    class ListCrawlersRequest < Struct.new(
      :max_results,
      :next_token,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] crawler_names
    #   The names of all crawlers in the account, or the crawlers with the
    #   specified tags.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if the returned list does not contain the last
    #   metric available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListCrawlersResponse AWS API Documentation
    #
    class ListCrawlersResponse < Struct.new(
      :crawler_names,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDevEndpointsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "GenericString",
    #         max_results: 1,
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is a continuation request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum size of a list to return.
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   Specifies to return only these tagged resources.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListDevEndpointsRequest AWS API Documentation
    #
    class ListDevEndpointsRequest < Struct.new(
      :next_token,
      :max_results,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] dev_endpoint_names
    #   The names of all the `DevEndpoint`s in the account, or the
    #   `DevEndpoint`s with the specified tags.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if the returned list does not contain the last
    #   metric available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListDevEndpointsResponse AWS API Documentation
    #
    class ListDevEndpointsResponse < Struct.new(
      :dev_endpoint_names,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListJobsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "GenericString",
    #         max_results: 1,
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is a continuation request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum size of a list to return.
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   Specifies to return only these tagged resources.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListJobsRequest AWS API Documentation
    #
    class ListJobsRequest < Struct.new(
      :next_token,
      :max_results,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] job_names
    #   The names of all jobs in the account, or the jobs with the specified
    #   tags.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if the returned list does not contain the last
    #   metric available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListJobsResponse AWS API Documentation
    #
    class ListJobsResponse < Struct.new(
      :job_names,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListMLTransformsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #         filter: {
    #           name: "NameString",
    #           transform_type: "FIND_MATCHES", # accepts FIND_MATCHES
    #           status: "NOT_READY", # accepts NOT_READY, READY, DELETING
    #           glue_version: "GlueVersionString",
    #           created_before: Time.now,
    #           created_after: Time.now,
    #           last_modified_before: Time.now,
    #           last_modified_after: Time.now,
    #           schema: [
    #             {
    #               name: "ColumnNameString",
    #               data_type: "ColumnTypeString",
    #             },
    #           ],
    #         },
    #         sort: {
    #           column: "NAME", # required, accepts NAME, TRANSFORM_TYPE, STATUS, CREATED, LAST_MODIFIED
    #           sort_direction: "DESCENDING", # required, accepts DESCENDING, ASCENDING
    #         },
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is a continuation request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum size of a list to return.
    #   @return [Integer]
    #
    # @!attribute [rw] filter
    #   A `TransformFilterCriteria` used to filter the machine learning
    #   transforms.
    #   @return [Types::TransformFilterCriteria]
    #
    # @!attribute [rw] sort
    #   A `TransformSortCriteria` used to sort the machine learning
    #   transforms.
    #   @return [Types::TransformSortCriteria]
    #
    # @!attribute [rw] tags
    #   Specifies to return only these tagged resources.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListMLTransformsRequest AWS API Documentation
    #
    class ListMLTransformsRequest < Struct.new(
      :next_token,
      :max_results,
      :filter,
      :sort,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] transform_ids
    #   The identifiers of all the machine learning transforms in the
    #   account, or the machine learning transforms with the specified tags.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if the returned list does not contain the last
    #   metric available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListMLTransformsResponse AWS API Documentation
    #
    class ListMLTransformsResponse < Struct.new(
      :transform_ids,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTriggersRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "GenericString",
    #         dependent_job_name: "NameString",
    #         max_results: 1,
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is a continuation request.
    #   @return [String]
    #
    # @!attribute [rw] dependent_job_name
    #   The name of the job for which to retrieve triggers. The trigger that
    #   can start this job is returned. If there is no such trigger, all
    #   triggers are returned.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum size of a list to return.
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   Specifies to return only these tagged resources.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListTriggersRequest AWS API Documentation
    #
    class ListTriggersRequest < Struct.new(
      :next_token,
      :dependent_job_name,
      :max_results,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] trigger_names
    #   The names of all triggers in the account, or the triggers with the
    #   specified tags.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if the returned list does not contain the last
    #   metric available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListTriggersResponse AWS API Documentation
    #
    class ListTriggersResponse < Struct.new(
      :trigger_names,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListWorkflowsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "GenericString",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is a continuation request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum size of a list to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListWorkflowsRequest AWS API Documentation
    #
    class ListWorkflowsRequest < Struct.new(
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] workflows
    #   List of names of workflows in the account.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if not all workflow names have been returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ListWorkflowsResponse AWS API Documentation
    #
    class ListWorkflowsResponse < Struct.new(
      :workflows,
      :next_token)
      include Aws::Structure
    end

    # The location of resources.
    #
    # @note When making an API call, you may pass Location
    #   data as a hash:
    #
    #       {
    #         jdbc: [
    #           {
    #             name: "CodeGenArgName", # required
    #             value: "CodeGenArgValue", # required
    #             param: false,
    #           },
    #         ],
    #         s3: [
    #           {
    #             name: "CodeGenArgName", # required
    #             value: "CodeGenArgValue", # required
    #             param: false,
    #           },
    #         ],
    #         dynamo_db: [
    #           {
    #             name: "CodeGenArgName", # required
    #             value: "CodeGenArgValue", # required
    #             param: false,
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] jdbc
    #   A JDBC location.
    #   @return [Array<Types::CodeGenNodeArg>]
    #
    # @!attribute [rw] s3
    #   An Amazon Simple Storage Service (Amazon S3) location.
    #   @return [Array<Types::CodeGenNodeArg>]
    #
    # @!attribute [rw] dynamo_db
    #   An Amazon DynamoDB table location.
    #   @return [Array<Types::CodeGenNodeArg>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Location AWS API Documentation
    #
    class Location < Struct.new(
      :jdbc,
      :s3,
      :dynamo_db)
      include Aws::Structure
    end

    # A structure for a machine learning transform.
    #
    # @!attribute [rw] transform_id
    #   The unique transform ID that is generated for the machine learning
    #   transform. The ID is guaranteed to be unique and does not change.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A user-defined name for the machine learning transform. Names are
    #   not guaranteed unique and can be changed at any time.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A user-defined, long-form description text for the machine learning
    #   transform. Descriptions are not guaranteed to be unique and can be
    #   changed at any time.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the machine learning transform.
    #   @return [String]
    #
    # @!attribute [rw] created_on
    #   A timestamp. The time and date that this machine learning transform
    #   was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_on
    #   A timestamp. The last point in time when this machine learning
    #   transform was modified.
    #   @return [Time]
    #
    # @!attribute [rw] input_record_tables
    #   A list of AWS Glue table definitions used by the transform.
    #   @return [Array<Types::GlueTable>]
    #
    # @!attribute [rw] parameters
    #   A `TransformParameters` object. You can use parameters to tune
    #   (customize) the behavior of the machine learning transform by
    #   specifying what data it learns from and your preference on various
    #   tradeoffs (such as precious vs. recall, or accuracy vs. cost).
    #   @return [Types::TransformParameters]
    #
    # @!attribute [rw] evaluation_metrics
    #   An `EvaluationMetrics` object. Evaluation metrics provide an
    #   estimate of the quality of your machine learning transform.
    #   @return [Types::EvaluationMetrics]
    #
    # @!attribute [rw] label_count
    #   A count identifier for the labeling files generated by AWS Glue for
    #   this transform. As you create a better transform, you can
    #   iteratively download, label, and upload the labeling file.
    #   @return [Integer]
    #
    # @!attribute [rw] schema
    #   A map of key-value pairs representing the columns and data types
    #   that this transform can run against. Has an upper bound of 100
    #   columns.
    #   @return [Array<Types::SchemaColumn>]
    #
    # @!attribute [rw] role
    #   The name or Amazon Resource Name (ARN) of the IAM role with the
    #   required permissions. The required permissions include both AWS Glue
    #   service role permissions to AWS Glue resources, and Amazon S3
    #   permissions required by the transform.
    #
    #   * This role needs AWS Glue service role permissions to allow access
    #     to resources in AWS Glue. See [Attach a Policy to IAM Users That
    #     Access AWS Glue][1].
    #
    #   * This role needs permission to your Amazon Simple Storage Service
    #     (Amazon S3) sources, targets, temporary directory, scripts, and
    #     any libraries used by the task run for this transform.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/attach-policy-iam-user.html
    #   @return [String]
    #
    # @!attribute [rw] glue_version
    #   This value determines which version of AWS Glue this machine
    #   learning transform is compatible with. Glue 1.0 is recommended for
    #   most customers. If the value is not set, the Glue compatibility
    #   defaults to Glue 0.9. For more information, see [AWS Glue
    #   Versions][1] in the developer guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/release-notes.html#release-notes-versions
    #   @return [String]
    #
    # @!attribute [rw] max_capacity
    #   The number of AWS Glue data processing units (DPUs) that are
    #   allocated to task runs for this transform. You can allocate from 2
    #   to 100 DPUs; the default is 10. A DPU is a relative measure of
    #   processing power that consists of 4 vCPUs of compute capacity and 16
    #   GB of memory. For more information, see the [AWS Glue pricing
    #   page][1].
    #
    #   `MaxCapacity` is a mutually exclusive option with `NumberOfWorkers`
    #   and `WorkerType`.
    #
    #   * If either `NumberOfWorkers` or `WorkerType` is set, then
    #     `MaxCapacity` cannot be set.
    #
    #   * If `MaxCapacity` is set then neither `NumberOfWorkers` or
    #     `WorkerType` can be set.
    #
    #   * If `WorkerType` is set, then `NumberOfWorkers` is required (and
    #     vice versa).
    #
    #   * `MaxCapacity` and `NumberOfWorkers` must both be at least 1.
    #
    #   When the `WorkerType` field is set to a value other than `Standard`,
    #   the `MaxCapacity` field is set automatically and becomes read-only.
    #
    #
    #
    #   [1]: http://aws.amazon.com/glue/pricing/
    #   @return [Float]
    #
    # @!attribute [rw] worker_type
    #   The type of predefined worker that is allocated when a task of this
    #   transform runs. Accepts a value of Standard, G.1X, or G.2X.
    #
    #   * For the `Standard` worker type, each worker provides 4 vCPU, 16 GB
    #     of memory and a 50GB disk, and 2 executors per worker.
    #
    #   * For the `G.1X` worker type, each worker provides 4 vCPU, 16 GB of
    #     memory and a 64GB disk, and 1 executor per worker.
    #
    #   * For the `G.2X` worker type, each worker provides 8 vCPU, 32 GB of
    #     memory and a 128GB disk, and 1 executor per worker.
    #
    #   `MaxCapacity` is a mutually exclusive option with `NumberOfWorkers`
    #   and `WorkerType`.
    #
    #   * If either `NumberOfWorkers` or `WorkerType` is set, then
    #     `MaxCapacity` cannot be set.
    #
    #   * If `MaxCapacity` is set then neither `NumberOfWorkers` or
    #     `WorkerType` can be set.
    #
    #   * If `WorkerType` is set, then `NumberOfWorkers` is required (and
    #     vice versa).
    #
    #   * `MaxCapacity` and `NumberOfWorkers` must both be at least 1.
    #   @return [String]
    #
    # @!attribute [rw] number_of_workers
    #   The number of workers of a defined `workerType` that are allocated
    #   when a task of the transform runs.
    #
    #   If `WorkerType` is set, then `NumberOfWorkers` is required (and vice
    #   versa).
    #   @return [Integer]
    #
    # @!attribute [rw] timeout
    #   The timeout in minutes of the machine learning transform.
    #   @return [Integer]
    #
    # @!attribute [rw] max_retries
    #   The maximum number of times to retry after an `MLTaskRun` of the
    #   machine learning transform fails.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/MLTransform AWS API Documentation
    #
    class MLTransform < Struct.new(
      :transform_id,
      :name,
      :description,
      :status,
      :created_on,
      :last_modified_on,
      :input_record_tables,
      :parameters,
      :evaluation_metrics,
      :label_count,
      :schema,
      :role,
      :glue_version,
      :max_capacity,
      :worker_type,
      :number_of_workers,
      :timeout,
      :max_retries)
      include Aws::Structure
    end

    # The machine learning transform is not ready to run.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/MLTransformNotReadyException AWS API Documentation
    #
    class MLTransformNotReadyException < Struct.new(
      :message)
      include Aws::Structure
    end

    # Defines a mapping.
    #
    # @note When making an API call, you may pass MappingEntry
    #   data as a hash:
    #
    #       {
    #         source_table: "TableName",
    #         source_path: "SchemaPathString",
    #         source_type: "FieldType",
    #         target_table: "TableName",
    #         target_path: "SchemaPathString",
    #         target_type: "FieldType",
    #       }
    #
    # @!attribute [rw] source_table
    #   The name of the source table.
    #   @return [String]
    #
    # @!attribute [rw] source_path
    #   The source path.
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   The source type.
    #   @return [String]
    #
    # @!attribute [rw] target_table
    #   The target table.
    #   @return [String]
    #
    # @!attribute [rw] target_path
    #   The target path.
    #   @return [String]
    #
    # @!attribute [rw] target_type
    #   The target type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/MappingEntry AWS API Documentation
    #
    class MappingEntry < Struct.new(
      :source_table,
      :source_path,
      :source_type,
      :target_table,
      :target_path,
      :target_type)
      include Aws::Structure
    end

    # There is no applicable schedule.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/NoScheduleException AWS API Documentation
    #
    class NoScheduleException < Struct.new(
      :message)
      include Aws::Structure
    end

    # A node represents an AWS Glue component like Trigger, Job etc. which
    # is part of a workflow.
    #
    # @!attribute [rw] type
    #   The type of AWS Glue component represented by the node.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the AWS Glue component represented by the node.
    #   @return [String]
    #
    # @!attribute [rw] unique_id
    #   The unique Id assigned to the node within the workflow.
    #   @return [String]
    #
    # @!attribute [rw] trigger_details
    #   Details of the Trigger when the node represents a Trigger.
    #   @return [Types::TriggerNodeDetails]
    #
    # @!attribute [rw] job_details
    #   Details of the Job when the node represents a Job.
    #   @return [Types::JobNodeDetails]
    #
    # @!attribute [rw] crawler_details
    #   Details of the crawler when the node represents a crawler.
    #   @return [Types::CrawlerNodeDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Node AWS API Documentation
    #
    class Node < Struct.new(
      :type,
      :name,
      :unique_id,
      :trigger_details,
      :job_details,
      :crawler_details)
      include Aws::Structure
    end

    # Specifies configuration properties of a notification.
    #
    # @note When making an API call, you may pass NotificationProperty
    #   data as a hash:
    #
    #       {
    #         notify_delay_after: 1,
    #       }
    #
    # @!attribute [rw] notify_delay_after
    #   After a job run starts, the number of minutes to wait before sending
    #   a job run delay notification.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/NotificationProperty AWS API Documentation
    #
    class NotificationProperty < Struct.new(
      :notify_delay_after)
      include Aws::Structure
    end

    # The operation timed out.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/OperationTimeoutException AWS API Documentation
    #
    class OperationTimeoutException < Struct.new(
      :message)
      include Aws::Structure
    end

    # Specifies the sort order of a sorted column.
    #
    # @note When making an API call, you may pass Order
    #   data as a hash:
    #
    #       {
    #         column: "NameString", # required
    #         sort_order: 1, # required
    #       }
    #
    # @!attribute [rw] column
    #   The name of the column.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   Indicates that the column is sorted in ascending order (`== 1`), or
    #   in descending order (`==0`).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Order AWS API Documentation
    #
    class Order < Struct.new(
      :column,
      :sort_order)
      include Aws::Structure
    end

    # Represents a slice of table data.
    #
    # @!attribute [rw] values
    #   The values of the partition.
    #   @return [Array<String>]
    #
    # @!attribute [rw] database_name
    #   The name of the catalog database in which to create the partition.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the database table in which to create the partition.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time at which the partition was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_access_time
    #   The last time at which the partition was accessed.
    #   @return [Time]
    #
    # @!attribute [rw] storage_descriptor
    #   Provides information about the physical location where the partition
    #   is stored.
    #   @return [Types::StorageDescriptor]
    #
    # @!attribute [rw] parameters
    #   These key-value pairs define partition parameters.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] last_analyzed_time
    #   The last time at which column statistics were computed for this
    #   partition.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Partition AWS API Documentation
    #
    class Partition < Struct.new(
      :values,
      :database_name,
      :table_name,
      :creation_time,
      :last_access_time,
      :storage_descriptor,
      :parameters,
      :last_analyzed_time)
      include Aws::Structure
    end

    # Contains information about a partition error.
    #
    # @!attribute [rw] partition_values
    #   The values that define the partition.
    #   @return [Array<String>]
    #
    # @!attribute [rw] error_detail
    #   The details about the partition error.
    #   @return [Types::ErrorDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/PartitionError AWS API Documentation
    #
    class PartitionError < Struct.new(
      :partition_values,
      :error_detail)
      include Aws::Structure
    end

    # The structure used to create and update a partition.
    #
    # @note When making an API call, you may pass PartitionInput
    #   data as a hash:
    #
    #       {
    #         values: ["ValueString"],
    #         last_access_time: Time.now,
    #         storage_descriptor: {
    #           columns: [
    #             {
    #               name: "NameString", # required
    #               type: "ColumnTypeString",
    #               comment: "CommentString",
    #               parameters: {
    #                 "KeyString" => "ParametersMapValue",
    #               },
    #             },
    #           ],
    #           location: "LocationString",
    #           input_format: "FormatString",
    #           output_format: "FormatString",
    #           compressed: false,
    #           number_of_buckets: 1,
    #           serde_info: {
    #             name: "NameString",
    #             serialization_library: "NameString",
    #             parameters: {
    #               "KeyString" => "ParametersMapValue",
    #             },
    #           },
    #           bucket_columns: ["NameString"],
    #           sort_columns: [
    #             {
    #               column: "NameString", # required
    #               sort_order: 1, # required
    #             },
    #           ],
    #           parameters: {
    #             "KeyString" => "ParametersMapValue",
    #           },
    #           skewed_info: {
    #             skewed_column_names: ["NameString"],
    #             skewed_column_values: ["ColumnValuesString"],
    #             skewed_column_value_location_maps: {
    #               "ColumnValuesString" => "ColumnValuesString",
    #             },
    #           },
    #           stored_as_sub_directories: false,
    #         },
    #         parameters: {
    #           "KeyString" => "ParametersMapValue",
    #         },
    #         last_analyzed_time: Time.now,
    #       }
    #
    # @!attribute [rw] values
    #   The values of the partition. Although this parameter is not required
    #   by the SDK, you must specify this parameter for a valid input.
    #
    #   The values for the keys for the new partition must be passed as an
    #   array of String objects that must be ordered in the same order as
    #   the partition keys appearing in the Amazon S3 prefix. Otherwise AWS
    #   Glue will add the values to the wrong keys.
    #   @return [Array<String>]
    #
    # @!attribute [rw] last_access_time
    #   The last time at which the partition was accessed.
    #   @return [Time]
    #
    # @!attribute [rw] storage_descriptor
    #   Provides information about the physical location where the partition
    #   is stored.
    #   @return [Types::StorageDescriptor]
    #
    # @!attribute [rw] parameters
    #   These key-value pairs define partition parameters.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] last_analyzed_time
    #   The last time at which column statistics were computed for this
    #   partition.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/PartitionInput AWS API Documentation
    #
    class PartitionInput < Struct.new(
      :values,
      :last_access_time,
      :storage_descriptor,
      :parameters,
      :last_analyzed_time)
      include Aws::Structure
    end

    # Contains a list of values defining partitions.
    #
    # @note When making an API call, you may pass PartitionValueList
    #   data as a hash:
    #
    #       {
    #         values: ["ValueString"], # required
    #       }
    #
    # @!attribute [rw] values
    #   The list of values.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/PartitionValueList AWS API Documentation
    #
    class PartitionValueList < Struct.new(
      :values)
      include Aws::Structure
    end

    # Specifies the physical requirements for a connection.
    #
    # @note When making an API call, you may pass PhysicalConnectionRequirements
    #   data as a hash:
    #
    #       {
    #         subnet_id: "NameString",
    #         security_group_id_list: ["NameString"],
    #         availability_zone: "NameString",
    #       }
    #
    # @!attribute [rw] subnet_id
    #   The subnet ID used by the connection.
    #   @return [String]
    #
    # @!attribute [rw] security_group_id_list
    #   The security group ID list used by the connection.
    #   @return [Array<String>]
    #
    # @!attribute [rw] availability_zone
    #   The connection's Availability Zone. This field is redundant because
    #   the specified subnet implies the Availability Zone to be used.
    #   Currently the field must be populated, but it will be deprecated in
    #   the future.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/PhysicalConnectionRequirements AWS API Documentation
    #
    class PhysicalConnectionRequirements < Struct.new(
      :subnet_id,
      :security_group_id_list,
      :availability_zone)
      include Aws::Structure
    end

    # A job run that was used in the predicate of a conditional trigger that
    # triggered this job run.
    #
    # @!attribute [rw] job_name
    #   The name of the job definition used by the predecessor job run.
    #   @return [String]
    #
    # @!attribute [rw] run_id
    #   The job-run ID of the predecessor job run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Predecessor AWS API Documentation
    #
    class Predecessor < Struct.new(
      :job_name,
      :run_id)
      include Aws::Structure
    end

    # Defines the predicate of the trigger, which determines when it fires.
    #
    # @note When making an API call, you may pass Predicate
    #   data as a hash:
    #
    #       {
    #         logical: "AND", # accepts AND, ANY
    #         conditions: [
    #           {
    #             logical_operator: "EQUALS", # accepts EQUALS
    #             job_name: "NameString",
    #             state: "STARTING", # accepts STARTING, RUNNING, STOPPING, STOPPED, SUCCEEDED, FAILED, TIMEOUT
    #             crawler_name: "NameString",
    #             crawl_state: "RUNNING", # accepts RUNNING, CANCELLING, CANCELLED, SUCCEEDED, FAILED
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] logical
    #   An optional field if only one condition is listed. If multiple
    #   conditions are listed, then this field is required.
    #   @return [String]
    #
    # @!attribute [rw] conditions
    #   A list of the conditions that determine when the trigger will fire.
    #   @return [Array<Types::Condition>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Predicate AWS API Documentation
    #
    class Predicate < Struct.new(
      :logical,
      :conditions)
      include Aws::Structure
    end

    # Permissions granted to a principal.
    #
    # @note When making an API call, you may pass PrincipalPermissions
    #   data as a hash:
    #
    #       {
    #         principal: {
    #           data_lake_principal_identifier: "DataLakePrincipalString",
    #         },
    #         permissions: ["ALL"], # accepts ALL, SELECT, ALTER, DROP, DELETE, INSERT, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS
    #       }
    #
    # @!attribute [rw] principal
    #   The principal who is granted permissions.
    #   @return [Types::DataLakePrincipal]
    #
    # @!attribute [rw] permissions
    #   The permissions that are granted to the principal.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/PrincipalPermissions AWS API Documentation
    #
    class PrincipalPermissions < Struct.new(
      :principal,
      :permissions)
      include Aws::Structure
    end

    # Defines a property predicate.
    #
    # @note When making an API call, you may pass PropertyPredicate
    #   data as a hash:
    #
    #       {
    #         key: "ValueString",
    #         value: "ValueString",
    #         comparator: "EQUALS", # accepts EQUALS, GREATER_THAN, LESS_THAN, GREATER_THAN_EQUALS, LESS_THAN_EQUALS
    #       }
    #
    # @!attribute [rw] key
    #   The key of the property.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the property.
    #   @return [String]
    #
    # @!attribute [rw] comparator
    #   The comparator used to compare this property to others.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/PropertyPredicate AWS API Documentation
    #
    class PropertyPredicate < Struct.new(
      :key,
      :value,
      :comparator)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutDataCatalogEncryptionSettingsRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         data_catalog_encryption_settings: { # required
    #           encryption_at_rest: {
    #             catalog_encryption_mode: "DISABLED", # required, accepts DISABLED, SSE-KMS
    #             sse_aws_kms_key_id: "NameString",
    #           },
    #           connection_password_encryption: {
    #             return_connection_password_encrypted: false, # required
    #             aws_kms_key_id: "NameString",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog to set the security configuration for. If
    #   none is provided, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] data_catalog_encryption_settings
    #   The security configuration to set.
    #   @return [Types::DataCatalogEncryptionSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/PutDataCatalogEncryptionSettingsRequest AWS API Documentation
    #
    class PutDataCatalogEncryptionSettingsRequest < Struct.new(
      :catalog_id,
      :data_catalog_encryption_settings)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/PutDataCatalogEncryptionSettingsResponse AWS API Documentation
    #
    class PutDataCatalogEncryptionSettingsResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass PutResourcePolicyRequest
    #   data as a hash:
    #
    #       {
    #         policy_in_json: "PolicyJsonString", # required
    #         policy_hash_condition: "HashString",
    #         policy_exists_condition: "MUST_EXIST", # accepts MUST_EXIST, NOT_EXIST, NONE
    #       }
    #
    # @!attribute [rw] policy_in_json
    #   Contains the policy document to set, in JSON format.
    #   @return [String]
    #
    # @!attribute [rw] policy_hash_condition
    #   The hash value returned when the previous policy was set using
    #   `PutResourcePolicy`. Its purpose is to prevent concurrent
    #   modifications of a policy. Do not use this parameter if no previous
    #   policy has been set.
    #   @return [String]
    #
    # @!attribute [rw] policy_exists_condition
    #   A value of `MUST_EXIST` is used to update a policy. A value of
    #   `NOT_EXIST` is used to create a new policy. If a value of `NONE` or
    #   a null value is used, the call will not depend on the existence of a
    #   policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/PutResourcePolicyRequest AWS API Documentation
    #
    class PutResourcePolicyRequest < Struct.new(
      :policy_in_json,
      :policy_hash_condition,
      :policy_exists_condition)
      include Aws::Structure
    end

    # @!attribute [rw] policy_hash
    #   A hash of the policy that has just been set. This must be included
    #   in a subsequent call that overwrites or updates this policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/PutResourcePolicyResponse AWS API Documentation
    #
    class PutResourcePolicyResponse < Struct.new(
      :policy_hash)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutWorkflowRunPropertiesRequest
    #   data as a hash:
    #
    #       {
    #         name: "NameString", # required
    #         run_id: "IdString", # required
    #         run_properties: { # required
    #           "IdString" => "GenericString",
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   Name of the workflow which was run.
    #   @return [String]
    #
    # @!attribute [rw] run_id
    #   The ID of the workflow run for which the run properties should be
    #   updated.
    #   @return [String]
    #
    # @!attribute [rw] run_properties
    #   The properties to put for the specified run.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/PutWorkflowRunPropertiesRequest AWS API Documentation
    #
    class PutWorkflowRunPropertiesRequest < Struct.new(
      :name,
      :run_id,
      :run_properties)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/PutWorkflowRunPropertiesResponse AWS API Documentation
    #
    class PutWorkflowRunPropertiesResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass ResetJobBookmarkRequest
    #   data as a hash:
    #
    #       {
    #         job_name: "JobName", # required
    #         run_id: "RunId",
    #       }
    #
    # @!attribute [rw] job_name
    #   The name of the job in question.
    #   @return [String]
    #
    # @!attribute [rw] run_id
    #   The unique run identifier associated with this job run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ResetJobBookmarkRequest AWS API Documentation
    #
    class ResetJobBookmarkRequest < Struct.new(
      :job_name,
      :run_id)
      include Aws::Structure
    end

    # @!attribute [rw] job_bookmark_entry
    #   The reset bookmark entry.
    #   @return [Types::JobBookmarkEntry]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ResetJobBookmarkResponse AWS API Documentation
    #
    class ResetJobBookmarkResponse < Struct.new(
      :job_bookmark_entry)
      include Aws::Structure
    end

    # A resource numerical limit was exceeded.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ResourceNumberLimitExceededException AWS API Documentation
    #
    class ResourceNumberLimitExceededException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The URIs for function resources.
    #
    # @note When making an API call, you may pass ResourceUri
    #   data as a hash:
    #
    #       {
    #         resource_type: "JAR", # accepts JAR, FILE, ARCHIVE
    #         uri: "URI",
    #       }
    #
    # @!attribute [rw] resource_type
    #   The type of the resource.
    #   @return [String]
    #
    # @!attribute [rw] uri
    #   The URI for accessing the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ResourceUri AWS API Documentation
    #
    class ResourceUri < Struct.new(
      :resource_type,
      :uri)
      include Aws::Structure
    end

    # Specifies how Amazon Simple Storage Service (Amazon S3) data should be
    # encrypted.
    #
    # @note When making an API call, you may pass S3Encryption
    #   data as a hash:
    #
    #       {
    #         s3_encryption_mode: "DISABLED", # accepts DISABLED, SSE-KMS, SSE-S3
    #         kms_key_arn: "KmsKeyArn",
    #       }
    #
    # @!attribute [rw] s3_encryption_mode
    #   The encryption mode to use for Amazon S3 data.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key to be used to encrypt
    #   the data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/S3Encryption AWS API Documentation
    #
    class S3Encryption < Struct.new(
      :s3_encryption_mode,
      :kms_key_arn)
      include Aws::Structure
    end

    # Specifies a data store in Amazon Simple Storage Service (Amazon S3).
    #
    # @note When making an API call, you may pass S3Target
    #   data as a hash:
    #
    #       {
    #         path: "Path",
    #         exclusions: ["Path"],
    #       }
    #
    # @!attribute [rw] path
    #   The path to the Amazon S3 target.
    #   @return [String]
    #
    # @!attribute [rw] exclusions
    #   A list of glob patterns used to exclude from the crawl. For more
    #   information, see [Catalog Tables with a Crawler][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/glue/latest/dg/add-crawler.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/S3Target AWS API Documentation
    #
    class S3Target < Struct.new(
      :path,
      :exclusions)
      include Aws::Structure
    end

    # A scheduling object using a `cron` statement to schedule an event.
    #
    # @!attribute [rw] schedule_expression
    #   A `cron` expression used to specify the schedule. For more
    #   information, see [Time-Based Schedules for Jobs and Crawlers][1].
    #   For example, to run something every day at 12:15 UTC, specify
    #   `cron(15 12 * * ? *)`.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the schedule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Schedule AWS API Documentation
    #
    class Schedule < Struct.new(
      :schedule_expression,
      :state)
      include Aws::Structure
    end

    # The specified scheduler is not running.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/SchedulerNotRunningException AWS API Documentation
    #
    class SchedulerNotRunningException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The specified scheduler is already running.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/SchedulerRunningException AWS API Documentation
    #
    class SchedulerRunningException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The specified scheduler is transitioning.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/SchedulerTransitioningException AWS API Documentation
    #
    class SchedulerTransitioningException < Struct.new(
      :message)
      include Aws::Structure
    end

    # A policy that specifies update and deletion behaviors for the crawler.
    #
    # @note When making an API call, you may pass SchemaChangePolicy
    #   data as a hash:
    #
    #       {
    #         update_behavior: "LOG", # accepts LOG, UPDATE_IN_DATABASE
    #         delete_behavior: "LOG", # accepts LOG, DELETE_FROM_DATABASE, DEPRECATE_IN_DATABASE
    #       }
    #
    # @!attribute [rw] update_behavior
    #   The update behavior when the crawler finds a changed schema.
    #   @return [String]
    #
    # @!attribute [rw] delete_behavior
    #   The deletion behavior when the crawler finds a deleted object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/SchemaChangePolicy AWS API Documentation
    #
    class SchemaChangePolicy < Struct.new(
      :update_behavior,
      :delete_behavior)
      include Aws::Structure
    end

    # A key-value pair representing a column and data type that this
    # transform can run against. The `Schema` parameter of the `MLTransform`
    # may contain up to 100 of these structures.
    #
    # @note When making an API call, you may pass SchemaColumn
    #   data as a hash:
    #
    #       {
    #         name: "ColumnNameString",
    #         data_type: "ColumnTypeString",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the column.
    #   @return [String]
    #
    # @!attribute [rw] data_type
    #   The type of data in the column.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/SchemaColumn AWS API Documentation
    #
    class SchemaColumn < Struct.new(
      :name,
      :data_type)
      include Aws::Structure
    end

    # @note When making an API call, you may pass SearchTablesRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         next_token: "Token",
    #         filters: [
    #           {
    #             key: "ValueString",
    #             value: "ValueString",
    #             comparator: "EQUALS", # accepts EQUALS, GREATER_THAN, LESS_THAN, GREATER_THAN_EQUALS, LESS_THAN_EQUALS
    #           },
    #         ],
    #         search_text: "ValueString",
    #         sort_criteria: [
    #           {
    #             field_name: "ValueString",
    #             sort: "ASC", # accepts ASC, DESC
    #           },
    #         ],
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] catalog_id
    #   A unique identifier, consisting of ` account_id/datalake`.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A continuation token, included if this is a continuation call.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   A list of key-value pairs, and a comparator used to filter the
    #   search results. Returns all entities matching the predicate.
    #   @return [Array<Types::PropertyPredicate>]
    #
    # @!attribute [rw] search_text
    #   A string used for a text search.
    #
    #   Specifying a value in quotes filters based on an exact match to the
    #   value.
    #   @return [String]
    #
    # @!attribute [rw] sort_criteria
    #   A list of criteria for sorting the results by a field name, in an
    #   ascending or descending order.
    #   @return [Array<Types::SortCriterion>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of tables to return in a single response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/SearchTablesRequest AWS API Documentation
    #
    class SearchTablesRequest < Struct.new(
      :catalog_id,
      :next_token,
      :filters,
      :search_text,
      :sort_criteria,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A continuation token, present if the current list segment is not the
    #   last.
    #   @return [String]
    #
    # @!attribute [rw] table_list
    #   A list of the requested `Table` objects. The `SearchTables` response
    #   returns only the tables that you have access to.
    #   @return [Array<Types::Table>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/SearchTablesResponse AWS API Documentation
    #
    class SearchTablesResponse < Struct.new(
      :next_token,
      :table_list)
      include Aws::Structure
    end

    # Specifies a security configuration.
    #
    # @!attribute [rw] name
    #   The name of the security configuration.
    #   @return [String]
    #
    # @!attribute [rw] created_time_stamp
    #   The time at which this security configuration was created.
    #   @return [Time]
    #
    # @!attribute [rw] encryption_configuration
    #   The encryption configuration associated with this security
    #   configuration.
    #   @return [Types::EncryptionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/SecurityConfiguration AWS API Documentation
    #
    class SecurityConfiguration < Struct.new(
      :name,
      :created_time_stamp,
      :encryption_configuration)
      include Aws::Structure
    end

    # Defines a non-overlapping region of a table's partitions, allowing
    # multiple requests to be executed in parallel.
    #
    # @note When making an API call, you may pass Segment
    #   data as a hash:
    #
    #       {
    #         segment_number: 1, # required
    #         total_segments: 1, # required
    #       }
    #
    # @!attribute [rw] segment_number
    #   The zero-based index number of the segment. For example, if the
    #   total number of segments is 4, `SegmentNumber` values range from 0
    #   through 3.
    #   @return [Integer]
    #
    # @!attribute [rw] total_segments
    #   The total number of segments.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Segment AWS API Documentation
    #
    class Segment < Struct.new(
      :segment_number,
      :total_segments)
      include Aws::Structure
    end

    # Information about a serialization/deserialization program (SerDe) that
    # serves as an extractor and loader.
    #
    # @note When making an API call, you may pass SerDeInfo
    #   data as a hash:
    #
    #       {
    #         name: "NameString",
    #         serialization_library: "NameString",
    #         parameters: {
    #           "KeyString" => "ParametersMapValue",
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   Name of the SerDe.
    #   @return [String]
    #
    # @!attribute [rw] serialization_library
    #   Usually the class that implements the SerDe. An example is
    #   `org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe`.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   These key-value pairs define initialization parameters for the
    #   SerDe.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/SerDeInfo AWS API Documentation
    #
    class SerDeInfo < Struct.new(
      :name,
      :serialization_library,
      :parameters)
      include Aws::Structure
    end

    # Specifies skewed values in a table. Skewed values are those that occur
    # with very high frequency.
    #
    # @note When making an API call, you may pass SkewedInfo
    #   data as a hash:
    #
    #       {
    #         skewed_column_names: ["NameString"],
    #         skewed_column_values: ["ColumnValuesString"],
    #         skewed_column_value_location_maps: {
    #           "ColumnValuesString" => "ColumnValuesString",
    #         },
    #       }
    #
    # @!attribute [rw] skewed_column_names
    #   A list of names of columns that contain skewed values.
    #   @return [Array<String>]
    #
    # @!attribute [rw] skewed_column_values
    #   A list of values that appear so frequently as to be considered
    #   skewed.
    #   @return [Array<String>]
    #
    # @!attribute [rw] skewed_column_value_location_maps
    #   A mapping of skewed values to the columns that contain them.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/SkewedInfo AWS API Documentation
    #
    class SkewedInfo < Struct.new(
      :skewed_column_names,
      :skewed_column_values,
      :skewed_column_value_location_maps)
      include Aws::Structure
    end

    # Specifies a field to sort by and a sort order.
    #
    # @note When making an API call, you may pass SortCriterion
    #   data as a hash:
    #
    #       {
    #         field_name: "ValueString",
    #         sort: "ASC", # accepts ASC, DESC
    #       }
    #
    # @!attribute [rw] field_name
    #   The name of the field on which to sort.
    #   @return [String]
    #
    # @!attribute [rw] sort
    #   An ascending or descending sort.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/SortCriterion AWS API Documentation
    #
    class SortCriterion < Struct.new(
      :field_name,
      :sort)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartCrawlerRequest
    #   data as a hash:
    #
    #       {
    #         name: "NameString", # required
    #       }
    #
    # @!attribute [rw] name
    #   Name of the crawler to start.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartCrawlerRequest AWS API Documentation
    #
    class StartCrawlerRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartCrawlerResponse AWS API Documentation
    #
    class StartCrawlerResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass StartCrawlerScheduleRequest
    #   data as a hash:
    #
    #       {
    #         crawler_name: "NameString", # required
    #       }
    #
    # @!attribute [rw] crawler_name
    #   Name of the crawler to schedule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartCrawlerScheduleRequest AWS API Documentation
    #
    class StartCrawlerScheduleRequest < Struct.new(
      :crawler_name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartCrawlerScheduleResponse AWS API Documentation
    #
    class StartCrawlerScheduleResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass StartExportLabelsTaskRunRequest
    #   data as a hash:
    #
    #       {
    #         transform_id: "HashString", # required
    #         output_s3_path: "UriString", # required
    #       }
    #
    # @!attribute [rw] transform_id
    #   The unique identifier of the machine learning transform.
    #   @return [String]
    #
    # @!attribute [rw] output_s3_path
    #   The Amazon S3 path where you export the labels.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartExportLabelsTaskRunRequest AWS API Documentation
    #
    class StartExportLabelsTaskRunRequest < Struct.new(
      :transform_id,
      :output_s3_path)
      include Aws::Structure
    end

    # @!attribute [rw] task_run_id
    #   The unique identifier for the task run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartExportLabelsTaskRunResponse AWS API Documentation
    #
    class StartExportLabelsTaskRunResponse < Struct.new(
      :task_run_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartImportLabelsTaskRunRequest
    #   data as a hash:
    #
    #       {
    #         transform_id: "HashString", # required
    #         input_s3_path: "UriString", # required
    #         replace_all_labels: false,
    #       }
    #
    # @!attribute [rw] transform_id
    #   The unique identifier of the machine learning transform.
    #   @return [String]
    #
    # @!attribute [rw] input_s3_path
    #   The Amazon Simple Storage Service (Amazon S3) path from where you
    #   import the labels.
    #   @return [String]
    #
    # @!attribute [rw] replace_all_labels
    #   Indicates whether to overwrite your existing labels.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartImportLabelsTaskRunRequest AWS API Documentation
    #
    class StartImportLabelsTaskRunRequest < Struct.new(
      :transform_id,
      :input_s3_path,
      :replace_all_labels)
      include Aws::Structure
    end

    # @!attribute [rw] task_run_id
    #   The unique identifier for the task run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartImportLabelsTaskRunResponse AWS API Documentation
    #
    class StartImportLabelsTaskRunResponse < Struct.new(
      :task_run_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartJobRunRequest
    #   data as a hash:
    #
    #       {
    #         job_name: "NameString", # required
    #         job_run_id: "IdString",
    #         arguments: {
    #           "GenericString" => "GenericString",
    #         },
    #         allocated_capacity: 1,
    #         timeout: 1,
    #         max_capacity: 1.0,
    #         security_configuration: "NameString",
    #         notification_property: {
    #           notify_delay_after: 1,
    #         },
    #         worker_type: "Standard", # accepts Standard, G.1X, G.2X
    #         number_of_workers: 1,
    #       }
    #
    # @!attribute [rw] job_name
    #   The name of the job definition to use.
    #   @return [String]
    #
    # @!attribute [rw] job_run_id
    #   The ID of a previous `JobRun` to retry.
    #   @return [String]
    #
    # @!attribute [rw] arguments
    #   The job arguments specifically for this run. For this job run, they
    #   replace the default arguments set in the job definition itself.
    #
    #   You can specify arguments here that your own job-execution script
    #   consumes, as well as arguments that AWS Glue itself consumes.
    #
    #   For information about how to specify and consume your own Job
    #   arguments, see the [Calling AWS Glue APIs in Python][1] topic in the
    #   developer guide.
    #
    #   For information about the key-value pairs that AWS Glue consumes to
    #   set up your job, see the [Special Parameters Used by AWS Glue][2]
    #   topic in the developer guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html
    #   [2]: https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] allocated_capacity
    #   This field is deprecated. Use `MaxCapacity` instead.
    #
    #   The number of AWS Glue data processing units (DPUs) to allocate to
    #   this JobRun. From 2 to 100 DPUs can be allocated; the default is 10.
    #   A DPU is a relative measure of processing power that consists of 4
    #   vCPUs of compute capacity and 16 GB of memory. For more information,
    #   see the [AWS Glue pricing page][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/https:/aws.amazon.com/glue/pricing/
    #   @return [Integer]
    #
    # @!attribute [rw] timeout
    #   The `JobRun` timeout in minutes. This is the maximum time that a job
    #   run can consume resources before it is terminated and enters
    #   `TIMEOUT` status. The default is 2,880 minutes (48 hours). This
    #   overrides the timeout value set in the parent job.
    #   @return [Integer]
    #
    # @!attribute [rw] max_capacity
    #   The number of AWS Glue data processing units (DPUs) that can be
    #   allocated when this job runs. A DPU is a relative measure of
    #   processing power that consists of 4 vCPUs of compute capacity and 16
    #   GB of memory. For more information, see the [AWS Glue pricing
    #   page][1].
    #
    #   Do not set `Max Capacity` if using `WorkerType` and
    #   `NumberOfWorkers`.
    #
    #   The value that can be allocated for `MaxCapacity` depends on whether
    #   you are running a Python shell job, or an Apache Spark ETL job:
    #
    #   * When you specify a Python shell job
    #     (`JobCommand.Name`="pythonshell"), you can allocate either
    #     0.0625 or 1 DPU. The default is 0.0625 DPU.
    #
    #   * When you specify an Apache Spark ETL job
    #     (`JobCommand.Name`="glueetl"), you can allocate from 2 to 100
    #     DPUs. The default is 10 DPUs. This job type cannot have a
    #     fractional DPU allocation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/https:/aws.amazon.com/glue/pricing/
    #   @return [Float]
    #
    # @!attribute [rw] security_configuration
    #   The name of the `SecurityConfiguration` structure to be used with
    #   this job run.
    #   @return [String]
    #
    # @!attribute [rw] notification_property
    #   Specifies configuration properties of a job run notification.
    #   @return [Types::NotificationProperty]
    #
    # @!attribute [rw] worker_type
    #   The type of predefined worker that is allocated when a job runs.
    #   Accepts a value of Standard, G.1X, or G.2X.
    #
    #   * For the `Standard` worker type, each worker provides 4 vCPU, 16 GB
    #     of memory and a 50GB disk, and 2 executors per worker.
    #
    #   * For the `G.1X` worker type, each worker provides 4 vCPU, 16 GB of
    #     memory and a 64GB disk, and 1 executor per worker.
    #
    #   * For the `G.2X` worker type, each worker provides 8 vCPU, 32 GB of
    #     memory and a 128GB disk, and 1 executor per worker.
    #   @return [String]
    #
    # @!attribute [rw] number_of_workers
    #   The number of workers of a defined `workerType` that are allocated
    #   when a job runs.
    #
    #   The maximum number of workers you can define are 299 for `G.1X`, and
    #   149 for `G.2X`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartJobRunRequest AWS API Documentation
    #
    class StartJobRunRequest < Struct.new(
      :job_name,
      :job_run_id,
      :arguments,
      :allocated_capacity,
      :timeout,
      :max_capacity,
      :security_configuration,
      :notification_property,
      :worker_type,
      :number_of_workers)
      include Aws::Structure
    end

    # @!attribute [rw] job_run_id
    #   The ID assigned to this job run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartJobRunResponse AWS API Documentation
    #
    class StartJobRunResponse < Struct.new(
      :job_run_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartMLEvaluationTaskRunRequest
    #   data as a hash:
    #
    #       {
    #         transform_id: "HashString", # required
    #       }
    #
    # @!attribute [rw] transform_id
    #   The unique identifier of the machine learning transform.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartMLEvaluationTaskRunRequest AWS API Documentation
    #
    class StartMLEvaluationTaskRunRequest < Struct.new(
      :transform_id)
      include Aws::Structure
    end

    # @!attribute [rw] task_run_id
    #   The unique identifier associated with this run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartMLEvaluationTaskRunResponse AWS API Documentation
    #
    class StartMLEvaluationTaskRunResponse < Struct.new(
      :task_run_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartMLLabelingSetGenerationTaskRunRequest
    #   data as a hash:
    #
    #       {
    #         transform_id: "HashString", # required
    #         output_s3_path: "UriString", # required
    #       }
    #
    # @!attribute [rw] transform_id
    #   The unique identifier of the machine learning transform.
    #   @return [String]
    #
    # @!attribute [rw] output_s3_path
    #   The Amazon Simple Storage Service (Amazon S3) path where you
    #   generate the labeling set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartMLLabelingSetGenerationTaskRunRequest AWS API Documentation
    #
    class StartMLLabelingSetGenerationTaskRunRequest < Struct.new(
      :transform_id,
      :output_s3_path)
      include Aws::Structure
    end

    # @!attribute [rw] task_run_id
    #   The unique run identifier that is associated with this task run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartMLLabelingSetGenerationTaskRunResponse AWS API Documentation
    #
    class StartMLLabelingSetGenerationTaskRunResponse < Struct.new(
      :task_run_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartTriggerRequest
    #   data as a hash:
    #
    #       {
    #         name: "NameString", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the trigger to start.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartTriggerRequest AWS API Documentation
    #
    class StartTriggerRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the trigger that was started.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartTriggerResponse AWS API Documentation
    #
    class StartTriggerResponse < Struct.new(
      :name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartWorkflowRunRequest
    #   data as a hash:
    #
    #       {
    #         name: "NameString", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the workflow to start.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartWorkflowRunRequest AWS API Documentation
    #
    class StartWorkflowRunRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # @!attribute [rw] run_id
    #   An Id for the new run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartWorkflowRunResponse AWS API Documentation
    #
    class StartWorkflowRunResponse < Struct.new(
      :run_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopCrawlerRequest
    #   data as a hash:
    #
    #       {
    #         name: "NameString", # required
    #       }
    #
    # @!attribute [rw] name
    #   Name of the crawler to stop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StopCrawlerRequest AWS API Documentation
    #
    class StopCrawlerRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StopCrawlerResponse AWS API Documentation
    #
    class StopCrawlerResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass StopCrawlerScheduleRequest
    #   data as a hash:
    #
    #       {
    #         crawler_name: "NameString", # required
    #       }
    #
    # @!attribute [rw] crawler_name
    #   Name of the crawler whose schedule state to set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StopCrawlerScheduleRequest AWS API Documentation
    #
    class StopCrawlerScheduleRequest < Struct.new(
      :crawler_name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StopCrawlerScheduleResponse AWS API Documentation
    #
    class StopCrawlerScheduleResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass StopTriggerRequest
    #   data as a hash:
    #
    #       {
    #         name: "NameString", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the trigger to stop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StopTriggerRequest AWS API Documentation
    #
    class StopTriggerRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the trigger that was stopped.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StopTriggerResponse AWS API Documentation
    #
    class StopTriggerResponse < Struct.new(
      :name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopWorkflowRunRequest
    #   data as a hash:
    #
    #       {
    #         name: "NameString", # required
    #         run_id: "IdString", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the workflow to stop.
    #   @return [String]
    #
    # @!attribute [rw] run_id
    #   The ID of the workflow run to stop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StopWorkflowRunRequest AWS API Documentation
    #
    class StopWorkflowRunRequest < Struct.new(
      :name,
      :run_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StopWorkflowRunResponse AWS API Documentation
    #
    class StopWorkflowRunResponse < Aws::EmptyStructure; end

    # Describes the physical storage of table data.
    #
    # @note When making an API call, you may pass StorageDescriptor
    #   data as a hash:
    #
    #       {
    #         columns: [
    #           {
    #             name: "NameString", # required
    #             type: "ColumnTypeString",
    #             comment: "CommentString",
    #             parameters: {
    #               "KeyString" => "ParametersMapValue",
    #             },
    #           },
    #         ],
    #         location: "LocationString",
    #         input_format: "FormatString",
    #         output_format: "FormatString",
    #         compressed: false,
    #         number_of_buckets: 1,
    #         serde_info: {
    #           name: "NameString",
    #           serialization_library: "NameString",
    #           parameters: {
    #             "KeyString" => "ParametersMapValue",
    #           },
    #         },
    #         bucket_columns: ["NameString"],
    #         sort_columns: [
    #           {
    #             column: "NameString", # required
    #             sort_order: 1, # required
    #           },
    #         ],
    #         parameters: {
    #           "KeyString" => "ParametersMapValue",
    #         },
    #         skewed_info: {
    #           skewed_column_names: ["NameString"],
    #           skewed_column_values: ["ColumnValuesString"],
    #           skewed_column_value_location_maps: {
    #             "ColumnValuesString" => "ColumnValuesString",
    #           },
    #         },
    #         stored_as_sub_directories: false,
    #       }
    #
    # @!attribute [rw] columns
    #   A list of the `Columns` in the table.
    #   @return [Array<Types::Column>]
    #
    # @!attribute [rw] location
    #   The physical location of the table. By default, this takes the form
    #   of the warehouse location, followed by the database location in the
    #   warehouse, followed by the table name.
    #   @return [String]
    #
    # @!attribute [rw] input_format
    #   The input format: `SequenceFileInputFormat` (binary), or
    #   `TextInputFormat`, or a custom format.
    #   @return [String]
    #
    # @!attribute [rw] output_format
    #   The output format: `SequenceFileOutputFormat` (binary), or
    #   `IgnoreKeyTextOutputFormat`, or a custom format.
    #   @return [String]
    #
    # @!attribute [rw] compressed
    #   `True` if the data in the table is compressed, or `False` if not.
    #   @return [Boolean]
    #
    # @!attribute [rw] number_of_buckets
    #   Must be specified if the table contains any dimension columns.
    #   @return [Integer]
    #
    # @!attribute [rw] serde_info
    #   The serialization/deserialization (SerDe) information.
    #   @return [Types::SerDeInfo]
    #
    # @!attribute [rw] bucket_columns
    #   A list of reducer grouping columns, clustering columns, and
    #   bucketing columns in the table.
    #   @return [Array<String>]
    #
    # @!attribute [rw] sort_columns
    #   A list specifying the sort order of each bucket in the table.
    #   @return [Array<Types::Order>]
    #
    # @!attribute [rw] parameters
    #   The user-supplied properties in key-value form.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] skewed_info
    #   The information about values that appear frequently in a column
    #   (skewed values).
    #   @return [Types::SkewedInfo]
    #
    # @!attribute [rw] stored_as_sub_directories
    #   `True` if the table data is stored in subdirectories, or `False` if
    #   not.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StorageDescriptor AWS API Documentation
    #
    class StorageDescriptor < Struct.new(
      :columns,
      :location,
      :input_format,
      :output_format,
      :compressed,
      :number_of_buckets,
      :serde_info,
      :bucket_columns,
      :sort_columns,
      :parameters,
      :skewed_info,
      :stored_as_sub_directories)
      include Aws::Structure
    end

    # Represents a collection of related data organized in columns and rows.
    #
    # @!attribute [rw] name
    #   The table name. For Hive compatibility, this must be entirely
    #   lowercase.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the database where the table metadata resides. For Hive
    #   compatibility, this must be all lowercase.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the table.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The owner of the table.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time when the table definition was created in the Data Catalog.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The last time that the table was updated.
    #   @return [Time]
    #
    # @!attribute [rw] last_access_time
    #   The last time that the table was accessed. This is usually taken
    #   from HDFS, and might not be reliable.
    #   @return [Time]
    #
    # @!attribute [rw] last_analyzed_time
    #   The last time that column statistics were computed for this table.
    #   @return [Time]
    #
    # @!attribute [rw] retention
    #   The retention time for this table.
    #   @return [Integer]
    #
    # @!attribute [rw] storage_descriptor
    #   A storage descriptor containing information about the physical
    #   storage of this table.
    #   @return [Types::StorageDescriptor]
    #
    # @!attribute [rw] partition_keys
    #   A list of columns by which the table is partitioned. Only primitive
    #   types are supported as partition keys.
    #
    #   When you create a table used by Amazon Athena, and you do not
    #   specify any `partitionKeys`, you must at least set the value of
    #   `partitionKeys` to an empty list. For example:
    #
    #   `"PartitionKeys": []`
    #   @return [Array<Types::Column>]
    #
    # @!attribute [rw] view_original_text
    #   If the table is a view, the original text of the view; otherwise
    #   `null`.
    #   @return [String]
    #
    # @!attribute [rw] view_expanded_text
    #   If the table is a view, the expanded text of the view; otherwise
    #   `null`.
    #   @return [String]
    #
    # @!attribute [rw] table_type
    #   The type of this table (`EXTERNAL_TABLE`, `VIRTUAL_VIEW`, etc.).
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   These key-value pairs define properties associated with the table.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] created_by
    #   The person or entity who created the table.
    #   @return [String]
    #
    # @!attribute [rw] is_registered_with_lake_formation
    #   Indicates whether the table has been registered with AWS Lake
    #   Formation.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Table AWS API Documentation
    #
    class Table < Struct.new(
      :name,
      :database_name,
      :description,
      :owner,
      :create_time,
      :update_time,
      :last_access_time,
      :last_analyzed_time,
      :retention,
      :storage_descriptor,
      :partition_keys,
      :view_original_text,
      :view_expanded_text,
      :table_type,
      :parameters,
      :created_by,
      :is_registered_with_lake_formation)
      include Aws::Structure
    end

    # An error record for table operations.
    #
    # @!attribute [rw] table_name
    #   The name of the table. For Hive compatibility, this must be entirely
    #   lowercase.
    #   @return [String]
    #
    # @!attribute [rw] error_detail
    #   The details about the error.
    #   @return [Types::ErrorDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/TableError AWS API Documentation
    #
    class TableError < Struct.new(
      :table_name,
      :error_detail)
      include Aws::Structure
    end

    # A structure used to define a table.
    #
    # @note When making an API call, you may pass TableInput
    #   data as a hash:
    #
    #       {
    #         name: "NameString", # required
    #         description: "DescriptionString",
    #         owner: "NameString",
    #         last_access_time: Time.now,
    #         last_analyzed_time: Time.now,
    #         retention: 1,
    #         storage_descriptor: {
    #           columns: [
    #             {
    #               name: "NameString", # required
    #               type: "ColumnTypeString",
    #               comment: "CommentString",
    #               parameters: {
    #                 "KeyString" => "ParametersMapValue",
    #               },
    #             },
    #           ],
    #           location: "LocationString",
    #           input_format: "FormatString",
    #           output_format: "FormatString",
    #           compressed: false,
    #           number_of_buckets: 1,
    #           serde_info: {
    #             name: "NameString",
    #             serialization_library: "NameString",
    #             parameters: {
    #               "KeyString" => "ParametersMapValue",
    #             },
    #           },
    #           bucket_columns: ["NameString"],
    #           sort_columns: [
    #             {
    #               column: "NameString", # required
    #               sort_order: 1, # required
    #             },
    #           ],
    #           parameters: {
    #             "KeyString" => "ParametersMapValue",
    #           },
    #           skewed_info: {
    #             skewed_column_names: ["NameString"],
    #             skewed_column_values: ["ColumnValuesString"],
    #             skewed_column_value_location_maps: {
    #               "ColumnValuesString" => "ColumnValuesString",
    #             },
    #           },
    #           stored_as_sub_directories: false,
    #         },
    #         partition_keys: [
    #           {
    #             name: "NameString", # required
    #             type: "ColumnTypeString",
    #             comment: "CommentString",
    #             parameters: {
    #               "KeyString" => "ParametersMapValue",
    #             },
    #           },
    #         ],
    #         view_original_text: "ViewTextString",
    #         view_expanded_text: "ViewTextString",
    #         table_type: "TableTypeString",
    #         parameters: {
    #           "KeyString" => "ParametersMapValue",
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The table name. For Hive compatibility, this is folded to lowercase
    #   when it is stored.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the table.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The table owner.
    #   @return [String]
    #
    # @!attribute [rw] last_access_time
    #   The last time that the table was accessed.
    #   @return [Time]
    #
    # @!attribute [rw] last_analyzed_time
    #   The last time that column statistics were computed for this table.
    #   @return [Time]
    #
    # @!attribute [rw] retention
    #   The retention time for this table.
    #   @return [Integer]
    #
    # @!attribute [rw] storage_descriptor
    #   A storage descriptor containing information about the physical
    #   storage of this table.
    #   @return [Types::StorageDescriptor]
    #
    # @!attribute [rw] partition_keys
    #   A list of columns by which the table is partitioned. Only primitive
    #   types are supported as partition keys.
    #
    #   When you create a table used by Amazon Athena, and you do not
    #   specify any `partitionKeys`, you must at least set the value of
    #   `partitionKeys` to an empty list. For example:
    #
    #   `"PartitionKeys": []`
    #   @return [Array<Types::Column>]
    #
    # @!attribute [rw] view_original_text
    #   If the table is a view, the original text of the view; otherwise
    #   `null`.
    #   @return [String]
    #
    # @!attribute [rw] view_expanded_text
    #   If the table is a view, the expanded text of the view; otherwise
    #   `null`.
    #   @return [String]
    #
    # @!attribute [rw] table_type
    #   The type of this table (`EXTERNAL_TABLE`, `VIRTUAL_VIEW`, etc.).
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   These key-value pairs define properties associated with the table.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/TableInput AWS API Documentation
    #
    class TableInput < Struct.new(
      :name,
      :description,
      :owner,
      :last_access_time,
      :last_analyzed_time,
      :retention,
      :storage_descriptor,
      :partition_keys,
      :view_original_text,
      :view_expanded_text,
      :table_type,
      :parameters)
      include Aws::Structure
    end

    # Specifies a version of a table.
    #
    # @!attribute [rw] table
    #   The table in question.
    #   @return [Types::Table]
    #
    # @!attribute [rw] version_id
    #   The ID value that identifies this table version. A `VersionId` is a
    #   string representation of an integer. Each version is incremented by
    #   1.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/TableVersion AWS API Documentation
    #
    class TableVersion < Struct.new(
      :table,
      :version_id)
      include Aws::Structure
    end

    # An error record for table-version operations.
    #
    # @!attribute [rw] table_name
    #   The name of the table in question.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The ID value of the version in question. A `VersionID` is a string
    #   representation of an integer. Each version is incremented by 1.
    #   @return [String]
    #
    # @!attribute [rw] error_detail
    #   The details about the error.
    #   @return [Types::ErrorDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/TableVersionError AWS API Documentation
    #
    class TableVersionError < Struct.new(
      :table_name,
      :version_id,
      :error_detail)
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "GlueResourceArn", # required
    #         tags_to_add: { # required
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the AWS Glue resource to which to add the tags. For more
    #   information about AWS Glue resource ARNs, see the [AWS Glue ARN
    #   string pattern][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-common.html#aws-glue-api-regex-aws-glue-arn-id
    #   @return [String]
    #
    # @!attribute [rw] tags_to_add
    #   Tags to add to this resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags_to_add)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The sampling parameters that are associated with the machine learning
    # transform.
    #
    # @!attribute [rw] transform_id
    #   The unique identifier for the transform.
    #   @return [String]
    #
    # @!attribute [rw] task_run_id
    #   The unique identifier for this task run.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the requested task run.
    #   @return [String]
    #
    # @!attribute [rw] log_group_name
    #   The names of the log group for secure logging, associated with this
    #   task run.
    #   @return [String]
    #
    # @!attribute [rw] properties
    #   Specifies configuration properties associated with this task run.
    #   @return [Types::TaskRunProperties]
    #
    # @!attribute [rw] error_string
    #   The list of error strings associated with this task run.
    #   @return [String]
    #
    # @!attribute [rw] started_on
    #   The date and time that this task run started.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_on
    #   The last point in time that the requested task run was updated.
    #   @return [Time]
    #
    # @!attribute [rw] completed_on
    #   The last point in time that the requested task run was completed.
    #   @return [Time]
    #
    # @!attribute [rw] execution_time
    #   The amount of time (in seconds) that the task run consumed
    #   resources.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/TaskRun AWS API Documentation
    #
    class TaskRun < Struct.new(
      :transform_id,
      :task_run_id,
      :status,
      :log_group_name,
      :properties,
      :error_string,
      :started_on,
      :last_modified_on,
      :completed_on,
      :execution_time)
      include Aws::Structure
    end

    # The criteria that are used to filter the task runs for the machine
    # learning transform.
    #
    # @note When making an API call, you may pass TaskRunFilterCriteria
    #   data as a hash:
    #
    #       {
    #         task_run_type: "EVALUATION", # accepts EVALUATION, LABELING_SET_GENERATION, IMPORT_LABELS, EXPORT_LABELS, FIND_MATCHES
    #         status: "STARTING", # accepts STARTING, RUNNING, STOPPING, STOPPED, SUCCEEDED, FAILED, TIMEOUT
    #         started_before: Time.now,
    #         started_after: Time.now,
    #       }
    #
    # @!attribute [rw] task_run_type
    #   The type of task run.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the task run.
    #   @return [String]
    #
    # @!attribute [rw] started_before
    #   Filter on task runs started before this date.
    #   @return [Time]
    #
    # @!attribute [rw] started_after
    #   Filter on task runs started after this date.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/TaskRunFilterCriteria AWS API Documentation
    #
    class TaskRunFilterCriteria < Struct.new(
      :task_run_type,
      :status,
      :started_before,
      :started_after)
      include Aws::Structure
    end

    # The configuration properties for the task run.
    #
    # @!attribute [rw] task_type
    #   The type of task run.
    #   @return [String]
    #
    # @!attribute [rw] import_labels_task_run_properties
    #   The configuration properties for an importing labels task run.
    #   @return [Types::ImportLabelsTaskRunProperties]
    #
    # @!attribute [rw] export_labels_task_run_properties
    #   The configuration properties for an exporting labels task run.
    #   @return [Types::ExportLabelsTaskRunProperties]
    #
    # @!attribute [rw] labeling_set_generation_task_run_properties
    #   The configuration properties for a labeling set generation task run.
    #   @return [Types::LabelingSetGenerationTaskRunProperties]
    #
    # @!attribute [rw] find_matches_task_run_properties
    #   The configuration properties for a find matches task run.
    #   @return [Types::FindMatchesTaskRunProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/TaskRunProperties AWS API Documentation
    #
    class TaskRunProperties < Struct.new(
      :task_type,
      :import_labels_task_run_properties,
      :export_labels_task_run_properties,
      :labeling_set_generation_task_run_properties,
      :find_matches_task_run_properties)
      include Aws::Structure
    end

    # The sorting criteria that are used to sort the list of task runs for
    # the machine learning transform.
    #
    # @note When making an API call, you may pass TaskRunSortCriteria
    #   data as a hash:
    #
    #       {
    #         column: "TASK_RUN_TYPE", # required, accepts TASK_RUN_TYPE, STATUS, STARTED
    #         sort_direction: "DESCENDING", # required, accepts DESCENDING, ASCENDING
    #       }
    #
    # @!attribute [rw] column
    #   The column to be used to sort the list of task runs for the machine
    #   learning transform.
    #   @return [String]
    #
    # @!attribute [rw] sort_direction
    #   The sort direction to be used to sort the list of task runs for the
    #   machine learning transform.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/TaskRunSortCriteria AWS API Documentation
    #
    class TaskRunSortCriteria < Struct.new(
      :column,
      :sort_direction)
      include Aws::Structure
    end

    # The criteria used to filter the machine learning transforms.
    #
    # @note When making an API call, you may pass TransformFilterCriteria
    #   data as a hash:
    #
    #       {
    #         name: "NameString",
    #         transform_type: "FIND_MATCHES", # accepts FIND_MATCHES
    #         status: "NOT_READY", # accepts NOT_READY, READY, DELETING
    #         glue_version: "GlueVersionString",
    #         created_before: Time.now,
    #         created_after: Time.now,
    #         last_modified_before: Time.now,
    #         last_modified_after: Time.now,
    #         schema: [
    #           {
    #             name: "ColumnNameString",
    #             data_type: "ColumnTypeString",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] name
    #   A unique transform name that is used to filter the machine learning
    #   transforms.
    #   @return [String]
    #
    # @!attribute [rw] transform_type
    #   The type of machine learning transform that is used to filter the
    #   machine learning transforms.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Filters the list of machine learning transforms by the last known
    #   status of the transforms (to indicate whether a transform can be
    #   used or not). One of "NOT\_READY", "READY", or "DELETING".
    #   @return [String]
    #
    # @!attribute [rw] glue_version
    #   This value determines which version of AWS Glue this machine
    #   learning transform is compatible with. Glue 1.0 is recommended for
    #   most customers. If the value is not set, the Glue compatibility
    #   defaults to Glue 0.9. For more information, see [AWS Glue
    #   Versions][1] in the developer guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/release-notes.html#release-notes-versions
    #   @return [String]
    #
    # @!attribute [rw] created_before
    #   The time and date before which the transforms were created.
    #   @return [Time]
    #
    # @!attribute [rw] created_after
    #   The time and date after which the transforms were created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_before
    #   Filter on transforms last modified before this date.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_after
    #   Filter on transforms last modified after this date.
    #   @return [Time]
    #
    # @!attribute [rw] schema
    #   Filters on datasets with a specific schema. The `Map<Column, Type>`
    #   object is an array of key-value pairs representing the schema this
    #   transform accepts, where `Column` is the name of a column, and
    #   `Type` is the type of the data such as an integer or string. Has an
    #   upper bound of 100 columns.
    #   @return [Array<Types::SchemaColumn>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/TransformFilterCriteria AWS API Documentation
    #
    class TransformFilterCriteria < Struct.new(
      :name,
      :transform_type,
      :status,
      :glue_version,
      :created_before,
      :created_after,
      :last_modified_before,
      :last_modified_after,
      :schema)
      include Aws::Structure
    end

    # The algorithm-specific parameters that are associated with the machine
    # learning transform.
    #
    # @note When making an API call, you may pass TransformParameters
    #   data as a hash:
    #
    #       {
    #         transform_type: "FIND_MATCHES", # required, accepts FIND_MATCHES
    #         find_matches_parameters: {
    #           primary_key_column_name: "ColumnNameString",
    #           precision_recall_tradeoff: 1.0,
    #           accuracy_cost_tradeoff: 1.0,
    #           enforce_provided_labels: false,
    #         },
    #       }
    #
    # @!attribute [rw] transform_type
    #   The type of machine learning transform.
    #
    #   For information about the types of machine learning transforms, see
    #   [Creating Machine Learning Transforms][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/glue/latest/dg/add-job-machine-learning-transform.html
    #   @return [String]
    #
    # @!attribute [rw] find_matches_parameters
    #   The parameters for the find matches algorithm.
    #   @return [Types::FindMatchesParameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/TransformParameters AWS API Documentation
    #
    class TransformParameters < Struct.new(
      :transform_type,
      :find_matches_parameters)
      include Aws::Structure
    end

    # The sorting criteria that are associated with the machine learning
    # transform.
    #
    # @note When making an API call, you may pass TransformSortCriteria
    #   data as a hash:
    #
    #       {
    #         column: "NAME", # required, accepts NAME, TRANSFORM_TYPE, STATUS, CREATED, LAST_MODIFIED
    #         sort_direction: "DESCENDING", # required, accepts DESCENDING, ASCENDING
    #       }
    #
    # @!attribute [rw] column
    #   The column to be used in the sorting criteria that are associated
    #   with the machine learning transform.
    #   @return [String]
    #
    # @!attribute [rw] sort_direction
    #   The sort direction to be used in the sorting criteria that are
    #   associated with the machine learning transform.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/TransformSortCriteria AWS API Documentation
    #
    class TransformSortCriteria < Struct.new(
      :column,
      :sort_direction)
      include Aws::Structure
    end

    # Information about a specific trigger.
    #
    # @!attribute [rw] name
    #   The name of the trigger.
    #   @return [String]
    #
    # @!attribute [rw] workflow_name
    #   The name of the workflow associated with the trigger.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   Reserved for future use.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of trigger that this is.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the trigger.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of this trigger.
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   A `cron` expression used to specify the schedule (see [Time-Based
    #   Schedules for Jobs and Crawlers][1]. For example, to run something
    #   every day at 12:15 UTC, you would specify: `cron(15 12 * * ? *)`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html
    #   @return [String]
    #
    # @!attribute [rw] actions
    #   The actions initiated by this trigger.
    #   @return [Array<Types::Action>]
    #
    # @!attribute [rw] predicate
    #   The predicate of this trigger, which defines when it will fire.
    #   @return [Types::Predicate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Trigger AWS API Documentation
    #
    class Trigger < Struct.new(
      :name,
      :workflow_name,
      :id,
      :type,
      :state,
      :description,
      :schedule,
      :actions,
      :predicate)
      include Aws::Structure
    end

    # The details of a Trigger node present in the workflow.
    #
    # @!attribute [rw] trigger
    #   The information of the trigger represented by the trigger node.
    #   @return [Types::Trigger]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/TriggerNodeDetails AWS API Documentation
    #
    class TriggerNodeDetails < Struct.new(
      :trigger)
      include Aws::Structure
    end

    # A structure used to provide information used to update a trigger. This
    # object updates the previous trigger definition by overwriting it
    # completely.
    #
    # @note When making an API call, you may pass TriggerUpdate
    #   data as a hash:
    #
    #       {
    #         name: "NameString",
    #         description: "DescriptionString",
    #         schedule: "GenericString",
    #         actions: [
    #           {
    #             job_name: "NameString",
    #             arguments: {
    #               "GenericString" => "GenericString",
    #             },
    #             timeout: 1,
    #             security_configuration: "NameString",
    #             notification_property: {
    #               notify_delay_after: 1,
    #             },
    #             crawler_name: "NameString",
    #           },
    #         ],
    #         predicate: {
    #           logical: "AND", # accepts AND, ANY
    #           conditions: [
    #             {
    #               logical_operator: "EQUALS", # accepts EQUALS
    #               job_name: "NameString",
    #               state: "STARTING", # accepts STARTING, RUNNING, STOPPING, STOPPED, SUCCEEDED, FAILED, TIMEOUT
    #               crawler_name: "NameString",
    #               crawl_state: "RUNNING", # accepts RUNNING, CANCELLING, CANCELLED, SUCCEEDED, FAILED
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   Reserved for future use.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of this trigger.
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   A `cron` expression used to specify the schedule (see [Time-Based
    #   Schedules for Jobs and Crawlers][1]. For example, to run something
    #   every day at 12:15 UTC, you would specify: `cron(15 12 * * ? *)`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html
    #   @return [String]
    #
    # @!attribute [rw] actions
    #   The actions initiated by this trigger.
    #   @return [Array<Types::Action>]
    #
    # @!attribute [rw] predicate
    #   The predicate of this trigger, which defines when it will fire.
    #   @return [Types::Predicate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/TriggerUpdate AWS API Documentation
    #
    class TriggerUpdate < Struct.new(
      :name,
      :description,
      :schedule,
      :actions,
      :predicate)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "GlueResourceArn", # required
    #         tags_to_remove: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource from which to remove
    #   the tags.
    #   @return [String]
    #
    # @!attribute [rw] tags_to_remove
    #   Tags to remove from this resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tags_to_remove)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateClassifierRequest
    #   data as a hash:
    #
    #       {
    #         grok_classifier: {
    #           name: "NameString", # required
    #           classification: "Classification",
    #           grok_pattern: "GrokPattern",
    #           custom_patterns: "CustomPatterns",
    #         },
    #         xml_classifier: {
    #           name: "NameString", # required
    #           classification: "Classification",
    #           row_tag: "RowTag",
    #         },
    #         json_classifier: {
    #           name: "NameString", # required
    #           json_path: "JsonPath",
    #         },
    #         csv_classifier: {
    #           name: "NameString", # required
    #           delimiter: "CsvColumnDelimiter",
    #           quote_symbol: "CsvQuoteSymbol",
    #           contains_header: "UNKNOWN", # accepts UNKNOWN, PRESENT, ABSENT
    #           header: ["NameString"],
    #           disable_value_trimming: false,
    #           allow_single_column: false,
    #         },
    #       }
    #
    # @!attribute [rw] grok_classifier
    #   A `GrokClassifier` object with updated fields.
    #   @return [Types::UpdateGrokClassifierRequest]
    #
    # @!attribute [rw] xml_classifier
    #   An `XMLClassifier` object with updated fields.
    #   @return [Types::UpdateXMLClassifierRequest]
    #
    # @!attribute [rw] json_classifier
    #   A `JsonClassifier` object with updated fields.
    #   @return [Types::UpdateJsonClassifierRequest]
    #
    # @!attribute [rw] csv_classifier
    #   A `CsvClassifier` object with updated fields.
    #   @return [Types::UpdateCsvClassifierRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateClassifierRequest AWS API Documentation
    #
    class UpdateClassifierRequest < Struct.new(
      :grok_classifier,
      :xml_classifier,
      :json_classifier,
      :csv_classifier)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateClassifierResponse AWS API Documentation
    #
    class UpdateClassifierResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateConnectionRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         name: "NameString", # required
    #         connection_input: { # required
    #           name: "NameString", # required
    #           description: "DescriptionString",
    #           connection_type: "JDBC", # required, accepts JDBC, SFTP, MONGODB, KAFKA
    #           match_criteria: ["NameString"],
    #           connection_properties: { # required
    #             "HOST" => "ValueString",
    #           },
    #           physical_connection_requirements: {
    #             subnet_id: "NameString",
    #             security_group_id_list: ["NameString"],
    #             availability_zone: "NameString",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog in which the connection resides. If none
    #   is provided, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the connection definition to update.
    #   @return [String]
    #
    # @!attribute [rw] connection_input
    #   A `ConnectionInput` object that redefines the connection in
    #   question.
    #   @return [Types::ConnectionInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateConnectionRequest AWS API Documentation
    #
    class UpdateConnectionRequest < Struct.new(
      :catalog_id,
      :name,
      :connection_input)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateConnectionResponse AWS API Documentation
    #
    class UpdateConnectionResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateCrawlerRequest
    #   data as a hash:
    #
    #       {
    #         name: "NameString", # required
    #         role: "Role",
    #         database_name: "DatabaseName",
    #         description: "DescriptionStringRemovable",
    #         targets: {
    #           s3_targets: [
    #             {
    #               path: "Path",
    #               exclusions: ["Path"],
    #             },
    #           ],
    #           jdbc_targets: [
    #             {
    #               connection_name: "ConnectionName",
    #               path: "Path",
    #               exclusions: ["Path"],
    #             },
    #           ],
    #           dynamo_db_targets: [
    #             {
    #               path: "Path",
    #             },
    #           ],
    #           catalog_targets: [
    #             {
    #               database_name: "NameString", # required
    #               tables: ["NameString"], # required
    #             },
    #           ],
    #         },
    #         schedule: "CronExpression",
    #         classifiers: ["NameString"],
    #         table_prefix: "TablePrefix",
    #         schema_change_policy: {
    #           update_behavior: "LOG", # accepts LOG, UPDATE_IN_DATABASE
    #           delete_behavior: "LOG", # accepts LOG, DELETE_FROM_DATABASE, DEPRECATE_IN_DATABASE
    #         },
    #         configuration: "CrawlerConfiguration",
    #         crawler_security_configuration: "CrawlerSecurityConfiguration",
    #       }
    #
    # @!attribute [rw] name
    #   Name of the new crawler.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The IAM role or Amazon Resource Name (ARN) of an IAM role that is
    #   used by the new crawler to access customer resources.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The AWS Glue database where results are stored, such as:
    #   `arn:aws:daylight:us-east-1::database/sometable/*`.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the new crawler.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   A list of targets to crawl.
    #   @return [Types::CrawlerTargets]
    #
    # @!attribute [rw] schedule
    #   A `cron` expression used to specify the schedule. For more
    #   information, see [Time-Based Schedules for Jobs and Crawlers][1].
    #   For example, to run something every day at 12:15 UTC, specify
    #   `cron(15 12 * * ? *)`.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html
    #   @return [String]
    #
    # @!attribute [rw] classifiers
    #   A list of custom classifiers that the user has registered. By
    #   default, all built-in classifiers are included in a crawl, but these
    #   custom classifiers always override the default classifiers for a
    #   given classification.
    #   @return [Array<String>]
    #
    # @!attribute [rw] table_prefix
    #   The table prefix used for catalog tables that are created.
    #   @return [String]
    #
    # @!attribute [rw] schema_change_policy
    #   The policy for the crawler's update and deletion behavior.
    #   @return [Types::SchemaChangePolicy]
    #
    # @!attribute [rw] configuration
    #   The crawler configuration information. This versioned JSON string
    #   allows users to specify aspects of a crawler's behavior. For more
    #   information, see [Configuring a Crawler][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/glue/latest/dg/crawler-configuration.html
    #   @return [String]
    #
    # @!attribute [rw] crawler_security_configuration
    #   The name of the `SecurityConfiguration` structure to be used by this
    #   crawler.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateCrawlerRequest AWS API Documentation
    #
    class UpdateCrawlerRequest < Struct.new(
      :name,
      :role,
      :database_name,
      :description,
      :targets,
      :schedule,
      :classifiers,
      :table_prefix,
      :schema_change_policy,
      :configuration,
      :crawler_security_configuration)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateCrawlerResponse AWS API Documentation
    #
    class UpdateCrawlerResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateCrawlerScheduleRequest
    #   data as a hash:
    #
    #       {
    #         crawler_name: "NameString", # required
    #         schedule: "CronExpression",
    #       }
    #
    # @!attribute [rw] crawler_name
    #   The name of the crawler whose schedule to update.
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   The updated `cron` expression used to specify the schedule. For more
    #   information, see [Time-Based Schedules for Jobs and Crawlers][1].
    #   For example, to run something every day at 12:15 UTC, specify
    #   `cron(15 12 * * ? *)`.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateCrawlerScheduleRequest AWS API Documentation
    #
    class UpdateCrawlerScheduleRequest < Struct.new(
      :crawler_name,
      :schedule)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateCrawlerScheduleResponse AWS API Documentation
    #
    class UpdateCrawlerScheduleResponse < Aws::EmptyStructure; end

    # Specifies a custom CSV classifier to be updated.
    #
    # @note When making an API call, you may pass UpdateCsvClassifierRequest
    #   data as a hash:
    #
    #       {
    #         name: "NameString", # required
    #         delimiter: "CsvColumnDelimiter",
    #         quote_symbol: "CsvQuoteSymbol",
    #         contains_header: "UNKNOWN", # accepts UNKNOWN, PRESENT, ABSENT
    #         header: ["NameString"],
    #         disable_value_trimming: false,
    #         allow_single_column: false,
    #       }
    #
    # @!attribute [rw] name
    #   The name of the classifier.
    #   @return [String]
    #
    # @!attribute [rw] delimiter
    #   A custom symbol to denote what separates each column entry in the
    #   row.
    #   @return [String]
    #
    # @!attribute [rw] quote_symbol
    #   A custom symbol to denote what combines content into a single column
    #   value. It must be different from the column delimiter.
    #   @return [String]
    #
    # @!attribute [rw] contains_header
    #   Indicates whether the CSV file contains a header.
    #   @return [String]
    #
    # @!attribute [rw] header
    #   A list of strings representing column names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] disable_value_trimming
    #   Specifies not to trim values before identifying the type of column
    #   values. The default value is true.
    #   @return [Boolean]
    #
    # @!attribute [rw] allow_single_column
    #   Enables the processing of files that contain only one column.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateCsvClassifierRequest AWS API Documentation
    #
    class UpdateCsvClassifierRequest < Struct.new(
      :name,
      :delimiter,
      :quote_symbol,
      :contains_header,
      :header,
      :disable_value_trimming,
      :allow_single_column)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateDatabaseRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         name: "NameString", # required
    #         database_input: { # required
    #           name: "NameString", # required
    #           description: "DescriptionString",
    #           location_uri: "URI",
    #           parameters: {
    #             "KeyString" => "ParametersMapValue",
    #           },
    #           create_table_default_permissions: [
    #             {
    #               principal: {
    #                 data_lake_principal_identifier: "DataLakePrincipalString",
    #               },
    #               permissions: ["ALL"], # accepts ALL, SELECT, ALTER, DROP, DELETE, INSERT, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog in which the metadata database resides.
    #   If none is provided, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the database to update in the catalog. For Hive
    #   compatibility, this is folded to lowercase.
    #   @return [String]
    #
    # @!attribute [rw] database_input
    #   A `DatabaseInput` object specifying the new definition of the
    #   metadata database in the catalog.
    #   @return [Types::DatabaseInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateDatabaseRequest AWS API Documentation
    #
    class UpdateDatabaseRequest < Struct.new(
      :catalog_id,
      :name,
      :database_input)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateDatabaseResponse AWS API Documentation
    #
    class UpdateDatabaseResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateDevEndpointRequest
    #   data as a hash:
    #
    #       {
    #         endpoint_name: "GenericString", # required
    #         public_key: "GenericString",
    #         add_public_keys: ["GenericString"],
    #         delete_public_keys: ["GenericString"],
    #         custom_libraries: {
    #           extra_python_libs_s3_path: "GenericString",
    #           extra_jars_s3_path: "GenericString",
    #         },
    #         update_etl_libraries: false,
    #         delete_arguments: ["GenericString"],
    #         add_arguments: {
    #           "GenericString" => "GenericString",
    #         },
    #       }
    #
    # @!attribute [rw] endpoint_name
    #   The name of the `DevEndpoint` to be updated.
    #   @return [String]
    #
    # @!attribute [rw] public_key
    #   The public key for the `DevEndpoint` to use.
    #   @return [String]
    #
    # @!attribute [rw] add_public_keys
    #   The list of public keys for the `DevEndpoint` to use.
    #   @return [Array<String>]
    #
    # @!attribute [rw] delete_public_keys
    #   The list of public keys to be deleted from the `DevEndpoint`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] custom_libraries
    #   Custom Python or Java libraries to be loaded in the `DevEndpoint`.
    #   @return [Types::DevEndpointCustomLibraries]
    #
    # @!attribute [rw] update_etl_libraries
    #   `True` if the list of custom libraries to be loaded in the
    #   development endpoint needs to be updated, or `False` if otherwise.
    #   @return [Boolean]
    #
    # @!attribute [rw] delete_arguments
    #   The list of argument keys to be deleted from the map of arguments
    #   used to configure the `DevEndpoint`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] add_arguments
    #   The map of arguments to add the map of arguments used to configure
    #   the `DevEndpoint`.
    #
    #   Valid arguments are:
    #
    #   * `"--enable-glue-datacatalog": ""`
    #
    #   * `"GLUE_PYTHON_VERSION": "3"`
    #
    #   * `"GLUE_PYTHON_VERSION": "2"`
    #
    #   You can specify a version of Python support for development
    #   endpoints by using the `Arguments` parameter in the
    #   `CreateDevEndpoint` or `UpdateDevEndpoint` APIs. If no arguments are
    #   provided, the version defaults to Python 2.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateDevEndpointRequest AWS API Documentation
    #
    class UpdateDevEndpointRequest < Struct.new(
      :endpoint_name,
      :public_key,
      :add_public_keys,
      :delete_public_keys,
      :custom_libraries,
      :update_etl_libraries,
      :delete_arguments,
      :add_arguments)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateDevEndpointResponse AWS API Documentation
    #
    class UpdateDevEndpointResponse < Aws::EmptyStructure; end

    # Specifies a grok classifier to update when passed to
    # `UpdateClassifier`.
    #
    # @note When making an API call, you may pass UpdateGrokClassifierRequest
    #   data as a hash:
    #
    #       {
    #         name: "NameString", # required
    #         classification: "Classification",
    #         grok_pattern: "GrokPattern",
    #         custom_patterns: "CustomPatterns",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the `GrokClassifier`.
    #   @return [String]
    #
    # @!attribute [rw] classification
    #   An identifier of the data format that the classifier matches, such
    #   as Twitter, JSON, Omniture logs, Amazon CloudWatch Logs, and so on.
    #   @return [String]
    #
    # @!attribute [rw] grok_pattern
    #   The grok pattern used by this classifier.
    #   @return [String]
    #
    # @!attribute [rw] custom_patterns
    #   Optional custom grok patterns used by this classifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateGrokClassifierRequest AWS API Documentation
    #
    class UpdateGrokClassifierRequest < Struct.new(
      :name,
      :classification,
      :grok_pattern,
      :custom_patterns)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateJobRequest
    #   data as a hash:
    #
    #       {
    #         job_name: "NameString", # required
    #         job_update: { # required
    #           description: "DescriptionString",
    #           log_uri: "UriString",
    #           role: "RoleString",
    #           execution_property: {
    #             max_concurrent_runs: 1,
    #           },
    #           command: {
    #             name: "GenericString",
    #             script_location: "ScriptLocationString",
    #             python_version: "PythonVersionString",
    #           },
    #           default_arguments: {
    #             "GenericString" => "GenericString",
    #           },
    #           non_overridable_arguments: {
    #             "GenericString" => "GenericString",
    #           },
    #           connections: {
    #             connections: ["GenericString"],
    #           },
    #           max_retries: 1,
    #           allocated_capacity: 1,
    #           timeout: 1,
    #           max_capacity: 1.0,
    #           worker_type: "Standard", # accepts Standard, G.1X, G.2X
    #           number_of_workers: 1,
    #           security_configuration: "NameString",
    #           notification_property: {
    #             notify_delay_after: 1,
    #           },
    #           glue_version: "GlueVersionString",
    #         },
    #       }
    #
    # @!attribute [rw] job_name
    #   The name of the job definition to update.
    #   @return [String]
    #
    # @!attribute [rw] job_update
    #   Specifies the values with which to update the job definition.
    #   @return [Types::JobUpdate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateJobRequest AWS API Documentation
    #
    class UpdateJobRequest < Struct.new(
      :job_name,
      :job_update)
      include Aws::Structure
    end

    # @!attribute [rw] job_name
    #   Returns the name of the updated job definition.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateJobResponse AWS API Documentation
    #
    class UpdateJobResponse < Struct.new(
      :job_name)
      include Aws::Structure
    end

    # Specifies a JSON classifier to be updated.
    #
    # @note When making an API call, you may pass UpdateJsonClassifierRequest
    #   data as a hash:
    #
    #       {
    #         name: "NameString", # required
    #         json_path: "JsonPath",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the classifier.
    #   @return [String]
    #
    # @!attribute [rw] json_path
    #   A `JsonPath` string defining the JSON data for the classifier to
    #   classify. AWS Glue supports a subset of `JsonPath`, as described in
    #   [Writing JsonPath Custom Classifiers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/custom-classifier.html#custom-classifier-json
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateJsonClassifierRequest AWS API Documentation
    #
    class UpdateJsonClassifierRequest < Struct.new(
      :name,
      :json_path)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateMLTransformRequest
    #   data as a hash:
    #
    #       {
    #         transform_id: "HashString", # required
    #         name: "NameString",
    #         description: "DescriptionString",
    #         parameters: {
    #           transform_type: "FIND_MATCHES", # required, accepts FIND_MATCHES
    #           find_matches_parameters: {
    #             primary_key_column_name: "ColumnNameString",
    #             precision_recall_tradeoff: 1.0,
    #             accuracy_cost_tradeoff: 1.0,
    #             enforce_provided_labels: false,
    #           },
    #         },
    #         role: "RoleString",
    #         glue_version: "GlueVersionString",
    #         max_capacity: 1.0,
    #         worker_type: "Standard", # accepts Standard, G.1X, G.2X
    #         number_of_workers: 1,
    #         timeout: 1,
    #         max_retries: 1,
    #       }
    #
    # @!attribute [rw] transform_id
    #   A unique identifier that was generated when the transform was
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The unique name that you gave the transform when you created it.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the transform. The default is an empty string.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The configuration parameters that are specific to the transform type
    #   (algorithm) used. Conditionally dependent on the transform type.
    #   @return [Types::TransformParameters]
    #
    # @!attribute [rw] role
    #   The name or Amazon Resource Name (ARN) of the IAM role with the
    #   required permissions.
    #   @return [String]
    #
    # @!attribute [rw] glue_version
    #   This value determines which version of AWS Glue this machine
    #   learning transform is compatible with. Glue 1.0 is recommended for
    #   most customers. If the value is not set, the Glue compatibility
    #   defaults to Glue 0.9. For more information, see [AWS Glue
    #   Versions][1] in the developer guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/glue/latest/dg/release-notes.html#release-notes-versions
    #   @return [String]
    #
    # @!attribute [rw] max_capacity
    #   The number of AWS Glue data processing units (DPUs) that are
    #   allocated to task runs for this transform. You can allocate from 2
    #   to 100 DPUs; the default is 10. A DPU is a relative measure of
    #   processing power that consists of 4 vCPUs of compute capacity and 16
    #   GB of memory. For more information, see the [AWS Glue pricing
    #   page][1].
    #
    #   When the `WorkerType` field is set to a value other than `Standard`,
    #   the `MaxCapacity` field is set automatically and becomes read-only.
    #
    #
    #
    #   [1]: https://aws.amazon.com/glue/pricing/
    #   @return [Float]
    #
    # @!attribute [rw] worker_type
    #   The type of predefined worker that is allocated when this task runs.
    #   Accepts a value of Standard, G.1X, or G.2X.
    #
    #   * For the `Standard` worker type, each worker provides 4 vCPU, 16 GB
    #     of memory and a 50GB disk, and 2 executors per worker.
    #
    #   * For the `G.1X` worker type, each worker provides 4 vCPU, 16 GB of
    #     memory and a 64GB disk, and 1 executor per worker.
    #
    #   * For the `G.2X` worker type, each worker provides 8 vCPU, 32 GB of
    #     memory and a 128GB disk, and 1 executor per worker.
    #   @return [String]
    #
    # @!attribute [rw] number_of_workers
    #   The number of workers of a defined `workerType` that are allocated
    #   when this task runs.
    #   @return [Integer]
    #
    # @!attribute [rw] timeout
    #   The timeout for a task run for this transform in minutes. This is
    #   the maximum time that a task run for this transform can consume
    #   resources before it is terminated and enters `TIMEOUT` status. The
    #   default is 2,880 minutes (48 hours).
    #   @return [Integer]
    #
    # @!attribute [rw] max_retries
    #   The maximum number of times to retry a task for this transform after
    #   a task run fails.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateMLTransformRequest AWS API Documentation
    #
    class UpdateMLTransformRequest < Struct.new(
      :transform_id,
      :name,
      :description,
      :parameters,
      :role,
      :glue_version,
      :max_capacity,
      :worker_type,
      :number_of_workers,
      :timeout,
      :max_retries)
      include Aws::Structure
    end

    # @!attribute [rw] transform_id
    #   The unique identifier for the transform that was updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateMLTransformResponse AWS API Documentation
    #
    class UpdateMLTransformResponse < Struct.new(
      :transform_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdatePartitionRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         table_name: "NameString", # required
    #         partition_value_list: ["ValueString"], # required
    #         partition_input: { # required
    #           values: ["ValueString"],
    #           last_access_time: Time.now,
    #           storage_descriptor: {
    #             columns: [
    #               {
    #                 name: "NameString", # required
    #                 type: "ColumnTypeString",
    #                 comment: "CommentString",
    #                 parameters: {
    #                   "KeyString" => "ParametersMapValue",
    #                 },
    #               },
    #             ],
    #             location: "LocationString",
    #             input_format: "FormatString",
    #             output_format: "FormatString",
    #             compressed: false,
    #             number_of_buckets: 1,
    #             serde_info: {
    #               name: "NameString",
    #               serialization_library: "NameString",
    #               parameters: {
    #                 "KeyString" => "ParametersMapValue",
    #               },
    #             },
    #             bucket_columns: ["NameString"],
    #             sort_columns: [
    #               {
    #                 column: "NameString", # required
    #                 sort_order: 1, # required
    #               },
    #             ],
    #             parameters: {
    #               "KeyString" => "ParametersMapValue",
    #             },
    #             skewed_info: {
    #               skewed_column_names: ["NameString"],
    #               skewed_column_values: ["ColumnValuesString"],
    #               skewed_column_value_location_maps: {
    #                 "ColumnValuesString" => "ColumnValuesString",
    #               },
    #             },
    #             stored_as_sub_directories: false,
    #           },
    #           parameters: {
    #             "KeyString" => "ParametersMapValue",
    #           },
    #           last_analyzed_time: Time.now,
    #         },
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the partition to be updated
    #   resides. If none is provided, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the catalog database in which the table in question
    #   resides.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table in which the partition to be updated is
    #   located.
    #   @return [String]
    #
    # @!attribute [rw] partition_value_list
    #   A list of the values defining the partition.
    #   @return [Array<String>]
    #
    # @!attribute [rw] partition_input
    #   The new partition object to update the partition to.
    #   @return [Types::PartitionInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdatePartitionRequest AWS API Documentation
    #
    class UpdatePartitionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :partition_value_list,
      :partition_input)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdatePartitionResponse AWS API Documentation
    #
    class UpdatePartitionResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateTableRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         table_input: { # required
    #           name: "NameString", # required
    #           description: "DescriptionString",
    #           owner: "NameString",
    #           last_access_time: Time.now,
    #           last_analyzed_time: Time.now,
    #           retention: 1,
    #           storage_descriptor: {
    #             columns: [
    #               {
    #                 name: "NameString", # required
    #                 type: "ColumnTypeString",
    #                 comment: "CommentString",
    #                 parameters: {
    #                   "KeyString" => "ParametersMapValue",
    #                 },
    #               },
    #             ],
    #             location: "LocationString",
    #             input_format: "FormatString",
    #             output_format: "FormatString",
    #             compressed: false,
    #             number_of_buckets: 1,
    #             serde_info: {
    #               name: "NameString",
    #               serialization_library: "NameString",
    #               parameters: {
    #                 "KeyString" => "ParametersMapValue",
    #               },
    #             },
    #             bucket_columns: ["NameString"],
    #             sort_columns: [
    #               {
    #                 column: "NameString", # required
    #                 sort_order: 1, # required
    #               },
    #             ],
    #             parameters: {
    #               "KeyString" => "ParametersMapValue",
    #             },
    #             skewed_info: {
    #               skewed_column_names: ["NameString"],
    #               skewed_column_values: ["ColumnValuesString"],
    #               skewed_column_value_location_maps: {
    #                 "ColumnValuesString" => "ColumnValuesString",
    #               },
    #             },
    #             stored_as_sub_directories: false,
    #           },
    #           partition_keys: [
    #             {
    #               name: "NameString", # required
    #               type: "ColumnTypeString",
    #               comment: "CommentString",
    #               parameters: {
    #                 "KeyString" => "ParametersMapValue",
    #               },
    #             },
    #           ],
    #           view_original_text: "ViewTextString",
    #           view_expanded_text: "ViewTextString",
    #           table_type: "TableTypeString",
    #           parameters: {
    #             "KeyString" => "ParametersMapValue",
    #           },
    #         },
    #         skip_archive: false,
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the table resides. If none is
    #   provided, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the catalog database in which the table resides. For
    #   Hive compatibility, this name is entirely lowercase.
    #   @return [String]
    #
    # @!attribute [rw] table_input
    #   An updated `TableInput` object to define the metadata table in the
    #   catalog.
    #   @return [Types::TableInput]
    #
    # @!attribute [rw] skip_archive
    #   By default, `UpdateTable` always creates an archived version of the
    #   table before updating it. However, if `skipArchive` is set to true,
    #   `UpdateTable` does not create the archived version.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateTableRequest AWS API Documentation
    #
    class UpdateTableRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_input,
      :skip_archive)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateTableResponse AWS API Documentation
    #
    class UpdateTableResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateTriggerRequest
    #   data as a hash:
    #
    #       {
    #         name: "NameString", # required
    #         trigger_update: { # required
    #           name: "NameString",
    #           description: "DescriptionString",
    #           schedule: "GenericString",
    #           actions: [
    #             {
    #               job_name: "NameString",
    #               arguments: {
    #                 "GenericString" => "GenericString",
    #               },
    #               timeout: 1,
    #               security_configuration: "NameString",
    #               notification_property: {
    #                 notify_delay_after: 1,
    #               },
    #               crawler_name: "NameString",
    #             },
    #           ],
    #           predicate: {
    #             logical: "AND", # accepts AND, ANY
    #             conditions: [
    #               {
    #                 logical_operator: "EQUALS", # accepts EQUALS
    #                 job_name: "NameString",
    #                 state: "STARTING", # accepts STARTING, RUNNING, STOPPING, STOPPED, SUCCEEDED, FAILED, TIMEOUT
    #                 crawler_name: "NameString",
    #                 crawl_state: "RUNNING", # accepts RUNNING, CANCELLING, CANCELLED, SUCCEEDED, FAILED
    #               },
    #             ],
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name of the trigger to update.
    #   @return [String]
    #
    # @!attribute [rw] trigger_update
    #   The new values with which to update the trigger.
    #   @return [Types::TriggerUpdate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateTriggerRequest AWS API Documentation
    #
    class UpdateTriggerRequest < Struct.new(
      :name,
      :trigger_update)
      include Aws::Structure
    end

    # @!attribute [rw] trigger
    #   The resulting trigger definition.
    #   @return [Types::Trigger]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateTriggerResponse AWS API Documentation
    #
    class UpdateTriggerResponse < Struct.new(
      :trigger)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateUserDefinedFunctionRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         function_name: "NameString", # required
    #         function_input: { # required
    #           function_name: "NameString",
    #           class_name: "NameString",
    #           owner_name: "NameString",
    #           owner_type: "USER", # accepts USER, ROLE, GROUP
    #           resource_uris: [
    #             {
    #               resource_type: "JAR", # accepts JAR, FILE, ARCHIVE
    #               uri: "URI",
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the function to be updated is
    #   located. If none is provided, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the catalog database where the function to be updated is
    #   located.
    #   @return [String]
    #
    # @!attribute [rw] function_name
    #   The name of the function.
    #   @return [String]
    #
    # @!attribute [rw] function_input
    #   A `FunctionInput` object that redefines the function in the Data
    #   Catalog.
    #   @return [Types::UserDefinedFunctionInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateUserDefinedFunctionRequest AWS API Documentation
    #
    class UpdateUserDefinedFunctionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :function_name,
      :function_input)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateUserDefinedFunctionResponse AWS API Documentation
    #
    class UpdateUserDefinedFunctionResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateWorkflowRequest
    #   data as a hash:
    #
    #       {
    #         name: "NameString", # required
    #         description: "GenericString",
    #         default_run_properties: {
    #           "IdString" => "GenericString",
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   Name of the workflow to be updated.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] default_run_properties
    #   A collection of properties to be used as part of each execution of
    #   the workflow.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateWorkflowRequest AWS API Documentation
    #
    class UpdateWorkflowRequest < Struct.new(
      :name,
      :description,
      :default_run_properties)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the workflow which was specified in input.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateWorkflowResponse AWS API Documentation
    #
    class UpdateWorkflowResponse < Struct.new(
      :name)
      include Aws::Structure
    end

    # Specifies an XML classifier to be updated.
    #
    # @note When making an API call, you may pass UpdateXMLClassifierRequest
    #   data as a hash:
    #
    #       {
    #         name: "NameString", # required
    #         classification: "Classification",
    #         row_tag: "RowTag",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the classifier.
    #   @return [String]
    #
    # @!attribute [rw] classification
    #   An identifier of the data format that the classifier matches.
    #   @return [String]
    #
    # @!attribute [rw] row_tag
    #   The XML tag designating the element that contains each record in an
    #   XML document being parsed. This cannot identify a self-closing
    #   element (closed by `/>`). An empty row element that contains only
    #   attributes can be parsed as long as it ends with a closing tag (for
    #   example, `<row item_a="A" item_b="B"></row>` is okay, but `<row
    #   item_a="A" item_b="B" />` is not).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateXMLClassifierRequest AWS API Documentation
    #
    class UpdateXMLClassifierRequest < Struct.new(
      :name,
      :classification,
      :row_tag)
      include Aws::Structure
    end

    # Represents the equivalent of a Hive user-defined function (`UDF`)
    # definition.
    #
    # @!attribute [rw] function_name
    #   The name of the function.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the database where the function resides.
    #   @return [String]
    #
    # @!attribute [rw] class_name
    #   The Java class that contains the function code.
    #   @return [String]
    #
    # @!attribute [rw] owner_name
    #   The owner of the function.
    #   @return [String]
    #
    # @!attribute [rw] owner_type
    #   The owner type.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time at which the function was created.
    #   @return [Time]
    #
    # @!attribute [rw] resource_uris
    #   The resource URIs for the function.
    #   @return [Array<Types::ResourceUri>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UserDefinedFunction AWS API Documentation
    #
    class UserDefinedFunction < Struct.new(
      :function_name,
      :database_name,
      :class_name,
      :owner_name,
      :owner_type,
      :create_time,
      :resource_uris)
      include Aws::Structure
    end

    # A structure used to create or update a user-defined function.
    #
    # @note When making an API call, you may pass UserDefinedFunctionInput
    #   data as a hash:
    #
    #       {
    #         function_name: "NameString",
    #         class_name: "NameString",
    #         owner_name: "NameString",
    #         owner_type: "USER", # accepts USER, ROLE, GROUP
    #         resource_uris: [
    #           {
    #             resource_type: "JAR", # accepts JAR, FILE, ARCHIVE
    #             uri: "URI",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] function_name
    #   The name of the function.
    #   @return [String]
    #
    # @!attribute [rw] class_name
    #   The Java class that contains the function code.
    #   @return [String]
    #
    # @!attribute [rw] owner_name
    #   The owner of the function.
    #   @return [String]
    #
    # @!attribute [rw] owner_type
    #   The owner type.
    #   @return [String]
    #
    # @!attribute [rw] resource_uris
    #   The resource URIs for the function.
    #   @return [Array<Types::ResourceUri>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UserDefinedFunctionInput AWS API Documentation
    #
    class UserDefinedFunctionInput < Struct.new(
      :function_name,
      :class_name,
      :owner_name,
      :owner_type,
      :resource_uris)
      include Aws::Structure
    end

    # A value could not be validated.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      include Aws::Structure
    end

    # There was a version conflict.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/VersionMismatchException AWS API Documentation
    #
    class VersionMismatchException < Struct.new(
      :message)
      include Aws::Structure
    end

    # A workflow represents a flow in which AWS Glue components should be
    # executed to complete a logical task.
    #
    # @!attribute [rw] name
    #   The name of the workflow representing the flow.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] default_run_properties
    #   A collection of properties to be used as part of each execution of
    #   the workflow.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] created_on
    #   The date and time when the workflow was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_on
    #   The date and time when the workflow was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] last_run
    #   The information about the last execution of the workflow.
    #   @return [Types::WorkflowRun]
    #
    # @!attribute [rw] graph
    #   The graph representing all the AWS Glue components that belong to
    #   the workflow as nodes and directed connections between them as
    #   edges.
    #   @return [Types::WorkflowGraph]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Workflow AWS API Documentation
    #
    class Workflow < Struct.new(
      :name,
      :description,
      :default_run_properties,
      :created_on,
      :last_modified_on,
      :last_run,
      :graph)
      include Aws::Structure
    end

    # A workflow graph represents the complete workflow containing all the
    # AWS Glue components present in the workflow and all the directed
    # connections between them.
    #
    # @!attribute [rw] nodes
    #   A list of the the AWS Glue components belong to the workflow
    #   represented as nodes.
    #   @return [Array<Types::Node>]
    #
    # @!attribute [rw] edges
    #   A list of all the directed connections between the nodes belonging
    #   to the workflow.
    #   @return [Array<Types::Edge>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/WorkflowGraph AWS API Documentation
    #
    class WorkflowGraph < Struct.new(
      :nodes,
      :edges)
      include Aws::Structure
    end

    # A workflow run is an execution of a workflow providing all the runtime
    # information.
    #
    # @!attribute [rw] name
    #   Name of the workflow which was executed.
    #   @return [String]
    #
    # @!attribute [rw] workflow_run_id
    #   The ID of this workflow run.
    #   @return [String]
    #
    # @!attribute [rw] workflow_run_properties
    #   The workflow run properties which were set during the run.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] started_on
    #   The date and time when the workflow run was started.
    #   @return [Time]
    #
    # @!attribute [rw] completed_on
    #   The date and time when the workflow run completed.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the workflow run.
    #   @return [String]
    #
    # @!attribute [rw] statistics
    #   The statistics of the run.
    #   @return [Types::WorkflowRunStatistics]
    #
    # @!attribute [rw] graph
    #   The graph representing all the AWS Glue components that belong to
    #   the workflow as nodes and directed connections between them as
    #   edges.
    #   @return [Types::WorkflowGraph]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/WorkflowRun AWS API Documentation
    #
    class WorkflowRun < Struct.new(
      :name,
      :workflow_run_id,
      :workflow_run_properties,
      :started_on,
      :completed_on,
      :status,
      :statistics,
      :graph)
      include Aws::Structure
    end

    # Workflow run statistics provides statistics about the workflow run.
    #
    # @!attribute [rw] total_actions
    #   Total number of Actions in the workflow run.
    #   @return [Integer]
    #
    # @!attribute [rw] timeout_actions
    #   Total number of Actions which timed out.
    #   @return [Integer]
    #
    # @!attribute [rw] failed_actions
    #   Total number of Actions which have failed.
    #   @return [Integer]
    #
    # @!attribute [rw] stopped_actions
    #   Total number of Actions which have stopped.
    #   @return [Integer]
    #
    # @!attribute [rw] succeeded_actions
    #   Total number of Actions which have succeeded.
    #   @return [Integer]
    #
    # @!attribute [rw] running_actions
    #   Total number Actions in running state.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/WorkflowRunStatistics AWS API Documentation
    #
    class WorkflowRunStatistics < Struct.new(
      :total_actions,
      :timeout_actions,
      :failed_actions,
      :stopped_actions,
      :succeeded_actions,
      :running_actions)
      include Aws::Structure
    end

    # A classifier for `XML` content.
    #
    # @!attribute [rw] name
    #   The name of the classifier.
    #   @return [String]
    #
    # @!attribute [rw] classification
    #   An identifier of the data format that the classifier matches.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time that this classifier was registered.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated
    #   The time that this classifier was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] version
    #   The version of this classifier.
    #   @return [Integer]
    #
    # @!attribute [rw] row_tag
    #   The XML tag designating the element that contains each record in an
    #   XML document being parsed. This can't identify a self-closing
    #   element (closed by `/>`). An empty row element that contains only
    #   attributes can be parsed as long as it ends with a closing tag (for
    #   example, `<row item_a="A" item_b="B"></row>` is okay, but `<row
    #   item_a="A" item_b="B" />` is not).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/XMLClassifier AWS API Documentation
    #
    class XMLClassifier < Struct.new(
      :name,
      :classification,
      :creation_time,
      :last_updated,
      :version,
      :row_tag)
      include Aws::Structure
    end

  end
end
