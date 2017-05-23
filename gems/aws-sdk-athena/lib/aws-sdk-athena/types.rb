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
    #       }
    #
    # @!attribute [rw] name
    #   The plain language name for the query.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A brief explanation of the query.
    #   @return [String]
    #
    # @!attribute [rw] database
    #   The database to which the query belongs.
    #   @return [String]
    #
    # @!attribute [rw] query_string
    #   The text of the query itself. In other words, all query statements.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/CreateNamedQueryInput AWS API Documentation
    #
    class CreateNamedQueryInput < Struct.new(
      :name,
      :description,
      :database,
      :query_string,
      :client_request_token)
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

    # If query results are encrypted in Amazon S3, indicates the Amazon S3
    # encryption option used.
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
      :result_set,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListNamedQueriesInput
    #   data as a hash:
    #
    #       {
    #         next_token: "Token",
    #         max_results: 1,
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ListNamedQueriesInput AWS API Documentation
    #
    class ListNamedQueriesInput < Struct.new(
      :next_token,
      :max_results)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ListQueryExecutionsInput AWS API Documentation
    #
    class ListQueryExecutionsInput < Struct.new(
      :next_token,
      :max_results)
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

    # A query, where `QueryString` is the SQL query statements that comprise
    # the query.
    #
    # @!attribute [rw] name
    #   The plain-language name of the query.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A brief description of the query.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/NamedQuery AWS API Documentation
    #
    class NamedQuery < Struct.new(
      :name,
      :description,
      :database,
      :query_string,
      :named_query_id)
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
    # @!attribute [rw] result_configuration
    #   The location in Amazon S3 where query results were stored and the
    #   encryption option, if any, used for query results.
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
    #   of time that it took to execute.
    #   @return [Types::QueryExecutionStatistics]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/QueryExecution AWS API Documentation
    #
    class QueryExecution < Struct.new(
      :query_execution_id,
      :query,
      :result_configuration,
      :query_execution_context,
      :status,
      :statistics)
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
    # of time that it took to execute.
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
    #   The state of query execution. `SUBMITTED` indicates that the query
    #   is queued for execution. `RUNNING` indicates that the query is
    #   scanning data and returning results. `SUCCEEDED` indicates that the
    #   query completed without error. `FAILED` indicates that the query
    #   experienced an error and did not complete processing. `CANCELLED`
    #   indicates that user input interrupted query execution.
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

    # The location in Amazon S3 where query results are stored and the
    # encryption option, if any, used for query results.
    #
    # @note When making an API call, you may pass ResultConfiguration
    #   data as a hash:
    #
    #       {
    #         output_location: "String", # required
    #         encryption_configuration: {
    #           encryption_option: "SSE_S3", # required, accepts SSE_S3, SSE_KMS, CSE_KMS
    #           kms_key: "String",
    #         },
    #       }
    #
    # @!attribute [rw] output_location
    #   The location in S3 where query results are stored.
    #   @return [String]
    #
    # @!attribute [rw] encryption_configuration
    #   If query results are encrypted in S3, indicates the S3 encryption
    #   option used (for example, `SSE-KMS` or `CSE-KMS` and key
    #   information.
    #   @return [Types::EncryptionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ResultConfiguration AWS API Documentation
    #
    class ResultConfiguration < Struct.new(
      :output_location,
      :encryption_configuration)
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
    #   Information about the columns in a query execution result.
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
    #         result_configuration: { # required
    #           output_location: "String", # required
    #           encryption_configuration: {
    #             encryption_option: "SSE_S3", # required, accepts SSE_S3, SSE_KMS, CSE_KMS
    #             kms_key: "String",
    #           },
    #         },
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
    #   query execution.
    #   @return [Types::ResultConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/StartQueryExecutionInput AWS API Documentation
    #
    class StartQueryExecutionInput < Struct.new(
      :query_string,
      :client_request_token,
      :query_execution_context,
      :result_configuration)
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

  end
end
