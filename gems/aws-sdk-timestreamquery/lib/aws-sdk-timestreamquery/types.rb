# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
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

    # @note When making an API call, you may pass CancelQueryRequest
    #   data as a hash:
    #
    #       {
    #         query_id: "QueryId", # required
    #       }
    #
    # @!attribute [rw] query_id
    #   The id of the query that needs to be cancelled. `QueryID` is
    #   returned as part of QueryResult.
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

    # Contains the meta data for query results such as the column names,
    # data types, and other attributes.
    #
    # @!attribute [rw] name
    #   The name of the result set column. The name of the result set is
    #   available for columns of all data types except for arrays.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The data type of the result set column. The data type can be a
    #   scalar or complex. Scalar data types are integers, strings, doubles,
    #   booleans, and others. Complex data types are types such as arrays,
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

    # Datum represents a single data point in a query result.
    #
    # @!attribute [rw] scalar_value
    #   Indicates if the data point is a scalar value such as integer,
    #   string, double, or boolean.
    #   @return [String]
    #
    # @!attribute [rw] time_series_value
    #   Indicates if the data point is of timeseries data type.
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

    # Represents an available endpoint against which to make API calls
    # agaisnt, as well as the TTL for that endpoint.
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

    # The requested endpoint was invalid.
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

    # @note When making an API call, you may pass QueryRequest
    #   data as a hash:
    #
    #       {
    #         query_string: "QueryString", # required
    #         client_token: "ClientRequestToken",
    #         next_token: "String",
    #         max_rows: 1,
    #       }
    #
    # @!attribute [rw] query_string
    #   The query to be executed by Timestream.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive string of up to 64 ASCII characters that you
    #   specify when you make a Query request. Providing a `ClientToken`
    #   makes the call to `Query` idempotent, meaning that multiple
    #   identical calls have the same effect as one single call.
    #
    #   Your query request will fail in the following cases:
    #
    #   * If you submit a request with the same client token outside the
    #     5-minute idepotency window.
    #
    #   * If you submit a request with the same client token but a change in
    #     other parameters within the 5-minute idempotency window.
    #
    #   After 4 hours, any request with the same client token is treated as
    #   a new request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A pagination token passed to get a set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_rows
    #   The total number of rows to return in the output. If the total
    #   number of rows available is more than the value specified, a
    #   NextToken is provided in the command's output. To resume
    #   pagination, provide the NextToken value in the starting-token
    #   argument of a subsequent command.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/timestream-query-2018-11-01/QueryResponse AWS API Documentation
    #
    class QueryResponse < Struct.new(
      :query_id,
      :next_token,
      :rows,
      :column_info)
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

    # The timeseries datatype represents the values of a measure over time.
    # A time series is an array of rows of timestamps and measure values,
    # with rows sorted in ascending order of time. A TimeSeriesDataPoint is
    # a single data point in the timeseries. It represents a tuple of (time,
    # measure value) in a timeseries.
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

    # Contains the data type of a column in a query result set. The data
    # type can be scalar or complex. The supported scalar data types are
    # integers, boolean, string, double, timestamp, date, time, and
    # intervals. The supported complex data types are arrays, rows, and
    # timeseries.
    #
    # @!attribute [rw] scalar_type
    #   Indicates if the column is of type string, integer, boolean, double,
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
