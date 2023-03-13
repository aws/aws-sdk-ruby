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

    # @!attribute [rw] service_type
    #   The Amazon Web Services service for which Performance Insights will
    #   return metrics. Valid values are as follows:
    #
    #   * `RDS`
    #
    #   * `DOCDB`
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   An immutable, Amazon Web Services Region-unique identifier for a
    #   data source. Performance Insights gathers metrics from this data
    #   source.
    #
    #   To use an Amazon RDS instance as a data source, you specify its
    #   `DbiResourceId` value. For example, specify
    #   `db-FAIHNTYBKTGAUSUZQYPDS2GW4A`.
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
    #   * `db.load.avg` - A scaled representation of the number of active
    #     sessions for the database engine.
    #
    #   * `db.sampledload.avg` - The raw number of active sessions for the
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
    # @!attribute [rw] additional_metrics
    #   Additional metrics for the top `N` dimension keys. If the specified
    #   dimension group in the `GroupBy` parameter is `db.sql_tokenized`,
    #   you can specify per-SQL metrics to get the values for the top `N`
    #   SQL digests. The response syntax is as follows: `"AdditionalMetrics"
    #   \: \{ "string" : "string" \}`.
    #   @return [Array<String>]
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
      :additional_metrics,
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
    #   A pagination token that indicates the response didn’t return all
    #   available records because `MaxRecords` was specified in the previous
    #   request. To get the remaining records, specify `NextToken` in a
    #   separate request with this value.
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

    # The information about a dimension.
    #
    # @!attribute [rw] identifier
    #   The identifier of a dimension.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pi-2018-02-27/DimensionDetail AWS API Documentation
    #
    class DimensionDetail < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # A logical grouping of Performance Insights metrics for a related
    # subject area. For example, the `db.sql` dimension group consists of
    # the following dimensions:
    #
    # * `db.sql.id` - The hash of a running SQL statement, generated by
    #   Performance Insights.
    #
    # * `db.sql.db_id` - Either the SQL ID generated by the database engine,
    #   or a value generated by Performance Insights that begins with `pi-`.
    #
    # * `db.sql.statement` - The full text of the SQL statement that is
    #   running, for example, `SELECT * FROM employees`.
    #
    # * `db.sql_tokenized.id` - The hash of the SQL digest generated by
    #   Performance Insights.
    #
    # <note markdown="1"> Each response element returns a maximum of 500 bytes. For larger
    # elements, such as SQL statements, only the first 500 bytes are
    # returned.
    #
    #  </note>
    #
    # @!attribute [rw] group
    #   The name of the dimension group. Valid values are as follows:
    #
    #   * `db` - The name of the database to which the client is connected.
    #     The following values are permitted:
    #
    #     * Aurora PostgreSQL
    #
    #     * Amazon RDS PostgreSQL
    #
    #     * Aurora MySQL
    #
    #     * Amazon RDS MySQL
    #
    #     * Amazon RDS MariaDB
    #
    #     * Amazon DocumentDB
    #
    #   * `db.application` - The name of the application that is connected
    #     to the database. The following values are permitted:
    #
    #     * Aurora PostgreSQL
    #
    #     * Amazon RDS PostgreSQL
    #
    #     * Amazon DocumentDB
    #
    #   * `db.host` - The host name of the connected client (all engines).
    #
    #   * `db.query` - The query that is currently running (only Amazon
    #     DocumentDB).
    #
    #   * `db.query_tokenized` - The digest query (only Amazon DocumentDB).
    #
    #   * `db.session_type` - The type of the current session (only Aurora
    #     PostgreSQL and RDS PostgreSQL).
    #
    #   * `db.sql` - The text of the SQL statement that is currently running
    #     (all engines except Amazon DocumentDB).
    #
    #   * `db.sql_tokenized` - The SQL digest (all engines except Amazon
    #     DocumentDB).
    #
    #   * `db.user` - The user logged in to the database (all engines except
    #     Amazon DocumentDB).
    #
    #   * `db.wait_event` - The event for which the database backend is
    #     waiting (all engines except Amazon DocumentDB).
    #
    #   * `db.wait_event_type` - The type of event for which the database
    #     backend is waiting (all engines except Amazon DocumentDB).
    #
    #   * `db.wait_state` - The event for which the database backend is
    #     waiting (only Amazon DocumentDB).
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
    #     connected to the database. Valid values are as follows:
    #
    #     * Aurora PostgreSQL
    #
    #     * Amazon RDS PostgreSQL
    #
    #     * Amazon DocumentDB
    #
    #   * `db.host.id` - The host ID of the connected client (all engines).
    #
    #   * `db.host.name` - The host name of the connected client (all
    #     engines).
    #
    #   * `db.name` - The name of the database to which the client is
    #     connected. Valid values are as follows:
    #
    #     * Aurora PostgreSQL
    #
    #     * Amazon RDS PostgreSQL
    #
    #     * Aurora MySQL
    #
    #     * Amazon RDS MySQL
    #
    #     * Amazon RDS MariaDB
    #
    #     * Amazon DocumentDB
    #
    #   * `db.query.id` - The query ID generated by Performance Insights
    #     (only Amazon DocumentDB).
    #
    #   * `db.query.db_id` - The query ID generated by the database (only
    #     Amazon DocumentDB).
    #
    #   * `db.query.statement` - The text of the query that is being run
    #     (only Amazon DocumentDB).
    #
    #   * `db.query.tokenized_id`
    #
    #   * `db.query.tokenized.id` - The query digest ID generated by
    #     Performance Insights (only Amazon DocumentDB).
    #
    #   * `db.query.tokenized.db_id` - The query digest ID generated by
    #     Performance Insights (only Amazon DocumentDB).
    #
    #   * `db.query.tokenized.statement` - The text of the query digest
    #     (only Amazon DocumentDB).
    #
    #   * `db.session_type.name` - The type of the current session (only
    #     Amazon DocumentDB).
    #
    #   * `db.sql.id` - The hash of the full, non-tokenized SQL statement
    #     generated by Performance Insights (all engines except Amazon
    #     DocumentDB).
    #
    #   * `db.sql.db_id` - Either the SQL ID generated by the database
    #     engine, or a value generated by Performance Insights that begins
    #     with `pi-` (all engines except Amazon DocumentDB).
    #
    #   * `db.sql.statement` - The full text of the SQL statement that is
    #     running, as in `SELECT * FROM employees` (all engines except
    #     Amazon DocumentDB)
    #
    #   * `db.sql.tokenized_id`
    #
    #   * `db.sql_tokenized.id` - The hash of the SQL digest generated by
    #     Performance Insights (all engines except Amazon DocumentDB). In
    #     the console, `db.sql_tokenized.id` is called the Support ID
    #     because Amazon Web Services Support can look at this data to help
    #     you troubleshoot database issues.
    #
    #   * `db.sql_tokenized.db_id` - Either the native database ID used to
    #     refer to the SQL statement, or a synthetic ID such as
    #     `pi-2372568224` that Performance Insights generates if the native
    #     database ID isn't available (all engines except Amazon
    #     DocumentDB).
    #
    #   * `db.sql_tokenized.statement` - The text of the SQL digest, as in
    #     `SELECT * FROM employees WHERE employee_id = ?` (all engines
    #     except Amazon DocumentDB)
    #
    #   * `db.user.id` - The ID of the user logged in to the database (all
    #     engines except Amazon DocumentDB).
    #
    #   * `db.user.name` - The name of the user logged in to the database
    #     (all engines except Amazon DocumentDB).
    #
    #   * `db.wait_event.name` - The event for which the backend is waiting
    #     (all engines except Amazon DocumentDB).
    #
    #   * `db.wait_event.type` - The type of event for which the backend is
    #     waiting (all engines except Amazon DocumentDB).
    #
    #   * `db.wait_event_type.name` - The name of the event type for which
    #     the backend is waiting (all engines except Amazon DocumentDB).
    #
    #   * `db.wait_state.name` - The event for which the backend is waiting
    #     (only Amazon DocumentDB).
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

    # Information about dimensions within a dimension group.
    #
    # @!attribute [rw] group
    #   The name of the dimension group.
    #   @return [String]
    #
    # @!attribute [rw] dimensions
    #   The dimensions within a dimension group.
    #   @return [Array<Types::DimensionDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pi-2018-02-27/DimensionGroupDetail AWS API Documentation
    #
    class DimensionGroupDetail < Struct.new(
      :group,
      :dimensions)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that includes the requested dimension key values and
    # aggregated metric values within a dimension group.
    #
    # @!attribute [rw] dimensions
    #   A map of name-value pairs for the dimensions in the group.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] total
    #   The aggregated metric value for the dimensions, over the requested
    #   time range.
    #   @return [Float]
    #
    # @!attribute [rw] additional_metrics
    #   A map that contains the value for each additional metric.
    #   @return [Hash<String,Float>]
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
      :additional_metrics,
      :partitions)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that describes the details for a specified dimension.
    #
    # @!attribute [rw] value
    #   The value of the dimension detail data. Depending on the return
    #   status, this value is either the full or truncated SQL query for the
    #   following dimensions:
    #
    #   * `db.query.statement` (Amazon DocumentDB)
    #
    #   * `db.sql.statement` (Amazon RDS and Aurora)
    #   @return [String]
    #
    # @!attribute [rw] dimension
    #   The full name of the dimension. The full name includes the group
    #   name and key name. The following values are valid:
    #
    #   * `db.query.statement` (Amazon DocumentDB)
    #
    #   * `db.sql.statement` (Amazon RDS and Aurora)
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
    #     requested detail data has the status `PROCESSING`, Performance
    #     Insights returns the truncated query.
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

    # The metadata for a feature. For example, the metadata might indicate
    # that a feature is turned on or off on a specific DB instance.
    #
    # @!attribute [rw] status
    #   The status of the feature on the DB instance. Possible values
    #   include the following:
    #
    #   * `ENABLED` - The feature is enabled on the instance.
    #
    #   * `DISABLED` - The feature is disabled on the instance.
    #
    #   * `UNSUPPORTED` - The feature isn't supported on the instance.
    #
    #   * `ENABLED_PENDING_REBOOT` - The feature is enabled on the instance
    #     but requires a reboot to take effect.
    #
    #   * `DISABLED_PENDING_REBOOT` - The feature is disabled on the
    #     instance but requires a reboot to take effect.
    #
    #   * `UNKNOWN` - The feature status couldn't be determined.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pi-2018-02-27/FeatureMetadata AWS API Documentation
    #
    class FeatureMetadata < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_type
    #   The Amazon Web Services service for which Performance Insights
    #   returns data. The only valid value is `RDS`.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The ID for a data source from which to gather dimension data. This
    #   ID must be immutable and unique within an Amazon Web Services
    #   Region. When a DB instance is the data source, specify its
    #   `DbiResourceId` value. For example, specify
    #   `db-ABCDEFGHIJKLMNOPQRSTU1VW2X`.
    #   @return [String]
    #
    # @!attribute [rw] group
    #   The name of the dimension group. Performance Insights searches the
    #   specified group for the dimension group ID. The following group name
    #   values are valid:
    #
    #   * `db.query` (Amazon DocumentDB only)
    #
    #   * `db.sql` (Amazon RDS and Aurora only)
    #   @return [String]
    #
    # @!attribute [rw] group_identifier
    #   The ID of the dimension group from which to retrieve dimension
    #   details. For dimension group `db.sql`, the group ID is `db.sql.id`.
    #   The following group ID values are valid:
    #
    #   * `db.sql.id` for dimension group `db.sql` (Aurora and RDS only)
    #
    #   * `db.query.id` for dimension group `db.query` (DocumentDB only)
    #   @return [String]
    #
    # @!attribute [rw] requested_dimensions
    #   A list of dimensions to retrieve the detail data for within the
    #   given dimension group. If you don't specify this parameter,
    #   Performance Insights returns all dimension data within the specified
    #   dimension group. Specify dimension names for the following dimension
    #   groups:
    #
    #   * `db.sql` - Specify either the full dimension name
    #     `db.sql.statement` or the short dimension name `statement` (Aurora
    #     and RDS only).
    #
    #   * `db.query` - Specify either the full dimension name
    #     `db.query.statement` or the short dimension name `statement`
    #     (DocumentDB only).
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

    # @!attribute [rw] service_type
    #   The Amazon Web Services service for which Performance Insights
    #   returns metrics.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   An immutable identifier for a data source that is unique for an
    #   Amazon Web Services Region. Performance Insights gathers metrics
    #   from this data source. To use a DB instance as a data source,
    #   specify its `DbiResourceId` value. For example, specify
    #   `db-ABCDEFGHIJKLMNOPQRSTU1VW2X`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pi-2018-02-27/GetResourceMetadataRequest AWS API Documentation
    #
    class GetResourceMetadataRequest < Struct.new(
      :service_type,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   An immutable identifier for a data source that is unique for an
    #   Amazon Web Services Region. Performance Insights gathers metrics
    #   from this data source. To use a DB instance as a data source,
    #   specify its `DbiResourceId` value. For example, specify
    #   `db-ABCDEFGHIJKLMNOPQRSTU1VW2X`.
    #   @return [String]
    #
    # @!attribute [rw] features
    #   The metadata for different features. For example, the metadata might
    #   indicate that a feature is turned on or off on a specific DB
    #   instance.
    #   @return [Hash<String,Types::FeatureMetadata>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pi-2018-02-27/GetResourceMetadataResponse AWS API Documentation
    #
    class GetResourceMetadataResponse < Struct.new(
      :identifier,
      :features)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_type
    #   The Amazon Web Services service for which Performance Insights
    #   returns metrics. Valid values are as follows:
    #
    #   * `RDS`
    #
    #   * `DOCDB`
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   An immutable identifier for a data source that is unique for an
    #   Amazon Web Services Region. Performance Insights gathers metrics
    #   from this data source. In the console, the identifier is shown as
    #   *ResourceID*. When you call `DescribeDBInstances`, the identifier is
    #   returned as `DbiResourceId`.
    #
    #   To use a DB instance as a data source, specify its `DbiResourceId`
    #   value. For example, specify `db-ABCDEFGHIJKLMNOPQRSTU1VW2X`.
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
    #   series query range. You can't specify a `StartTime` that is earlier
    #   than 7 days ago. By default, Performance Insights has 7 days of
    #   retention, but you can extend this range up to 2 years. The value
    #   specified is *inclusive*. Thus, the command returns data points
    #   equal to or greater than `StartTime`.
    #
    #   The value for `StartTime` must be earlier than the value for
    #   `EndTime`.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The date and time specifying the end of the requested time series
    #   query range. The value specified is *exclusive*. Thus, the command
    #   returns data points less than (but not equal to) `EndTime`.
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
    # @!attribute [rw] period_alignment
    #   The returned timestamp which is the start or end time of the time
    #   periods. The default value is `END_TIME`.
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
      :next_token,
      :period_alignment)
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
    #   An immutable identifier for a data source that is unique for an
    #   Amazon Web Services Region. Performance Insights gathers metrics
    #   from this data source. In the console, the identifier is shown as
    #   *ResourceID*. When you call `DescribeDBInstances`, the identifier is
    #   returned as `DbiResourceId`.
    #   @return [String]
    #
    # @!attribute [rw] metric_list
    #   An array of metric results, where each array element contains all of
    #   the data points for a particular dimension.
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

    # @!attribute [rw] service_type
    #   The Amazon Web Services service for which Performance Insights
    #   returns metrics.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   An immutable identifier for a data source that is unique within an
    #   Amazon Web Services Region. Performance Insights gathers metrics
    #   from this data source. To use an Amazon RDS DB instance as a data
    #   source, specify its `DbiResourceId` value. For example, specify
    #   `db-ABCDEFGHIJKLMNOPQRSTU1VWZ`.
    #   @return [String]
    #
    # @!attribute [rw] metrics
    #   The types of metrics for which to retrieve dimensions. Valid values
    #   include `db.load`.
    #   @return [Array<String>]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/pi-2018-02-27/ListAvailableResourceDimensionsRequest AWS API Documentation
    #
    class ListAvailableResourceDimensionsRequest < Struct.new(
      :service_type,
      :identifier,
      :metrics,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] metric_dimensions
    #   The dimension information returned for requested metric types.
    #   @return [Array<Types::MetricDimensionGroups>]
    #
    # @!attribute [rw] next_token
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the token, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pi-2018-02-27/ListAvailableResourceDimensionsResponse AWS API Documentation
    #
    class ListAvailableResourceDimensionsResponse < Struct.new(
      :metric_dimensions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_type
    #   The Amazon Web Services service for which Performance Insights
    #   returns metrics.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   An immutable identifier for a data source that is unique within an
    #   Amazon Web Services Region. Performance Insights gathers metrics
    #   from this data source. To use an Amazon RDS DB instance as a data
    #   source, specify its `DbiResourceId` value. For example, specify
    #   `db-ABCDEFGHIJKLMNOPQRSTU1VWZ`.
    #   @return [String]
    #
    # @!attribute [rw] metric_types
    #   The types of metrics to return in the response. Valid values in the
    #   array include the following:
    #
    #   * `os` (OS counter metrics) - All engines
    #
    #   * `db` (DB load metrics) - All engines except for Amazon DocumentDB
    #
    #   * `db.sql.stats` (per-SQL metrics) - All engines except for Amazon
    #     DocumentDB
    #
    #   * `db.sql_tokenized.stats` (per-SQL digest metrics) - All engines
    #     except for Amazon DocumentDB
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the token, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return. If the `MaxRecords` value is
    #   less than the number of existing items, the response includes a
    #   pagination token.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pi-2018-02-27/ListAvailableResourceMetricsRequest AWS API Documentation
    #
    class ListAvailableResourceMetricsRequest < Struct.new(
      :service_type,
      :identifier,
      :metric_types,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] metrics
    #   An array of metrics available to query. Each array element contains
    #   the full name, description, and unit of the metric.
    #   @return [Array<Types::ResponseResourceMetric>]
    #
    # @!attribute [rw] next_token
    #   A pagination token that indicates the response didn’t return all
    #   available records because `MaxRecords` was specified in the previous
    #   request. To get the remaining records, specify `NextToken` in a
    #   separate request with this value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pi-2018-02-27/ListAvailableResourceMetricsResponse AWS API Documentation
    #
    class ListAvailableResourceMetricsResponse < Struct.new(
      :metrics,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The available dimension information for a metric type.
    #
    # @!attribute [rw] metric
    #   The metric type to which the dimension information belongs.
    #   @return [String]
    #
    # @!attribute [rw] groups
    #   The available dimension groups for a metric type.
    #   @return [Array<Types::DimensionGroupDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pi-2018-02-27/MetricDimensionGroups AWS API Documentation
    #
    class MetricDimensionGroups < Struct.new(
      :metric,
      :groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # A time-ordered series of data points, corresponding to a dimension of
    # a Performance Insights metric.
    #
    # @!attribute [rw] key
    #   The dimensions to which the data points apply.
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
    # data points for the specified metric. Optionally, you can request that
    # the data points be aggregated by dimension group (`GroupBy`), and
    # return only those data points that match your criteria (`Filter`).
    #
    # @!attribute [rw] metric
    #   The name of a Performance Insights metric to be measured.
    #
    #   Valid values for `Metric` are:
    #
    #   * `db.load.avg` - A scaled representation of the number of active
    #     sessions for the database engine.
    #
    #   * `db.sampledload.avg` - The raw number of active sessions for the
    #     database engine.
    #
    #   * The counter metrics listed in [Performance Insights operating
    #     system counters][1] in the *Amazon Aurora User Guide*.
    #
    #   If the number of active sessions is less than an internal
    #   Performance Insights threshold, `db.load.avg` and
    #   `db.sampledload.avg` are the same value. If the number of active
    #   sessions is greater than the internal threshold, Performance
    #   Insights samples the active sessions, with `db.load.avg` showing the
    #   scaled values, `db.sampledload.avg` showing the raw values, and
    #   `db.sampledload.avg` less than `db.load.avg`. For most use cases,
    #   you can query `db.load.avg` only.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_PerfInsights_Counters.html#USER_PerfInsights_Counters.OS
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
    #   A dimension map that contains the dimensions for this partition.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pi-2018-02-27/ResponsePartitionKey AWS API Documentation
    #
    class ResponsePartitionKey < Struct.new(
      :dimensions)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains the full name, description, and unit of a
    # metric.
    #
    # @!attribute [rw] metric
    #   The full name of the metric.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the metric.
    #   @return [String]
    #
    # @!attribute [rw] unit
    #   The unit of the metric.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pi-2018-02-27/ResponseResourceMetric AWS API Documentation
    #
    class ResponseResourceMetric < Struct.new(
      :metric,
      :description,
      :unit)
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
    #   * `db.load.avg` - A scaled representation of the number of active
    #     sessions for the database engine.
    #
    #   * `db.sampledload.avg` - The raw number of active sessions for the
    #     database engine.
    #
    #   * The counter metrics listed in [Performance Insights operating
    #     system counters][1] in the *Amazon Aurora User Guide*.
    #
    #   If the number of active sessions is less than an internal
    #   Performance Insights threshold, `db.load.avg` and
    #   `db.sampledload.avg` are the same value. If the number of active
    #   sessions is greater than the internal threshold, Performance
    #   Insights samples the active sessions, with `db.load.avg` showing the
    #   scaled values, `db.sampledload.avg` showing the raw values, and
    #   `db.sampledload.avg` less than `db.load.avg`. For most use cases,
    #   you can query `db.load.avg` only.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_PerfInsights_Counters.html#USER_PerfInsights_Counters.OS
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
