# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::PI
  module Types

    # A timestamp, and a single numerical value, which together represent a
    # measurement at a particular point in time.
    #
    # @!attribute [rw] timestamp
    #   The time, in epoch format, associated with a particular `Value`.
    #   @return [Time]
    #
    # @!attribute [rw] value
    #   The actual value associated with a particular `Timestamp`.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pi-2018-02-27/DataPoint AWS API Documentation
    #
    class DataPoint < Struct.new(
      :timestamp,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDimensionKeysRequest
    #   data as a hash:
    #
    #       {
    #         service_type: "RDS", # required, accepts RDS
    #         identifier: "RequestString", # required
    #         start_time: Time.now, # required
    #         end_time: Time.now, # required
    #         metric: "RequestString", # required
    #         period_in_seconds: 1,
    #         group_by: { # required
    #           group: "RequestString", # required
    #           dimensions: ["RequestString"],
    #           limit: 1,
    #         },
    #         partition_by: {
    #           group: "RequestString", # required
    #           dimensions: ["RequestString"],
    #           limit: 1,
    #         },
    #         filter: {
    #           "RequestString" => "RequestString",
    #         },
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] service_type
    #   The AWS service for which Performance Insights will return metrics.
    #   The only valid value for *ServiceType* is `RDS`.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   An immutable, AWS Region-unique identifier for a data source.
    #   Performance Insights gathers metrics from this data source.
    #
    #   To use an Amazon RDS instance as a data source, you specify its
    #   `DbiResourceId` value. For example, specify
    #   `db-FAIHNTYBKTGAUSUZQYPDS2GW4A`
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The date and time specifying the beginning of the requested time
    #   series data. You must specify a `StartTime` within the past 7 days.
    #   The value specified is *inclusive*, which means that data points
    #   equal to or greater than `StartTime` are returned.
    #
    #   The value for `StartTime` must be earlier than the value for
    #   `EndTime`.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The date and time specifying the end of the requested time series
    #   data. The value specified is *exclusive*, which means that data
    #   points less than (but not equal to) `EndTime` are returned.
    #
    #   The value for `EndTime` must be later than the value for
    #   `StartTime`.
    #   @return [Time]
    #
    # @!attribute [rw] metric
    #   The name of a Performance Insights metric to be measured.
    #
    #   Valid values for `Metric` are:
    #
    #   * `db.load.avg` - a scaled representation of the number of active
    #     sessions for the database engine.
    #
    #   * `db.sampledload.avg` - the raw number of active sessions for the
    #     database engine.
    #
    #   If the number of active sessions is less than an internal
    #   Performance Insights threshold, `db.load.avg` and
    #   `db.sampledload.avg` are the same value. If the number of active
    #   sessions is greater than the internal threshold, Performance
    #   Insights samples the active sessions, with `db.load.avg` showing the
    #   scaled values, `db.sampledload.avg` showing the raw values, and
    #   `db.sampledload.avg` less than `db.load.avg`. For most use cases,
    #   you can query `db.load.avg` only.
    #   @return [String]
    #
    # @!attribute [rw] period_in_seconds
    #   The granularity, in seconds, of the data points returned from
    #   Performance Insights. A period can be as short as one second, or as
    #   long as one day (86400 seconds). Valid values are:
    #
    #   * `1` (one second)
    #
    #   * `60` (one minute)
    #
    #   * `300` (five minutes)
    #
    #   * `3600` (one hour)
    #
    #   * `86400` (twenty-four hours)
    #
    #   If you don't specify `PeriodInSeconds`, then Performance Insights
    #   chooses a value for you, with a goal of returning roughly 100-200
    #   data points in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] group_by
    #   A specification for how to aggregate the data points from a query
    #   result. You must specify a valid dimension group. Performance
    #   Insights returns all dimensions within this group, unless you
    #   provide the names of specific dimensions within this group. You can
    #   also request that Performance Insights return a limited number of
    #   values for a dimension.
    #   @return [Types::DimensionGroup]
    #
    # @!attribute [rw] partition_by
    #   For each dimension specified in `GroupBy`, specify a secondary
    #   dimension to further subdivide the partition keys in the response.
    #   @return [Types::DimensionGroup]
    #
    # @!attribute [rw] filter
    #   One or more filters to apply in the request. Restrictions:
    #
    #   * Any number of filters by the same dimension, as specified in the
    #     `GroupBy` or `Partition` parameters.
    #
    #   * A single filter for any other dimension in this dimension group.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return in the response. If more items
    #   exist than the specified `MaxRecords` value, a pagination token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the token, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pi-2018-02-27/DescribeDimensionKeysRequest AWS API Documentation
    #
    class DescribeDimensionKeysRequest < Struct.new(
      :service_type,
      :identifier,
      :start_time,
      :end_time,
      :metric,
      :period_in_seconds,
      :group_by,
      :partition_by,
      :filter,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aligned_start_time
    #   The start time for the returned dimension keys, after alignment to a
    #   granular boundary (as specified by `PeriodInSeconds`).
    #   `AlignedStartTime` will be less than or equal to the value of the
    #   user-specified `StartTime`.
    #   @return [Time]
    #
    # @!attribute [rw] aligned_end_time
    #   The end time for the returned dimension keys, after alignment to a
    #   granular boundary (as specified by `PeriodInSeconds`).
    #   `AlignedEndTime` will be greater than or equal to the value of the
    #   user-specified `Endtime`.
    #   @return [Time]
    #
    # @!attribute [rw] partition_keys
    #   If `PartitionBy` was present in the request, `PartitionKeys`
    #   contains the breakdown of dimension keys by the specified
    #   partitions.
    #   @return [Array<Types::ResponsePartitionKey>]
    #
    # @!attribute [rw] keys
    #   The dimension keys that were requested.
    #   @return [Array<Types::DimensionKeyDescription>]
    #
    # @!attribute [rw] next_token
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the token, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pi-2018-02-27/DescribeDimensionKeysResponse AWS API Documentation
    #
    class DescribeDimensionKeysResponse < Struct.new(
      :aligned_start_time,
      :aligned_end_time,
      :partition_keys,
      :keys,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A logical grouping of Performance Insights metrics for a related
    # subject area. For example, the `db.sql` dimension group consists of
    # the following dimensions: `db.sql.id`, `db.sql.db_id`,
    # `db.sql.statement`, and `db.sql.tokenized_id`.
    #
    # <note markdown="1"> Each response element returns a maximum of 500 bytes. For larger
    # elements, such as SQL statements, only the first 500 bytes are
    # returned.
    #
    #  </note>
    #
    # @note When making an API call, you may pass DimensionGroup
    #   data as a hash:
    #
    #       {
    #         group: "RequestString", # required
    #         dimensions: ["RequestString"],
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] group
    #   The name of the dimension group. Valid values are:
    #
    #   * `db` - The name of the database to which the client is connected
    #     (only Aurora PostgreSQL, RDS PostgreSQL, Aurora MySQL, RDS MySQL,
    #     and MariaDB)
    #
    #   * `db.application` - The name of the application that is connected
    #     to the database (only Aurora PostgreSQL and RDS PostgreSQL)
    #
    #   * `db.host` - The host name of the connected client (all engines)
    #
    #   * `db.session_type` - The type of the current session (only Aurora
    #     PostgreSQL and RDS PostgreSQL)
    #
    #   * `db.sql` - The SQL that is currently executing (all engines)
    #
    #   * `db.sql_tokenized` - The SQL digest (all engines)
    #
    #   * `db.wait_event` - The event for which the database backend is
    #     waiting (all engines)
    #
    #   * `db.wait_event_type` - The type of event for which the database
    #     backend is waiting (all engines)
    #
    #   * `db.user` - The user logged in to the database (all engines)
    #   @return [String]
    #
    # @!attribute [rw] dimensions
    #   A list of specific dimensions from a dimension group. If this
    #   parameter is not present, then it signifies that all of the
    #   dimensions in the group were requested, or are present in the
    #   response.
    #
    #   Valid values for elements in the `Dimensions` array are:
    #
    #   * `db.application.name` - The name of the application that is
    #     connected to the database (only Aurora PostgreSQL and RDS
    #     PostgreSQL)
    #
    #   * `db.host.id` - The host ID of the connected client (all engines)
    #
    #   * `db.host.name` - The host name of the connected client (all
    #     engines)
    #
    #   * `db.name` - The name of the database to which the client is
    #     connected (only Aurora PostgreSQL, RDS PostgreSQL, Aurora MySQL,
    #     RDS MySQL, and MariaDB)
    #
    #   * `db.session_type.name` - The type of the current session (only
    #     Aurora PostgreSQL and RDS PostgreSQL)
    #
    #   * `db.sql.id` - The SQL ID generated by Performance Insights (all
    #     engines)
    #
    #   * `db.sql.db_id` - The SQL ID generated by the database (all
    #     engines)
    #
    #   * `db.sql.statement` - The SQL text that is being executed (all
    #     engines)
    #
    #   * `db.sql.tokenized_id`
    #
    #   * `db.sql_tokenized.id` - The SQL digest ID generated by Performance
    #     Insights (all engines)
    #
    #   * `db.sql_tokenized.db_id` - SQL digest ID generated by the database
    #     (all engines)
    #
    #   * `db.sql_tokenized.statement` - The SQL digest text (all engines)
    #
    #   * `db.user.id` - The ID of the user logged in to the database (all
    #     engines)
    #
    #   * `db.user.name` - The name of the user logged in to the database
    #     (all engines)
    #
    #   * `db.wait_event.name` - The event for which the backend is waiting
    #     (all engines)
    #
    #   * `db.wait_event.type` - The type of event for which the backend is
    #     waiting (all engines)
    #
    #   * `db.wait_event_type.name` - The name of the event type for which
    #     the backend is waiting (all engines)
    #   @return [Array<String>]
    #
    # @!attribute [rw] limit
    #   The maximum number of items to fetch for this dimension group.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pi-2018-02-27/DimensionGroup AWS API Documentation
    #
    class DimensionGroup < Struct.new(
      :group,
      :dimensions,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # An array of descriptions and aggregated values for each dimension
    # within a dimension group.
    #
    # @!attribute [rw] dimensions
    #   A map of name-value pairs for the dimensions in the group.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] total
    #   The aggregated metric value for the dimension(s), over the requested
    #   time range.
    #   @return [Float]
    #
    # @!attribute [rw] partitions
    #   If `PartitionBy` was specified, `PartitionKeys` contains the
    #   dimensions that were.
    #   @return [Array<Float>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pi-2018-02-27/DimensionKeyDescription AWS API Documentation
    #
    class DimensionKeyDescription < Struct.new(
      :dimensions,
      :total,
      :partitions)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that describes the details for a specified dimension.
    #
    # @!attribute [rw] value
    #   The value of the dimension detail data. For the `db.sql.statement`
    #   dimension, this value is either the full or truncated SQL query,
    #   depending on the return status.
    #   @return [String]
    #
    # @!attribute [rw] dimension
    #   The full name of the dimension. The full name includes the group
    #   name and key name. The only valid value is `db.sql.statement`.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the dimension detail data. Possible values include the
    #   following:
    #
    #   * `AVAILABLE` - The dimension detail data is ready to be retrieved.
    #
    #   * `PROCESSING` - The dimension detail data isn't ready to be
    #     retrieved because more processing time is required. If the
    #     requested detail data for `db.sql.statement` has the status
    #     `PROCESSING`, Performance Insights returns the truncated query.
    #
    #   * `UNAVAILABLE` - The dimension detail data could not be collected
    #     successfully.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pi-2018-02-27/DimensionKeyDetail AWS API Documentation
    #
    class DimensionKeyDetail < Struct.new(
      :value,
      :dimension,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDimensionKeyDetailsRequest
    #   data as a hash:
    #
    #       {
    #         service_type: "RDS", # required, accepts RDS
    #         identifier: "IdentifierString", # required
    #         group: "RequestString", # required
    #         group_identifier: "RequestString", # required
    #         requested_dimensions: ["RequestString"],
    #       }
    #
    # @!attribute [rw] service_type
    #   The AWS service for which Performance Insights returns data. The
    #   only valid value is `RDS`.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The ID for a data source from which to gather dimension data. This
    #   ID must be immutable and unique within an AWS Region. When a DB
    #   instance is the data source, specify its `DbiResourceId` value. For
    #   example, specify `db-ABCDEFGHIJKLMNOPQRSTU1VW2X`.
    #   @return [String]
    #
    # @!attribute [rw] group
    #   The name of the dimension group. The only valid value is `db.sql`.
    #   Performance Insights searches the specified group for the dimension
    #   group ID.
    #   @return [String]
    #
    # @!attribute [rw] group_identifier
    #   The ID of the dimension group from which to retrieve dimension
    #   details. For dimension group `db.sql`, the group ID is `db.sql.id`.
    #   @return [String]
    #
    # @!attribute [rw] requested_dimensions
    #   A list of dimensions to retrieve the detail data for within the
    #   given dimension group. For the dimension group `db.sql`, specify
    #   either the full dimension name `db.sql.statement` or the short
    #   dimension name `statement`. If you don't specify this parameter,
    #   Performance Insights returns all dimension data within the specified
    #   dimension group.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pi-2018-02-27/GetDimensionKeyDetailsRequest AWS API Documentation
    #
    class GetDimensionKeyDetailsRequest < Struct.new(
      :service_type,
      :identifier,
      :group,
      :group_identifier,
      :requested_dimensions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dimensions
    #   The details for the requested dimensions.
    #   @return [Array<Types::DimensionKeyDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pi-2018-02-27/GetDimensionKeyDetailsResponse AWS API Documentation
    #
    class GetDimensionKeyDetailsResponse < Struct.new(
      :dimensions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetResourceMetricsRequest
    #   data as a hash:
    #
    #       {
    #         service_type: "RDS", # required, accepts RDS
    #         identifier: "RequestString", # required
    #         metric_queries: [ # required
    #           {
    #             metric: "RequestString", # required
    #             group_by: {
    #               group: "RequestString", # required
    #               dimensions: ["RequestString"],
    #               limit: 1,
    #             },
    #             filter: {
    #               "RequestString" => "RequestString",
    #             },
    #           },
    #         ],
    #         start_time: Time.now, # required
    #         end_time: Time.now, # required
    #         period_in_seconds: 1,
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] service_type
    #   The AWS service for which Performance Insights returns metrics. The
    #   only valid value for *ServiceType* is `RDS`.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   An immutable, AWS Region-unique identifier for a data source.
    #   Performance Insights gathers metrics from this data source.
    #
    #   To use a DB instance as a data source, specify its `DbiResourceId`
    #   value. For example, specify `db-FAIHNTYBKTGAUSUZQYPDS2GW4A`.
    #   @return [String]
    #
    # @!attribute [rw] metric_queries
    #   An array of one or more queries to perform. Each query must specify
    #   a Performance Insights metric, and can optionally specify
    #   aggregation and filtering criteria.
    #   @return [Array<Types::MetricQuery>]
    #
    # @!attribute [rw] start_time
    #   The date and time specifying the beginning of the requested time
    #   series data. You can't specify a `StartTime` that's earlier than 7
    #   days ago. The value specified is *inclusive* - data points equal to
    #   or greater than `StartTime` will be returned.
    #
    #   The value for `StartTime` must be earlier than the value for
    #   `EndTime`.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The date and time specifying the end of the requested time series
    #   data. The value specified is *exclusive* - data points less than
    #   (but not equal to) `EndTime` will be returned.
    #
    #   The value for `EndTime` must be later than the value for
    #   `StartTime`.
    #   @return [Time]
    #
    # @!attribute [rw] period_in_seconds
    #   The granularity, in seconds, of the data points returned from
    #   Performance Insights. A period can be as short as one second, or as
    #   long as one day (86400 seconds). Valid values are:
    #
    #   * `1` (one second)
    #
    #   * `60` (one minute)
    #
    #   * `300` (five minutes)
    #
    #   * `3600` (one hour)
    #
    #   * `86400` (twenty-four hours)
    #
    #   If you don't specify `PeriodInSeconds`, then Performance Insights
    #   will choose a value for you, with a goal of returning roughly
    #   100-200 data points in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return in the response. If more items
    #   exist than the specified `MaxRecords` value, a pagination token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the token, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pi-2018-02-27/GetResourceMetricsRequest AWS API Documentation
    #
    class GetResourceMetricsRequest < Struct.new(
      :service_type,
      :identifier,
      :metric_queries,
      :start_time,
      :end_time,
      :period_in_seconds,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aligned_start_time
    #   The start time for the returned metrics, after alignment to a
    #   granular boundary (as specified by `PeriodInSeconds`).
    #   `AlignedStartTime` will be less than or equal to the value of the
    #   user-specified `StartTime`.
    #   @return [Time]
    #
    # @!attribute [rw] aligned_end_time
    #   The end time for the returned metrics, after alignment to a granular
    #   boundary (as specified by `PeriodInSeconds`). `AlignedEndTime` will
    #   be greater than or equal to the value of the user-specified
    #   `Endtime`.
    #   @return [Time]
    #
    # @!attribute [rw] identifier
    #   An immutable, AWS Region-unique identifier for a data source.
    #   Performance Insights gathers metrics from this data source.
    #
    #   To use a DB instance as a data source, you specify its
    #   `DbiResourceId` value - for example: `db-FAIHNTYBKTGAUSUZQYPDS2GW4A`
    #   @return [String]
    #
    # @!attribute [rw] metric_list
    #   An array of metric results,, where each array element contains all
    #   of the data points for a particular dimension.
    #   @return [Array<Types::MetricKeyDataPoints>]
    #
    # @!attribute [rw] next_token
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the token, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pi-2018-02-27/GetResourceMetricsResponse AWS API Documentation
    #
    class GetResourceMetricsResponse < Struct.new(
      :aligned_start_time,
      :aligned_end_time,
      :identifier,
      :metric_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request failed due to an unknown error.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pi-2018-02-27/InternalServiceError AWS API Documentation
    #
    class InternalServiceError < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # One of the arguments provided is invalid for this request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pi-2018-02-27/InvalidArgumentException AWS API Documentation
    #
    class InvalidArgumentException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A time-ordered series of data points, corresponding to a dimension of
    # a Performance Insights metric.
    #
    # @!attribute [rw] key
    #   The dimension(s) to which the data points apply.
    #   @return [Types::ResponseResourceMetricKey]
    #
    # @!attribute [rw] data_points
    #   An array of timestamp-value pairs, representing measurements over a
    #   period of time.
    #   @return [Array<Types::DataPoint>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pi-2018-02-27/MetricKeyDataPoints AWS API Documentation
    #
    class MetricKeyDataPoints < Struct.new(
      :key,
      :data_points)
      SENSITIVE = []
      include Aws::Structure
    end

    # A single query to be processed. You must provide the metric to query.
    # If no other parameters are specified, Performance Insights returns all
    # of the data points for that metric. You can optionally request that
    # the data points be aggregated by dimension group ( `GroupBy`), and
    # return only those data points that match your criteria (`Filter`).
    #
    # @note When making an API call, you may pass MetricQuery
    #   data as a hash:
    #
    #       {
    #         metric: "RequestString", # required
    #         group_by: {
    #           group: "RequestString", # required
    #           dimensions: ["RequestString"],
    #           limit: 1,
    #         },
    #         filter: {
    #           "RequestString" => "RequestString",
    #         },
    #       }
    #
    # @!attribute [rw] metric
    #   The name of a Performance Insights metric to be measured.
    #
    #   Valid values for `Metric` are:
    #
    #   * `db.load.avg` - a scaled representation of the number of active
    #     sessions for the database engine.
    #
    #   * `db.sampledload.avg` - the raw number of active sessions for the
    #     database engine.
    #
    #   If the number of active sessions is less than an internal
    #   Performance Insights threshold, `db.load.avg` and
    #   `db.sampledload.avg` are the same value. If the number of active
    #   sessions is greater than the internal threshold, Performance
    #   Insights samples the active sessions, with `db.load.avg` showing the
    #   scaled values, `db.sampledload.avg` showing the raw values, and
    #   `db.sampledload.avg` less than `db.load.avg`. For most use cases,
    #   you can query `db.load.avg` only.
    #   @return [String]
    #
    # @!attribute [rw] group_by
    #   A specification for how to aggregate the data points from a query
    #   result. You must specify a valid dimension group. Performance
    #   Insights will return all of the dimensions within that group, unless
    #   you provide the names of specific dimensions within that group. You
    #   can also request that Performance Insights return a limited number
    #   of values for a dimension.
    #   @return [Types::DimensionGroup]
    #
    # @!attribute [rw] filter
    #   One or more filters to apply in the request. Restrictions:
    #
    #   * Any number of filters by the same dimension, as specified in the
    #     `GroupBy` parameter.
    #
    #   * A single filter for any other dimension in this dimension group.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pi-2018-02-27/MetricQuery AWS API Documentation
    #
    class MetricQuery < Struct.new(
      :metric,
      :group_by,
      :filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # The user is not authorized to perform this request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pi-2018-02-27/NotAuthorizedException AWS API Documentation
    #
    class NotAuthorizedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # If `PartitionBy` was specified in a `DescribeDimensionKeys` request,
    # the dimensions are returned in an array. Each element in the array
    # specifies one dimension.
    #
    # @!attribute [rw] dimensions
    #   A dimension map that contains the dimension(s) for this partition.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pi-2018-02-27/ResponsePartitionKey AWS API Documentation
    #
    class ResponsePartitionKey < Struct.new(
      :dimensions)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object describing a Performance Insights metric and one or more
    # dimensions for that metric.
    #
    # @!attribute [rw] metric
    #   The name of a Performance Insights metric to be measured.
    #
    #   Valid values for `Metric` are:
    #
    #   * `db.load.avg` - a scaled representation of the number of active
    #     sessions for the database engine.
    #
    #   * `db.sampledload.avg` - the raw number of active sessions for the
    #     database engine.
    #
    #   If the number of active sessions is less than an internal
    #   Performance Insights threshold, `db.load.avg` and
    #   `db.sampledload.avg` are the same value. If the number of active
    #   sessions is greater than the internal threshold, Performance
    #   Insights samples the active sessions, with `db.load.avg` showing the
    #   scaled values, `db.sampledload.avg` showing the raw values, and
    #   `db.sampledload.avg` less than `db.load.avg`. For most use cases,
    #   you can query `db.load.avg` only.
    #   @return [String]
    #
    # @!attribute [rw] dimensions
    #   The valid dimensions for the metric.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pi-2018-02-27/ResponseResourceMetricKey AWS API Documentation
    #
    class ResponseResourceMetricKey < Struct.new(
      :metric,
      :dimensions)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
