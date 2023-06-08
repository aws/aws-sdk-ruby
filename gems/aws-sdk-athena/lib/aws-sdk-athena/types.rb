# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Athena
  module Types

    # Indicates that an Amazon S3 canned ACL should be set to control
    # ownership of stored query results. When Athena stores query results in
    # Amazon S3, the canned ACL is set with the `x-amz-acl` request header.
    # For more information about S3 Object Ownership, see [Object Ownership
    # settings][1] in the *Amazon S3 User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html#object-ownership-overview
    #
    # @!attribute [rw] s3_acl_option
    #   The Amazon S3 canned ACL that Athena should specify when storing
    #   query results. Currently the only supported canned ACL is
    #   `BUCKET_OWNER_FULL_CONTROL`. If a query runs in a workgroup and the
    #   workgroup overrides client-side settings, then the Amazon S3 canned
    #   ACL specified in the workgroup's settings is used for all queries
    #   that run in the workgroup. For more information about Amazon S3
    #   canned ACLs, see [Canned ACL][1] in the *Amazon S3 User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html#canned-acl
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/AclConfiguration AWS API Documentation
    #
    class AclConfiguration < Struct.new(
      :s3_acl_option)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the application runtime IDs and their supported DPU sizes.
    #
    # @!attribute [rw] application_runtime_id
    #   The name of the supported application runtime (for example, `Athena
    #   notebook version 1`).
    #   @return [String]
    #
    # @!attribute [rw] supported_dpu_sizes
    #   A list of the supported DPU sizes that the application runtime
    #   supports.
    #   @return [Array<Integer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ApplicationDPUSizes AWS API Documentation
    #
    class ApplicationDPUSizes < Struct.new(
      :application_runtime_id,
      :supported_dpu_sizes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about an Athena query error. The `AthenaError`
    # feature provides standardized error information to help you understand
    # failed queries and take steps after a query failure occurs.
    # `AthenaError` includes an `ErrorCategory` field that specifies whether
    # the cause of the failed query is due to system error, user error, or
    # other error.
    #
    # @!attribute [rw] error_category
    #   An integer value that specifies the category of a query failure
    #   error. The following list shows the category for each integer value.
    #
    #   **1** - System
    #
    #   **2** - User
    #
    #   **3** - Other
    #   @return [Integer]
    #
    # @!attribute [rw] error_type
    #   An integer value that provides specific information about an Athena
    #   query error. For the meaning of specific values, see the [Error Type
    #   Reference][1] in the *Amazon Athena User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/athena/latest/ug/error-reference.html#error-reference-error-type-reference
    #   @return [Integer]
    #
    # @!attribute [rw] retryable
    #   True if the query might succeed if resubmitted.
    #   @return [Boolean]
    #
    # @!attribute [rw] error_message
    #   Contains a short description of the error that occurred.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/AthenaError AWS API Documentation
    #
    class AthenaError < Struct.new(
      :error_category,
      :error_type,
      :retryable,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains an array of named query IDs.
    #
    # @!attribute [rw] named_query_ids
    #   An array of query IDs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/BatchGetNamedQueryInput AWS API Documentation
    #
    class BatchGetNamedQueryInput < Struct.new(
      :named_query_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] named_queries
    #   Information about the named query IDs submitted.
    #   @return [Array<Types::NamedQuery>]
    #
    # @!attribute [rw] unprocessed_named_query_ids
    #   Information about provided query IDs.
    #   @return [Array<Types::UnprocessedNamedQueryId>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/BatchGetNamedQueryOutput AWS API Documentation
    #
    class BatchGetNamedQueryOutput < Struct.new(
      :named_queries,
      :unprocessed_named_query_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] prepared_statement_names
    #   A list of prepared statement names to return.
    #   @return [Array<String>]
    #
    # @!attribute [rw] work_group
    #   The name of the workgroup to which the prepared statements belong.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/BatchGetPreparedStatementInput AWS API Documentation
    #
    class BatchGetPreparedStatementInput < Struct.new(
      :prepared_statement_names,
      :work_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] prepared_statements
    #   The list of prepared statements returned.
    #   @return [Array<Types::PreparedStatement>]
    #
    # @!attribute [rw] unprocessed_prepared_statement_names
    #   A list of one or more prepared statements that were requested but
    #   could not be returned.
    #   @return [Array<Types::UnprocessedPreparedStatementName>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/BatchGetPreparedStatementOutput AWS API Documentation
    #
    class BatchGetPreparedStatementOutput < Struct.new(
      :prepared_statements,
      :unprocessed_prepared_statement_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains an array of query execution IDs.
    #
    # @!attribute [rw] query_execution_ids
    #   An array of query execution IDs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/BatchGetQueryExecutionInput AWS API Documentation
    #
    class BatchGetQueryExecutionInput < Struct.new(
      :query_execution_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] query_executions
    #   Information about a query execution.
    #   @return [Array<Types::QueryExecution>]
    #
    # @!attribute [rw] unprocessed_query_execution_ids
    #   Information about the query executions that failed to run.
    #   @return [Array<Types::UnprocessedQueryExecutionId>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/BatchGetQueryExecutionOutput AWS API Documentation
    #
    class BatchGetQueryExecutionOutput < Struct.new(
      :query_executions,
      :unprocessed_query_execution_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configuration information for the calculation.
    #
    # @!attribute [rw] code_block
    #   A string that contains the code for the calculation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/CalculationConfiguration AWS API Documentation
    #
    class CalculationConfiguration < Struct.new(
      :code_block)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an application-specific calculation result.
    #
    # @!attribute [rw] std_out_s3_uri
    #   The Amazon S3 location of the `stdout` file for the calculation.
    #   @return [String]
    #
    # @!attribute [rw] std_error_s3_uri
    #   The Amazon S3 location of the `stderr` error messages file for the
    #   calculation.
    #   @return [String]
    #
    # @!attribute [rw] result_s3_uri
    #   The Amazon S3 location of the folder for the calculation results.
    #   @return [String]
    #
    # @!attribute [rw] result_type
    #   The data format of the calculation result.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/CalculationResult AWS API Documentation
    #
    class CalculationResult < Struct.new(
      :std_out_s3_uri,
      :std_error_s3_uri,
      :result_s3_uri,
      :result_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains statistics for a notebook calculation.
    #
    # @!attribute [rw] dpu_execution_in_millis
    #   The data processing unit execution time in milliseconds for the
    #   calculation.
    #   @return [Integer]
    #
    # @!attribute [rw] progress
    #   The progress of the calculation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/CalculationStatistics AWS API Documentation
    #
    class CalculationStatistics < Struct.new(
      :dpu_execution_in_millis,
      :progress)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the status of a notebook calculation.
    #
    # @!attribute [rw] submission_date_time
    #   The date and time the calculation was submitted for processing.
    #   @return [Time]
    #
    # @!attribute [rw] completion_date_time
    #   The date and time the calculation completed processing.
    #   @return [Time]
    #
    # @!attribute [rw] state
    #   The state of the calculation execution. A description of each state
    #   follows.
    #
    #   `CREATING` - The calculation is in the process of being created.
    #
    #   `CREATED` - The calculation has been created and is ready to run.
    #
    #   `QUEUED` - The calculation has been queued for processing.
    #
    #   `RUNNING` - The calculation is running.
    #
    #   `CANCELING` - A request to cancel the calculation has been received
    #   and the system is working to stop it.
    #
    #   `CANCELED` - The calculation is no longer running as the result of a
    #   cancel request.
    #
    #   `COMPLETED` - The calculation has completed without error.
    #
    #   `FAILED` - The calculation failed and is no longer running.
    #   @return [String]
    #
    # @!attribute [rw] state_change_reason
    #   The reason for the calculation state change (for example, the
    #   calculation was canceled because the session was terminated).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/CalculationStatus AWS API Documentation
    #
    class CalculationStatus < Struct.new(
      :submission_date_time,
      :completion_date_time,
      :state,
      :state_change_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information for a notebook calculation.
    #
    # @!attribute [rw] calculation_execution_id
    #   The calculation execution UUID.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the calculation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Contains information about the status of the calculation.
    #   @return [Types::CalculationStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/CalculationSummary AWS API Documentation
    #
    class CalculationSummary < Struct.new(
      :calculation_execution_id,
      :description,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the capacity reservation to cancel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/CancelCapacityReservationInput AWS API Documentation
    #
    class CancelCapacityReservationInput < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/CancelCapacityReservationOutput AWS API Documentation
    #
    class CancelCapacityReservationOutput < Aws::EmptyStructure; end

    # Contains the submission time of a single allocation request for a
    # capacity reservation and the most recent status of the attempted
    # allocation.
    #
    # @!attribute [rw] status
    #   The status of the capacity allocation.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The status message of the capacity allocation.
    #   @return [String]
    #
    # @!attribute [rw] request_time
    #   The time when the capacity allocation was requested.
    #   @return [Time]
    #
    # @!attribute [rw] request_completion_time
    #   The time when the capacity allocation request was completed.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/CapacityAllocation AWS API Documentation
    #
    class CapacityAllocation < Struct.new(
      :status,
      :status_message,
      :request_time,
      :request_completion_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # A mapping between one or more workgroups and a capacity reservation.
    #
    # @!attribute [rw] work_group_names
    #   The list of workgroup names for the capacity assignment.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/CapacityAssignment AWS API Documentation
    #
    class CapacityAssignment < Struct.new(
      :work_group_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # Assigns Athena workgroups (and hence their queries) to capacity
    # reservations. A capacity reservation can have only one capacity
    # assignment configuration, but the capacity assignment configuration
    # can be made up of multiple individual assignments. Each assignment
    # specifies how Athena queries can consume capacity from the capacity
    # reservation that their workgroup is mapped to.
    #
    # @!attribute [rw] capacity_reservation_name
    #   The name of the reservation that the capacity assignment
    #   configuration is for.
    #   @return [String]
    #
    # @!attribute [rw] capacity_assignments
    #   The list of assignments that make up the capacity assignment
    #   configuration.
    #   @return [Array<Types::CapacityAssignment>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/CapacityAssignmentConfiguration AWS API Documentation
    #
    class CapacityAssignmentConfiguration < Struct.new(
      :capacity_reservation_name,
      :capacity_assignments)
      SENSITIVE = []
      include Aws::Structure
    end

    # A reservation for a specified number of data processing units (DPUs).
    # When a reservation is initially created, it has no DPUs. Athena
    # allocates DPUs until the allocated amount equals the requested amount.
    #
    # @!attribute [rw] name
    #   The name of the capacity reservation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the capacity reservation.
    #   @return [String]
    #
    # @!attribute [rw] target_dpus
    #   The number of data processing units requested.
    #   @return [Integer]
    #
    # @!attribute [rw] allocated_dpus
    #   The number of data processing units currently allocated.
    #   @return [Integer]
    #
    # @!attribute [rw] last_allocation
    #   Contains the submission time of a single allocation request for a
    #   capacity reservation and the most recent status of the attempted
    #   allocation.
    #   @return [Types::CapacityAllocation]
    #
    # @!attribute [rw] last_successful_allocation_time
    #   The time of the most recent capacity allocation that succeeded.
    #   @return [Time]
    #
    # @!attribute [rw] creation_time
    #   The time in UTC epoch millis when the capacity reservation was
    #   created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/CapacityReservation AWS API Documentation
    #
    class CapacityReservation < Struct.new(
      :name,
      :status,
      :target_dpus,
      :allocated_dpus,
      :last_allocation,
      :last_successful_allocation_time,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains metadata for a column in a table.
    #
    # @!attribute [rw] name
    #   The name of the column.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The data type of the column.
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   Optional information about the column.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/Column AWS API Documentation
    #
    class Column < Struct.new(
      :name,
      :type,
      :comment)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the columns in a query execution result.
    #
    # @!attribute [rw] catalog_name
    #   The catalog to which the query results belong.
    #   @return [String]
    #
    # @!attribute [rw] schema_name
    #   The schema name (database name) to which the query results belong.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The table name for the query results.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the column.
    #   @return [String]
    #
    # @!attribute [rw] label
    #   A column label.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The data type of the column.
    #   @return [String]
    #
    # @!attribute [rw] precision
    #   For `DECIMAL` data types, specifies the total number of digits, up
    #   to 38. For performance reasons, we recommend up to 18 digits.
    #   @return [Integer]
    #
    # @!attribute [rw] scale
    #   For `DECIMAL` data types, specifies the total number of digits in
    #   the fractional part of the value. Defaults to 0.
    #   @return [Integer]
    #
    # @!attribute [rw] nullable
    #   Indicates the column's nullable status.
    #   @return [String]
    #
    # @!attribute [rw] case_sensitive
    #   Indicates whether values in the column are case-sensitive.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ColumnInfo AWS API Documentation
    #
    class ColumnInfo < Struct.new(
      :catalog_name,
      :schema_name,
      :table_name,
      :name,
      :label,
      :type,
      :precision,
      :scale,
      :nullable,
      :case_sensitive)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] target_dpus
    #   The number of requested data processing units.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The name of the capacity reservation to create.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags for the capacity reservation.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/CreateCapacityReservationInput AWS API Documentation
    #
    class CreateCapacityReservationInput < Struct.new(
      :target_dpus,
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/CreateCapacityReservationOutput AWS API Documentation
    #
    class CreateCapacityReservationOutput < Aws::EmptyStructure; end

    # @!attribute [rw] name
    #   The name of the data catalog to create. The catalog name must be
    #   unique for the Amazon Web Services account and can use a maximum of
    #   127 alphanumeric, underscore, at sign, or hyphen characters. The
    #   remainder of the length constraint of 256 is reserved for use by
    #   Athena.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of data catalog to create: `LAMBDA` for a federated
    #   catalog, `HIVE` for an external hive metastore, or `GLUE` for an
    #   Glue Data Catalog.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the data catalog to be created.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   Specifies the Lambda function or functions to use for creating the
    #   data catalog. This is a mapping whose values depend on the catalog
    #   type.
    #
    #   * For the `HIVE` data catalog type, use the following syntax. The
    #     `metadata-function` parameter is required. `The sdk-version`
    #     parameter is optional and defaults to the currently supported
    #     version.
    #
    #     `metadata-function=lambda_arn, sdk-version=version_number `
    #
    #   * For the `LAMBDA` data catalog type, use one of the following sets
    #     of required parameters, but not both.
    #
    #     * If you have one Lambda function that processes metadata and
    #       another for reading the actual data, use the following syntax.
    #       Both parameters are required.
    #
    #       `metadata-function=lambda_arn, record-function=lambda_arn `
    #
    #     * If you have a composite Lambda function that processes both
    #       metadata and data, use the following syntax to specify your
    #       Lambda function.
    #
    #       `function=lambda_arn `
    #
    #   * The `GLUE` type takes a catalog ID parameter and is required. The
    #     ` catalog_id ` is the account ID of the Amazon Web Services
    #     account to which the Glue Data Catalog belongs.
    #
    #     `catalog-id=catalog_id `
    #
    #     * The `GLUE` data catalog type also applies to the default
    #       `AwsDataCatalog` that already exists in your account, of which
    #       you can have only one and cannot modify.
    #
    #     * Queries that specify a Glue Data Catalog other than the default
    #       `AwsDataCatalog` must be run on Athena engine version 2.
    #
    #     * In Regions where Athena engine version 2 is not available,
    #       creating new Glue data catalogs results in an `INVALID_INPUT`
    #       error.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tags
    #   A list of comma separated tags to add to the data catalog that is
    #   created.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/CreateDataCatalogInput AWS API Documentation
    #
    class CreateDataCatalogInput < Struct.new(
      :name,
      :type,
      :description,
      :parameters,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/CreateDataCatalogOutput AWS API Documentation
    #
    class CreateDataCatalogOutput < Aws::EmptyStructure; end

    # @!attribute [rw] name
    #   The query name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The query description.
    #   @return [String]
    #
    # @!attribute [rw] database
    #   The database to which the query belongs.
    #   @return [String]
    #
    # @!attribute [rw] query_string
    #   The contents of the query with all query statements.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique case-sensitive string used to ensure the request to create
    #   the query is idempotent (executes only once). If another
    #   `CreateNamedQuery` request is received, the same response is
    #   returned and another query is not created. If a parameter has
    #   changed, for example, the `QueryString`, an error is returned.
    #
    #   This token is listed as not required because Amazon Web Services
    #   SDKs (for example the Amazon Web Services SDK for Java)
    #   auto-generate the token for users. If you are not using the Amazon
    #   Web Services SDK or the Amazon Web Services CLI, you must provide
    #   this token or the action will fail.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] work_group
    #   The name of the workgroup in which the named query is being created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/CreateNamedQueryInput AWS API Documentation
    #
    class CreateNamedQueryInput < Struct.new(
      :name,
      :description,
      :database,
      :query_string,
      :client_request_token,
      :work_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] named_query_id
    #   The unique ID of the query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/CreateNamedQueryOutput AWS API Documentation
    #
    class CreateNamedQueryOutput < Struct.new(
      :named_query_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] work_group
    #   The name of the Spark enabled workgroup in which the notebook will
    #   be created.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the `ipynb` file to be created in the Spark workgroup,
    #   without the `.ipynb` extension.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique case-sensitive string used to ensure the request to create
    #   the notebook is idempotent (executes only once).
    #
    #   This token is listed as not required because Amazon Web Services
    #   SDKs (for example the Amazon Web Services SDK for Java)
    #   auto-generate the token for you. If you are not using the Amazon Web
    #   Services SDK or the Amazon Web Services CLI, you must provide this
    #   token or the action will fail.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/CreateNotebookInput AWS API Documentation
    #
    class CreateNotebookInput < Struct.new(
      :work_group,
      :name,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] notebook_id
    #   A unique identifier for the notebook.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/CreateNotebookOutput AWS API Documentation
    #
    class CreateNotebookOutput < Struct.new(
      :notebook_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] statement_name
    #   The name of the prepared statement.
    #   @return [String]
    #
    # @!attribute [rw] work_group
    #   The name of the workgroup to which the prepared statement belongs.
    #   @return [String]
    #
    # @!attribute [rw] query_statement
    #   The query string for the prepared statement.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the prepared statement.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/CreatePreparedStatementInput AWS API Documentation
    #
    class CreatePreparedStatementInput < Struct.new(
      :statement_name,
      :work_group,
      :query_statement,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/CreatePreparedStatementOutput AWS API Documentation
    #
    class CreatePreparedStatementOutput < Aws::EmptyStructure; end

    # @!attribute [rw] session_id
    #   The session ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/CreatePresignedNotebookUrlRequest AWS API Documentation
    #
    class CreatePresignedNotebookUrlRequest < Struct.new(
      :session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] notebook_url
    #   The URL of the notebook. The URL includes the authentication token
    #   and notebook file name and points directly to the opened notebook.
    #   @return [String]
    #
    # @!attribute [rw] auth_token
    #   The authentication token for the notebook.
    #   @return [String]
    #
    # @!attribute [rw] auth_token_expiration_time
    #   The UTC epoch time when the authentication token expires.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/CreatePresignedNotebookUrlResponse AWS API Documentation
    #
    class CreatePresignedNotebookUrlResponse < Struct.new(
      :notebook_url,
      :auth_token,
      :auth_token_expiration_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The workgroup name.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   Contains configuration information for creating an Athena SQL
    #   workgroup or Spark enabled Athena workgroup. Athena SQL workgroup
    #   configuration includes the location in Amazon S3 where query and
    #   calculation results are stored, the encryption configuration, if
    #   any, used for encrypting query results, whether the Amazon
    #   CloudWatch Metrics are enabled for the workgroup, the limit for the
    #   amount of bytes scanned (cutoff) per query, if it is specified, and
    #   whether workgroup's settings (specified with
    #   `EnforceWorkGroupConfiguration`) in the `WorkGroupConfiguration`
    #   override client-side settings. See
    #   WorkGroupConfiguration$EnforceWorkGroupConfiguration.
    #   @return [Types::WorkGroupConfiguration]
    #
    # @!attribute [rw] description
    #   The workgroup description.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of comma separated tags to add to the workgroup that is
    #   created.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/CreateWorkGroupInput AWS API Documentation
    #
    class CreateWorkGroupInput < Struct.new(
      :name,
      :configuration,
      :description,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/CreateWorkGroupOutput AWS API Documentation
    #
    class CreateWorkGroupOutput < Aws::EmptyStructure; end

    # Specifies the KMS key that is used to encrypt the user's data stores
    # in Athena. This setting does not apply to Athena SQL workgroups.
    #
    # @!attribute [rw] kms_key
    #   The KMS key that is used to encrypt the user's data stores in
    #   Athena.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/CustomerContentEncryptionConfiguration AWS API Documentation
    #
    class CustomerContentEncryptionConfiguration < Struct.new(
      :kms_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a data catalog in an Amazon Web Services
    # account.
    #
    # <note markdown="1"> In the Athena console, data catalogs are listed as "data sources" on
    # the **Data sources** page under the **Data source name** column.
    #
    #  </note>
    #
    # @!attribute [rw] name
    #   The name of the data catalog. The catalog name must be unique for
    #   the Amazon Web Services account and can use a maximum of 127
    #   alphanumeric, underscore, at sign, or hyphen characters. The
    #   remainder of the length constraint of 256 is reserved for use by
    #   Athena.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An optional description of the data catalog.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of data catalog to create: `LAMBDA` for a federated
    #   catalog, `HIVE` for an external hive metastore, or `GLUE` for an
    #   Glue Data Catalog.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   Specifies the Lambda function or functions to use for the data
    #   catalog. This is a mapping whose values depend on the catalog type.
    #
    #   * For the `HIVE` data catalog type, use the following syntax. The
    #     `metadata-function` parameter is required. `The sdk-version`
    #     parameter is optional and defaults to the currently supported
    #     version.
    #
    #     `metadata-function=lambda_arn, sdk-version=version_number `
    #
    #   * For the `LAMBDA` data catalog type, use one of the following sets
    #     of required parameters, but not both.
    #
    #     * If you have one Lambda function that processes metadata and
    #       another for reading the actual data, use the following syntax.
    #       Both parameters are required.
    #
    #       `metadata-function=lambda_arn, record-function=lambda_arn `
    #
    #     * If you have a composite Lambda function that processes both
    #       metadata and data, use the following syntax to specify your
    #       Lambda function.
    #
    #       `function=lambda_arn `
    #
    #   * The `GLUE` type takes a catalog ID parameter and is required. The
    #     ` catalog_id ` is the account ID of the Amazon Web Services
    #     account to which the Glue catalog belongs.
    #
    #     `catalog-id=catalog_id `
    #
    #     * The `GLUE` data catalog type also applies to the default
    #       `AwsDataCatalog` that already exists in your account, of which
    #       you can have only one and cannot modify.
    #
    #     * Queries that specify a Glue Data Catalog other than the default
    #       `AwsDataCatalog` must be run on Athena engine version 2.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/DataCatalog AWS API Documentation
    #
    class DataCatalog < Struct.new(
      :name,
      :description,
      :type,
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary information for the data catalog, which includes its name
    # and type.
    #
    # @!attribute [rw] catalog_name
    #   The name of the data catalog. The catalog name is unique for the
    #   Amazon Web Services account and can use a maximum of 127
    #   alphanumeric, underscore, at sign, or hyphen characters. The
    #   remainder of the length constraint of 256 is reserved for use by
    #   Athena.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The data catalog type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/DataCatalogSummary AWS API Documentation
    #
    class DataCatalogSummary < Struct.new(
      :catalog_name,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains metadata information for a database in a data catalog.
    #
    # @!attribute [rw] name
    #   The name of the database.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An optional description of the database.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   A set of custom key/value pairs.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/Database AWS API Documentation
    #
    class Database < Struct.new(
      :name,
      :description,
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # A piece of data (a field in the table).
    #
    # @!attribute [rw] var_char_value
    #   The value of the datum.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/Datum AWS API Documentation
    #
    class Datum < Struct.new(
      :var_char_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the capacity reservation to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/DeleteCapacityReservationInput AWS API Documentation
    #
    class DeleteCapacityReservationInput < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/DeleteCapacityReservationOutput AWS API Documentation
    #
    class DeleteCapacityReservationOutput < Aws::EmptyStructure; end

    # @!attribute [rw] name
    #   The name of the data catalog to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/DeleteDataCatalogInput AWS API Documentation
    #
    class DeleteDataCatalogInput < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/DeleteDataCatalogOutput AWS API Documentation
    #
    class DeleteDataCatalogOutput < Aws::EmptyStructure; end

    # @!attribute [rw] named_query_id
    #   The unique ID of the query to delete.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/DeleteNamedQueryInput AWS API Documentation
    #
    class DeleteNamedQueryInput < Struct.new(
      :named_query_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/DeleteNamedQueryOutput AWS API Documentation
    #
    class DeleteNamedQueryOutput < Aws::EmptyStructure; end

    # @!attribute [rw] notebook_id
    #   The ID of the notebook to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/DeleteNotebookInput AWS API Documentation
    #
    class DeleteNotebookInput < Struct.new(
      :notebook_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/DeleteNotebookOutput AWS API Documentation
    #
    class DeleteNotebookOutput < Aws::EmptyStructure; end

    # @!attribute [rw] statement_name
    #   The name of the prepared statement to delete.
    #   @return [String]
    #
    # @!attribute [rw] work_group
    #   The workgroup to which the statement to be deleted belongs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/DeletePreparedStatementInput AWS API Documentation
    #
    class DeletePreparedStatementInput < Struct.new(
      :statement_name,
      :work_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/DeletePreparedStatementOutput AWS API Documentation
    #
    class DeletePreparedStatementOutput < Aws::EmptyStructure; end

    # @!attribute [rw] work_group
    #   The unique name of the workgroup to delete.
    #   @return [String]
    #
    # @!attribute [rw] recursive_delete_option
    #   The option to delete the workgroup and its contents even if the
    #   workgroup contains any named queries, query executions, or
    #   notebooks.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/DeleteWorkGroupInput AWS API Documentation
    #
    class DeleteWorkGroupInput < Struct.new(
      :work_group,
      :recursive_delete_option)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/DeleteWorkGroupOutput AWS API Documentation
    #
    class DeleteWorkGroupOutput < Aws::EmptyStructure; end

    # If query and calculation results are encrypted in Amazon S3, indicates
    # the encryption option used (for example, `SSE_KMS` or `CSE_KMS`) and
    # key information.
    #
    # @!attribute [rw] encryption_option
    #   Indicates whether Amazon S3 server-side encryption with Amazon
    #   S3-managed keys (`SSE_S3`), server-side encryption with KMS-managed
    #   keys (`SSE_KMS`), or client-side encryption with KMS-managed keys
    #   (`CSE_KMS`) is used.
    #
    #   If a query runs in a workgroup and the workgroup overrides
    #   client-side settings, then the workgroup's setting for encryption
    #   is used. It specifies whether query results must be encrypted, for
    #   all queries that run in this workgroup.
    #   @return [String]
    #
    # @!attribute [rw] kms_key
    #   For `SSE_KMS` and `CSE_KMS`, this is the KMS key ARN or ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/EncryptionConfiguration AWS API Documentation
    #
    class EncryptionConfiguration < Struct.new(
      :encryption_option,
      :kms_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains data processing unit (DPU) configuration settings and
    # parameter mappings for a notebook engine.
    #
    # @!attribute [rw] coordinator_dpu_size
    #   The number of DPUs to use for the coordinator. A coordinator is a
    #   special executor that orchestrates processing work and manages other
    #   executors in a notebook session. The default is 1.
    #   @return [Integer]
    #
    # @!attribute [rw] max_concurrent_dpus
    #   The maximum number of DPUs that can run concurrently.
    #   @return [Integer]
    #
    # @!attribute [rw] default_executor_dpu_size
    #   The default number of DPUs to use for executors. An executor is the
    #   smallest unit of compute that a notebook session can request from
    #   Athena. The default is 1.
    #   @return [Integer]
    #
    # @!attribute [rw] additional_configs
    #   Contains additional notebook engine `MAP<string, string>` parameter
    #   mappings in the form of key-value pairs. To specify an Athena
    #   notebook that the Jupyter server will download and serve, specify a
    #   value for the StartSessionRequest$NotebookVersion field, and then
    #   add a key named `NotebookId` to `AdditionalConfigs` that has the
    #   value of the Athena notebook ID.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] spark_properties
    #   Specifies custom jar files and Spark properties for use cases like
    #   cluster encryption, table formats, and general Spark tuning.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/EngineConfiguration AWS API Documentation
    #
    class EngineConfiguration < Struct.new(
      :coordinator_dpu_size,
      :max_concurrent_dpus,
      :default_executor_dpu_size,
      :additional_configs,
      :spark_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Athena engine version for running queries, or the PySpark engine
    # version for running sessions.
    #
    # @!attribute [rw] selected_engine_version
    #   The engine version requested by the user. Possible values are
    #   determined by the output of `ListEngineVersions`, including AUTO.
    #   The default is AUTO.
    #   @return [String]
    #
    # @!attribute [rw] effective_engine_version
    #   Read only. The engine version on which the query runs. If the user
    #   requests a valid engine version other than Auto, the effective
    #   engine version is the same as the engine version that the user
    #   requested. If the user requests Auto, the effective engine version
    #   is chosen by Athena. When a request to update the engine version is
    #   made by a `CreateWorkGroup` or `UpdateWorkGroup` operation, the
    #   `EffectiveEngineVersion` field is ignored.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/EngineVersion AWS API Documentation
    #
    class EngineVersion < Struct.new(
      :selected_engine_version,
      :effective_engine_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about an executor.
    #
    # @!attribute [rw] executor_id
    #   The UUID of the executor.
    #   @return [String]
    #
    # @!attribute [rw] executor_type
    #   The type of executor used for the application (`COORDINATOR`,
    #   `GATEWAY`, or `WORKER`).
    #   @return [String]
    #
    # @!attribute [rw] start_date_time
    #   The date and time that the executor started.
    #   @return [Integer]
    #
    # @!attribute [rw] termination_date_time
    #   The date and time that the executor was terminated.
    #   @return [Integer]
    #
    # @!attribute [rw] executor_state
    #   The processing state of the executor. A description of each state
    #   follows.
    #
    #   `CREATING` - The executor is being started, including acquiring
    #   resources.
    #
    #   `CREATED` - The executor has been started.
    #
    #   `REGISTERED` - The executor has been registered.
    #
    #   `TERMINATING` - The executor is in the process of shutting down.
    #
    #   `TERMINATED` - The executor is no longer running.
    #
    #   `FAILED` - Due to a failure, the executor is no longer running.
    #   @return [String]
    #
    # @!attribute [rw] executor_size
    #   The smallest unit of compute that a session can request from Athena.
    #   Size is measured in data processing unit (DPU) values, a relative
    #   measure of processing power.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ExecutorsSummary AWS API Documentation
    #
    class ExecutorsSummary < Struct.new(
      :executor_id,
      :executor_type,
      :start_date_time,
      :termination_date_time,
      :executor_state,
      :executor_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] notebook_id
    #   The ID of the notebook to export.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ExportNotebookInput AWS API Documentation
    #
    class ExportNotebookInput < Struct.new(
      :notebook_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] notebook_metadata
    #   The notebook metadata, including notebook ID, notebook name, and
    #   workgroup name.
    #   @return [Types::NotebookMetadata]
    #
    # @!attribute [rw] payload
    #   The content of the exported notebook.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ExportNotebookOutput AWS API Documentation
    #
    class ExportNotebookOutput < Struct.new(
      :notebook_metadata,
      :payload)
      SENSITIVE = []
      include Aws::Structure
    end

    # A string for searching notebook names.
    #
    # @!attribute [rw] name
    #   The name of the notebook to search for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/FilterDefinition AWS API Documentation
    #
    class FilterDefinition < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] calculation_execution_id
    #   The calculation execution UUID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/GetCalculationExecutionCodeRequest AWS API Documentation
    #
    class GetCalculationExecutionCodeRequest < Struct.new(
      :calculation_execution_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] code_block
    #   The unencrypted code that was executed for the calculation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/GetCalculationExecutionCodeResponse AWS API Documentation
    #
    class GetCalculationExecutionCodeResponse < Struct.new(
      :code_block)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] calculation_execution_id
    #   The calculation execution UUID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/GetCalculationExecutionRequest AWS API Documentation
    #
    class GetCalculationExecutionRequest < Struct.new(
      :calculation_execution_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] calculation_execution_id
    #   The calculation execution UUID.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The session ID that the calculation ran in.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the calculation execution.
    #   @return [String]
    #
    # @!attribute [rw] working_directory
    #   The Amazon S3 location in which calculation results are stored.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Contains information about the status of the calculation.
    #   @return [Types::CalculationStatus]
    #
    # @!attribute [rw] statistics
    #   Contains information about the data processing unit (DPU) execution
    #   time and progress. This field is populated only when statistics are
    #   available.
    #   @return [Types::CalculationStatistics]
    #
    # @!attribute [rw] result
    #   Contains result information. This field is populated only if the
    #   calculation is completed.
    #   @return [Types::CalculationResult]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/GetCalculationExecutionResponse AWS API Documentation
    #
    class GetCalculationExecutionResponse < Struct.new(
      :calculation_execution_id,
      :session_id,
      :description,
      :working_directory,
      :status,
      :statistics,
      :result)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] calculation_execution_id
    #   The calculation execution UUID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/GetCalculationExecutionStatusRequest AWS API Documentation
    #
    class GetCalculationExecutionStatusRequest < Struct.new(
      :calculation_execution_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   Contains information about the calculation execution status.
    #   @return [Types::CalculationStatus]
    #
    # @!attribute [rw] statistics
    #   Contains information about the DPU execution time and progress.
    #   @return [Types::CalculationStatistics]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/GetCalculationExecutionStatusResponse AWS API Documentation
    #
    class GetCalculationExecutionStatusResponse < Struct.new(
      :status,
      :statistics)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] capacity_reservation_name
    #   The name of the capacity reservation to retrieve the capacity
    #   assignment configuration for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/GetCapacityAssignmentConfigurationInput AWS API Documentation
    #
    class GetCapacityAssignmentConfigurationInput < Struct.new(
      :capacity_reservation_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] capacity_assignment_configuration
    #   The requested capacity assignment configuration for the specified
    #   capacity reservation.
    #   @return [Types::CapacityAssignmentConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/GetCapacityAssignmentConfigurationOutput AWS API Documentation
    #
    class GetCapacityAssignmentConfigurationOutput < Struct.new(
      :capacity_assignment_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the capacity reservation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/GetCapacityReservationInput AWS API Documentation
    #
    class GetCapacityReservationInput < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] capacity_reservation
    #   The requested capacity reservation structure.
    #   @return [Types::CapacityReservation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/GetCapacityReservationOutput AWS API Documentation
    #
    class GetCapacityReservationOutput < Struct.new(
      :capacity_reservation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the data catalog to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/GetDataCatalogInput AWS API Documentation
    #
    class GetDataCatalogInput < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_catalog
    #   The data catalog returned.
    #   @return [Types::DataCatalog]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/GetDataCatalogOutput AWS API Documentation
    #
    class GetDataCatalogOutput < Struct.new(
      :data_catalog)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_name
    #   The name of the data catalog that contains the database to return.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the database to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/GetDatabaseInput AWS API Documentation
    #
    class GetDatabaseInput < Struct.new(
      :catalog_name,
      :database_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] database
    #   The database returned.
    #   @return [Types::Database]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/GetDatabaseOutput AWS API Documentation
    #
    class GetDatabaseOutput < Struct.new(
      :database)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] named_query_id
    #   The unique ID of the query. Use ListNamedQueries to get query IDs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/GetNamedQueryInput AWS API Documentation
    #
    class GetNamedQueryInput < Struct.new(
      :named_query_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] named_query
    #   Information about the query.
    #   @return [Types::NamedQuery]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/GetNamedQueryOutput AWS API Documentation
    #
    class GetNamedQueryOutput < Struct.new(
      :named_query)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] notebook_id
    #   The ID of the notebook whose metadata is to be retrieved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/GetNotebookMetadataInput AWS API Documentation
    #
    class GetNotebookMetadataInput < Struct.new(
      :notebook_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] notebook_metadata
    #   The metadata that is returned for the specified notebook ID.
    #   @return [Types::NotebookMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/GetNotebookMetadataOutput AWS API Documentation
    #
    class GetNotebookMetadataOutput < Struct.new(
      :notebook_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] statement_name
    #   The name of the prepared statement to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] work_group
    #   The workgroup to which the statement to be retrieved belongs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/GetPreparedStatementInput AWS API Documentation
    #
    class GetPreparedStatementInput < Struct.new(
      :statement_name,
      :work_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] prepared_statement
    #   The name of the prepared statement that was retrieved.
    #   @return [Types::PreparedStatement]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/GetPreparedStatementOutput AWS API Documentation
    #
    class GetPreparedStatementOutput < Struct.new(
      :prepared_statement)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] query_execution_id
    #   The unique ID of the query execution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/GetQueryExecutionInput AWS API Documentation
    #
    class GetQueryExecutionInput < Struct.new(
      :query_execution_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] query_execution
    #   Information about the query execution.
    #   @return [Types::QueryExecution]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/GetQueryExecutionOutput AWS API Documentation
    #
    class GetQueryExecutionOutput < Struct.new(
      :query_execution)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] query_execution_id
    #   The unique ID of the query execution.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token generated by the Athena service that specifies where to
    #   continue pagination if a previous request was truncated. To obtain
    #   the next set of pages, pass in the `NextToken` from the response
    #   object of the previous page call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results (rows) to return in this request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/GetQueryResultsInput AWS API Documentation
    #
    class GetQueryResultsInput < Struct.new(
      :query_execution_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] update_count
    #   The number of rows inserted with a `CREATE TABLE AS SELECT`
    #   statement.
    #   @return [Integer]
    #
    # @!attribute [rw] result_set
    #   The results of the query execution.
    #   @return [Types::ResultSet]
    #
    # @!attribute [rw] next_token
    #   A token generated by the Athena service that specifies where to
    #   continue pagination if a previous request was truncated. To obtain
    #   the next set of pages, pass in the `NextToken` from the response
    #   object of the previous page call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/GetQueryResultsOutput AWS API Documentation
    #
    class GetQueryResultsOutput < Struct.new(
      :update_count,
      :result_set,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] query_execution_id
    #   The unique ID of the query execution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/GetQueryRuntimeStatisticsInput AWS API Documentation
    #
    class GetQueryRuntimeStatisticsInput < Struct.new(
      :query_execution_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] query_runtime_statistics
    #   Runtime statistics about the query execution.
    #   @return [Types::QueryRuntimeStatistics]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/GetQueryRuntimeStatisticsOutput AWS API Documentation
    #
    class GetQueryRuntimeStatisticsOutput < Struct.new(
      :query_runtime_statistics)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_id
    #   The session ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/GetSessionRequest AWS API Documentation
    #
    class GetSessionRequest < Struct.new(
      :session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_id
    #   The session ID.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The session description.
    #   @return [String]
    #
    # @!attribute [rw] work_group
    #   The workgroup to which the session belongs.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The engine version used by the session (for example, `PySpark engine
    #   version 3`). You can get a list of engine versions by calling
    #   ListEngineVersions.
    #   @return [String]
    #
    # @!attribute [rw] engine_configuration
    #   Contains engine configuration information like DPU usage.
    #   @return [Types::EngineConfiguration]
    #
    # @!attribute [rw] notebook_version
    #   The notebook version.
    #   @return [String]
    #
    # @!attribute [rw] session_configuration
    #   Contains the workgroup configuration information used by the
    #   session.
    #   @return [Types::SessionConfiguration]
    #
    # @!attribute [rw] status
    #   Contains information about the status of the session.
    #   @return [Types::SessionStatus]
    #
    # @!attribute [rw] statistics
    #   Contains the DPU execution time.
    #   @return [Types::SessionStatistics]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/GetSessionResponse AWS API Documentation
    #
    class GetSessionResponse < Struct.new(
      :session_id,
      :description,
      :work_group,
      :engine_version,
      :engine_configuration,
      :notebook_version,
      :session_configuration,
      :status,
      :statistics)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_id
    #   The session ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/GetSessionStatusRequest AWS API Documentation
    #
    class GetSessionStatusRequest < Struct.new(
      :session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_id
    #   The session ID.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Contains information about the status of the session.
    #   @return [Types::SessionStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/GetSessionStatusResponse AWS API Documentation
    #
    class GetSessionStatusResponse < Struct.new(
      :session_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_name
    #   The name of the data catalog that contains the database and table
    #   metadata to return.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the database that contains the table metadata to return.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table for which metadata is returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/GetTableMetadataInput AWS API Documentation
    #
    class GetTableMetadataInput < Struct.new(
      :catalog_name,
      :database_name,
      :table_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_metadata
    #   An object that contains table metadata.
    #   @return [Types::TableMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/GetTableMetadataOutput AWS API Documentation
    #
    class GetTableMetadataOutput < Struct.new(
      :table_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] work_group
    #   The name of the workgroup.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/GetWorkGroupInput AWS API Documentation
    #
    class GetWorkGroupInput < Struct.new(
      :work_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] work_group
    #   Information about the workgroup.
    #   @return [Types::WorkGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/GetWorkGroupOutput AWS API Documentation
    #
    class GetWorkGroupOutput < Struct.new(
      :work_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] work_group
    #   The name of the Spark enabled workgroup to import the notebook to.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the notebook to import.
    #   @return [String]
    #
    # @!attribute [rw] payload
    #   The notebook content to be imported.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The notebook content type. Currently, the only valid type is
    #   `IPYNB`.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique case-sensitive string used to ensure the request to import
    #   the notebook is idempotent (executes only once).
    #
    #   This token is listed as not required because Amazon Web Services
    #   SDKs (for example the Amazon Web Services SDK for Java)
    #   auto-generate the token for you. If you are not using the Amazon Web
    #   Services SDK or the Amazon Web Services CLI, you must provide this
    #   token or the action will fail.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ImportNotebookInput AWS API Documentation
    #
    class ImportNotebookInput < Struct.new(
      :work_group,
      :name,
      :payload,
      :type,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] notebook_id
    #   The ID assigned to the imported notebook.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ImportNotebookOutput AWS API Documentation
    #
    class ImportNotebookOutput < Struct.new(
      :notebook_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates a platform issue, which may be due to a transient condition
    # or outage.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates that something is wrong with the input to the request. For
    # example, a required parameter may be missing or out of range.
    #
    # @!attribute [rw] athena_error_code
    #   The error code returned when the query execution failed to process,
    #   or when the processing request for the named query failed.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/InvalidRequestException AWS API Documentation
    #
    class InvalidRequestException < Struct.new(
      :athena_error_code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   Specifies the maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token generated by the Athena service that specifies where to
    #   continue pagination if a previous request was truncated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ListApplicationDPUSizesInput AWS API Documentation
    #
    class ListApplicationDPUSizesInput < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_dpu_sizes
    #   A list of the supported DPU sizes that the application runtime
    #   supports.
    #   @return [Array<Types::ApplicationDPUSizes>]
    #
    # @!attribute [rw] next_token
    #   A token generated by the Athena service that specifies where to
    #   continue pagination if a previous request was truncated. To obtain
    #   the next set of pages, pass in the `NextToken` from the response
    #   object of the previous page call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ListApplicationDPUSizesOutput AWS API Documentation
    #
    class ListApplicationDPUSizesOutput < Struct.new(
      :application_dpu_sizes,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_id
    #   The session ID.
    #   @return [String]
    #
    # @!attribute [rw] state_filter
    #   A filter for a specific calculation execution state. A description
    #   of each state follows.
    #
    #   `CREATING` - The calculation is in the process of being created.
    #
    #   `CREATED` - The calculation has been created and is ready to run.
    #
    #   `QUEUED` - The calculation has been queued for processing.
    #
    #   `RUNNING` - The calculation is running.
    #
    #   `CANCELING` - A request to cancel the calculation has been received
    #   and the system is working to stop it.
    #
    #   `CANCELED` - The calculation is no longer running as the result of a
    #   cancel request.
    #
    #   `COMPLETED` - The calculation has completed without error.
    #
    #   `FAILED` - The calculation failed and is no longer running.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of calculation executions to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token generated by the Athena service that specifies where to
    #   continue pagination if a previous request was truncated. To obtain
    #   the next set of pages, pass in the `NextToken` from the response
    #   object of the previous page call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ListCalculationExecutionsRequest AWS API Documentation
    #
    class ListCalculationExecutionsRequest < Struct.new(
      :session_id,
      :state_filter,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token generated by the Athena service that specifies where to
    #   continue pagination if a previous request was truncated. To obtain
    #   the next set of pages, pass in the `NextToken` from the response
    #   object of the previous page call.
    #   @return [String]
    #
    # @!attribute [rw] calculations
    #   A list of CalculationSummary objects.
    #   @return [Array<Types::CalculationSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ListCalculationExecutionsResponse AWS API Documentation
    #
    class ListCalculationExecutionsResponse < Struct.new(
      :next_token,
      :calculations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token generated by the Athena service that specifies where to
    #   continue pagination if a previous request was truncated.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the maximum number of results to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ListCapacityReservationsInput AWS API Documentation
    #
    class ListCapacityReservationsInput < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token generated by the Athena service that specifies where to
    #   continue pagination if a previous request was truncated. To obtain
    #   the next set of pages, pass in the NextToken from the response
    #   object of the previous page call.
    #   @return [String]
    #
    # @!attribute [rw] capacity_reservations
    #   The capacity reservations for the current account.
    #   @return [Array<Types::CapacityReservation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ListCapacityReservationsOutput AWS API Documentation
    #
    class ListCapacityReservationsOutput < Struct.new(
      :next_token,
      :capacity_reservations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token generated by the Athena service that specifies where to
    #   continue pagination if a previous request was truncated. To obtain
    #   the next set of pages, pass in the NextToken from the response
    #   object of the previous page call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the maximum number of data catalogs to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ListDataCatalogsInput AWS API Documentation
    #
    class ListDataCatalogsInput < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_catalogs_summary
    #   A summary list of data catalogs.
    #   @return [Array<Types::DataCatalogSummary>]
    #
    # @!attribute [rw] next_token
    #   A token generated by the Athena service that specifies where to
    #   continue pagination if a previous request was truncated. To obtain
    #   the next set of pages, pass in the NextToken from the response
    #   object of the previous page call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ListDataCatalogsOutput AWS API Documentation
    #
    class ListDataCatalogsOutput < Struct.new(
      :data_catalogs_summary,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_name
    #   The name of the data catalog that contains the databases to return.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token generated by the Athena service that specifies where to
    #   continue pagination if a previous request was truncated. To obtain
    #   the next set of pages, pass in the `NextToken` from the response
    #   object of the previous page call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the maximum number of results to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ListDatabasesInput AWS API Documentation
    #
    class ListDatabasesInput < Struct.new(
      :catalog_name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] database_list
    #   A list of databases from a data catalog.
    #   @return [Array<Types::Database>]
    #
    # @!attribute [rw] next_token
    #   A token generated by the Athena service that specifies where to
    #   continue pagination if a previous request was truncated. To obtain
    #   the next set of pages, pass in the NextToken from the response
    #   object of the previous page call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ListDatabasesOutput AWS API Documentation
    #
    class ListDatabasesOutput < Struct.new(
      :database_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token generated by the Athena service that specifies where to
    #   continue pagination if a previous request was truncated. To obtain
    #   the next set of pages, pass in the `NextToken` from the response
    #   object of the previous page call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of engine versions to return in this request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ListEngineVersionsInput AWS API Documentation
    #
    class ListEngineVersionsInput < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] engine_versions
    #   A list of engine versions that are available to choose from.
    #   @return [Array<Types::EngineVersion>]
    #
    # @!attribute [rw] next_token
    #   A token generated by the Athena service that specifies where to
    #   continue pagination if a previous request was truncated. To obtain
    #   the next set of pages, pass in the `NextToken` from the response
    #   object of the previous page call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ListEngineVersionsOutput AWS API Documentation
    #
    class ListEngineVersionsOutput < Struct.new(
      :engine_versions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_id
    #   The session ID.
    #   @return [String]
    #
    # @!attribute [rw] executor_state_filter
    #   A filter for a specific executor state. A description of each state
    #   follows.
    #
    #   `CREATING` - The executor is being started, including acquiring
    #   resources.
    #
    #   `CREATED` - The executor has been started.
    #
    #   `REGISTERED` - The executor has been registered.
    #
    #   `TERMINATING` - The executor is in the process of shutting down.
    #
    #   `TERMINATED` - The executor is no longer running.
    #
    #   `FAILED` - Due to a failure, the executor is no longer running.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of executors to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token generated by the Athena service that specifies where to
    #   continue pagination if a previous request was truncated. To obtain
    #   the next set of pages, pass in the `NextToken` from the response
    #   object of the previous page call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ListExecutorsRequest AWS API Documentation
    #
    class ListExecutorsRequest < Struct.new(
      :session_id,
      :executor_state_filter,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_id
    #   The session ID.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token generated by the Athena service that specifies where to
    #   continue pagination if a previous request was truncated. To obtain
    #   the next set of pages, pass in the `NextToken` from the response
    #   object of the previous page call.
    #   @return [String]
    #
    # @!attribute [rw] executors_summary
    #   Contains summary information about the executor.
    #   @return [Array<Types::ExecutorsSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ListExecutorsResponse AWS API Documentation
    #
    class ListExecutorsResponse < Struct.new(
      :session_id,
      :next_token,
      :executors_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token generated by the Athena service that specifies where to
    #   continue pagination if a previous request was truncated. To obtain
    #   the next set of pages, pass in the `NextToken` from the response
    #   object of the previous page call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of queries to return in this request.
    #   @return [Integer]
    #
    # @!attribute [rw] work_group
    #   The name of the workgroup from which the named queries are being
    #   returned. If a workgroup is not specified, the saved queries for the
    #   primary workgroup are returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ListNamedQueriesInput AWS API Documentation
    #
    class ListNamedQueriesInput < Struct.new(
      :next_token,
      :max_results,
      :work_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] named_query_ids
    #   The list of unique query IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   A token generated by the Athena service that specifies where to
    #   continue pagination if a previous request was truncated. To obtain
    #   the next set of pages, pass in the `NextToken` from the response
    #   object of the previous page call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ListNamedQueriesOutput AWS API Documentation
    #
    class ListNamedQueriesOutput < Struct.new(
      :named_query_ids,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   Search filter string.
    #   @return [Types::FilterDefinition]
    #
    # @!attribute [rw] next_token
    #   A token generated by the Athena service that specifies where to
    #   continue pagination if a previous request was truncated.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] work_group
    #   The name of the Spark enabled workgroup to retrieve notebook
    #   metadata for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ListNotebookMetadataInput AWS API Documentation
    #
    class ListNotebookMetadataInput < Struct.new(
      :filters,
      :next_token,
      :max_results,
      :work_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token generated by the Athena service that specifies where to
    #   continue pagination if a previous request was truncated. To obtain
    #   the next set of pages, pass in the `NextToken` from the response
    #   object of the previous page call.
    #   @return [String]
    #
    # @!attribute [rw] notebook_metadata_list
    #   The list of notebook metadata for the specified workgroup.
    #   @return [Array<Types::NotebookMetadata>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ListNotebookMetadataOutput AWS API Documentation
    #
    class ListNotebookMetadataOutput < Struct.new(
      :next_token,
      :notebook_metadata_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] notebook_id
    #   The ID of the notebook to list sessions for.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of notebook sessions to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token generated by the Athena service that specifies where to
    #   continue pagination if a previous request was truncated. To obtain
    #   the next set of pages, pass in the `NextToken` from the response
    #   object of the previous page call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ListNotebookSessionsRequest AWS API Documentation
    #
    class ListNotebookSessionsRequest < Struct.new(
      :notebook_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] notebook_sessions_list
    #   A list of the sessions belonging to the notebook.
    #   @return [Array<Types::NotebookSessionSummary>]
    #
    # @!attribute [rw] next_token
    #   A token generated by the Athena service that specifies where to
    #   continue pagination if a previous request was truncated. To obtain
    #   the next set of pages, pass in the `NextToken` from the response
    #   object of the previous page call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ListNotebookSessionsResponse AWS API Documentation
    #
    class ListNotebookSessionsResponse < Struct.new(
      :notebook_sessions_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] work_group
    #   The workgroup to list the prepared statements for.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token generated by the Athena service that specifies where to
    #   continue pagination if a previous request was truncated. To obtain
    #   the next set of pages, pass in the `NextToken` from the response
    #   object of the previous page call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in this request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ListPreparedStatementsInput AWS API Documentation
    #
    class ListPreparedStatementsInput < Struct.new(
      :work_group,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] prepared_statements
    #   The list of prepared statements for the workgroup.
    #   @return [Array<Types::PreparedStatementSummary>]
    #
    # @!attribute [rw] next_token
    #   A token generated by the Athena service that specifies where to
    #   continue pagination if a previous request was truncated. To obtain
    #   the next set of pages, pass in the `NextToken` from the response
    #   object of the previous page call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ListPreparedStatementsOutput AWS API Documentation
    #
    class ListPreparedStatementsOutput < Struct.new(
      :prepared_statements,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token generated by the Athena service that specifies where to
    #   continue pagination if a previous request was truncated. To obtain
    #   the next set of pages, pass in the `NextToken` from the response
    #   object of the previous page call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of query executions to return in this request.
    #   @return [Integer]
    #
    # @!attribute [rw] work_group
    #   The name of the workgroup from which queries are being returned. If
    #   a workgroup is not specified, a list of available query execution
    #   IDs for the queries in the primary workgroup is returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ListQueryExecutionsInput AWS API Documentation
    #
    class ListQueryExecutionsInput < Struct.new(
      :next_token,
      :max_results,
      :work_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] query_execution_ids
    #   The unique IDs of each query execution as an array of strings.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   A token to be used by the next request if this request is truncated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ListQueryExecutionsOutput AWS API Documentation
    #
    class ListQueryExecutionsOutput < Struct.new(
      :query_execution_ids,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] work_group
    #   The workgroup to which the session belongs.
    #   @return [String]
    #
    # @!attribute [rw] state_filter
    #   A filter for a specific session state. A description of each state
    #   follows.
    #
    #   `CREATING` - The session is being started, including acquiring
    #   resources.
    #
    #   `CREATED` - The session has been started.
    #
    #   `IDLE` - The session is able to accept a calculation.
    #
    #   `BUSY` - The session is processing another task and is unable to
    #   accept a calculation.
    #
    #   `TERMINATING` - The session is in the process of shutting down.
    #
    #   `TERMINATED` - The session and its resources are no longer running.
    #
    #   `DEGRADED` - The session has no healthy coordinators.
    #
    #   `FAILED` - Due to a failure, the session and its resources are no
    #   longer running.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of sessions to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token generated by the Athena service that specifies where to
    #   continue pagination if a previous request was truncated. To obtain
    #   the next set of pages, pass in the `NextToken` from the response
    #   object of the previous page call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ListSessionsRequest AWS API Documentation
    #
    class ListSessionsRequest < Struct.new(
      :work_group,
      :state_filter,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token generated by the Athena service that specifies where to
    #   continue pagination if a previous request was truncated. To obtain
    #   the next set of pages, pass in the `NextToken` from the response
    #   object of the previous page call.
    #   @return [String]
    #
    # @!attribute [rw] sessions
    #   A list of sessions.
    #   @return [Array<Types::SessionSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ListSessionsResponse AWS API Documentation
    #
    class ListSessionsResponse < Struct.new(
      :next_token,
      :sessions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog_name
    #   The name of the data catalog for which table metadata should be
    #   returned.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the database for which table metadata should be
    #   returned.
    #   @return [String]
    #
    # @!attribute [rw] expression
    #   A regex filter that pattern-matches table names. If no expression is
    #   supplied, metadata for all tables are listed.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token generated by the Athena service that specifies where to
    #   continue pagination if a previous request was truncated. To obtain
    #   the next set of pages, pass in the NextToken from the response
    #   object of the previous page call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the maximum number of results to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ListTableMetadataInput AWS API Documentation
    #
    class ListTableMetadataInput < Struct.new(
      :catalog_name,
      :database_name,
      :expression,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_metadata_list
    #   A list of table metadata.
    #   @return [Array<Types::TableMetadata>]
    #
    # @!attribute [rw] next_token
    #   A token generated by the Athena service that specifies where to
    #   continue pagination if a previous request was truncated. To obtain
    #   the next set of pages, pass in the NextToken from the response
    #   object of the previous page call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ListTableMetadataOutput AWS API Documentation
    #
    class ListTableMetadataOutput < Struct.new(
      :table_metadata_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   Lists the tags for the resource with the specified ARN.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no
    #   additional results for this request, where the request lists the
    #   tags for the resource with the specified ARN.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per request that lists
    #   the tags for the resource.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ListTagsForResourceInput AWS API Documentation
    #
    class ListTagsForResourceInput < Struct.new(
      :resource_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The list of tags associated with the specified resource.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] next_token
    #   A token to be used by the next request if this request is truncated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ListTagsForResourceOutput AWS API Documentation
    #
    class ListTagsForResourceOutput < Struct.new(
      :tags,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token generated by the Athena service that specifies where to
    #   continue pagination if a previous request was truncated. To obtain
    #   the next set of pages, pass in the `NextToken` from the response
    #   object of the previous page call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of workgroups to return in this request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ListWorkGroupsInput AWS API Documentation
    #
    class ListWorkGroupsInput < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] work_groups
    #   A list of WorkGroupSummary objects that include the names,
    #   descriptions, creation times, and states for each workgroup.
    #   @return [Array<Types::WorkGroupSummary>]
    #
    # @!attribute [rw] next_token
    #   A token generated by the Athena service that specifies where to
    #   continue pagination if a previous request was truncated. To obtain
    #   the next set of pages, pass in the `NextToken` from the response
    #   object of the previous page call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ListWorkGroupsOutput AWS API Documentation
    #
    class ListWorkGroupsOutput < Struct.new(
      :work_groups,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # An exception that Athena received when it called a custom metastore.
    # Occurs if the error is not caused by user input
    # (`InvalidRequestException`) or from the Athena platform
    # (`InternalServerException`). For example, if a user-created Lambda
    # function is missing permissions, the Lambda `4XX` exception is
    # returned in a `MetadataException`.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/MetadataException AWS API Documentation
    #
    class MetadataException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A query, where `QueryString` contains the SQL statements that make up
    # the query.
    #
    # @!attribute [rw] name
    #   The query name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The query description.
    #   @return [String]
    #
    # @!attribute [rw] database
    #   The database to which the query belongs.
    #   @return [String]
    #
    # @!attribute [rw] query_string
    #   The SQL statements that make up the query.
    #   @return [String]
    #
    # @!attribute [rw] named_query_id
    #   The unique identifier of the query.
    #   @return [String]
    #
    # @!attribute [rw] work_group
    #   The name of the workgroup that contains the named query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/NamedQuery AWS API Documentation
    #
    class NamedQuery < Struct.new(
      :name,
      :description,
      :database,
      :query_string,
      :named_query_id,
      :work_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains metadata for notebook, including the notebook name, ID,
    # workgroup, and time created.
    #
    # @!attribute [rw] notebook_id
    #   The notebook ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the notebook.
    #   @return [String]
    #
    # @!attribute [rw] work_group
    #   The name of the Spark enabled workgroup to which the notebook
    #   belongs.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time when the notebook was created.
    #   @return [Time]
    #
    # @!attribute [rw] type
    #   The type of notebook. Currently, the only valid type is `IPYNB`.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The time when the notebook was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/NotebookMetadata AWS API Documentation
    #
    class NotebookMetadata < Struct.new(
      :notebook_id,
      :name,
      :work_group,
      :creation_time,
      :type,
      :last_modified_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the notebook session ID and notebook session creation time.
    #
    # @!attribute [rw] session_id
    #   The notebook session ID.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time when the notebook session was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/NotebookSessionSummary AWS API Documentation
    #
    class NotebookSessionSummary < Struct.new(
      :session_id,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # A prepared SQL statement for use with Athena.
    #
    # @!attribute [rw] statement_name
    #   The name of the prepared statement.
    #   @return [String]
    #
    # @!attribute [rw] query_statement
    #   The query string for the prepared statement.
    #   @return [String]
    #
    # @!attribute [rw] work_group_name
    #   The name of the workgroup to which the prepared statement belongs.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the prepared statement.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The last modified time of the prepared statement.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/PreparedStatement AWS API Documentation
    #
    class PreparedStatement < Struct.new(
      :statement_name,
      :query_statement,
      :work_group_name,
      :description,
      :last_modified_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The name and last modified time of the prepared statement.
    #
    # @!attribute [rw] statement_name
    #   The name of the prepared statement.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The last modified time of the prepared statement.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/PreparedStatementSummary AWS API Documentation
    #
    class PreparedStatementSummary < Struct.new(
      :statement_name,
      :last_modified_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] capacity_reservation_name
    #   The name of the capacity reservation to put a capacity assignment
    #   configuration for.
    #   @return [String]
    #
    # @!attribute [rw] capacity_assignments
    #   The list of assignments for the capacity assignment configuration.
    #   @return [Array<Types::CapacityAssignment>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/PutCapacityAssignmentConfigurationInput AWS API Documentation
    #
    class PutCapacityAssignmentConfigurationInput < Struct.new(
      :capacity_reservation_name,
      :capacity_assignments)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/PutCapacityAssignmentConfigurationOutput AWS API Documentation
    #
    class PutCapacityAssignmentConfigurationOutput < Aws::EmptyStructure; end

    # Information about a single instance of a query execution.
    #
    # @!attribute [rw] query_execution_id
    #   The unique identifier for each query execution.
    #   @return [String]
    #
    # @!attribute [rw] query
    #   The SQL query statements which the query execution ran.
    #   @return [String]
    #
    # @!attribute [rw] statement_type
    #   The type of query statement that was run. `DDL` indicates DDL query
    #   statements. `DML` indicates DML (Data Manipulation Language) query
    #   statements, such as `CREATE TABLE AS SELECT`. `UTILITY` indicates
    #   query statements other than DDL and DML, such as `SHOW CREATE
    #   TABLE`, or `DESCRIBE TABLE`.
    #   @return [String]
    #
    # @!attribute [rw] result_configuration
    #   The location in Amazon S3 where query and calculation results are
    #   stored and the encryption option, if any, used for query results.
    #   These are known as "client-side settings". If workgroup settings
    #   override client-side settings, then the query uses the location for
    #   the query results and the encryption configuration that are
    #   specified for the workgroup.
    #   @return [Types::ResultConfiguration]
    #
    # @!attribute [rw] result_reuse_configuration
    #   Specifies the query result reuse behavior that was used for the
    #   query.
    #   @return [Types::ResultReuseConfiguration]
    #
    # @!attribute [rw] query_execution_context
    #   The database in which the query execution occurred.
    #   @return [Types::QueryExecutionContext]
    #
    # @!attribute [rw] status
    #   The completion date, current state, submission time, and state
    #   change reason (if applicable) for the query execution.
    #   @return [Types::QueryExecutionStatus]
    #
    # @!attribute [rw] statistics
    #   Query execution statistics, such as the amount of data scanned, the
    #   amount of time that the query took to process, and the type of
    #   statement that was run.
    #   @return [Types::QueryExecutionStatistics]
    #
    # @!attribute [rw] work_group
    #   The name of the workgroup in which the query ran.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The engine version that executed the query.
    #   @return [Types::EngineVersion]
    #
    # @!attribute [rw] execution_parameters
    #   A list of values for the parameters in a query. The values are
    #   applied sequentially to the parameters in the query in the order in
    #   which the parameters occur. The list of parameters is not returned
    #   in the response.
    #   @return [Array<String>]
    #
    # @!attribute [rw] substatement_type
    #   The kind of query statement that was run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/QueryExecution AWS API Documentation
    #
    class QueryExecution < Struct.new(
      :query_execution_id,
      :query,
      :statement_type,
      :result_configuration,
      :result_reuse_configuration,
      :query_execution_context,
      :status,
      :statistics,
      :work_group,
      :engine_version,
      :execution_parameters,
      :substatement_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The database and data catalog context in which the query execution
    # occurs.
    #
    # @!attribute [rw] database
    #   The name of the database used in the query execution. The database
    #   must exist in the catalog.
    #   @return [String]
    #
    # @!attribute [rw] catalog
    #   The name of the data catalog used in the query execution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/QueryExecutionContext AWS API Documentation
    #
    class QueryExecutionContext < Struct.new(
      :database,
      :catalog)
      SENSITIVE = []
      include Aws::Structure
    end

    # The amount of data scanned during the query execution and the amount
    # of time that it took to execute, and the type of statement that was
    # run.
    #
    # @!attribute [rw] engine_execution_time_in_millis
    #   The number of milliseconds that the query took to execute.
    #   @return [Integer]
    #
    # @!attribute [rw] data_scanned_in_bytes
    #   The number of bytes in the data that was queried.
    #   @return [Integer]
    #
    # @!attribute [rw] data_manifest_location
    #   The location and file name of a data manifest file. The manifest
    #   file is saved to the Athena query results location in Amazon S3. The
    #   manifest file tracks files that the query wrote to Amazon S3. If the
    #   query fails, the manifest file also tracks files that the query
    #   intended to write. The manifest is useful for identifying orphaned
    #   files resulting from a failed query. For more information, see
    #   [Working with Query Results, Output Files, and Query History][1] in
    #   the *Amazon Athena User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/athena/latest/ug/querying.html
    #   @return [String]
    #
    # @!attribute [rw] total_execution_time_in_millis
    #   The number of milliseconds that Athena took to run the query.
    #   @return [Integer]
    #
    # @!attribute [rw] query_queue_time_in_millis
    #   The number of milliseconds that the query was in your query queue
    #   waiting for resources. Note that if transient errors occur, Athena
    #   might automatically add the query back to the queue.
    #   @return [Integer]
    #
    # @!attribute [rw] query_planning_time_in_millis
    #   The number of milliseconds that Athena took to plan the query
    #   processing flow. This includes the time spent retrieving table
    #   partitions from the data source. Note that because the query engine
    #   performs the query planning, query planning time is a subset of
    #   engine processing time.
    #   @return [Integer]
    #
    # @!attribute [rw] service_processing_time_in_millis
    #   The number of milliseconds that Athena took to finalize and publish
    #   the query results after the query engine finished running the query.
    #   @return [Integer]
    #
    # @!attribute [rw] result_reuse_information
    #   Contains information about whether previous query results were
    #   reused for the query.
    #   @return [Types::ResultReuseInformation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/QueryExecutionStatistics AWS API Documentation
    #
    class QueryExecutionStatistics < Struct.new(
      :engine_execution_time_in_millis,
      :data_scanned_in_bytes,
      :data_manifest_location,
      :total_execution_time_in_millis,
      :query_queue_time_in_millis,
      :query_planning_time_in_millis,
      :service_processing_time_in_millis,
      :result_reuse_information)
      SENSITIVE = []
      include Aws::Structure
    end

    # The completion date, current state, submission time, and state change
    # reason (if applicable) for the query execution.
    #
    # @!attribute [rw] state
    #   The state of query execution. `QUEUED` indicates that the query has
    #   been submitted to the service, and Athena will execute the query as
    #   soon as resources are available. `RUNNING` indicates that the query
    #   is in execution phase. `SUCCEEDED` indicates that the query
    #   completed without errors. `FAILED` indicates that the query
    #   experienced an error and did not complete processing. `CANCELLED`
    #   indicates that a user input interrupted query execution.
    #
    #   <note markdown="1"> Athena automatically retries your queries in cases of certain
    #   transient errors. As a result, you may see the query state
    #   transition from `RUNNING` or `FAILED` to `QUEUED`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] state_change_reason
    #   Further detail about the status of the query.
    #   @return [String]
    #
    # @!attribute [rw] submission_date_time
    #   The date and time that the query was submitted.
    #   @return [Time]
    #
    # @!attribute [rw] completion_date_time
    #   The date and time that the query completed.
    #   @return [Time]
    #
    # @!attribute [rw] athena_error
    #   Provides information about an Athena query error.
    #   @return [Types::AthenaError]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/QueryExecutionStatus AWS API Documentation
    #
    class QueryExecutionStatus < Struct.new(
      :state,
      :state_change_reason,
      :submission_date_time,
      :completion_date_time,
      :athena_error)
      SENSITIVE = []
      include Aws::Structure
    end

    # The query execution timeline, statistics on input and output rows and
    # bytes, and the different query stages that form the query execution
    # plan.
    #
    # @!attribute [rw] timeline
    #   Timeline statistics such as query queue time, planning time,
    #   execution time, service processing time, and total execution time.
    #   @return [Types::QueryRuntimeStatisticsTimeline]
    #
    # @!attribute [rw] rows
    #   Statistics such as input rows and bytes read by the query, rows and
    #   bytes output by the query, and the number of rows written by the
    #   query.
    #   @return [Types::QueryRuntimeStatisticsRows]
    #
    # @!attribute [rw] output_stage
    #   Stage statistics such as input and output rows and bytes, execution
    #   time, and stage state. This information also includes substages and
    #   the query stage plan.
    #   @return [Types::QueryStage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/QueryRuntimeStatistics AWS API Documentation
    #
    class QueryRuntimeStatistics < Struct.new(
      :timeline,
      :rows,
      :output_stage)
      SENSITIVE = []
      include Aws::Structure
    end

    # Statistics such as input rows and bytes read by the query, rows and
    # bytes output by the query, and the number of rows written by the
    # query.
    #
    # @!attribute [rw] input_rows
    #   The number of rows read to execute the query.
    #   @return [Integer]
    #
    # @!attribute [rw] input_bytes
    #   The number of bytes read to execute the query.
    #   @return [Integer]
    #
    # @!attribute [rw] output_bytes
    #   The number of bytes returned by the query.
    #   @return [Integer]
    #
    # @!attribute [rw] output_rows
    #   The number of rows returned by the query.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/QueryRuntimeStatisticsRows AWS API Documentation
    #
    class QueryRuntimeStatisticsRows < Struct.new(
      :input_rows,
      :input_bytes,
      :output_bytes,
      :output_rows)
      SENSITIVE = []
      include Aws::Structure
    end

    # Timeline statistics such as query queue time, planning time, execution
    # time, service processing time, and total execution time.
    #
    # @!attribute [rw] query_queue_time_in_millis
    #   The number of milliseconds that the query was in your query queue
    #   waiting for resources. Note that if transient errors occur, Athena
    #   might automatically add the query back to the queue.
    #   @return [Integer]
    #
    # @!attribute [rw] query_planning_time_in_millis
    #   The number of milliseconds that Athena took to plan the query
    #   processing flow. This includes the time spent retrieving table
    #   partitions from the data source. Note that because the query engine
    #   performs the query planning, query planning time is a subset of
    #   engine processing time.
    #   @return [Integer]
    #
    # @!attribute [rw] engine_execution_time_in_millis
    #   The number of milliseconds that the query took to execute.
    #   @return [Integer]
    #
    # @!attribute [rw] service_processing_time_in_millis
    #   The number of milliseconds that Athena took to finalize and publish
    #   the query results after the query engine finished running the query.
    #   @return [Integer]
    #
    # @!attribute [rw] total_execution_time_in_millis
    #   The number of milliseconds that Athena took to run the query.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/QueryRuntimeStatisticsTimeline AWS API Documentation
    #
    class QueryRuntimeStatisticsTimeline < Struct.new(
      :query_queue_time_in_millis,
      :query_planning_time_in_millis,
      :engine_execution_time_in_millis,
      :service_processing_time_in_millis,
      :total_execution_time_in_millis)
      SENSITIVE = []
      include Aws::Structure
    end

    # Stage statistics such as input and output rows and bytes, execution
    # time and stage state. This information also includes substages and the
    # query stage plan.
    #
    # @!attribute [rw] stage_id
    #   The identifier for a stage.
    #   @return [Integer]
    #
    # @!attribute [rw] state
    #   State of the stage after query execution.
    #   @return [String]
    #
    # @!attribute [rw] output_bytes
    #   The number of bytes output from the stage after execution.
    #   @return [Integer]
    #
    # @!attribute [rw] output_rows
    #   The number of rows output from the stage after execution.
    #   @return [Integer]
    #
    # @!attribute [rw] input_bytes
    #   The number of bytes input into the stage for execution.
    #   @return [Integer]
    #
    # @!attribute [rw] input_rows
    #   The number of rows input into the stage for execution.
    #   @return [Integer]
    #
    # @!attribute [rw] execution_time
    #   Time taken to execute this stage.
    #   @return [Integer]
    #
    # @!attribute [rw] query_stage_plan
    #   Stage plan information such as name, identifier, sub plans, and
    #   source stages.
    #   @return [Types::QueryStagePlanNode]
    #
    # @!attribute [rw] sub_stages
    #   List of sub query stages that form this stage execution plan.
    #   @return [Array<Types::QueryStage>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/QueryStage AWS API Documentation
    #
    class QueryStage < Struct.new(
      :stage_id,
      :state,
      :output_bytes,
      :output_rows,
      :input_bytes,
      :input_rows,
      :execution_time,
      :query_stage_plan,
      :sub_stages)
      SENSITIVE = []
      include Aws::Structure
    end

    # Stage plan information such as name, identifier, sub plans, and remote
    # sources.
    #
    # @!attribute [rw] name
    #   Name of the query stage plan that describes the operation this stage
    #   is performing as part of query execution.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   Information about the operation this query stage plan node is
    #   performing.
    #   @return [String]
    #
    # @!attribute [rw] children
    #   Stage plan information such as name, identifier, sub plans, and
    #   remote sources of child plan nodes/
    #   @return [Array<Types::QueryStagePlanNode>]
    #
    # @!attribute [rw] remote_sources
    #   Source plan node IDs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/QueryStagePlanNode AWS API Documentation
    #
    class QueryStagePlanNode < Struct.new(
      :name,
      :identifier,
      :children,
      :remote_sources)
      SENSITIVE = []
      include Aws::Structure
    end

    # A resource, such as a workgroup, was not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   The name of the Amazon resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The location in Amazon S3 where query and calculation results are
    # stored and the encryption option, if any, used for query and
    # calculation results. These are known as "client-side settings". If
    # workgroup settings override client-side settings, then the query uses
    # the workgroup settings.
    #
    # @!attribute [rw] output_location
    #   The location in Amazon S3 where your query and calculation results
    #   are stored, such as `s3://path/to/query/bucket/`. To run the query,
    #   you must specify the query results location using one of the ways:
    #   either for individual queries using either this setting
    #   (client-side), or in the workgroup, using WorkGroupConfiguration. If
    #   none of them is set, Athena issues an error that no output location
    #   is provided. For more information, see [Working with query results,
    #   recent queries, and output files][1]. If workgroup settings override
    #   client-side settings, then the query uses the settings specified for
    #   the workgroup. See
    #   WorkGroupConfiguration$EnforceWorkGroupConfiguration.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/athena/latest/ug/querying.html
    #   @return [String]
    #
    # @!attribute [rw] encryption_configuration
    #   If query and calculation results are encrypted in Amazon S3,
    #   indicates the encryption option used (for example, `SSE_KMS` or
    #   `CSE_KMS`) and key information. This is a client-side setting. If
    #   workgroup settings override client-side settings, then the query
    #   uses the encryption configuration that is specified for the
    #   workgroup, and also uses the location for storing query results
    #   specified in the workgroup. See
    #   WorkGroupConfiguration$EnforceWorkGroupConfiguration and [Workgroup
    #   Settings Override Client-Side Settings][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html
    #   @return [Types::EncryptionConfiguration]
    #
    # @!attribute [rw] expected_bucket_owner
    #   The Amazon Web Services account ID that you expect to be the owner
    #   of the Amazon S3 bucket specified by
    #   ResultConfiguration$OutputLocation. If set, Athena uses the value
    #   for `ExpectedBucketOwner` when it makes Amazon S3 calls to your
    #   specified output location. If the `ExpectedBucketOwner` Amazon Web
    #   Services account ID does not match the actual owner of the Amazon S3
    #   bucket, the call fails with a permissions error.
    #
    #   This is a client-side setting. If workgroup settings override
    #   client-side settings, then the query uses the `ExpectedBucketOwner`
    #   setting that is specified for the workgroup, and also uses the
    #   location for storing query results specified in the workgroup. See
    #   WorkGroupConfiguration$EnforceWorkGroupConfiguration and [Workgroup
    #   Settings Override Client-Side Settings][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html
    #   @return [String]
    #
    # @!attribute [rw] acl_configuration
    #   Indicates that an Amazon S3 canned ACL should be set to control
    #   ownership of stored query results. Currently the only supported
    #   canned ACL is `BUCKET_OWNER_FULL_CONTROL`. This is a client-side
    #   setting. If workgroup settings override client-side settings, then
    #   the query uses the ACL configuration that is specified for the
    #   workgroup, and also uses the location for storing query results
    #   specified in the workgroup. For more information, see
    #   WorkGroupConfiguration$EnforceWorkGroupConfiguration and [Workgroup
    #   Settings Override Client-Side Settings][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html
    #   @return [Types::AclConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ResultConfiguration AWS API Documentation
    #
    class ResultConfiguration < Struct.new(
      :output_location,
      :encryption_configuration,
      :expected_bucket_owner,
      :acl_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The information about the updates in the query results, such as output
    # location and encryption configuration for the query results.
    #
    # @!attribute [rw] output_location
    #   The location in Amazon S3 where your query and calculation results
    #   are stored, such as `s3://path/to/query/bucket/`. For more
    #   information, see [Working with query results, recent queries, and
    #   output files][1]. If workgroup settings override client-side
    #   settings, then the query uses the location for the query results and
    #   the encryption configuration that are specified for the workgroup.
    #   The "workgroup settings override" is specified in
    #   `EnforceWorkGroupConfiguration` (true/false) in the
    #   `WorkGroupConfiguration`. See
    #   WorkGroupConfiguration$EnforceWorkGroupConfiguration.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/athena/latest/ug/querying.html
    #   @return [String]
    #
    # @!attribute [rw] remove_output_location
    #   If set to "true", indicates that the previously-specified query
    #   results location (also known as a client-side setting) for queries
    #   in this workgroup should be ignored and set to null. If set to
    #   "false" or not set, and a value is present in the `OutputLocation`
    #   in `ResultConfigurationUpdates` (the client-side setting), the
    #   `OutputLocation` in the workgroup's `ResultConfiguration` will be
    #   updated with the new value. For more information, see [Workgroup
    #   Settings Override Client-Side Settings][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html
    #   @return [Boolean]
    #
    # @!attribute [rw] encryption_configuration
    #   The encryption configuration for query and calculation results.
    #   @return [Types::EncryptionConfiguration]
    #
    # @!attribute [rw] remove_encryption_configuration
    #   If set to "true", indicates that the previously-specified
    #   encryption configuration (also known as the client-side setting) for
    #   queries in this workgroup should be ignored and set to null. If set
    #   to "false" or not set, and a value is present in the
    #   `EncryptionConfiguration` in `ResultConfigurationUpdates` (the
    #   client-side setting), the `EncryptionConfiguration` in the
    #   workgroup's `ResultConfiguration` will be updated with the new
    #   value. For more information, see [Workgroup Settings Override
    #   Client-Side Settings][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html
    #   @return [Boolean]
    #
    # @!attribute [rw] expected_bucket_owner
    #   The Amazon Web Services account ID that you expect to be the owner
    #   of the Amazon S3 bucket specified by
    #   ResultConfiguration$OutputLocation. If set, Athena uses the value
    #   for `ExpectedBucketOwner` when it makes Amazon S3 calls to your
    #   specified output location. If the `ExpectedBucketOwner` Amazon Web
    #   Services account ID does not match the actual owner of the Amazon S3
    #   bucket, the call fails with a permissions error.
    #
    #   If workgroup settings override client-side settings, then the query
    #   uses the `ExpectedBucketOwner` setting that is specified for the
    #   workgroup, and also uses the location for storing query results
    #   specified in the workgroup. See
    #   WorkGroupConfiguration$EnforceWorkGroupConfiguration and [Workgroup
    #   Settings Override Client-Side Settings][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html
    #   @return [String]
    #
    # @!attribute [rw] remove_expected_bucket_owner
    #   If set to "true", removes the Amazon Web Services account ID
    #   previously specified for ResultConfiguration$ExpectedBucketOwner. If
    #   set to "false" or not set, and a value is present in the
    #   `ExpectedBucketOwner` in `ResultConfigurationUpdates` (the
    #   client-side setting), the `ExpectedBucketOwner` in the workgroup's
    #   `ResultConfiguration` is updated with the new value. For more
    #   information, see [Workgroup Settings Override Client-Side
    #   Settings][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html
    #   @return [Boolean]
    #
    # @!attribute [rw] acl_configuration
    #   The ACL configuration for the query results.
    #   @return [Types::AclConfiguration]
    #
    # @!attribute [rw] remove_acl_configuration
    #   If set to `true`, indicates that the previously-specified ACL
    #   configuration for queries in this workgroup should be ignored and
    #   set to null. If set to `false` or not set, and a value is present in
    #   the `AclConfiguration` of `ResultConfigurationUpdates`, the
    #   `AclConfiguration` in the workgroup's `ResultConfiguration` is
    #   updated with the new value. For more information, see [Workgroup
    #   Settings Override Client-Side Settings][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ResultConfigurationUpdates AWS API Documentation
    #
    class ResultConfigurationUpdates < Struct.new(
      :output_location,
      :remove_output_location,
      :encryption_configuration,
      :remove_encryption_configuration,
      :expected_bucket_owner,
      :remove_expected_bucket_owner,
      :acl_configuration,
      :remove_acl_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies whether previous query results are reused, and if so, their
    # maximum age.
    #
    # @!attribute [rw] enabled
    #   True if previous query results can be reused when the query is run;
    #   otherwise, false. The default is false.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_age_in_minutes
    #   Specifies, in minutes, the maximum age of a previous query result
    #   that Athena should consider for reuse. The default is 60.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ResultReuseByAgeConfiguration AWS API Documentation
    #
    class ResultReuseByAgeConfiguration < Struct.new(
      :enabled,
      :max_age_in_minutes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the query result reuse behavior for the query.
    #
    # @!attribute [rw] result_reuse_by_age_configuration
    #   Specifies whether previous query results are reused, and if so,
    #   their maximum age.
    #   @return [Types::ResultReuseByAgeConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ResultReuseConfiguration AWS API Documentation
    #
    class ResultReuseConfiguration < Struct.new(
      :result_reuse_by_age_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about whether the result of a previous query was
    # reused.
    #
    # @!attribute [rw] reused_previous_result
    #   True if a previous query result was reused; false if the result was
    #   generated from a new run of the query.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ResultReuseInformation AWS API Documentation
    #
    class ResultReuseInformation < Struct.new(
      :reused_previous_result)
      SENSITIVE = []
      include Aws::Structure
    end

    # The metadata and rows that make up a query result set. The metadata
    # describes the column structure and data types. To return a `ResultSet`
    # object, use GetQueryResults.
    #
    # @!attribute [rw] rows
    #   The rows in the table.
    #   @return [Array<Types::Row>]
    #
    # @!attribute [rw] result_set_metadata
    #   The metadata that describes the column structure and data types of a
    #   table of query results.
    #   @return [Types::ResultSetMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ResultSet AWS API Documentation
    #
    class ResultSet < Struct.new(
      :rows,
      :result_set_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # The metadata that describes the column structure and data types of a
    # table of query results. To return a `ResultSetMetadata` object, use
    # GetQueryResults.
    #
    # @!attribute [rw] column_info
    #   Information about the columns returned in a query result metadata.
    #   @return [Array<Types::ColumnInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ResultSetMetadata AWS API Documentation
    #
    class ResultSetMetadata < Struct.new(
      :column_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # The rows that make up a query result table.
    #
    # @!attribute [rw] data
    #   The data that populates a row in a query result table.
    #   @return [Array<Types::Datum>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/Row AWS API Documentation
    #
    class Row < Struct.new(
      :data)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified session already exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/SessionAlreadyExistsException AWS API Documentation
    #
    class SessionAlreadyExistsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains session configuration information.
    #
    # @!attribute [rw] execution_role
    #   The ARN of the execution role used for the session.
    #   @return [String]
    #
    # @!attribute [rw] working_directory
    #   The Amazon S3 location that stores information for the notebook.
    #   @return [String]
    #
    # @!attribute [rw] idle_timeout_seconds
    #   The idle timeout in seconds for the session.
    #   @return [Integer]
    #
    # @!attribute [rw] encryption_configuration
    #   If query and calculation results are encrypted in Amazon S3,
    #   indicates the encryption option used (for example, `SSE_KMS` or
    #   `CSE_KMS`) and key information.
    #   @return [Types::EncryptionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/SessionConfiguration AWS API Documentation
    #
    class SessionConfiguration < Struct.new(
      :execution_role,
      :working_directory,
      :idle_timeout_seconds,
      :encryption_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains statistics for a session.
    #
    # @!attribute [rw] dpu_execution_in_millis
    #   The data processing unit execution time for a session in
    #   milliseconds.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/SessionStatistics AWS API Documentation
    #
    class SessionStatistics < Struct.new(
      :dpu_execution_in_millis)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the status of a session.
    #
    # @!attribute [rw] start_date_time
    #   The date and time that the session started.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_date_time
    #   The most recent date and time that the session was modified.
    #   @return [Time]
    #
    # @!attribute [rw] end_date_time
    #   The date and time that the session ended.
    #   @return [Time]
    #
    # @!attribute [rw] idle_since_date_time
    #   The date and time starting at which the session became idle. Can be
    #   empty if the session is not currently idle.
    #   @return [Time]
    #
    # @!attribute [rw] state
    #   The state of the session. A description of each state follows.
    #
    #   `CREATING` - The session is being started, including acquiring
    #   resources.
    #
    #   `CREATED` - The session has been started.
    #
    #   `IDLE` - The session is able to accept a calculation.
    #
    #   `BUSY` - The session is processing another task and is unable to
    #   accept a calculation.
    #
    #   `TERMINATING` - The session is in the process of shutting down.
    #
    #   `TERMINATED` - The session and its resources are no longer running.
    #
    #   `DEGRADED` - The session has no healthy coordinators.
    #
    #   `FAILED` - Due to a failure, the session and its resources are no
    #   longer running.
    #   @return [String]
    #
    # @!attribute [rw] state_change_reason
    #   The reason for the session state change (for example, canceled
    #   because the session was terminated).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/SessionStatus AWS API Documentation
    #
    class SessionStatus < Struct.new(
      :start_date_time,
      :last_modified_date_time,
      :end_date_time,
      :idle_since_date_time,
      :state,
      :state_change_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about a session.
    #
    # @!attribute [rw] session_id
    #   The session ID.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The session description.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The engine version used by the session (for example, `PySpark engine
    #   version 3`).
    #   @return [Types::EngineVersion]
    #
    # @!attribute [rw] notebook_version
    #   The notebook version.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Contains information about the session status.
    #   @return [Types::SessionStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/SessionSummary AWS API Documentation
    #
    class SessionSummary < Struct.new(
      :session_id,
      :description,
      :engine_version,
      :notebook_version,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_id
    #   The session ID.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the calculation.
    #   @return [String]
    #
    # @!attribute [rw] calculation_configuration
    #   Contains configuration information for the calculation.
    #   @return [Types::CalculationConfiguration]
    #
    # @!attribute [rw] code_block
    #   A string that contains the code of the calculation.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique case-sensitive string used to ensure the request to create
    #   the calculation is idempotent (executes only once). If another
    #   `StartCalculationExecutionRequest` is received, the same response is
    #   returned and another calculation is not created. If a parameter has
    #   changed, an error is returned.
    #
    #   This token is listed as not required because Amazon Web Services
    #   SDKs (for example the Amazon Web Services SDK for Java)
    #   auto-generate the token for users. If you are not using the Amazon
    #   Web Services SDK or the Amazon Web Services CLI, you must provide
    #   this token or the action will fail.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/StartCalculationExecutionRequest AWS API Documentation
    #
    class StartCalculationExecutionRequest < Struct.new(
      :session_id,
      :description,
      :calculation_configuration,
      :code_block,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] calculation_execution_id
    #   The calculation execution UUID.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   `CREATING` - The calculation is in the process of being created.
    #
    #   `CREATED` - The calculation has been created and is ready to run.
    #
    #   `QUEUED` - The calculation has been queued for processing.
    #
    #   `RUNNING` - The calculation is running.
    #
    #   `CANCELING` - A request to cancel the calculation has been received
    #   and the system is working to stop it.
    #
    #   `CANCELED` - The calculation is no longer running as the result of a
    #   cancel request.
    #
    #   `COMPLETED` - The calculation has completed without error.
    #
    #   `FAILED` - The calculation failed and is no longer running.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/StartCalculationExecutionResponse AWS API Documentation
    #
    class StartCalculationExecutionResponse < Struct.new(
      :calculation_execution_id,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] query_string
    #   The SQL query statements to be executed.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique case-sensitive string used to ensure the request to create
    #   the query is idempotent (executes only once). If another
    #   `StartQueryExecution` request is received, the same response is
    #   returned and another query is not created. If a parameter has
    #   changed, for example, the `QueryString`, an error is returned.
    #
    #   This token is listed as not required because Amazon Web Services
    #   SDKs (for example the Amazon Web Services SDK for Java)
    #   auto-generate the token for users. If you are not using the Amazon
    #   Web Services SDK or the Amazon Web Services CLI, you must provide
    #   this token or the action will fail.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] query_execution_context
    #   The database within which the query executes.
    #   @return [Types::QueryExecutionContext]
    #
    # @!attribute [rw] result_configuration
    #   Specifies information about where and how to save the results of the
    #   query execution. If the query runs in a workgroup, then workgroup's
    #   settings may override query settings. This affects the query results
    #   location. The workgroup settings override is specified in
    #   EnforceWorkGroupConfiguration (true/false) in the
    #   WorkGroupConfiguration. See
    #   WorkGroupConfiguration$EnforceWorkGroupConfiguration.
    #   @return [Types::ResultConfiguration]
    #
    # @!attribute [rw] work_group
    #   The name of the workgroup in which the query is being started.
    #   @return [String]
    #
    # @!attribute [rw] execution_parameters
    #   A list of values for the parameters in a query. The values are
    #   applied sequentially to the parameters in the query in the order in
    #   which the parameters occur.
    #   @return [Array<String>]
    #
    # @!attribute [rw] result_reuse_configuration
    #   Specifies the query result reuse behavior for the query.
    #   @return [Types::ResultReuseConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/StartQueryExecutionInput AWS API Documentation
    #
    class StartQueryExecutionInput < Struct.new(
      :query_string,
      :client_request_token,
      :query_execution_context,
      :result_configuration,
      :work_group,
      :execution_parameters,
      :result_reuse_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] query_execution_id
    #   The unique ID of the query that ran as a result of this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/StartQueryExecutionOutput AWS API Documentation
    #
    class StartQueryExecutionOutput < Struct.new(
      :query_execution_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   The session description.
    #   @return [String]
    #
    # @!attribute [rw] work_group
    #   The workgroup to which the session belongs.
    #   @return [String]
    #
    # @!attribute [rw] engine_configuration
    #   Contains engine data processing unit (DPU) configuration settings
    #   and parameter mappings.
    #   @return [Types::EngineConfiguration]
    #
    # @!attribute [rw] notebook_version
    #   The notebook version. This value is supplied automatically for
    #   notebook sessions in the Athena console and is not required for
    #   programmatic session access. The only valid notebook version is
    #   `Athena notebook version 1`. If you specify a value for
    #   `NotebookVersion`, you must also specify a value for `NotebookId`.
    #   See EngineConfiguration$AdditionalConfigs.
    #   @return [String]
    #
    # @!attribute [rw] session_idle_timeout_in_minutes
    #   The idle timeout in minutes for the session.
    #   @return [Integer]
    #
    # @!attribute [rw] client_request_token
    #   A unique case-sensitive string used to ensure the request to create
    #   the session is idempotent (executes only once). If another
    #   `StartSessionRequest` is received, the same response is returned and
    #   another session is not created. If a parameter has changed, an error
    #   is returned.
    #
    #   This token is listed as not required because Amazon Web Services
    #   SDKs (for example the Amazon Web Services SDK for Java)
    #   auto-generate the token for users. If you are not using the Amazon
    #   Web Services SDK or the Amazon Web Services CLI, you must provide
    #   this token or the action will fail.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/StartSessionRequest AWS API Documentation
    #
    class StartSessionRequest < Struct.new(
      :description,
      :work_group,
      :engine_configuration,
      :notebook_version,
      :session_idle_timeout_in_minutes,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_id
    #   The session ID.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the session. A description of each state follows.
    #
    #   `CREATING` - The session is being started, including acquiring
    #   resources.
    #
    #   `CREATED` - The session has been started.
    #
    #   `IDLE` - The session is able to accept a calculation.
    #
    #   `BUSY` - The session is processing another task and is unable to
    #   accept a calculation.
    #
    #   `TERMINATING` - The session is in the process of shutting down.
    #
    #   `TERMINATED` - The session and its resources are no longer running.
    #
    #   `DEGRADED` - The session has no healthy coordinators.
    #
    #   `FAILED` - Due to a failure, the session and its resources are no
    #   longer running.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/StartSessionResponse AWS API Documentation
    #
    class StartSessionResponse < Struct.new(
      :session_id,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] calculation_execution_id
    #   The calculation execution UUID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/StopCalculationExecutionRequest AWS API Documentation
    #
    class StopCalculationExecutionRequest < Struct.new(
      :calculation_execution_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] state
    #   `CREATING` - The calculation is in the process of being created.
    #
    #   `CREATED` - The calculation has been created and is ready to run.
    #
    #   `QUEUED` - The calculation has been queued for processing.
    #
    #   `RUNNING` - The calculation is running.
    #
    #   `CANCELING` - A request to cancel the calculation has been received
    #   and the system is working to stop it.
    #
    #   `CANCELED` - The calculation is no longer running as the result of a
    #   cancel request.
    #
    #   `COMPLETED` - The calculation has completed without error.
    #
    #   `FAILED` - The calculation failed and is no longer running.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/StopCalculationExecutionResponse AWS API Documentation
    #
    class StopCalculationExecutionResponse < Struct.new(
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] query_execution_id
    #   The unique ID of the query execution to stop.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/StopQueryExecutionInput AWS API Documentation
    #
    class StopQueryExecutionInput < Struct.new(
      :query_execution_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/StopQueryExecutionOutput AWS API Documentation
    #
    class StopQueryExecutionOutput < Aws::EmptyStructure; end

    # Contains metadata for a table.
    #
    # @!attribute [rw] name
    #   The name of the table.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time that the table was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_access_time
    #   The last time the table was accessed.
    #   @return [Time]
    #
    # @!attribute [rw] table_type
    #   The type of table. In Athena, only `EXTERNAL_TABLE` is supported.
    #   @return [String]
    #
    # @!attribute [rw] columns
    #   A list of the columns in the table.
    #   @return [Array<Types::Column>]
    #
    # @!attribute [rw] partition_keys
    #   A list of the partition keys in the table.
    #   @return [Array<Types::Column>]
    #
    # @!attribute [rw] parameters
    #   A set of custom key/value pairs for table properties.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/TableMetadata AWS API Documentation
    #
    class TableMetadata < Struct.new(
      :name,
      :create_time,
      :last_access_time,
      :table_type,
      :columns,
      :partition_keys,
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # A label that you assign to a resource. Athena resources include
    # workgroups, data catalogs, and capacity reservations. Each tag
    # consists of a key and an optional value, both of which you define. For
    # example, you can use tags to categorize Athena resources by purpose,
    # owner, or environment. Use a consistent set of tag keys to make it
    # easier to search and filter the resources in your account. For best
    # practices, see [Tagging Best Practices][1]. Tag keys can be from 1 to
    # 128 UTF-8 Unicode characters, and tag values can be from 0 to 256
    # UTF-8 Unicode characters. Tags can use letters and numbers
    # representable in UTF-8, and the following characters: + - = . \_ : /
    # @. Tag keys and values are case-sensitive. Tag keys must be unique per
    # resource. If you specify more than one tag, separate them by commas.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/whitepapers/latest/tagging-best-practices/tagging-best-practices.html
    #
    # @!attribute [rw] key
    #   A tag key. The tag key length is from 1 to 128 Unicode characters in
    #   UTF-8. You can use letters and numbers representable in UTF-8, and
    #   the following characters: + - = . \_ : / @. Tag keys are
    #   case-sensitive and must be unique per resource.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   A tag value. The tag value length is from 0 to 256 Unicode
    #   characters in UTF-8. You can use letters and numbers representable
    #   in UTF-8, and the following characters: + - = . \_ : / @. Tag values
    #   are case-sensitive.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   Specifies the ARN of the Athena resource to which tags are to be
    #   added.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of one or more tags, separated by commas, to be added
    #   to an Athena resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/TagResourceInput AWS API Documentation
    #
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/TagResourceOutput AWS API Documentation
    #
    class TagResourceOutput < Aws::EmptyStructure; end

    # @!attribute [rw] session_id
    #   The session ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/TerminateSessionRequest AWS API Documentation
    #
    class TerminateSessionRequest < Struct.new(
      :session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] state
    #   The state of the session. A description of each state follows.
    #
    #   `CREATING` - The session is being started, including acquiring
    #   resources.
    #
    #   `CREATED` - The session has been started.
    #
    #   `IDLE` - The session is able to accept a calculation.
    #
    #   `BUSY` - The session is processing another task and is unable to
    #   accept a calculation.
    #
    #   `TERMINATING` - The session is in the process of shutting down.
    #
    #   `TERMINATED` - The session and its resources are no longer running.
    #
    #   `DEGRADED` - The session has no healthy coordinators.
    #
    #   `FAILED` - Due to a failure, the session and its resources are no
    #   longer running.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/TerminateSessionResponse AWS API Documentation
    #
    class TerminateSessionResponse < Struct.new(
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates that the request was throttled.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the query throttling, for example, when it exceeds
    #   the concurrent query limit.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/TooManyRequestsException AWS API Documentation
    #
    class TooManyRequestsException < Struct.new(
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a named query ID that could not be processed.
    #
    # @!attribute [rw] named_query_id
    #   The unique identifier of the named query.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code returned when the processing request for the named
    #   query failed, if applicable.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message returned when the processing request for the named
    #   query failed, if applicable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/UnprocessedNamedQueryId AWS API Documentation
    #
    class UnprocessedNamedQueryId < Struct.new(
      :named_query_id,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The name of a prepared statement that could not be returned.
    #
    # @!attribute [rw] statement_name
    #   The name of a prepared statement that could not be returned due to
    #   an error.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code returned when the request for the prepared statement
    #   failed.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message containing the reason why the prepared statement
    #   could not be returned. The following error messages are possible:
    #
    #   * `INVALID_INPUT` - The name of the prepared statement that was
    #     provided is not valid (for example, the name is too long).
    #
    #   * `STATEMENT_NOT_FOUND` - A prepared statement with the name
    #     provided could not be found.
    #
    #   * `UNAUTHORIZED` - The requester does not have permission to access
    #     the workgroup that contains the prepared statement.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/UnprocessedPreparedStatementName AWS API Documentation
    #
    class UnprocessedPreparedStatementName < Struct.new(
      :statement_name,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a query execution that failed to process.
    #
    # @!attribute [rw] query_execution_id
    #   The unique identifier of the query execution.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code returned when the query execution failed to process,
    #   if applicable.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message returned when the query execution failed to
    #   process, if applicable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/UnprocessedQueryExecutionId AWS API Documentation
    #
    class UnprocessedQueryExecutionId < Struct.new(
      :query_execution_id,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   Specifies the ARN of the resource from which tags are to be removed.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A comma-separated list of one or more tag keys whose tags are to be
    #   removed from the specified resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/UntagResourceInput AWS API Documentation
    #
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/UntagResourceOutput AWS API Documentation
    #
    class UntagResourceOutput < Aws::EmptyStructure; end

    # @!attribute [rw] target_dpus
    #   The new number of requested data processing units.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The name of the capacity reservation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/UpdateCapacityReservationInput AWS API Documentation
    #
    class UpdateCapacityReservationInput < Struct.new(
      :target_dpus,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/UpdateCapacityReservationOutput AWS API Documentation
    #
    class UpdateCapacityReservationOutput < Aws::EmptyStructure; end

    # @!attribute [rw] name
    #   The name of the data catalog to update. The catalog name must be
    #   unique for the Amazon Web Services account and can use a maximum of
    #   127 alphanumeric, underscore, at sign, or hyphen characters. The
    #   remainder of the length constraint of 256 is reserved for use by
    #   Athena.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Specifies the type of data catalog to update. Specify `LAMBDA` for a
    #   federated catalog, `HIVE` for an external hive metastore, or `GLUE`
    #   for an Glue Data Catalog.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   New or modified text that describes the data catalog.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   Specifies the Lambda function or functions to use for updating the
    #   data catalog. This is a mapping whose values depend on the catalog
    #   type.
    #
    #   * For the `HIVE` data catalog type, use the following syntax. The
    #     `metadata-function` parameter is required. `The sdk-version`
    #     parameter is optional and defaults to the currently supported
    #     version.
    #
    #     `metadata-function=lambda_arn, sdk-version=version_number `
    #
    #   * For the `LAMBDA` data catalog type, use one of the following sets
    #     of required parameters, but not both.
    #
    #     * If you have one Lambda function that processes metadata and
    #       another for reading the actual data, use the following syntax.
    #       Both parameters are required.
    #
    #       `metadata-function=lambda_arn, record-function=lambda_arn `
    #
    #     * If you have a composite Lambda function that processes both
    #       metadata and data, use the following syntax to specify your
    #       Lambda function.
    #
    #       `function=lambda_arn `
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/UpdateDataCatalogInput AWS API Documentation
    #
    class UpdateDataCatalogInput < Struct.new(
      :name,
      :type,
      :description,
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/UpdateDataCatalogOutput AWS API Documentation
    #
    class UpdateDataCatalogOutput < Aws::EmptyStructure; end

    # @!attribute [rw] named_query_id
    #   The unique identifier (UUID) of the query.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the query.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The query description.
    #   @return [String]
    #
    # @!attribute [rw] query_string
    #   The contents of the query with all query statements.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/UpdateNamedQueryInput AWS API Documentation
    #
    class UpdateNamedQueryInput < Struct.new(
      :named_query_id,
      :name,
      :description,
      :query_string)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/UpdateNamedQueryOutput AWS API Documentation
    #
    class UpdateNamedQueryOutput < Aws::EmptyStructure; end

    # @!attribute [rw] notebook_id
    #   The ID of the notebook to update.
    #   @return [String]
    #
    # @!attribute [rw] payload
    #   The updated content for the notebook.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The notebook content type. Currently, the only valid type is
    #   `IPYNB`.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The active notebook session ID. Required if the notebook has an
    #   active session.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique case-sensitive string used to ensure the request to create
    #   the notebook is idempotent (executes only once).
    #
    #   This token is listed as not required because Amazon Web Services
    #   SDKs (for example the Amazon Web Services SDK for Java)
    #   auto-generate the token for you. If you are not using the Amazon Web
    #   Services SDK or the Amazon Web Services CLI, you must provide this
    #   token or the action will fail.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/UpdateNotebookInput AWS API Documentation
    #
    class UpdateNotebookInput < Struct.new(
      :notebook_id,
      :payload,
      :type,
      :session_id,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] notebook_id
    #   The ID of the notebook to update the metadata for.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique case-sensitive string used to ensure the request to create
    #   the notebook is idempotent (executes only once).
    #
    #   This token is listed as not required because Amazon Web Services
    #   SDKs (for example the Amazon Web Services SDK for Java)
    #   auto-generate the token for you. If you are not using the Amazon Web
    #   Services SDK or the Amazon Web Services CLI, you must provide this
    #   token or the action will fail.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name to update the notebook to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/UpdateNotebookMetadataInput AWS API Documentation
    #
    class UpdateNotebookMetadataInput < Struct.new(
      :notebook_id,
      :client_request_token,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/UpdateNotebookMetadataOutput AWS API Documentation
    #
    class UpdateNotebookMetadataOutput < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/UpdateNotebookOutput AWS API Documentation
    #
    class UpdateNotebookOutput < Aws::EmptyStructure; end

    # @!attribute [rw] statement_name
    #   The name of the prepared statement.
    #   @return [String]
    #
    # @!attribute [rw] work_group
    #   The workgroup for the prepared statement.
    #   @return [String]
    #
    # @!attribute [rw] query_statement
    #   The query string for the prepared statement.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the prepared statement.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/UpdatePreparedStatementInput AWS API Documentation
    #
    class UpdatePreparedStatementInput < Struct.new(
      :statement_name,
      :work_group,
      :query_statement,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/UpdatePreparedStatementOutput AWS API Documentation
    #
    class UpdatePreparedStatementOutput < Aws::EmptyStructure; end

    # @!attribute [rw] work_group
    #   The specified workgroup that will be updated.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The workgroup description.
    #   @return [String]
    #
    # @!attribute [rw] configuration_updates
    #   Contains configuration updates for an Athena SQL workgroup.
    #   @return [Types::WorkGroupConfigurationUpdates]
    #
    # @!attribute [rw] state
    #   The workgroup state that will be updated for the given workgroup.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/UpdateWorkGroupInput AWS API Documentation
    #
    class UpdateWorkGroupInput < Struct.new(
      :work_group,
      :description,
      :configuration_updates,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/UpdateWorkGroupOutput AWS API Documentation
    #
    class UpdateWorkGroupOutput < Aws::EmptyStructure; end

    # A workgroup, which contains a name, description, creation time, state,
    # and other configuration, listed under WorkGroup$Configuration. Each
    # workgroup enables you to isolate queries for you or your group of
    # users from other queries in the same account, to configure the query
    # results location and the encryption configuration (known as workgroup
    # settings), to enable sending query metrics to Amazon CloudWatch, and
    # to establish per-query data usage control limits for all queries in a
    # workgroup. The workgroup settings override is specified in
    # `EnforceWorkGroupConfiguration` (true/false) in the
    # `WorkGroupConfiguration`. See
    # WorkGroupConfiguration$EnforceWorkGroupConfiguration.
    #
    # @!attribute [rw] name
    #   The workgroup name.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the workgroup: ENABLED or DISABLED.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The configuration of the workgroup, which includes the location in
    #   Amazon S3 where query and calculation results are stored, the
    #   encryption configuration, if any, used for query and calculation
    #   results; whether the Amazon CloudWatch Metrics are enabled for the
    #   workgroup; whether workgroup settings override client-side settings;
    #   and the data usage limits for the amount of data scanned per query
    #   or per workgroup. The workgroup settings override is specified in
    #   `EnforceWorkGroupConfiguration` (true/false) in the
    #   `WorkGroupConfiguration`. See
    #   WorkGroupConfiguration$EnforceWorkGroupConfiguration.
    #   @return [Types::WorkGroupConfiguration]
    #
    # @!attribute [rw] description
    #   The workgroup description.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The date and time the workgroup was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/WorkGroup AWS API Documentation
    #
    class WorkGroup < Struct.new(
      :name,
      :state,
      :configuration,
      :description,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of the workgroup, which includes the location in
    # Amazon S3 where query and calculation results are stored, the
    # encryption option, if any, used for query and calculation results,
    # whether the Amazon CloudWatch Metrics are enabled for the workgroup
    # and whether workgroup settings override query settings, and the data
    # usage limits for the amount of data scanned per query or per
    # workgroup. The workgroup settings override is specified in
    # `EnforceWorkGroupConfiguration` (true/false) in the
    # `WorkGroupConfiguration`. See
    # WorkGroupConfiguration$EnforceWorkGroupConfiguration.
    #
    # @!attribute [rw] result_configuration
    #   The configuration for the workgroup, which includes the location in
    #   Amazon S3 where query and calculation results are stored and the
    #   encryption option, if any, used for query and calculation results.
    #   To run the query, you must specify the query results location using
    #   one of the ways: either in the workgroup using this setting, or for
    #   individual queries (client-side), using
    #   ResultConfiguration$OutputLocation. If none of them is set, Athena
    #   issues an error that no output location is provided. For more
    #   information, see [Working with query results, recent queries, and
    #   output files][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/athena/latest/ug/querying.html
    #   @return [Types::ResultConfiguration]
    #
    # @!attribute [rw] enforce_work_group_configuration
    #   If set to "true", the settings for the workgroup override
    #   client-side settings. If set to "false", client-side settings are
    #   used. For more information, see [Workgroup Settings Override
    #   Client-Side Settings][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html
    #   @return [Boolean]
    #
    # @!attribute [rw] publish_cloud_watch_metrics_enabled
    #   Indicates that the Amazon CloudWatch metrics are enabled for the
    #   workgroup.
    #   @return [Boolean]
    #
    # @!attribute [rw] bytes_scanned_cutoff_per_query
    #   The upper data usage limit (cutoff) for the amount of bytes a single
    #   query in a workgroup is allowed to scan.
    #   @return [Integer]
    #
    # @!attribute [rw] requester_pays_enabled
    #   If set to `true`, allows members assigned to a workgroup to
    #   reference Amazon S3 Requester Pays buckets in queries. If set to
    #   `false`, workgroup members cannot query data from Requester Pays
    #   buckets, and queries that retrieve data from Requester Pays buckets
    #   cause an error. The default is `false`. For more information about
    #   Requester Pays buckets, see [Requester Pays Buckets][1] in the
    #   *Amazon Simple Storage Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/RequesterPaysBuckets.html
    #   @return [Boolean]
    #
    # @!attribute [rw] engine_version
    #   The engine version that all queries running on the workgroup use.
    #   Queries on the `AmazonAthenaPreviewFunctionality` workgroup run on
    #   the preview engine regardless of this setting.
    #   @return [Types::EngineVersion]
    #
    # @!attribute [rw] additional_configuration
    #   Specifies a user defined JSON string that is passed to the notebook
    #   engine.
    #   @return [String]
    #
    # @!attribute [rw] execution_role
    #   Role used in a session for accessing the user's resources.
    #   @return [String]
    #
    # @!attribute [rw] customer_content_encryption_configuration
    #   Specifies the KMS key that is used to encrypt the user's data
    #   stores in Athena. This setting does not apply to Athena SQL
    #   workgroups.
    #   @return [Types::CustomerContentEncryptionConfiguration]
    #
    # @!attribute [rw] enable_minimum_encryption_configuration
    #   Enforces a minimal level of encryption for the workgroup for query
    #   and calculation results that are written to Amazon S3. When enabled,
    #   workgroup users can set encryption only to the minimum level set by
    #   the administrator or higher when they submit queries.
    #
    #   The `EnforceWorkGroupConfiguration` setting takes precedence over
    #   the `EnableMinimumEncryptionConfiguration` flag. This means that if
    #   `EnforceWorkGroupConfiguration` is true, the
    #   `EnableMinimumEncryptionConfiguration` flag is ignored, and the
    #   workgroup configuration for encryption is used.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/WorkGroupConfiguration AWS API Documentation
    #
    class WorkGroupConfiguration < Struct.new(
      :result_configuration,
      :enforce_work_group_configuration,
      :publish_cloud_watch_metrics_enabled,
      :bytes_scanned_cutoff_per_query,
      :requester_pays_enabled,
      :engine_version,
      :additional_configuration,
      :execution_role,
      :customer_content_encryption_configuration,
      :enable_minimum_encryption_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration information that will be updated for this workgroup,
    # which includes the location in Amazon S3 where query and calculation
    # results are stored, the encryption option, if any, used for query
    # results, whether the Amazon CloudWatch Metrics are enabled for the
    # workgroup, whether the workgroup settings override the client-side
    # settings, and the data usage limit for the amount of bytes scanned per
    # query, if it is specified.
    #
    # @!attribute [rw] enforce_work_group_configuration
    #   If set to "true", the settings for the workgroup override
    #   client-side settings. If set to "false" client-side settings are
    #   used. For more information, see [Workgroup Settings Override
    #   Client-Side Settings][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html
    #   @return [Boolean]
    #
    # @!attribute [rw] result_configuration_updates
    #   The result configuration information about the queries in this
    #   workgroup that will be updated. Includes the updated results
    #   location and an updated option for encrypting query results.
    #   @return [Types::ResultConfigurationUpdates]
    #
    # @!attribute [rw] publish_cloud_watch_metrics_enabled
    #   Indicates whether this workgroup enables publishing metrics to
    #   Amazon CloudWatch.
    #   @return [Boolean]
    #
    # @!attribute [rw] bytes_scanned_cutoff_per_query
    #   The upper limit (cutoff) for the amount of bytes a single query in a
    #   workgroup is allowed to scan.
    #   @return [Integer]
    #
    # @!attribute [rw] remove_bytes_scanned_cutoff_per_query
    #   Indicates that the data usage control limit per query is removed.
    #   WorkGroupConfiguration$BytesScannedCutoffPerQuery
    #   @return [Boolean]
    #
    # @!attribute [rw] requester_pays_enabled
    #   If set to `true`, allows members assigned to a workgroup to specify
    #   Amazon S3 Requester Pays buckets in queries. If set to `false`,
    #   workgroup members cannot query data from Requester Pays buckets, and
    #   queries that retrieve data from Requester Pays buckets cause an
    #   error. The default is `false`. For more information about Requester
    #   Pays buckets, see [Requester Pays Buckets][1] in the *Amazon Simple
    #   Storage Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/RequesterPaysBuckets.html
    #   @return [Boolean]
    #
    # @!attribute [rw] engine_version
    #   The engine version requested when a workgroup is updated. After the
    #   update, all queries on the workgroup run on the requested engine
    #   version. If no value was previously set, the default is Auto.
    #   Queries on the `AmazonAthenaPreviewFunctionality` workgroup run on
    #   the preview engine regardless of this setting.
    #   @return [Types::EngineVersion]
    #
    # @!attribute [rw] remove_customer_content_encryption_configuration
    #   Removes content encryption configuration from an Apache
    #   Spark-enabled Athena workgroup.
    #   @return [Boolean]
    #
    # @!attribute [rw] additional_configuration
    #   Contains a user defined string in JSON format for a Spark-enabled
    #   workgroup.
    #   @return [String]
    #
    # @!attribute [rw] execution_role
    #   Contains the ARN of the execution role for the workgroup
    #   @return [String]
    #
    # @!attribute [rw] customer_content_encryption_configuration
    #   Specifies the KMS key that is used to encrypt the user's data
    #   stores in Athena. This setting does not apply to Athena SQL
    #   workgroups.
    #   @return [Types::CustomerContentEncryptionConfiguration]
    #
    # @!attribute [rw] enable_minimum_encryption_configuration
    #   Enforces a minimal level of encryption for the workgroup for query
    #   and calculation results that are written to Amazon S3. When enabled,
    #   workgroup users can set encryption only to the minimum level set by
    #   the administrator or higher when they submit queries. This setting
    #   does not apply to Spark-enabled workgroups.
    #
    #   The `EnforceWorkGroupConfiguration` setting takes precedence over
    #   the `EnableMinimumEncryptionConfiguration` flag. This means that if
    #   `EnforceWorkGroupConfiguration` is true, the
    #   `EnableMinimumEncryptionConfiguration` flag is ignored, and the
    #   workgroup configuration for encryption is used.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/WorkGroupConfigurationUpdates AWS API Documentation
    #
    class WorkGroupConfigurationUpdates < Struct.new(
      :enforce_work_group_configuration,
      :result_configuration_updates,
      :publish_cloud_watch_metrics_enabled,
      :bytes_scanned_cutoff_per_query,
      :remove_bytes_scanned_cutoff_per_query,
      :requester_pays_enabled,
      :engine_version,
      :remove_customer_content_encryption_configuration,
      :additional_configuration,
      :execution_role,
      :customer_content_encryption_configuration,
      :enable_minimum_encryption_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary information for the workgroup, which includes its name,
    # state, description, and the date and time it was created.
    #
    # @!attribute [rw] name
    #   The name of the workgroup.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the workgroup.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The workgroup description.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The workgroup creation date and time.
    #   @return [Time]
    #
    # @!attribute [rw] engine_version
    #   The engine version setting for all queries on the workgroup. Queries
    #   on the `AmazonAthenaPreviewFunctionality` workgroup run on the
    #   preview engine regardless of this setting.
    #   @return [Types::EngineVersion]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/WorkGroupSummary AWS API Documentation
    #
    class WorkGroupSummary < Struct.new(
      :name,
      :state,
      :description,
      :creation_time,
      :engine_version)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
