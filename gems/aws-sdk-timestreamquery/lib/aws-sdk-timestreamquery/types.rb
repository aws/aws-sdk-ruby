# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::TimestreamQuery
  module Types

    # You are not authorized to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] query_id
    #   The ID of the query that needs to be cancelled. `QueryID` is
    #   returned as part of the query result.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/CancelQueryRequest AWS API Documentation
    #
    class CancelQueryRequest < Struct.new(
      :query_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cancellation_message
    #   A `CancellationMessage` is returned when a `CancelQuery` request for
    #   the query specified by `QueryId` has already been issued.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/CancelQueryResponse AWS API Documentation
    #
    class CancelQueryResponse < Struct.new(
      :cancellation_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the metadata for query results such as the column names, data
    # types, and other attributes.
    #
    # @!attribute [rw] name
    #   The name of the result set column. The name of the result set is
    #   available for columns of all data types except for arrays.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The data type of the result set column. The data type can be a
    #   scalar or complex. Scalar data types are integers, strings, doubles,
    #   Booleans, and others. Complex data types are types such as arrays,
    #   rows, and others.
    #   @return [Types::Type]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/ColumnInfo AWS API Documentation
    #
    class ColumnInfo < Struct.new(
      :name,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Unable to poll results for a cancelled query.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   Name of the scheduled query.
    #   @return [String]
    #
    # @!attribute [rw] query_string
    #   The query string to run. Parameter names can be specified in the
    #   query string `@` character followed by an identifier. The named
    #   Parameter `@scheduled_runtime` is reserved and can be used in the
    #   query to get the time at which the query is scheduled to run.
    #
    #   The timestamp calculated according to the ScheduleConfiguration
    #   parameter, will be the value of `@scheduled_runtime` paramater for
    #   each query run. For example, consider an instance of a scheduled
    #   query executing on 2021-12-01 00:00:00. For this instance, the
    #   `@scheduled_runtime` parameter is initialized to the timestamp
    #   2021-12-01 00:00:00 when invoking the query.
    #   @return [String]
    #
    # @!attribute [rw] schedule_configuration
    #   The schedule configuration for the query.
    #   @return [Types::ScheduleConfiguration]
    #
    # @!attribute [rw] notification_configuration
    #   Notification configuration for the scheduled query. A notification
    #   is sent by Timestream when a query run finishes, when the state is
    #   updated or when you delete it.
    #   @return [Types::NotificationConfiguration]
    #
    # @!attribute [rw] target_configuration
    #   Configuration used for writing the result of a query.
    #   @return [Types::TargetConfiguration]
    #
    # @!attribute [rw] client_token
    #   Using a ClientToken makes the call to CreateScheduledQuery
    #   idempotent, in other words, making the same request repeatedly will
    #   produce the same result. Making multiple identical
    #   CreateScheduledQuery requests has the same effect as making a single
    #   request.
    #
    #   * If CreateScheduledQuery is called without a `ClientToken`, the
    #     Query SDK generates a `ClientToken` on your behalf.
    #
    #   * After 8 hours, any request with the same `ClientToken` is treated
    #     as a new request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] scheduled_query_execution_role_arn
    #   The ARN for the IAM role that Timestream will assume when running
    #   the scheduled query.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of key-value pairs to label the scheduled query.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] kms_key_id
    #   The Amazon KMS key used to encrypt the scheduled query resource,
    #   at-rest. If the Amazon KMS key is not specified, the scheduled query
    #   resource will be encrypted with a Timestream owned Amazon KMS key.
    #   To specify a KMS key, use the key ID, key ARN, alias name, or alias
    #   ARN. When using an alias name, prefix the name with *alias/*
    #
    #   If ErrorReportConfiguration uses `SSE_KMS` as encryption type, the
    #   same KmsKeyId is used to encrypt the error report at rest.
    #   @return [String]
    #
    # @!attribute [rw] error_report_configuration
    #   Configuration for error reporting. Error reports will be generated
    #   when a problem is encountered when writing the query results.
    #   @return [Types::ErrorReportConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/CreateScheduledQueryRequest AWS API Documentation
    #
    class CreateScheduledQueryRequest < Struct.new(
      :name,
      :query_string,
      :schedule_configuration,
      :notification_configuration,
      :target_configuration,
      :client_token,
      :scheduled_query_execution_role_arn,
      :tags,
      :kms_key_id,
      :error_report_configuration)
      SENSITIVE = [:query_string, :client_token]
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   ARN for the created scheduled query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/CreateScheduledQueryResponse AWS API Documentation
    #
    class CreateScheduledQueryResponse < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Datum represents a single data point in a query result.
    #
    # @!attribute [rw] scalar_value
    #   Indicates if the data point is a scalar value such as integer,
    #   string, double, or Boolean.
    #   @return [String]
    #
    # @!attribute [rw] time_series_value
    #   Indicates if the data point is a timeseries data type.
    #   @return [Array<Types::TimeSeriesDataPoint>]
    #
    # @!attribute [rw] array_value
    #   Indicates if the data point is an array.
    #   @return [Array<Types::Datum>]
    #
    # @!attribute [rw] row_value
    #   Indicates if the data point is a row.
    #   @return [Types::Row]
    #
    # @!attribute [rw] null_value
    #   Indicates if the data point is null.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/Datum AWS API Documentation
    #
    class Datum < Struct.new(
      :scalar_value,
      :time_series_value,
      :array_value,
      :row_value,
      :null_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scheduled_query_arn
    #   The ARN of the scheduled query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/DeleteScheduledQueryRequest AWS API Documentation
    #
    class DeleteScheduledQueryRequest < Struct.new(
      :scheduled_query_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/DescribeEndpointsRequest AWS API Documentation
    #
    class DescribeEndpointsRequest < Aws::EmptyStructure; end

    # @!attribute [rw] endpoints
    #   An `Endpoints` object is returned when a `DescribeEndpoints` request
    #   is made.
    #   @return [Array<Types::Endpoint>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/DescribeEndpointsResponse AWS API Documentation
    #
    class DescribeEndpointsResponse < Struct.new(
      :endpoints)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scheduled_query_arn
    #   The ARN of the scheduled query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/DescribeScheduledQueryRequest AWS API Documentation
    #
    class DescribeScheduledQueryRequest < Struct.new(
      :scheduled_query_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scheduled_query
    #   The scheduled query.
    #   @return [Types::ScheduledQueryDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/DescribeScheduledQueryResponse AWS API Documentation
    #
    class DescribeScheduledQueryResponse < Struct.new(
      :scheduled_query)
      SENSITIVE = []
      include Aws::Structure
    end

    # This type is used to map column(s) from the query result to a
    # dimension in the destination table.
    #
    # @!attribute [rw] name
    #   Column name from query result.
    #   @return [String]
    #
    # @!attribute [rw] dimension_value_type
    #   Type for the dimension.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/DimensionMapping AWS API Documentation
    #
    class DimensionMapping < Struct.new(
      :name,
      :dimension_value_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an available endpoint against which to make API calls
    # against, as well as the TTL for that endpoint.
    #
    # @!attribute [rw] address
    #   An endpoint address.
    #   @return [String]
    #
    # @!attribute [rw] cache_period_in_minutes
    #   The TTL for the endpoint, in minutes.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/Endpoint AWS API Documentation
    #
    class Endpoint < Struct.new(
      :address,
      :cache_period_in_minutes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration required for error reporting.
    #
    # @!attribute [rw] s3_configuration
    #   The S3 configuration for the error reports.
    #   @return [Types::S3Configuration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/ErrorReportConfiguration AWS API Documentation
    #
    class ErrorReportConfiguration < Struct.new(
      :s3_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # This contains the location of the error report for a single scheduled
    # query call.
    #
    # @!attribute [rw] s3_report_location
    #   The S3 location where error reports are written.
    #   @return [Types::S3ReportLocation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/ErrorReportLocation AWS API Documentation
    #
    class ErrorReportLocation < Struct.new(
      :s3_report_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scheduled_query_arn
    #   ARN of the scheduled query.
    #   @return [String]
    #
    # @!attribute [rw] invocation_time
    #   The timestamp in UTC. Query will be run as if it was invoked at this
    #   timestamp.
    #   @return [Time]
    #
    # @!attribute [rw] client_token
    #   Not used.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/ExecuteScheduledQueryRequest AWS API Documentation
    #
    class ExecuteScheduledQueryRequest < Struct.new(
      :scheduled_query_arn,
      :invocation_time,
      :client_token)
      SENSITIVE = [:client_token]
      include Aws::Structure
    end

    # Statistics for a single scheduled query run.
    #
    # @!attribute [rw] execution_time_in_millis
    #   Total time, measured in milliseconds, that was needed for the
    #   scheduled query run to complete.
    #   @return [Integer]
    #
    # @!attribute [rw] data_writes
    #   Data writes metered for records ingested in a single scheduled query
    #   run.
    #   @return [Integer]
    #
    # @!attribute [rw] bytes_metered
    #   Bytes metered for a single scheduled query run.
    #   @return [Integer]
    #
    # @!attribute [rw] records_ingested
    #   The number of records ingested for a single scheduled query run.
    #   @return [Integer]
    #
    # @!attribute [rw] query_result_rows
    #   Number of rows present in the output from running a query before
    #   ingestion to destination data source.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/ExecutionStats AWS API Documentation
    #
    class ExecutionStats < Struct.new(
      :execution_time_in_millis,
      :data_writes,
      :bytes_metered,
      :records_ingested,
      :query_result_rows)
      SENSITIVE = []
      include Aws::Structure
    end

    # Timestream was unable to fully process this request because of an
    # internal server error.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested endpoint was not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/InvalidEndpointException AWS API Documentation
    #
    class InvalidEndpointException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of items to return in the output. If the total
    #   number of items available is more than the value specified, a
    #   `NextToken` is provided in the output. To resume pagination, provide
    #   the `NextToken` value as the argument to the subsequent call to
    #   `ListScheduledQueriesRequest`.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token to resume pagination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/ListScheduledQueriesRequest AWS API Documentation
    #
    class ListScheduledQueriesRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scheduled_queries
    #   A list of scheduled queries.
    #   @return [Array<Types::ScheduledQuery>]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. This is the NextToken
    #   from a previously truncated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/ListScheduledQueriesResponse AWS API Documentation
    #
    class ListScheduledQueriesResponse < Struct.new(
      :scheduled_queries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Timestream resource with tags to be listed. This value is an
    #   Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of tags to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token to resume pagination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags currently associated with the Timestream resource.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] next_token
    #   A pagination token to resume pagination with a subsequent call to
    #   `ListTagsForResourceResponse`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # MixedMeasureMappings are mappings that can be used to ingest data into
    # a mixture of narrow and multi measures in the derived table.
    #
    # @!attribute [rw] measure_name
    #   Refers to the value of measure\_name in a result row. This field is
    #   required if MeasureNameColumn is provided.
    #   @return [String]
    #
    # @!attribute [rw] source_column
    #   This field refers to the source column from which measure-value is
    #   to be read for result materialization.
    #   @return [String]
    #
    # @!attribute [rw] target_measure_name
    #   Target measure name to be used. If not provided, the target measure
    #   name by default would be measure-name if provided, or sourceColumn
    #   otherwise.
    #   @return [String]
    #
    # @!attribute [rw] measure_value_type
    #   Type of the value that is to be read from sourceColumn. If the
    #   mapping is for MULTI, use MeasureValueType.MULTI.
    #   @return [String]
    #
    # @!attribute [rw] multi_measure_attribute_mappings
    #   Required when measureValueType is MULTI. Attribute mappings for
    #   MULTI value measures.
    #   @return [Array<Types::MultiMeasureAttributeMapping>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/MixedMeasureMapping AWS API Documentation
    #
    class MixedMeasureMapping < Struct.new(
      :measure_name,
      :source_column,
      :target_measure_name,
      :measure_value_type,
      :multi_measure_attribute_mappings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Attribute mapping for MULTI value measures.
    #
    # @!attribute [rw] source_column
    #   Source column from where the attribute value is to be read.
    #   @return [String]
    #
    # @!attribute [rw] target_multi_measure_attribute_name
    #   Custom name to be used for attribute name in derived table. If not
    #   provided, source column name would be used.
    #   @return [String]
    #
    # @!attribute [rw] measure_value_type
    #   Type of the attribute to be read from the source column.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/MultiMeasureAttributeMapping AWS API Documentation
    #
    class MultiMeasureAttributeMapping < Struct.new(
      :source_column,
      :target_multi_measure_attribute_name,
      :measure_value_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Only one of MixedMeasureMappings or MultiMeasureMappings is to be
    # provided. MultiMeasureMappings can be used to ingest data as multi
    # measures in the derived table.
    #
    # @!attribute [rw] target_multi_measure_name
    #   The name of the target multi-measure name in the derived table. This
    #   input is required when measureNameColumn is not provided. If
    #   MeasureNameColumn is provided, then value from that column will be
    #   used as multi-measure name.
    #   @return [String]
    #
    # @!attribute [rw] multi_measure_attribute_mappings
    #   Required. Attribute mappings to be used for mapping query results to
    #   ingest data for multi-measure attributes.
    #   @return [Array<Types::MultiMeasureAttributeMapping>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/MultiMeasureMappings AWS API Documentation
    #
    class MultiMeasureMappings < Struct.new(
      :target_multi_measure_name,
      :multi_measure_attribute_mappings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Notification configuration for a scheduled query. A notification is
    # sent by Timestream when a scheduled query is created, its state is
    # updated or when it is deleted.
    #
    # @!attribute [rw] sns_configuration
    #   Details on SNS configuration.
    #   @return [Types::SnsConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/NotificationConfiguration AWS API Documentation
    #
    class NotificationConfiguration < Struct.new(
      :sns_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Mapping for named parameters.
    #
    # @!attribute [rw] name
    #   Parameter name.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Contains the data type of a column in a query result set. The data
    #   type can be scalar or complex. The supported scalar data types are
    #   integers, Boolean, string, double, timestamp, date, time, and
    #   intervals. The supported complex data types are arrays, rows, and
    #   timeseries.
    #   @return [Types::Type]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/ParameterMapping AWS API Documentation
    #
    class ParameterMapping < Struct.new(
      :name,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] query_string
    #   The Timestream query string that you want to use as a prepared
    #   statement. Parameter names can be specified in the query string `@`
    #   character followed by an identifier.
    #   @return [String]
    #
    # @!attribute [rw] validate_only
    #   By setting this value to `true`, Timestream will only validate that
    #   the query string is a valid Timestream query, and not store the
    #   prepared query for later use.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/PrepareQueryRequest AWS API Documentation
    #
    class PrepareQueryRequest < Struct.new(
      :query_string,
      :validate_only)
      SENSITIVE = [:query_string]
      include Aws::Structure
    end

    # @!attribute [rw] query_string
    #   The query string that you want prepare.
    #   @return [String]
    #
    # @!attribute [rw] columns
    #   A list of SELECT clause columns of the submitted query string.
    #   @return [Array<Types::SelectColumn>]
    #
    # @!attribute [rw] parameters
    #   A list of parameters used in the submitted query string.
    #   @return [Array<Types::ParameterMapping>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/PrepareQueryResponse AWS API Documentation
    #
    class PrepareQueryResponse < Struct.new(
      :query_string,
      :columns,
      :parameters)
      SENSITIVE = [:query_string]
      include Aws::Structure
    end

    # Timestream was unable to run the query successfully.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/QueryExecutionException AWS API Documentation
    #
    class QueryExecutionException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] query_string
    #   The query to be run by Timestream.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive string of up to 64 ASCII characters specified
    #   when a `Query` request is made. Providing a `ClientToken` makes the
    #   call to `Query` *idempotent*. This means that running the same query
    #   repeatedly will produce the same result. In other words, making
    #   multiple identical `Query` requests has the same effect as making a
    #   single request. When using `ClientToken` in a query, note the
    #   following:
    #
    #   * If the Query API is instantiated without a `ClientToken`, the
    #     Query SDK generates a `ClientToken` on your behalf.
    #
    #   * If the `Query` invocation only contains the `ClientToken` but does
    #     not include a `NextToken`, that invocation of `Query` is assumed
    #     to be a new query run.
    #
    #   * If the invocation contains `NextToken`, that particular invocation
    #     is assumed to be a subsequent invocation of a prior call to the
    #     Query API, and a result set is returned.
    #
    #   * After 4 hours, any request with the same `ClientToken` is treated
    #     as a new request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A pagination token used to return a set of results. When the `Query`
    #   API is invoked using `NextToken`, that particular invocation is
    #   assumed to be a subsequent invocation of a prior call to `Query`,
    #   and a result set is returned. However, if the `Query` invocation
    #   only contains the `ClientToken`, that invocation of `Query` is
    #   assumed to be a new query run.
    #
    #   Note the following when using NextToken in a query:
    #
    #   * A pagination token can be used for up to five `Query` invocations,
    #     OR for a duration of up to 1 hour – whichever comes first.
    #
    #   * Using the same `NextToken` will return the same set of records. To
    #     keep paginating through the result set, you must to use the most
    #     recent `nextToken`.
    #
    #   * Suppose a `Query` invocation returns two `NextToken` values,
    #     `TokenA` and `TokenB`. If `TokenB` is used in a subsequent `Query`
    #     invocation, then `TokenA` is invalidated and cannot be reused.
    #
    #   * To request a previous result set from a query after pagination has
    #     begun, you must re-invoke the Query API.
    #
    #   * The latest `NextToken` should be used to paginate until `null` is
    #     returned, at which point a new `NextToken` should be used.
    #
    #   * If the IAM principal of the query initiator and the result reader
    #     are not the same and/or the query initiator and the result reader
    #     do not have the same query string in the query requests, the query
    #     will fail with an `Invalid pagination token` error.
    #   @return [String]
    #
    # @!attribute [rw] max_rows
    #   The total number of rows to be returned in the `Query` output. The
    #   initial run of `Query` with a `MaxRows` value specified will return
    #   the result set of the query in two cases:
    #
    #   * The size of the result is less than `1MB`.
    #
    #   * The number of rows in the result set is less than the value of
    #     `maxRows`.
    #
    #   Otherwise, the initial invocation of `Query` only returns a
    #   `NextToken`, which can then be used in subsequent calls to fetch the
    #   result set. To resume pagination, provide the `NextToken` value in
    #   the subsequent command.
    #
    #   If the row size is large (e.g. a row has many columns), Timestream
    #   may return fewer rows to keep the response size from exceeding the 1
    #   MB limit. If `MaxRows` is not provided, Timestream will send the
    #   necessary number of rows to meet the 1 MB limit.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/QueryRequest AWS API Documentation
    #
    class QueryRequest < Struct.new(
      :query_string,
      :client_token,
      :next_token,
      :max_rows)
      SENSITIVE = [:query_string, :client_token]
      include Aws::Structure
    end

    # @!attribute [rw] query_id
    #   A unique ID for the given query.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A pagination token that can be used again on a `Query` call to get
    #   the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] rows
    #   The result set rows returned by the query.
    #   @return [Array<Types::Row>]
    #
    # @!attribute [rw] column_info
    #   The column data types of the returned result set.
    #   @return [Array<Types::ColumnInfo>]
    #
    # @!attribute [rw] query_status
    #   Information about the status of the query, including progress and
    #   bytes scanned.
    #   @return [Types::QueryStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/QueryResponse AWS API Documentation
    #
    class QueryResponse < Struct.new(
      :query_id,
      :next_token,
      :rows,
      :column_info,
      :query_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the status of the query, including progress and
    # bytes scanned.
    #
    # @!attribute [rw] progress_percentage
    #   The progress of the query, expressed as a percentage.
    #   @return [Float]
    #
    # @!attribute [rw] cumulative_bytes_scanned
    #   The amount of data scanned by the query in bytes. This is a
    #   cumulative sum and represents the total amount of bytes scanned
    #   since the query was started.
    #   @return [Integer]
    #
    # @!attribute [rw] cumulative_bytes_metered
    #   The amount of data scanned by the query in bytes that you will be
    #   charged for. This is a cumulative sum and represents the total
    #   amount of data that you will be charged for since the query was
    #   started. The charge is applied only once and is either applied when
    #   the query completes running or when the query is cancelled.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/QueryStatus AWS API Documentation
    #
    class QueryStatus < Struct.new(
      :progress_percentage,
      :cumulative_bytes_scanned,
      :cumulative_bytes_metered)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested resource could not be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] scheduled_query_arn
    #   The ARN of the scheduled query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :scheduled_query_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a single row in the query results.
    #
    # @!attribute [rw] data
    #   List of data points in a single row of the result set.
    #   @return [Array<Types::Datum>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/Row AWS API Documentation
    #
    class Row < Struct.new(
      :data)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details on S3 location for error reports that result from running a
    # query.
    #
    # @!attribute [rw] bucket_name
    #   Name of the S3 bucket under which error reports will be created.
    #   @return [String]
    #
    # @!attribute [rw] object_key_prefix
    #   Prefix for the error report key. Timestream by default adds the
    #   following prefix to the error report path.
    #   @return [String]
    #
    # @!attribute [rw] encryption_option
    #   Encryption at rest options for the error reports. If no encryption
    #   option is specified, Timestream will choose SSE\_S3 as default.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/S3Configuration AWS API Documentation
    #
    class S3Configuration < Struct.new(
      :bucket_name,
      :object_key_prefix,
      :encryption_option)
      SENSITIVE = []
      include Aws::Structure
    end

    # S3 report location for the scheduled query run.
    #
    # @!attribute [rw] bucket_name
    #   S3 bucket name.
    #   @return [String]
    #
    # @!attribute [rw] object_key
    #   S3 key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/S3ReportLocation AWS API Documentation
    #
    class S3ReportLocation < Struct.new(
      :bucket_name,
      :object_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration of the schedule of the query.
    #
    # @!attribute [rw] schedule_expression
    #   An expression that denotes when to trigger the scheduled query run.
    #   This can be a cron expression or a rate expression.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/ScheduleConfiguration AWS API Documentation
    #
    class ScheduleConfiguration < Struct.new(
      :schedule_expression)
      SENSITIVE = []
      include Aws::Structure
    end

    # Scheduled Query
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the scheduled query.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The creation time of the scheduled query.
    #   @return [Time]
    #
    # @!attribute [rw] state
    #   State of scheduled query.
    #   @return [String]
    #
    # @!attribute [rw] previous_invocation_time
    #   The last time the scheduled query was run.
    #   @return [Time]
    #
    # @!attribute [rw] next_invocation_time
    #   The next time the scheduled query is to be run.
    #   @return [Time]
    #
    # @!attribute [rw] error_report_configuration
    #   Configuration for scheduled query error reporting.
    #   @return [Types::ErrorReportConfiguration]
    #
    # @!attribute [rw] target_destination
    #   Target data source where final scheduled query result will be
    #   written.
    #   @return [Types::TargetDestination]
    #
    # @!attribute [rw] last_run_status
    #   Status of the last scheduled query run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/ScheduledQuery AWS API Documentation
    #
    class ScheduledQuery < Struct.new(
      :arn,
      :name,
      :creation_time,
      :state,
      :previous_invocation_time,
      :next_invocation_time,
      :error_report_configuration,
      :target_destination,
      :last_run_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Structure that describes scheduled query.
    #
    # @!attribute [rw] arn
    #   Scheduled query ARN.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the scheduled query.
    #   @return [String]
    #
    # @!attribute [rw] query_string
    #   The query to be run.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   Creation time of the scheduled query.
    #   @return [Time]
    #
    # @!attribute [rw] state
    #   State of the scheduled query.
    #   @return [String]
    #
    # @!attribute [rw] previous_invocation_time
    #   Last time the query was run.
    #   @return [Time]
    #
    # @!attribute [rw] next_invocation_time
    #   The next time the scheduled query is scheduled to run.
    #   @return [Time]
    #
    # @!attribute [rw] schedule_configuration
    #   Schedule configuration.
    #   @return [Types::ScheduleConfiguration]
    #
    # @!attribute [rw] notification_configuration
    #   Notification configuration.
    #   @return [Types::NotificationConfiguration]
    #
    # @!attribute [rw] target_configuration
    #   Scheduled query target store configuration.
    #   @return [Types::TargetConfiguration]
    #
    # @!attribute [rw] scheduled_query_execution_role_arn
    #   IAM role that Timestream uses to run the schedule query.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   A customer provided KMS key used to encrypt the scheduled query
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] error_report_configuration
    #   Error-reporting configuration for the scheduled query.
    #   @return [Types::ErrorReportConfiguration]
    #
    # @!attribute [rw] last_run_summary
    #   Runtime summary for the last scheduled query run.
    #   @return [Types::ScheduledQueryRunSummary]
    #
    # @!attribute [rw] recently_failed_runs
    #   Runtime summary for the last five failed scheduled query runs.
    #   @return [Array<Types::ScheduledQueryRunSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/ScheduledQueryDescription AWS API Documentation
    #
    class ScheduledQueryDescription < Struct.new(
      :arn,
      :name,
      :query_string,
      :creation_time,
      :state,
      :previous_invocation_time,
      :next_invocation_time,
      :schedule_configuration,
      :notification_configuration,
      :target_configuration,
      :scheduled_query_execution_role_arn,
      :kms_key_id,
      :error_report_configuration,
      :last_run_summary,
      :recently_failed_runs)
      SENSITIVE = [:query_string]
      include Aws::Structure
    end

    # Run summary for the scheduled query
    #
    # @!attribute [rw] invocation_time
    #   InvocationTime for this run. This is the time at which the query is
    #   scheduled to run. Parameter `@scheduled_runtime` can be used in the
    #   query to get the value.
    #   @return [Time]
    #
    # @!attribute [rw] trigger_time
    #   The actual time when the query was run.
    #   @return [Time]
    #
    # @!attribute [rw] run_status
    #   The status of a scheduled query run.
    #   @return [String]
    #
    # @!attribute [rw] execution_stats
    #   Runtime statistics for a scheduled run.
    #   @return [Types::ExecutionStats]
    #
    # @!attribute [rw] error_report_location
    #   S3 location for error report.
    #   @return [Types::ErrorReportLocation]
    #
    # @!attribute [rw] failure_reason
    #   Error message for the scheduled query in case of failure. You might
    #   have to look at the error report to get more detailed error reasons.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/ScheduledQueryRunSummary AWS API Documentation
    #
    class ScheduledQueryRunSummary < Struct.new(
      :invocation_time,
      :trigger_time,
      :run_status,
      :execution_stats,
      :error_report_location,
      :failure_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of the column that is returned by the query.
    #
    # @!attribute [rw] name
    #   Name of the column.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Contains the data type of a column in a query result set. The data
    #   type can be scalar or complex. The supported scalar data types are
    #   integers, Boolean, string, double, timestamp, date, time, and
    #   intervals. The supported complex data types are arrays, rows, and
    #   timeseries.
    #   @return [Types::Type]
    #
    # @!attribute [rw] database_name
    #   Database that has this column.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   Table within the database that has this column.
    #   @return [String]
    #
    # @!attribute [rw] aliased
    #   True, if the column name was aliased by the query. False otherwise.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/SelectColumn AWS API Documentation
    #
    class SelectColumn < Struct.new(
      :name,
      :type,
      :database_name,
      :table_name,
      :aliased)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have exceeded the service quota.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details on SNS that are required to send the notification.
    #
    # @!attribute [rw] topic_arn
    #   SNS topic ARN that the scheduled query status notifications will be
    #   sent to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/SnsConfiguration AWS API Documentation
    #
    class SnsConfiguration < Struct.new(
      :topic_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A tag is a label that you assign to a Timestream database and/or
    # table. Each tag consists of a key and an optional value, both of which
    # you define. Tags enable you to categorize databases and/or tables, for
    # example, by purpose, owner, or environment.
    #
    # @!attribute [rw] key
    #   The key of the tag. Tag keys are case sensitive.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the tag. Tag values are case sensitive and can be null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   Identifies the Timestream resource to which tags should be added.
    #   This value is an Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to be assigned to the Timestream resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Configuration used for writing the output of a query.
    #
    # @!attribute [rw] timestream_configuration
    #   Configuration needed to write data into the Timestream database and
    #   table.
    #   @return [Types::TimestreamConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/TargetConfiguration AWS API Documentation
    #
    class TargetConfiguration < Struct.new(
      :timestream_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Destination details to write data for a target data source. Current
    # supported data source is Timestream.
    #
    # @!attribute [rw] timestream_destination
    #   Query result destination details for Timestream data source.
    #   @return [Types::TimestreamDestination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/TargetDestination AWS API Documentation
    #
    class TargetDestination < Struct.new(
      :timestream_destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The timeseries data type represents the values of a measure over time.
    # A time series is an array of rows of timestamps and measure values,
    # with rows sorted in ascending order of time. A TimeSeriesDataPoint is
    # a single data point in the time series. It represents a tuple of
    # (time, measure value) in a time series.
    #
    # @!attribute [rw] time
    #   The timestamp when the measure value was collected.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The measure value for the data point.
    #   @return [Types::Datum]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/TimeSeriesDataPoint AWS API Documentation
    #
    class TimeSeriesDataPoint < Struct.new(
      :time,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration to write data into Timestream database and table. This
    # configuration allows the user to map the query result select columns
    # into the destination table columns.
    #
    # @!attribute [rw] database_name
    #   Name of Timestream database to which the query result will be
    #   written.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   Name of Timestream table that the query result will be written to.
    #   The table should be within the same database that is provided in
    #   Timestream configuration.
    #   @return [String]
    #
    # @!attribute [rw] time_column
    #   Column from query result that should be used as the time column in
    #   destination table. Column type for this should be TIMESTAMP.
    #   @return [String]
    #
    # @!attribute [rw] dimension_mappings
    #   This is to allow mapping column(s) from the query result to the
    #   dimension in the destination table.
    #   @return [Array<Types::DimensionMapping>]
    #
    # @!attribute [rw] multi_measure_mappings
    #   Multi-measure mappings.
    #   @return [Types::MultiMeasureMappings]
    #
    # @!attribute [rw] mixed_measure_mappings
    #   Specifies how to map measures to multi-measure records.
    #   @return [Array<Types::MixedMeasureMapping>]
    #
    # @!attribute [rw] measure_name_column
    #   Name of the measure column.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/TimestreamConfiguration AWS API Documentation
    #
    class TimestreamConfiguration < Struct.new(
      :database_name,
      :table_name,
      :time_column,
      :dimension_mappings,
      :multi_measure_mappings,
      :mixed_measure_mappings,
      :measure_name_column)
      SENSITIVE = []
      include Aws::Structure
    end

    # Destination for scheduled query.
    #
    # @!attribute [rw] database_name
    #   Timestream database name.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   Timestream table name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/TimestreamDestination AWS API Documentation
    #
    class TimestreamDestination < Struct.new(
      :database_name,
      :table_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the data type of a column in a query result set. The data
    # type can be scalar or complex. The supported scalar data types are
    # integers, Boolean, string, double, timestamp, date, time, and
    # intervals. The supported complex data types are arrays, rows, and
    # timeseries.
    #
    # @!attribute [rw] scalar_type
    #   Indicates if the column is of type string, integer, Boolean, double,
    #   timestamp, date, time.
    #   @return [String]
    #
    # @!attribute [rw] array_column_info
    #   Indicates if the column is an array.
    #   @return [Types::ColumnInfo]
    #
    # @!attribute [rw] time_series_measure_value_column_info
    #   Indicates if the column is a timeseries data type.
    #   @return [Types::ColumnInfo]
    #
    # @!attribute [rw] row_column_info
    #   Indicates if the column is a row.
    #   @return [Array<Types::ColumnInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/Type AWS API Documentation
    #
    class Type < Struct.new(
      :scalar_type,
      :array_column_info,
      :time_series_measure_value_column_info,
      :row_column_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Timestream resource that the tags will be removed from. This
    #   value is an Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of tags keys. Existing tags of the resource whose keys are
    #   members of this list will be removed from the Timestream resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] scheduled_query_arn
    #   ARN of the scheuled query.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   State of the scheduled query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/UpdateScheduledQueryRequest AWS API Documentation
    #
    class UpdateScheduledQueryRequest < Struct.new(
      :scheduled_query_arn,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Invalid or malformed request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
