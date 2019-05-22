# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Athena
  module Types

    # @note When making an API call, you may pass BatchGetNamedQueryInput
    #   data as a hash:
    #
    #       {
    #         named_query_ids: ["NamedQueryId"], # required
    #       }
    #
    # @!attribute [rw] named_query_ids
    #   An array of query IDs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/BatchGetNamedQueryInput AWS API Documentation
    #
    class BatchGetNamedQueryInput < Struct.new(
      :named_query_ids)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchGetQueryExecutionInput
    #   data as a hash:
    #
    #       {
    #         query_execution_ids: ["QueryExecutionId"], # required
    #       }
    #
    # @!attribute [rw] query_execution_ids
    #   An array of query execution IDs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/BatchGetQueryExecutionInput AWS API Documentation
    #
    class BatchGetQueryExecutionInput < Struct.new(
      :query_execution_ids)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateNamedQueryInput
    #   data as a hash:
    #
    #       {
    #         name: "NameString", # required
    #         description: "DescriptionString",
    #         database: "DatabaseString", # required
    #         query_string: "QueryString", # required
    #         client_request_token: "IdempotencyToken",
    #         work_group: "WorkGroupName",
    #       }
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
    #   This token is listed as not required because AWS SDKs (for example
    #   the AWS SDK for Java) auto-generate the token for users. If you are
    #   not using the AWS SDK or the AWS CLI, you must provide this token or
    #   the action will fail.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateWorkGroupInput
    #   data as a hash:
    #
    #       {
    #         name: "WorkGroupName", # required
    #         configuration: {
    #           result_configuration: {
    #             output_location: "String",
    #             encryption_configuration: {
    #               encryption_option: "SSE_S3", # required, accepts SSE_S3, SSE_KMS, CSE_KMS
    #               kms_key: "String",
    #             },
    #           },
    #           enforce_work_group_configuration: false,
    #           publish_cloud_watch_metrics_enabled: false,
    #           bytes_scanned_cutoff_per_query: 1,
    #         },
    #         description: "WorkGroupDescriptionString",
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] name
    #   The workgroup name.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The configuration for the workgroup, which includes the location in
    #   Amazon S3 where query results are stored, the encryption
    #   configuration, if any, used for encrypting query results, whether
    #   the Amazon CloudWatch Metrics are enabled for the workgroup, the
    #   limit for the amount of bytes scanned (cutoff) per query, if it is
    #   specified, and whether workgroup's settings (specified with
    #   EnforceWorkGroupConfiguration) in the WorkGroupConfiguration
    #   override client-side settings. See
    #   WorkGroupConfiguration$EnforceWorkGroupConfiguration.
    #   @return [Types::WorkGroupConfiguration]
    #
    # @!attribute [rw] description
    #   The workgroup description.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   One or more tags, separated by commas, that you want to attach to
    #   the workgroup as you create it.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/CreateWorkGroupInput AWS API Documentation
    #
    class CreateWorkGroupInput < Struct.new(
      :name,
      :configuration,
      :description,
      :tags)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/CreateWorkGroupOutput AWS API Documentation
    #
    class CreateWorkGroupOutput < Aws::EmptyStructure; end

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
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteNamedQueryInput
    #   data as a hash:
    #
    #       {
    #         named_query_id: "NamedQueryId", # required
    #       }
    #
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
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/DeleteNamedQueryOutput AWS API Documentation
    #
    class DeleteNamedQueryOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteWorkGroupInput
    #   data as a hash:
    #
    #       {
    #         work_group: "WorkGroupName", # required
    #         recursive_delete_option: false,
    #       }
    #
    # @!attribute [rw] work_group
    #   The unique name of the workgroup to delete.
    #   @return [String]
    #
    # @!attribute [rw] recursive_delete_option
    #   The option to delete the workgroup and its contents even if the
    #   workgroup contains any named queries.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/DeleteWorkGroupInput AWS API Documentation
    #
    class DeleteWorkGroupInput < Struct.new(
      :work_group,
      :recursive_delete_option)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/DeleteWorkGroupOutput AWS API Documentation
    #
    class DeleteWorkGroupOutput < Aws::EmptyStructure; end

    # If query results are encrypted in Amazon S3, indicates the encryption
    # option used (for example, `SSE-KMS` or `CSE-KMS`) and key information.
    #
    # @note When making an API call, you may pass EncryptionConfiguration
    #   data as a hash:
    #
    #       {
    #         encryption_option: "SSE_S3", # required, accepts SSE_S3, SSE_KMS, CSE_KMS
    #         kms_key: "String",
    #       }
    #
    # @!attribute [rw] encryption_option
    #   Indicates whether Amazon S3 server-side encryption with Amazon
    #   S3-managed keys (`SSE-S3`), server-side encryption with KMS-managed
    #   keys (`SSE-KMS`), or client-side encryption with KMS-managed keys
    #   (CSE-KMS) is used.
    #
    #   If a query runs in a workgroup and the workgroup overrides
    #   client-side settings, then the workgroup's setting for encryption
    #   is used. It specifies whether query results must be encrypted, for
    #   all queries that run in this workgroup.
    #   @return [String]
    #
    # @!attribute [rw] kms_key
    #   For `SSE-KMS` and `CSE-KMS`, this is the KMS key ARN or ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/EncryptionConfiguration AWS API Documentation
    #
    class EncryptionConfiguration < Struct.new(
      :encryption_option,
      :kms_key)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetNamedQueryInput
    #   data as a hash:
    #
    #       {
    #         named_query_id: "NamedQueryId", # required
    #       }
    #
    # @!attribute [rw] named_query_id
    #   The unique ID of the query. Use ListNamedQueries to get query IDs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/GetNamedQueryInput AWS API Documentation
    #
    class GetNamedQueryInput < Struct.new(
      :named_query_id)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetQueryExecutionInput
    #   data as a hash:
    #
    #       {
    #         query_execution_id: "QueryExecutionId", # required
    #       }
    #
    # @!attribute [rw] query_execution_id
    #   The unique ID of the query execution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/GetQueryExecutionInput AWS API Documentation
    #
    class GetQueryExecutionInput < Struct.new(
      :query_execution_id)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetQueryResultsInput
    #   data as a hash:
    #
    #       {
    #         query_execution_id: "QueryExecutionId", # required
    #         next_token: "Token",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] query_execution_id
    #   The unique ID of the query execution.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token that specifies where to start pagination if a previous
    #   request was truncated.
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
      include Aws::Structure
    end

    # @!attribute [rw] update_count
    #   The number of rows inserted with a CREATE TABLE AS SELECT statement.
    #   @return [Integer]
    #
    # @!attribute [rw] result_set
    #   The results of the query execution.
    #   @return [Types::ResultSet]
    #
    # @!attribute [rw] next_token
    #   A token to be used by the next request if this request is truncated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/GetQueryResultsOutput AWS API Documentation
    #
    class GetQueryResultsOutput < Struct.new(
      :update_count,
      :result_set,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetWorkGroupInput
    #   data as a hash:
    #
    #       {
    #         work_group: "WorkGroupName", # required
    #       }
    #
    # @!attribute [rw] work_group
    #   The name of the workgroup.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/GetWorkGroupInput AWS API Documentation
    #
    class GetWorkGroupInput < Struct.new(
      :work_group)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListNamedQueriesInput
    #   data as a hash:
    #
    #       {
    #         next_token: "Token",
    #         max_results: 1,
    #         work_group: "WorkGroupName",
    #       }
    #
    # @!attribute [rw] next_token
    #   The token that specifies where to start pagination if a previous
    #   request was truncated.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of queries to return in this request.
    #   @return [Integer]
    #
    # @!attribute [rw] work_group
    #   The name of the workgroup from which the named queries are being
    #   returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ListNamedQueriesInput AWS API Documentation
    #
    class ListNamedQueriesInput < Struct.new(
      :next_token,
      :max_results,
      :work_group)
      include Aws::Structure
    end

    # @!attribute [rw] named_query_ids
    #   The list of unique query IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   A token to be used by the next request if this request is truncated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ListNamedQueriesOutput AWS API Documentation
    #
    class ListNamedQueriesOutput < Struct.new(
      :named_query_ids,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListQueryExecutionsInput
    #   data as a hash:
    #
    #       {
    #         next_token: "Token",
    #         max_results: 1,
    #         work_group: "WorkGroupName",
    #       }
    #
    # @!attribute [rw] next_token
    #   The token that specifies where to start pagination if a previous
    #   request was truncated.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of query executions to return in this request.
    #   @return [Integer]
    #
    # @!attribute [rw] work_group
    #   The name of the workgroup from which queries are being returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ListQueryExecutionsInput AWS API Documentation
    #
    class ListQueryExecutionsInput < Struct.new(
      :next_token,
      :max_results,
      :work_group)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceInput
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #         next_token: "Token",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] resource_arn
    #   Lists the tags for the workgroup resource with the specified ARN.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no
    #   additional results for this request, where the request lists the
    #   tags for the workgroup resource with the specified ARN.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per request that lists
    #   the tags for the workgroup resource.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ListTagsForResourceInput AWS API Documentation
    #
    class ListTagsForResourceInput < Struct.new(
      :resource_arn,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The list of tags associated with this workgroup.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListWorkGroupsInput
    #   data as a hash:
    #
    #       {
    #         next_token: "Token",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   A token to be used by the next request if this request is truncated.
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
      include Aws::Structure
    end

    # @!attribute [rw] work_groups
    #   The list of workgroups, including their names, descriptions,
    #   creation times, and states.
    #   @return [Array<Types::WorkGroupSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to be used by the next request if this request is truncated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ListWorkGroupsOutput AWS API Documentation
    #
    class ListWorkGroupsOutput < Struct.new(
      :work_groups,
      :next_token)
      include Aws::Structure
    end

    # A query, where `QueryString` is the list of SQL query statements that
    # comprise the query.
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
    #   The SQL query statements that comprise the query.
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
      include Aws::Structure
    end

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
    #   TABLE`, or `DESCRIBE <table>`.
    #   @return [String]
    #
    # @!attribute [rw] result_configuration
    #   The location in Amazon S3 where query results were stored and the
    #   encryption option, if any, used for query results. These are known
    #   as "client-side settings". If workgroup settings override
    #   client-side settings, then the query uses the location for the query
    #   results and the encryption configuration that are specified for the
    #   workgroup.
    #   @return [Types::ResultConfiguration]
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
    #   The amount of data scanned during the query execution and the amount
    #   of time that it took to execute, and the type of statement that was
    #   run.
    #   @return [Types::QueryExecutionStatistics]
    #
    # @!attribute [rw] work_group
    #   The name of the workgroup in which the query ran.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/QueryExecution AWS API Documentation
    #
    class QueryExecution < Struct.new(
      :query_execution_id,
      :query,
      :statement_type,
      :result_configuration,
      :query_execution_context,
      :status,
      :statistics,
      :work_group)
      include Aws::Structure
    end

    # The database in which the query execution occurs.
    #
    # @note When making an API call, you may pass QueryExecutionContext
    #   data as a hash:
    #
    #       {
    #         database: "DatabaseString",
    #       }
    #
    # @!attribute [rw] database
    #   The name of the database.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/QueryExecutionContext AWS API Documentation
    #
    class QueryExecutionContext < Struct.new(
      :database)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/QueryExecutionStatistics AWS API Documentation
    #
    class QueryExecutionStatistics < Struct.new(
      :engine_execution_time_in_millis,
      :data_scanned_in_bytes)
      include Aws::Structure
    end

    # The completion date, current state, submission time, and state change
    # reason (if applicable) for the query execution.
    #
    # @!attribute [rw] state
    #   The state of query execution. `QUEUED` state is listed but is not
    #   used by Athena and is reserved for future use. `RUNNING` indicates
    #   that the query has been submitted to the service, and Athena will
    #   execute the query as soon as resources are available. `SUCCEEDED`
    #   indicates that the query completed without errors. `FAILED`
    #   indicates that the query experienced an error and did not complete
    #   processing. `CANCELLED` indicates that a user input interrupted
    #   query execution.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/QueryExecutionStatus AWS API Documentation
    #
    class QueryExecutionStatus < Struct.new(
      :state,
      :state_change_reason,
      :submission_date_time,
      :completion_date_time)
      include Aws::Structure
    end

    # A resource, such as a workgroup, was not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_name)
      include Aws::Structure
    end

    # The location in Amazon S3 where query results are stored and the
    # encryption option, if any, used for query results. These are known as
    # "client-side settings". If workgroup settings override client-side
    # settings, then the query uses the location for the query results and
    # the encryption configuration that are specified for the workgroup.
    #
    # @note When making an API call, you may pass ResultConfiguration
    #   data as a hash:
    #
    #       {
    #         output_location: "String",
    #         encryption_configuration: {
    #           encryption_option: "SSE_S3", # required, accepts SSE_S3, SSE_KMS, CSE_KMS
    #           kms_key: "String",
    #         },
    #       }
    #
    # @!attribute [rw] output_location
    #   The location in Amazon S3 where your query results are stored, such
    #   as `s3://path/to/query/bucket/`. For more information, see [Queries
    #   and Query Result Files.][1] If workgroup settings override
    #   client-side settings, then the query uses the location for the query
    #   results and the encryption configuration that are specified for the
    #   workgroup. The "workgroup settings override" is specified in
    #   EnforceWorkGroupConfiguration (true/false) in the
    #   WorkGroupConfiguration. See
    #   WorkGroupConfiguration$EnforceWorkGroupConfiguration.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/athena/latest/ug/querying.html
    #   @return [String]
    #
    # @!attribute [rw] encryption_configuration
    #   If query results are encrypted in Amazon S3, indicates the
    #   encryption option used (for example, `SSE-KMS` or `CSE-KMS`) and key
    #   information. This is a client-side setting. If workgroup settings
    #   override client-side settings, then the query uses the encryption
    #   configuration that is specified for the workgroup, and also uses the
    #   location for storing query results specified in the workgroup. See
    #   WorkGroupConfiguration$EnforceWorkGroupConfiguration and [Workgroup
    #   Settings Override Client-Side Settings][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html
    #   @return [Types::EncryptionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ResultConfiguration AWS API Documentation
    #
    class ResultConfiguration < Struct.new(
      :output_location,
      :encryption_configuration)
      include Aws::Structure
    end

    # The information about the updates in the query results, such as output
    # location and encryption configuration for the query results.
    #
    # @note When making an API call, you may pass ResultConfigurationUpdates
    #   data as a hash:
    #
    #       {
    #         output_location: "String",
    #         remove_output_location: false,
    #         encryption_configuration: {
    #           encryption_option: "SSE_S3", # required, accepts SSE_S3, SSE_KMS, CSE_KMS
    #           kms_key: "String",
    #         },
    #         remove_encryption_configuration: false,
    #       }
    #
    # @!attribute [rw] output_location
    #   The location in Amazon S3 where your query results are stored, such
    #   as `s3://path/to/query/bucket/`. For more information, see [Queries
    #   and Query Result Files.][1] If workgroup settings override
    #   client-side settings, then the query uses the location for the query
    #   results and the encryption configuration that are specified for the
    #   workgroup. The "workgroup settings override" is specified in
    #   EnforceWorkGroupConfiguration (true/false) in the
    #   WorkGroupConfiguration. See
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
    #   "false" or not set, and a value is present in the OutputLocation
    #   in ResultConfigurationUpdates (the client-side setting), the
    #   OutputLocation in the workgroup's ResultConfiguration will be
    #   updated with the new value. For more information, see [Workgroup
    #   Settings Override Client-Side Settings][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html
    #   @return [Boolean]
    #
    # @!attribute [rw] encryption_configuration
    #   The encryption configuration for the query results.
    #   @return [Types::EncryptionConfiguration]
    #
    # @!attribute [rw] remove_encryption_configuration
    #   If set to "true", indicates that the previously-specified
    #   encryption configuration (also known as the client-side setting) for
    #   queries in this workgroup should be ignored and set to null. If set
    #   to "false" or not set, and a value is present in the
    #   EncryptionConfiguration in ResultConfigurationUpdates (the
    #   client-side setting), the EncryptionConfiguration in the
    #   workgroup's ResultConfiguration will be updated with the new value.
    #   For more information, see [Workgroup Settings Override Client-Side
    #   Settings][1].
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
      :remove_encryption_configuration)
      include Aws::Structure
    end

    # The metadata and rows that comprise a query result set. The metadata
    # describes the column structure and data types.
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
      include Aws::Structure
    end

    # The metadata that describes the column structure and data types of a
    # table of query results.
    #
    # @!attribute [rw] column_info
    #   Information about the columns returned in a query result metadata.
    #   @return [Array<Types::ColumnInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ResultSetMetadata AWS API Documentation
    #
    class ResultSetMetadata < Struct.new(
      :column_info)
      include Aws::Structure
    end

    # The rows that comprise a query result table.
    #
    # @!attribute [rw] data
    #   The data that populates a row in a query result table.
    #   @return [Array<Types::Datum>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/Row AWS API Documentation
    #
    class Row < Struct.new(
      :data)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartQueryExecutionInput
    #   data as a hash:
    #
    #       {
    #         query_string: "QueryString", # required
    #         client_request_token: "IdempotencyToken",
    #         query_execution_context: {
    #           database: "DatabaseString",
    #         },
    #         result_configuration: {
    #           output_location: "String",
    #           encryption_configuration: {
    #             encryption_option: "SSE_S3", # required, accepts SSE_S3, SSE_KMS, CSE_KMS
    #             kms_key: "String",
    #           },
    #         },
    #         work_group: "WorkGroupName",
    #       }
    #
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
    #   This token is listed as not required because AWS SDKs (for example
    #   the AWS SDK for Java) auto-generate the token for users. If you are
    #   not using the AWS SDK or the AWS CLI, you must provide this token or
    #   the action will fail.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/StartQueryExecutionInput AWS API Documentation
    #
    class StartQueryExecutionInput < Struct.new(
      :query_string,
      :client_request_token,
      :query_execution_context,
      :result_configuration,
      :work_group)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopQueryExecutionInput
    #   data as a hash:
    #
    #       {
    #         query_execution_id: "QueryExecutionId", # required
    #       }
    #
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
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/StopQueryExecutionOutput AWS API Documentation
    #
    class StopQueryExecutionOutput < Aws::EmptyStructure; end

    # A tag that you can add to a resource. A tag is a label that you assign
    # to an AWS Athena resource (a workgroup). Each tag consists of a key
    # and an optional value, both of which you define. Tags enable you to
    # categorize workgroups in Athena, for example, by purpose, owner, or
    # environment. Use a consistent set of tag keys to make it easier to
    # search and filter workgroups in your account. The maximum tag key
    # length is 128 Unicode characters in UTF-8. The maximum tag value
    # length is 256 Unicode characters in UTF-8. You can use letters and
    # numbers representable in UTF-8, and the following characters: + - = .
    # \_ : / @. Tag keys and values are case-sensitive. Tag keys must be
    # unique per resource.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       }
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceInput
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_arn
    #   Requests that one or more tags are added to the resource (such as a
    #   workgroup) for the specified ARN.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   One or more tags, separated by commas, to be added to the resource,
    #   such as a workgroup.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/TagResourceInput AWS API Documentation
    #
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/TagResourceOutput AWS API Documentation
    #
    class TagResourceOutput < Aws::EmptyStructure; end

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
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceInput
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   Removes one or more tags from the workgroup resource for the
    #   specified ARN.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   Removes the tags associated with one or more tag keys from the
    #   workgroup resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/UntagResourceInput AWS API Documentation
    #
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/UntagResourceOutput AWS API Documentation
    #
    class UntagResourceOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateWorkGroupInput
    #   data as a hash:
    #
    #       {
    #         work_group: "WorkGroupName", # required
    #         description: "WorkGroupDescriptionString",
    #         configuration_updates: {
    #           enforce_work_group_configuration: false,
    #           result_configuration_updates: {
    #             output_location: "String",
    #             remove_output_location: false,
    #             encryption_configuration: {
    #               encryption_option: "SSE_S3", # required, accepts SSE_S3, SSE_KMS, CSE_KMS
    #               kms_key: "String",
    #             },
    #             remove_encryption_configuration: false,
    #           },
    #           publish_cloud_watch_metrics_enabled: false,
    #           bytes_scanned_cutoff_per_query: 1,
    #           remove_bytes_scanned_cutoff_per_query: false,
    #         },
    #         state: "ENABLED", # accepts ENABLED, DISABLED
    #       }
    #
    # @!attribute [rw] work_group
    #   The specified workgroup that will be updated.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The workgroup description.
    #   @return [String]
    #
    # @!attribute [rw] configuration_updates
    #   The workgroup configuration that will be updated for the given
    #   workgroup.
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
    # EnforceWorkGroupConfiguration (true/false) in the
    # WorkGroupConfiguration. See
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
    #   Amazon S3 where query results are stored, the encryption
    #   configuration, if any, used for query results; whether the Amazon
    #   CloudWatch Metrics are enabled for the workgroup; whether workgroup
    #   settings override client-side settings; and the data usage limit for
    #   the amount of data scanned per query, if it is specified. The
    #   workgroup settings override is specified in
    #   EnforceWorkGroupConfiguration (true/false) in the
    #   WorkGroupConfiguration. See
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
      include Aws::Structure
    end

    # The configuration of the workgroup, which includes the location in
    # Amazon S3 where query results are stored, the encryption option, if
    # any, used for query results, whether the Amazon CloudWatch Metrics are
    # enabled for the workgroup and whether workgroup settings override
    # query settings, and the data usage limit for the amount of data
    # scanned per query, if it is specified. The workgroup settings override
    # is specified in EnforceWorkGroupConfiguration (true/false) in the
    # WorkGroupConfiguration. See
    # WorkGroupConfiguration$EnforceWorkGroupConfiguration.
    #
    # @note When making an API call, you may pass WorkGroupConfiguration
    #   data as a hash:
    #
    #       {
    #         result_configuration: {
    #           output_location: "String",
    #           encryption_configuration: {
    #             encryption_option: "SSE_S3", # required, accepts SSE_S3, SSE_KMS, CSE_KMS
    #             kms_key: "String",
    #           },
    #         },
    #         enforce_work_group_configuration: false,
    #         publish_cloud_watch_metrics_enabled: false,
    #         bytes_scanned_cutoff_per_query: 1,
    #       }
    #
    # @!attribute [rw] result_configuration
    #   The configuration for the workgroup, which includes the location in
    #   Amazon S3 where query results are stored and the encryption option,
    #   if any, used for query results.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/WorkGroupConfiguration AWS API Documentation
    #
    class WorkGroupConfiguration < Struct.new(
      :result_configuration,
      :enforce_work_group_configuration,
      :publish_cloud_watch_metrics_enabled,
      :bytes_scanned_cutoff_per_query)
      include Aws::Structure
    end

    # The configuration information that will be updated for this workgroup,
    # which includes the location in Amazon S3 where query results are
    # stored, the encryption option, if any, used for query results, whether
    # the Amazon CloudWatch Metrics are enabled for the workgroup, whether
    # the workgroup settings override the client-side settings, and the data
    # usage limit for the amount of bytes scanned per query, if it is
    # specified.
    #
    # @note When making an API call, you may pass WorkGroupConfigurationUpdates
    #   data as a hash:
    #
    #       {
    #         enforce_work_group_configuration: false,
    #         result_configuration_updates: {
    #           output_location: "String",
    #           remove_output_location: false,
    #           encryption_configuration: {
    #             encryption_option: "SSE_S3", # required, accepts SSE_S3, SSE_KMS, CSE_KMS
    #             kms_key: "String",
    #           },
    #           remove_encryption_configuration: false,
    #         },
    #         publish_cloud_watch_metrics_enabled: false,
    #         bytes_scanned_cutoff_per_query: 1,
    #         remove_bytes_scanned_cutoff_per_query: false,
    #       }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/WorkGroupConfigurationUpdates AWS API Documentation
    #
    class WorkGroupConfigurationUpdates < Struct.new(
      :enforce_work_group_configuration,
      :result_configuration_updates,
      :publish_cloud_watch_metrics_enabled,
      :bytes_scanned_cutoff_per_query,
      :remove_bytes_scanned_cutoff_per_query)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/WorkGroupSummary AWS API Documentation
    #
    class WorkGroupSummary < Struct.new(
      :name,
      :state,
      :description,
      :creation_time)
      include Aws::Structure
    end

  end
end
