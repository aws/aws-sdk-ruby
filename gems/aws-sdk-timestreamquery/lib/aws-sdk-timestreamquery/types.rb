# frozen_string_literal: true

# This is generated code!

module Aws::TimestreamQuery
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have the necessary permissions to access the account settings.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration settings for notifications related to account settings.</p>
    # @!attribute sns_configuration
    #   <p>Details on SNS that are required to send the notification.</p>
    #   @return [Types::SnsConfiguration]
    # @!attribute role_arn
    #   <p>An Amazon Resource Name (ARN) that grants Timestream permission to publish notifications. This field is only visible if SNS Topic is provided when updating the account settings.</p>
    #   @return [String]
    class AccountSettingsNotificationConfiguration < Struct.new(
      :sns_configuration,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute query_id
    #   <p> The ID of the query that needs to be cancelled. <code>QueryID</code> is returned as
    #               part of the query result. </p>
    #   @return [String]
    class CancelQueryRequest < Struct.new(
      :query_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cancellation_message
    #   <p> A <code>CancellationMessage</code> is returned when a <code>CancelQuery</code>
    #               request for the query specified by <code>QueryId</code> has already been issued. </p>
    #   @return [String]
    class CancelQueryResponse < Struct.new(
      :cancellation_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Contains the metadata for query results such as the column names, data types, and
    #             other attributes. </p>
    # @!attribute name
    #   <p> The name of the result set column. The name of the result set is available for
    #               columns of all data types except for arrays. </p>
    #   @return [String]
    # @!attribute type
    #   <p>The data type of the result set column. The data type can be a scalar or complex.
    #               Scalar data types are integers, strings, doubles, Booleans, and others. Complex data
    #               types are types such as arrays, rows, and others. </p>
    #   @return [Types::Type]
    class ColumnInfo < Struct.new(
      :name,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Unable to poll results for a cancelled query. </p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>Name of the scheduled query.</p>
    #   @return [String]
    # @!attribute query_string
    #   <p>The query string to run. Parameter names can be specified in the query string
    #                   <code>@</code> character followed by an identifier. The named Parameter
    #                   <code>@scheduled_runtime</code> is reserved and can be used in the query to get the
    #               time at which the query is scheduled to run.</p>
    #            <p>The timestamp calculated according to the ScheduleConfiguration parameter, will be the
    #               value of <code>@scheduled_runtime</code> paramater for each query run. For example,
    #               consider an instance of a scheduled query executing on 2021-12-01 00:00:00. For this
    #               instance, the <code>@scheduled_runtime</code> parameter is initialized to the timestamp
    #               2021-12-01 00:00:00 when invoking the query.</p>
    #   @return [String]
    # @!attribute schedule_configuration
    #   <p>The schedule configuration for the query.</p>
    #   @return [Types::ScheduleConfiguration]
    # @!attribute notification_configuration
    #   <p>Notification configuration for the scheduled query. A notification is sent by
    #               Timestream when a query run finishes, when the state is updated or when you delete it.
    #           </p>
    #   @return [Types::NotificationConfiguration]
    # @!attribute target_configuration
    #   <p>Configuration used for writing the result of a query.</p>
    #   @return [Types::TargetConfiguration]
    # @!attribute client_token
    #   <p>Using a ClientToken makes the call to CreateScheduledQuery idempotent, in other words,
    #               making the same request repeatedly will produce the same result. Making multiple
    #               identical CreateScheduledQuery requests has the same effect as making a single request. </p>
    #            <ul>
    #               <li>
    #                  <p> If CreateScheduledQuery is called without a <code>ClientToken</code>, the
    #                       Query SDK generates a <code>ClientToken</code> on your behalf.</p>
    #               </li>
    #               <li>
    #                  <p> After 8 hours, any request with the same <code>ClientToken</code> is treated
    #                       as a new request. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute scheduled_query_execution_role_arn
    #   <p>The ARN for the IAM role that Timestream will assume when running the scheduled query.
    #           </p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of key-value pairs to label the scheduled query.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute kms_key_id
    #   <p>The Amazon KMS key used to encrypt the scheduled query resource, at-rest. If the
    #               Amazon KMS key is not specified, the scheduled query resource will be encrypted with a
    #               Timestream owned Amazon KMS key. To specify a KMS key, use the key ID, key ARN, alias
    #               name, or alias ARN. When using an alias name, prefix the name with
    #                   <i>alias/</i>
    #            </p>
    #            <p>If ErrorReportConfiguration uses <code>SSE_KMS</code> as encryption type, the same
    #               KmsKeyId is used to encrypt the error report at rest.</p>
    #   @return [String]
    # @!attribute error_report_configuration
    #   <p>Configuration for error reporting. Error reports will be generated when a problem is
    #               encountered when writing the query results. </p>
    #   @return [Types::ErrorReportConfiguration]
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
      :error_report_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>ARN for the created scheduled query.</p>
    #   @return [String]
    class CreateScheduledQueryResponse < Struct.new(
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Datum represents a single data point in a query result. </p>
    # @!attribute scalar_value
    #   <p> Indicates if the data point is a scalar value such as integer, string, double, or
    #               Boolean. </p>
    #   @return [String]
    # @!attribute time_series_value
    #   <p> Indicates if the data point is a timeseries data type. </p>
    #   @return [Array<Types::TimeSeriesDataPoint>]
    # @!attribute array_value
    #   <p> Indicates if the data point is an array. </p>
    #   @return [Array<Types::Datum>]
    # @!attribute row_value
    #   <p> Indicates if the data point is a row. </p>
    #   @return [Types::Row]
    # @!attribute null_value
    #   <p> Indicates if the data point is null. </p>
    #   @return [Boolean]
    class Datum < Struct.new(
      :scalar_value,
      :time_series_value,
      :array_value,
      :row_value,
      :null_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scheduled_query_arn
    #   <p>The ARN of the scheduled query. </p>
    #   @return [String]
    class DeleteScheduledQueryRequest < Struct.new(
      :scheduled_query_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DescribeAccountSettingsRequest < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_query_tcu
    #   <p>The maximum number of <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/tcu.html">Timestream compute units</a> (TCUs) the service will use at any point in time to serve your queries. To run queries, you must set a minimum capacity of 4 TCU. You can set the maximum number of TCU in multiples of 4, for example, 4, 8, 16, 32, and so on. This configuration is applicable only for on-demand usage of (TCUs). 
    #           
    #           
    #           </p>
    #   @return [Integer]
    # @!attribute query_pricing_model
    #   <p>The pricing model for queries in your account.</p>
    #            <note>
    #               <p>The <code>QueryPricingModel</code> parameter is used by several Timestream operations; however, the <code>UpdateAccountSettings</code> API operation doesn't recognize any values other than <code>COMPUTE_UNITS</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute query_compute
    #   <p>An object that contains the usage settings for Timestream Compute Units (TCUs) in your account for the query workload. </p>
    #   @return [Types::QueryComputeResponse]
    class DescribeAccountSettingsResponse < Struct.new(
      :max_query_tcu,
      :query_pricing_model,
      :query_compute,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DescribeEndpointsRequest < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoints
    #   <p>An <code>Endpoints</code> object is returned when a <code>DescribeEndpoints</code>
    #               request is made.</p>
    #   @return [Array<Types::Endpoint>]
    class DescribeEndpointsResponse < Struct.new(
      :endpoints,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scheduled_query_arn
    #   <p>The ARN of the scheduled query.</p>
    #   @return [String]
    class DescribeScheduledQueryRequest < Struct.new(
      :scheduled_query_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scheduled_query
    #   <p>The scheduled query.</p>
    #   @return [Types::ScheduledQueryDescription]
    class DescribeScheduledQueryResponse < Struct.new(
      :scheduled_query,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This type is used to map column(s) from the query result to a dimension in the
    #             destination table.</p>
    # @!attribute name
    #   <p>Column name from query result.</p>
    #   @return [String]
    # @!attribute dimension_value_type
    #   <p>Type for the dimension. </p>
    #   @return [String]
    class DimensionMapping < Struct.new(
      :name,
      :dimension_value_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an available endpoint against which to make API calls against, as well as
    #             the TTL for that endpoint.</p>
    # @!attribute address
    #   <p>An endpoint address.</p>
    #   @return [String]
    # @!attribute cache_period_in_minutes
    #   <p>The TTL for the endpoint, in minutes.</p>
    #   @return [Integer]
    class Endpoint < Struct.new(
      :address,
      :cache_period_in_minutes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:cache_period_in_minutes] = 0 unless options.key?(:cache_period_in_minutes)
        super
      end
    end

    # <p>Configuration required for error reporting.</p>
    # @!attribute s3_configuration
    #   <p>The S3 configuration for the error reports.</p>
    #   @return [Types::S3Configuration]
    class ErrorReportConfiguration < Struct.new(
      :s3_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This contains the location of the error report for a single scheduled query call.
    #         </p>
    # @!attribute s3_report_location
    #   <p>The S3 location where error reports are written.</p>
    #   @return [Types::S3ReportLocation]
    class ErrorReportLocation < Struct.new(
      :s3_report_location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scheduled_query_arn
    #   <p>ARN of the scheduled query.</p>
    #   @return [String]
    # @!attribute invocation_time
    #   <p>The timestamp in UTC. Query will be run as if it was invoked at this timestamp.
    #           </p>
    #   @return [Time]
    # @!attribute client_token
    #   <p>Not used. </p>
    #   @return [String]
    # @!attribute query_insights
    #   <p>Encapsulates settings for enabling <code>QueryInsights</code>.</p>
    #            <p>Enabling <code>QueryInsights</code> returns insights and metrics as a part of the Amazon SNS notification for the query that you executed. You can use <code>QueryInsights</code> to tune your query performance and cost.</p>
    #   @return [Types::ScheduledQueryInsights]
    class ExecuteScheduledQueryRequest < Struct.new(
      :scheduled_query_arn,
      :invocation_time,
      :client_token,
      :query_insights,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Statistics for a single scheduled query run.</p>
    # @!attribute execution_time_in_millis
    #   <p>Total time, measured in milliseconds, that was needed for the scheduled query run to
    #               complete.</p>
    #   @return [Integer]
    # @!attribute data_writes
    #   <p>Data writes metered for records ingested in a single scheduled query run.</p>
    #   @return [Integer]
    # @!attribute bytes_metered
    #   <p>Bytes metered for a single scheduled query run.</p>
    #   @return [Integer]
    # @!attribute cumulative_bytes_scanned
    #   <p>Bytes scanned for a single scheduled query run.</p>
    #   @return [Integer]
    # @!attribute records_ingested
    #   <p>The number of records ingested for a single scheduled query run. </p>
    #   @return [Integer]
    # @!attribute query_result_rows
    #   <p>Number of rows present in the output from running a query before ingestion to
    #               destination data source.</p>
    #   @return [Integer]
    class ExecutionStats < Struct.new(
      :execution_time_in_millis,
      :data_writes,
      :bytes_metered,
      :cumulative_bytes_scanned,
      :records_ingested,
      :query_result_rows,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:execution_time_in_millis] = 0 unless options.key?(:execution_time_in_millis)
        options[:data_writes] = 0 unless options.key?(:data_writes)
        options[:bytes_metered] = 0 unless options.key?(:bytes_metered)
        options[:cumulative_bytes_scanned] = 0 unless options.key?(:cumulative_bytes_scanned)
        options[:records_ingested] = 0 unless options.key?(:records_ingested)
        options[:query_result_rows] = 0 unless options.key?(:query_result_rows)
        super
      end
    end

    # <p>An internal server error occurred while processing the request.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested endpoint is invalid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidEndpointException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration object that contains the most recent account settings update, visible only if settings have been updated previously.</p>
    # @!attribute target_query_tcu
    #   <p>The number of TimeStream Compute Units (TCUs) requested in the last account settings update.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The status of the last update. Can be either <code>PENDING</code>, <code>FAILED</code>, or <code>SUCCEEDED</code>.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>Error message describing the last account settings update status, visible only if an error occurred.</p>
    #   @return [String]
    class LastUpdate < Struct.new(
      :target_query_tcu,
      :status,
      :status_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of items to return in the output. If the total number of items
    #               available is more than the value specified, a <code>NextToken</code> is provided in the
    #               output. To resume pagination, provide the <code>NextToken</code> value as the argument
    #               to the subsequent call to <code>ListScheduledQueriesRequest</code>.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p> A pagination token to resume pagination.</p>
    #   @return [String]
    class ListScheduledQueriesRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scheduled_queries
    #   <p>A list of scheduled queries.</p>
    #   @return [Array<Types::ScheduledQuery>]
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. This is the NextToken from a previously
    #               truncated response.</p>
    #   @return [String]
    class ListScheduledQueriesResponse < Struct.new(
      :scheduled_queries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Timestream resource with tags to be listed. This value is an Amazon Resource Name
    #               (ARN).</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of tags to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A pagination token to resume pagination.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags currently associated with the Timestream resource. </p>
    #   @return [Array<Types::Tag>]
    # @!attribute next_token
    #   <p>A pagination token to resume pagination with a subsequent call to
    #                   <code>ListTagsForResourceResponse</code>.</p>
    #   @return [String]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>MixedMeasureMappings are mappings that can be used to ingest data into a mixture of
    #             narrow and multi measures in the derived table.</p>
    # @!attribute measure_name
    #   <p>Refers to the value of measure_name in a result row. This field is required if
    #               MeasureNameColumn is provided.</p>
    #   @return [String]
    # @!attribute source_column
    #   <p>This field refers to the source column from which measure-value is to be read for
    #               result materialization.</p>
    #   @return [String]
    # @!attribute target_measure_name
    #   <p>Target measure name to be used. If not provided, the target measure name by default
    #               would be measure-name if provided, or sourceColumn otherwise. </p>
    #   @return [String]
    # @!attribute measure_value_type
    #   <p>Type of the value that is to be read from sourceColumn. If the mapping is for MULTI,
    #               use MeasureValueType.MULTI.</p>
    #   @return [String]
    # @!attribute multi_measure_attribute_mappings
    #   <p>Required when measureValueType is MULTI. Attribute mappings for MULTI value
    #               measures.</p>
    #   @return [Array<Types::MultiMeasureAttributeMapping>]
    class MixedMeasureMapping < Struct.new(
      :measure_name,
      :source_column,
      :target_measure_name,
      :measure_value_type,
      :multi_measure_attribute_mappings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Attribute mapping for MULTI value measures.</p>
    # @!attribute source_column
    #   <p>Source column from where the attribute value is to be read.</p>
    #   @return [String]
    # @!attribute target_multi_measure_attribute_name
    #   <p>Custom name to be used for attribute name in derived table. If not provided, source
    #               column name would be used.</p>
    #   @return [String]
    # @!attribute measure_value_type
    #   <p>Type of the attribute to be read from the source column.</p>
    #   @return [String]
    class MultiMeasureAttributeMapping < Struct.new(
      :source_column,
      :target_multi_measure_attribute_name,
      :measure_value_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Only one of MixedMeasureMappings or MultiMeasureMappings is to be provided.
    #             MultiMeasureMappings can be used to ingest data as multi measures in the derived
    #             table.</p>
    # @!attribute target_multi_measure_name
    #   <p>The name of the target multi-measure name in the derived table. This input is required
    #               when measureNameColumn is not provided. If MeasureNameColumn is provided, then value
    #               from that column will be used as multi-measure name.</p>
    #   @return [String]
    # @!attribute multi_measure_attribute_mappings
    #   <p>Required. Attribute mappings to be used for mapping query results to ingest data for
    #               multi-measure attributes.</p>
    #   @return [Array<Types::MultiMeasureAttributeMapping>]
    class MultiMeasureMappings < Struct.new(
      :target_multi_measure_name,
      :multi_measure_attribute_mappings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Notification configuration for a scheduled query. A notification is sent by Timestream
    #             when a scheduled query is created, its state is updated or when it is deleted. </p>
    # @!attribute sns_configuration
    #   <p>Details about the Amazon Simple Notification Service (SNS) configuration. This field is visible only when SNS Topic is provided when updating the account settings.  </p>
    #   @return [Types::SnsConfiguration]
    class NotificationConfiguration < Struct.new(
      :sns_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Mapping for named parameters.</p>
    # @!attribute name
    #   <p>Parameter name.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Contains the data type of a column in a query result set. The data type can be scalar
    #               or complex. The supported scalar data types are integers, Boolean, string, double,
    #               timestamp, date, time, and intervals. The supported complex data types are arrays, rows,
    #               and timeseries.</p>
    #   @return [Types::Type]
    class ParameterMapping < Struct.new(
      :name,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute query_string
    #   <p>The Timestream query string that you want to use as a prepared statement. Parameter
    #               names can be specified in the query string <code>@</code> character followed by an
    #               identifier. </p>
    #   @return [String]
    # @!attribute validate_only
    #   <p>By setting this value to <code>true</code>, Timestream will only validate that the
    #               query string is a valid Timestream query, and not store the prepared query for later
    #               use.</p>
    #   @return [Boolean]
    class PrepareQueryRequest < Struct.new(
      :query_string,
      :validate_only,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute query_string
    #   <p>The query string that you want prepare.</p>
    #   @return [String]
    # @!attribute columns
    #   <p>A list of SELECT clause columns of the submitted query string. </p>
    #   @return [Array<Types::SelectColumn>]
    # @!attribute parameters
    #   <p>A list of parameters used in the submitted query string. </p>
    #   @return [Array<Types::ParameterMapping>]
    class PrepareQueryResponse < Struct.new(
      :query_string,
      :columns,
      :parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A request to update the provisioned capacity settings for querying data.</p>
    # @!attribute target_query_tcu
    #   <p>The target compute capacity for querying data, specified in Timestream Compute Units (TCUs).</p>
    #   @return [Integer]
    # @!attribute notification_configuration
    #   <p>Configuration settings for notifications related to the provisioned capacity update.</p>
    #   @return [Types::AccountSettingsNotificationConfiguration]
    class ProvisionedCapacityRequest < Struct.new(
      :target_query_tcu,
      :notification_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The response to a request to update the provisioned capacity settings for querying data.</p>
    # @!attribute active_query_tcu
    #   <p>The number of Timestream Compute Units (TCUs) provisioned in the account. This field is only visible when the compute mode is <code>PROVISIONED</code>.</p>
    #   @return [Integer]
    # @!attribute notification_configuration
    #   <p>An object that contains settings for notifications that are sent whenever the provisioned capacity settings are modified. This field is only visible when the compute mode is <code>PROVISIONED</code>.</p>
    #   @return [Types::AccountSettingsNotificationConfiguration]
    # @!attribute last_update
    #   <p>Information about the last update to the provisioned capacity settings.</p>
    #   @return [Types::LastUpdate]
    class ProvisionedCapacityResponse < Struct.new(
      :active_query_tcu,
      :notification_configuration,
      :last_update,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A request to retrieve or update the compute capacity settings for querying data.</p>
    # @!attribute compute_mode
    #   <p>The mode in which Timestream Compute Units (TCUs) are allocated and utilized within an account. Note that in the Asia Pacific (Mumbai)  region, the API operation only recognizes the value <code>PROVISIONED</code>.</p>
    #   @return [String]
    # @!attribute provisioned_capacity
    #   <p>Configuration object that contains settings for provisioned Timestream Compute Units (TCUs) in your account.</p>
    #   @return [Types::ProvisionedCapacityRequest]
    class QueryComputeRequest < Struct.new(
      :compute_mode,
      :provisioned_capacity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The response to a request to retrieve or update the compute capacity settings for querying data.</p>
    # @!attribute compute_mode
    #   <p>The mode in which Timestream Compute Units (TCUs) are allocated and utilized within an account. Note that in the Asia Pacific (Mumbai)  region, the API operation only recognizes the value <code>PROVISIONED</code>.</p>
    #   @return [String]
    # @!attribute provisioned_capacity
    #   <p>Configuration object that contains settings for provisioned Timestream Compute Units (TCUs) in your account.</p>
    #   @return [Types::ProvisionedCapacityResponse]
    class QueryComputeResponse < Struct.new(
      :compute_mode,
      :provisioned_capacity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             Timestream was unable to run the query successfully. </p>
    # @!attribute message
    #   @return [String]
    class QueryExecutionException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             <code>QueryInsights</code> is a performance tuning feature that helps you optimize your queries, reducing costs and improving performance. With <code>QueryInsights</code>, you can assess the pruning efficiency of your queries and identify areas for improvement to enhance query performance. With <code>QueryInsights</code>, you can also analyze the effectiveness of your queries in terms of temporal and spatial pruning, and identify opportunities to improve performance. Specifically, you can evaluate how well your queries use time-based and partition key-based indexing strategies to optimize data retrieval. To optimize query performance, it's essential that you fine-tune both the temporal and spatial parameters that govern query execution.</p>
    #          <p>The key metrics provided by <code>QueryInsights</code> are <code>QuerySpatialCoverage</code> and <code>QueryTemporalRange</code>. <code>QuerySpatialCoverage</code> indicates how much of the spatial axis the query scans, with lower values being more efficient. <code>QueryTemporalRange</code> shows the time range scanned, with narrower ranges being more performant.</p>
    #          <p>
    #             <b>Benefits of QueryInsights</b>
    #          </p>
    #          <p>The following are the key benefits of using <code>QueryInsights</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>Identifying inefficient queries</b> – <code>QueryInsights</code> provides information on the time-based and attribute-based pruning of the tables accessed by the query. This information helps you identify the tables that are sub-optimally accessed.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Optimizing your data model and partitioning</b> – You can use the <code>QueryInsights</code> information to access and fine-tune your data model and partitioning strategy.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Tuning queries</b> – <code>QueryInsights</code> highlights opportunities to use indexes more effectively.</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <p>The maximum number of <code>Query</code> API requests you're allowed to make with <code>QueryInsights</code> enabled is 1 query per second (QPS). If you exceed this query rate, it might result in throttling.</p>
    #          </note>
    # @!attribute mode
    #   <p>Provides the following modes to enable <code>QueryInsights</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ENABLED_WITH_RATE_CONTROL</code> – Enables <code>QueryInsights</code> for the queries being processed. This mode also includes a rate control mechanism, which limits the <code>QueryInsights</code> feature to 1 query per second (QPS).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code> – Disables <code>QueryInsights</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class QueryInsights < Struct.new(
      :mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides various insights and metrics related to the query that you executed.</p>
    # @!attribute query_spatial_coverage
    #   <p>Provides insights into the spatial coverage of the query, including the table with sub-optimal (max) spatial pruning. This information can help you identify areas for improvement in your partitioning strategy to enhance spatial pruning. </p>
    #   @return [Types::QuerySpatialCoverage]
    # @!attribute query_temporal_range
    #   <p>Provides insights into the temporal range of the query, including the table with the largest (max) time range. Following are some of the potential options for optimizing time-based pruning:</p>
    #            <ul>
    #               <li>
    #                  <p>Add missing time-predicates.</p>
    #               </li>
    #               <li>
    #                  <p>Remove functions around the time predicates.</p>
    #               </li>
    #               <li>
    #                  <p>Add time predicates to all the sub-queries.</p>
    #               </li>
    #            </ul>
    #   @return [Types::QueryTemporalRange]
    # @!attribute query_table_count
    #   <p>Indicates the number of tables in the query.</p>
    #   @return [Integer]
    # @!attribute output_rows
    #   <p>Indicates the total number of rows returned as part of the query result set. You can use this data to validate if the number of rows in the result set have changed as part of the query tuning exercise.</p>
    #   @return [Integer]
    # @!attribute output_bytes
    #   <p>Indicates the size of query result set in bytes. You can use this data to validate if the result set has changed as part of the query tuning exercise.</p>
    #   @return [Integer]
    # @!attribute unload_partition_count
    #   <p>Indicates the partitions created by the <code>Unload</code> operation.</p>
    #   @return [Integer]
    # @!attribute unload_written_rows
    #   <p>Indicates the rows written by the <code>Unload</code> query.</p>
    #   @return [Integer]
    # @!attribute unload_written_bytes
    #   <p>Indicates the size, in bytes, written by the <code>Unload</code> operation.</p>
    #   @return [Integer]
    class QueryInsightsResponse < Struct.new(
      :query_spatial_coverage,
      :query_temporal_range,
      :query_table_count,
      :output_rows,
      :output_bytes,
      :unload_partition_count,
      :unload_written_rows,
      :unload_written_bytes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:query_table_count] = nil unless options.key?(:query_table_count)
        options[:output_rows] = nil unless options.key?(:output_rows)
        options[:output_bytes] = nil unless options.key?(:output_bytes)
        options[:unload_partition_count] = nil unless options.key?(:unload_partition_count)
        options[:unload_written_rows] = nil unless options.key?(:unload_written_rows)
        options[:unload_written_bytes] = nil unless options.key?(:unload_written_bytes)
        super
      end
    end

    # @!attribute query_string
    #   <p> The query to be run by Timestream. </p>
    #   @return [String]
    # @!attribute client_token
    #   <p> Unique, case-sensitive string of up to 64 ASCII characters specified when a
    #                   <code>Query</code> request is made. Providing a <code>ClientToken</code> makes the
    #               call to <code>Query</code>
    #               <i>idempotent</i>. This means that running the same query repeatedly will
    #               produce the same result. In other words, making multiple identical <code>Query</code>
    #               requests has the same effect as making a single request. When using
    #                   <code>ClientToken</code> in a query, note the following: </p>
    #            <ul>
    #               <li>
    #                  <p> If the Query API is instantiated without a <code>ClientToken</code>, the
    #                       Query SDK generates a <code>ClientToken</code> on your behalf.</p>
    #               </li>
    #               <li>
    #                  <p>If the <code>Query</code> invocation only contains the
    #                           <code>ClientToken</code> but does not include a <code>NextToken</code>, that
    #                       invocation of <code>Query</code> is assumed to be a new query run.</p>
    #               </li>
    #               <li>
    #                  <p>If the invocation contains <code>NextToken</code>, that particular invocation
    #                       is assumed to be a subsequent invocation of a prior call to the Query API, and a
    #                       result set is returned.</p>
    #               </li>
    #               <li>
    #                  <p> After 4 hours, any request with the same <code>ClientToken</code> is treated
    #                       as a new request. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute next_token
    #   <p> A pagination token used to return a set of results. When the <code>Query</code> API
    #               is invoked using <code>NextToken</code>, that particular invocation is assumed to be a
    #               subsequent invocation of a prior call to <code>Query</code>, and a result set is
    #               returned. However, if the <code>Query</code> invocation only contains the
    #                   <code>ClientToken</code>, that invocation of <code>Query</code> is assumed to be a
    #               new query run. </p>
    #            <p>Note the following when using NextToken in a query:</p>
    #            <ul>
    #               <li>
    #                  <p>A pagination token can be used for up to five <code>Query</code> invocations,
    #                       OR for a duration of up to 1 hour – whichever comes first.</p>
    #               </li>
    #               <li>
    #                  <p>Using the same <code>NextToken</code> will return the same set of records. To
    #                       keep paginating through the result set, you must to use the most recent
    #                           <code>nextToken</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Suppose a <code>Query</code> invocation returns two <code>NextToken</code>
    #                       values, <code>TokenA</code> and <code>TokenB</code>. If <code>TokenB</code> is
    #                       used in a subsequent <code>Query</code> invocation, then <code>TokenA</code> is
    #                       invalidated and cannot be reused.</p>
    #               </li>
    #               <li>
    #                  <p>To request a previous result set from a query after pagination has begun, you
    #                       must re-invoke the Query API.</p>
    #               </li>
    #               <li>
    #                  <p>The latest <code>NextToken</code> should be used to paginate until
    #                           <code>null</code> is returned, at which point a new <code>NextToken</code>
    #                       should be used.</p>
    #               </li>
    #               <li>
    #                  <p> If the IAM principal of the query initiator and the result reader are not the
    #                       same and/or the query initiator and the result reader do not have the same query
    #                       string in the query requests, the query will fail with an <code>Invalid
    #                           pagination token</code> error. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute max_rows
    #   <p> The total number of rows to be returned in the <code>Query</code> output. The initial
    #               run of <code>Query</code> with a <code>MaxRows</code> value specified will return the
    #               result set of the query in two cases: </p>
    #            <ul>
    #               <li>
    #                  <p>The size of the result is less than <code>1MB</code>.</p>
    #               </li>
    #               <li>
    #                  <p>The number of rows in the result set is less than the value of
    #                           <code>maxRows</code>.</p>
    #               </li>
    #            </ul>
    #            <p>Otherwise, the initial invocation of <code>Query</code> only returns a
    #                   <code>NextToken</code>, which can then be used in subsequent calls to fetch the
    #               result set. To resume pagination, provide the <code>NextToken</code> value in the
    #               subsequent command.</p>
    #            <p>If the row size is large (e.g. a row has many columns), Timestream may return
    #               fewer rows to keep the response size from exceeding the 1 MB limit. If
    #                   <code>MaxRows</code> is not provided, Timestream will send the necessary
    #               number of rows to meet the 1 MB limit.</p>
    #   @return [Integer]
    # @!attribute query_insights
    #   <p>Encapsulates settings for enabling <code>QueryInsights</code>.</p>
    #            <p>Enabling <code>QueryInsights</code> returns insights and metrics in addition to query results for the query that you executed. You can use <code>QueryInsights</code> to tune your query performance.</p>
    #   @return [Types::QueryInsights]
    class QueryRequest < Struct.new(
      :query_string,
      :client_token,
      :next_token,
      :max_rows,
      :query_insights,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute query_id
    #   <p> A unique ID for the given query. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p> A pagination token that can be used again on a <code>Query</code> call to get the
    #               next set of results. </p>
    #   @return [String]
    # @!attribute rows
    #   <p> The result set rows returned by the query. </p>
    #   @return [Array<Types::Row>]
    # @!attribute column_info
    #   <p> The column data types of the returned result set. </p>
    #   @return [Array<Types::ColumnInfo>]
    # @!attribute query_status
    #   <p>Information about the status of the query, including progress and bytes
    #               scanned.</p>
    #   @return [Types::QueryStatus]
    # @!attribute query_insights_response
    #   <p>Encapsulates <code>QueryInsights</code> containing insights and metrics related to the query that you executed.</p>
    #   @return [Types::QueryInsightsResponse]
    class QueryResponse < Struct.new(
      :query_id,
      :next_token,
      :rows,
      :column_info,
      :query_status,
      :query_insights_response,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides insights into the spatial coverage of the query, including the table with sub-optimal (max) spatial pruning. This information can help you identify areas for improvement in your partitioning strategy to enhance spatial pruning</p>
    #          <p>For example, you can do the following with the <code>QuerySpatialCoverage</code> information:</p>
    #          <ul>
    #             <li>
    #                <p>Add measure_name or use <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/customer-defined-partition-keys.html">customer-defined partition key</a> (CDPK) predicates.</p>
    #             </li>
    #             <li>
    #                <p>If you've already done the preceding action, remove functions around them or clauses, such as <code>LIKE</code>.</p>
    #             </li>
    #          </ul>
    # @!attribute max
    #   <p>Provides insights into the spatial coverage of the executed query and the table with the most inefficient spatial pruning.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Value</code> – The maximum ratio of spatial coverage.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TableArn</code> – The Amazon Resource Name (ARN) of the table with sub-optimal spatial pruning.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PartitionKey</code> – The partition key used for partitioning, which can be a default <code>measure_name</code> or a CDPK.</p>
    #               </li>
    #            </ul>
    #   @return [Types::QuerySpatialCoverageMax]
    class QuerySpatialCoverage < Struct.new(
      :max,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides insights into the table with the most sub-optimal spatial range scanned by your query.</p>
    # @!attribute value
    #   <p>The maximum ratio of spatial coverage.</p>
    #   @return [Float]
    # @!attribute table_arn
    #   <p>The Amazon Resource Name (ARN) of the table with the most sub-optimal spatial pruning.</p>
    #   @return [String]
    # @!attribute partition_key
    #   <p>The partition key used for partitioning, which can be a default <code>measure_name</code> or a <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/customer-defined-partition-keys.html">customer defined partition key</a>.</p>
    #   @return [Array<String>]
    class QuerySpatialCoverageMax < Struct.new(
      :value,
      :table_arn,
      :partition_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:value] = 0 unless options.key?(:value)
        super
      end
    end

    # <p>Information about the status of the query, including progress and bytes
    #             scanned.</p>
    # @!attribute progress_percentage
    #   <p>The progress of the query, expressed as a percentage.</p>
    #   @return [Float]
    # @!attribute cumulative_bytes_scanned
    #   <p>The amount of data scanned by the query in bytes. This is a cumulative sum and
    #               represents the total amount of bytes scanned since the query was started. </p>
    #   @return [Integer]
    # @!attribute cumulative_bytes_metered
    #   <p>The amount of data scanned by the query in bytes that you will be charged for. This is
    #               a cumulative sum and represents the total amount of data that you will be charged for
    #               since the query was started. The charge is applied only once and is either applied when
    #               the query completes running or when the query is cancelled. </p>
    #   @return [Integer]
    class QueryStatus < Struct.new(
      :progress_percentage,
      :cumulative_bytes_scanned,
      :cumulative_bytes_metered,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:progress_percentage] = 0 unless options.key?(:progress_percentage)
        options[:cumulative_bytes_scanned] = 0 unless options.key?(:cumulative_bytes_scanned)
        options[:cumulative_bytes_metered] = 0 unless options.key?(:cumulative_bytes_metered)
        super
      end
    end

    # <p>Provides insights into the temporal range of the query, including the table with the largest (max) time range.</p>
    # @!attribute max
    #   <p>Encapsulates the following properties that provide insights into the most sub-optimal performing table on the temporal axis:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Value</code> – The maximum duration in nanoseconds between the start and end of the query.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TableArn</code> – The Amazon Resource Name (ARN) of the table which is queried with the largest time range.</p>
    #               </li>
    #            </ul>
    #   @return [Types::QueryTemporalRangeMax]
    class QueryTemporalRange < Struct.new(
      :max,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides insights into the table with the most sub-optimal temporal pruning scanned by your query.</p>
    # @!attribute value
    #   <p>The maximum duration in nanoseconds between the start and end of the query.</p>
    #   @return [Integer]
    # @!attribute table_arn
    #   <p>The Amazon Resource Name (ARN) of the table which is queried with the largest time range.</p>
    #   @return [String]
    class QueryTemporalRangeMax < Struct.new(
      :value,
      :table_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:value] = 0 unless options.key?(:value)
        super
      end
    end

    # <p>The requested resource could not be found.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute scheduled_query_arn
    #   <p>The ARN of the scheduled query.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      :scheduled_query_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a single row in the query results.</p>
    # @!attribute data
    #   <p>List of data points in a single row of the result set.</p>
    #   @return [Array<Types::Datum>]
    class Row < Struct.new(
      :data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details on S3 location for error reports that result from running a query. </p>
    # @!attribute bucket_name
    #   <p> Name of the S3 bucket under which error reports will be created.</p>
    #   @return [String]
    # @!attribute object_key_prefix
    #   <p> Prefix for the error report key. Timestream by default adds the following prefix to
    #               the error report path. </p>
    #   @return [String]
    # @!attribute encryption_option
    #   <p> Encryption at rest options for the error reports. If no encryption option is
    #               specified, Timestream will choose SSE_S3 as default. </p>
    #   @return [String]
    class S3Configuration < Struct.new(
      :bucket_name,
      :object_key_prefix,
      :encryption_option,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> S3 report location for the scheduled query run.</p>
    # @!attribute bucket_name
    #   <p> S3 bucket name. </p>
    #   @return [String]
    # @!attribute object_key
    #   <p>S3 key. </p>
    #   @return [String]
    class S3ReportLocation < Struct.new(
      :bucket_name,
      :object_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration of the schedule of the query.</p>
    # @!attribute schedule_expression
    #   <p>An expression that denotes when to trigger the scheduled query run. This can be a cron
    #               expression or a rate expression. </p>
    #   @return [String]
    class ScheduleConfiguration < Struct.new(
      :schedule_expression,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Scheduled Query</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the scheduled query.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The creation time of the scheduled query.</p>
    #   @return [Time]
    # @!attribute state
    #   <p>State of scheduled query. </p>
    #   @return [String]
    # @!attribute previous_invocation_time
    #   <p>The last time the scheduled query was run.</p>
    #   @return [Time]
    # @!attribute next_invocation_time
    #   <p>The next time the scheduled query is to be run.</p>
    #   @return [Time]
    # @!attribute error_report_configuration
    #   <p>Configuration for scheduled query error reporting.</p>
    #   @return [Types::ErrorReportConfiguration]
    # @!attribute target_destination
    #   <p>Target data source where final scheduled query result will be written.</p>
    #   @return [Types::TargetDestination]
    # @!attribute last_run_status
    #   <p>Status of the last scheduled query run.</p>
    #   @return [String]
    class ScheduledQuery < Struct.new(
      :arn,
      :name,
      :creation_time,
      :state,
      :previous_invocation_time,
      :next_invocation_time,
      :error_report_configuration,
      :target_destination,
      :last_run_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Structure that describes scheduled query.</p>
    # @!attribute arn
    #   <p>Scheduled query ARN.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name of the scheduled query.</p>
    #   @return [String]
    # @!attribute query_string
    #   <p>The query to be run.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>Creation time of the scheduled query.</p>
    #   @return [Time]
    # @!attribute state
    #   <p>State of the scheduled query. </p>
    #   @return [String]
    # @!attribute previous_invocation_time
    #   <p>Last time the query was run.</p>
    #   @return [Time]
    # @!attribute next_invocation_time
    #   <p>The next time the scheduled query is scheduled to run.</p>
    #   @return [Time]
    # @!attribute schedule_configuration
    #   <p>Schedule configuration.</p>
    #   @return [Types::ScheduleConfiguration]
    # @!attribute notification_configuration
    #   <p>Notification configuration.</p>
    #   @return [Types::NotificationConfiguration]
    # @!attribute target_configuration
    #   <p>Scheduled query target store configuration.</p>
    #   @return [Types::TargetConfiguration]
    # @!attribute scheduled_query_execution_role_arn
    #   <p>IAM role that Timestream uses to run the schedule query.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>A customer provided KMS key used to encrypt the scheduled query resource.</p>
    #   @return [String]
    # @!attribute error_report_configuration
    #   <p>Error-reporting configuration for the scheduled query.</p>
    #   @return [Types::ErrorReportConfiguration]
    # @!attribute last_run_summary
    #   <p>Runtime summary for the last scheduled query run. </p>
    #   @return [Types::ScheduledQueryRunSummary]
    # @!attribute recently_failed_runs
    #   <p>Runtime summary for the last five failed scheduled query runs.</p>
    #   @return [Array<Types::ScheduledQueryRunSummary>]
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
      :recently_failed_runs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Encapsulates settings for enabling <code>QueryInsights</code> on an <code>ExecuteScheduledQueryRequest</code>.</p>
    # @!attribute mode
    #   <p>Provides the following modes to enable <code>ScheduledQueryInsights</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ENABLED_WITH_RATE_CONTROL</code> – Enables <code>ScheduledQueryInsights</code> for the queries being processed. This mode also includes a rate control mechanism, which limits the <code>QueryInsights</code> feature to 1 query per second (QPS).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code> – Disables <code>ScheduledQueryInsights</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ScheduledQueryInsights < Struct.new(
      :mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides various insights and metrics related to the <code>ExecuteScheduledQueryRequest</code> that was executed.</p>
    # @!attribute query_spatial_coverage
    #   <p>Provides insights into the spatial coverage of the query, including the table with sub-optimal (max) spatial pruning. This information can help you identify areas for improvement in your partitioning strategy to enhance spatial pruning.</p>
    #   @return [Types::QuerySpatialCoverage]
    # @!attribute query_temporal_range
    #   <p>Provides insights into the temporal range of the query, including the table with the largest (max) time range. Following are some of the potential options for optimizing time-based pruning:</p>
    #            <ul>
    #               <li>
    #                  <p>Add missing time-predicates.</p>
    #               </li>
    #               <li>
    #                  <p>Remove functions around the time predicates.</p>
    #               </li>
    #               <li>
    #                  <p>Add time predicates to all the sub-queries.</p>
    #               </li>
    #            </ul>
    #   @return [Types::QueryTemporalRange]
    # @!attribute query_table_count
    #   <p>Indicates the number of tables in the query.</p>
    #   @return [Integer]
    # @!attribute output_rows
    #   <p>Indicates the total number of rows returned as part of the query result set. You can use this data to validate if the number of rows in the result set have changed as part of the query tuning exercise.</p>
    #   @return [Integer]
    # @!attribute output_bytes
    #   <p>Indicates the size of query result set in bytes. You can use this data to validate if the result set has changed as part of the query tuning exercise.</p>
    #   @return [Integer]
    class ScheduledQueryInsightsResponse < Struct.new(
      :query_spatial_coverage,
      :query_temporal_range,
      :query_table_count,
      :output_rows,
      :output_bytes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:query_table_count] = nil unless options.key?(:query_table_count)
        options[:output_rows] = nil unless options.key?(:output_rows)
        options[:output_bytes] = nil unless options.key?(:output_bytes)
        super
      end
    end

    # <p>Run summary for the scheduled query</p>
    # @!attribute invocation_time
    #   <p>InvocationTime for this run. This is the time at which the query is scheduled to run.
    #               Parameter <code>@scheduled_runtime</code> can be used in the query to get the value.
    #           </p>
    #   @return [Time]
    # @!attribute trigger_time
    #   <p>The actual time when the query was run.</p>
    #   @return [Time]
    # @!attribute run_status
    #   <p>The status of a scheduled query run.</p>
    #   @return [String]
    # @!attribute execution_stats
    #   <p>Runtime statistics for a scheduled run.</p>
    #   @return [Types::ExecutionStats]
    # @!attribute query_insights_response
    #   <p>Provides various insights and metrics related to the run summary of the scheduled query.</p>
    #   @return [Types::ScheduledQueryInsightsResponse]
    # @!attribute error_report_location
    #   <p>S3 location for error report.</p>
    #   @return [Types::ErrorReportLocation]
    # @!attribute failure_reason
    #   <p>Error message for the scheduled query in case of failure. You might have to look at
    #               the error report to get more detailed error reasons. </p>
    #   @return [String]
    class ScheduledQueryRunSummary < Struct.new(
      :invocation_time,
      :trigger_time,
      :run_status,
      :execution_stats,
      :query_insights_response,
      :error_report_location,
      :failure_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details of the column that is returned by the query. </p>
    # @!attribute name
    #   <p>Name of the column.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Contains the data type of a column in a query result set. The data type can be scalar
    #               or complex. The supported scalar data types are integers, Boolean, string, double,
    #               timestamp, date, time, and intervals. The supported complex data types are arrays, rows,
    #               and timeseries.</p>
    #   @return [Types::Type]
    # @!attribute database_name
    #   <p> Database that has this column.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>Table within the database that has this column. </p>
    #   @return [String]
    # @!attribute aliased
    #   <p>True, if the column name was aliased by the query. False otherwise.</p>
    #   @return [Boolean]
    class SelectColumn < Struct.new(
      :name,
      :type,
      :database_name,
      :table_name,
      :aliased,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You have exceeded the service quota.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details on SNS that are required to send the notification.</p>
    # @!attribute topic_arn
    #   <p>SNS topic ARN that the scheduled query status notifications will be sent to.</p>
    #   @return [String]
    class SnsConfiguration < Struct.new(
      :topic_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A tag is a label that you assign to a Timestream database and/or table. Each tag
    #             consists of a key and an optional value, both of which you define. Tags enable you to
    #             categorize databases and/or tables, for example, by purpose, owner, or environment.
    #         </p>
    # @!attribute key
    #   <p>The key of the tag. Tag keys are case sensitive. </p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the tag. Tag values are case sensitive and can be null. </p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>Identifies the Timestream resource to which tags should be added. This value is an
    #               Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to be assigned to the Timestream resource.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration used for writing the output of a query.</p>
    # @!attribute timestream_configuration
    #   <p>Configuration needed to write data into the Timestream database and table.</p>
    #   @return [Types::TimestreamConfiguration]
    class TargetConfiguration < Struct.new(
      :timestream_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Destination details to write data for a target data source. Current supported data
    #             source is Timestream.</p>
    # @!attribute timestream_destination
    #   <p>Query result destination details for Timestream data source.</p>
    #   @return [Types::TimestreamDestination]
    class TargetDestination < Struct.new(
      :timestream_destination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was throttled due to excessive requests.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The timeseries data type represents the values of a measure over time. A time series
    #             is an array of rows of timestamps and measure values, with rows sorted in ascending
    #             order of time. A TimeSeriesDataPoint is a single data point in the time series. It
    #             represents a tuple of (time, measure value) in a time series. </p>
    # @!attribute time
    #   <p>The timestamp when the measure value was collected.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The measure value for the data point.</p>
    #   @return [Types::Datum]
    class TimeSeriesDataPoint < Struct.new(
      :time,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Configuration to write data into Timestream database and table. This configuration
    #             allows the user to map the query result select columns into the destination table
    #             columns. </p>
    # @!attribute database_name
    #   <p>Name of Timestream database to which the query result will be written.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>Name of Timestream table that the query result will be written to. The table should be
    #               within the same database that is provided in Timestream configuration.</p>
    #   @return [String]
    # @!attribute time_column
    #   <p>Column from query result that should be used as the time column in destination table.
    #               Column type for this should be TIMESTAMP.</p>
    #   @return [String]
    # @!attribute dimension_mappings
    #   <p> This is to allow mapping column(s) from the query result to the dimension in the
    #               destination table. </p>
    #   @return [Array<Types::DimensionMapping>]
    # @!attribute multi_measure_mappings
    #   <p>Multi-measure mappings.</p>
    #   @return [Types::MultiMeasureMappings]
    # @!attribute mixed_measure_mappings
    #   <p>Specifies how to map measures to multi-measure records.</p>
    #   @return [Array<Types::MixedMeasureMapping>]
    # @!attribute measure_name_column
    #   <p>Name of the measure column.</p>
    #   @return [String]
    class TimestreamConfiguration < Struct.new(
      :database_name,
      :table_name,
      :time_column,
      :dimension_mappings,
      :multi_measure_mappings,
      :mixed_measure_mappings,
      :measure_name_column,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Destination for scheduled query.</p>
    # @!attribute database_name
    #   <p>Timestream database name. </p>
    #   @return [String]
    # @!attribute table_name
    #   <p>Timestream table name. </p>
    #   @return [String]
    class TimestreamDestination < Struct.new(
      :database_name,
      :table_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the data type of a column in a query result set. The data type can be scalar
    #             or complex. The supported scalar data types are integers, Boolean, string, double,
    #             timestamp, date, time, and intervals. The supported complex data types are arrays, rows,
    #             and timeseries.</p>
    # @!attribute scalar_type
    #   <p>Indicates if the column is of type string, integer, Boolean, double, timestamp, date,
    #               time. For more information, see <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/supported-data-types.html">Supported data
    #                   types</a>.</p>
    #   @return [String]
    # @!attribute array_column_info
    #   <p>Indicates if the column is an array.</p>
    #   @return [Types::ColumnInfo]
    # @!attribute time_series_measure_value_column_info
    #   <p>Indicates if the column is a timeseries data type.</p>
    #   @return [Types::ColumnInfo]
    # @!attribute row_column_info
    #   <p>Indicates if the column is a row.</p>
    #   @return [Array<Types::ColumnInfo>]
    class Type < Struct.new(
      :scalar_type,
      :array_column_info,
      :time_series_measure_value_column_info,
      :row_column_info,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Timestream resource that the tags will be removed from. This value is an Amazon
    #               Resource Name (ARN). </p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of tags keys. Existing tags of the resource whose keys are members of this list
    #               will be removed from the Timestream resource. </p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_query_tcu
    #   <p>The maximum number of compute units the service will use at any point in time to serve your queries. To run queries, you must set a minimum capacity of 4 TCU. You can set the maximum number of TCU in multiples of 4, for example, 4, 8, 16, 32, and so on. The maximum value supported for <code>MaxQueryTCU</code> is 1000. To request an increase to this soft limit, contact Amazon Web Services Support. For information about the default quota for maxQueryTCU, see Default quotas. This configuration is applicable only for on-demand usage of Timestream Compute Units (TCUs).</p>
    #            <p>The maximum value supported for <code>MaxQueryTCU</code> is 1000. To request an increase to this soft limit, contact Amazon Web Services Support. For information about the default quota for <code>maxQueryTCU</code>, see <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html#limits.default">Default quotas</a>.</p>
    #   @return [Integer]
    # @!attribute query_pricing_model
    #   <p>The pricing model for queries in an account.</p>
    #            <note>
    #               <p>The <code>QueryPricingModel</code> parameter is used by several Timestream operations; however, the <code>UpdateAccountSettings</code> API operation doesn't recognize any values other than <code>COMPUTE_UNITS</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute query_compute
    #   <p>Modifies the query compute settings configured in your account, including the query pricing model and provisioned Timestream Compute Units (TCUs) in your account.</p>
    #            <note>
    #               <p>This API is idempotent, meaning that making the same request multiple times will have the same effect as making the request once.</p>
    #            </note>
    #   @return [Types::QueryComputeRequest]
    class UpdateAccountSettingsRequest < Struct.new(
      :max_query_tcu,
      :query_pricing_model,
      :query_compute,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_query_tcu
    #   <p>The configured maximum number of compute units the service will use at any point in time to serve your queries.</p>
    #   @return [Integer]
    # @!attribute query_pricing_model
    #   <p>The pricing model for an account.</p>
    #   @return [String]
    # @!attribute query_compute
    #   <p>Confirms the updated account settings for querying data in your account.</p>
    #   @return [Types::QueryComputeResponse]
    class UpdateAccountSettingsResponse < Struct.new(
      :max_query_tcu,
      :query_pricing_model,
      :query_compute,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scheduled_query_arn
    #   <p>ARN of the scheuled query.</p>
    #   @return [String]
    # @!attribute state
    #   <p>State of the scheduled query. </p>
    #   @return [String]
    class UpdateScheduledQueryRequest < Struct.new(
      :scheduled_query_arn,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Invalid or malformed request. </p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
