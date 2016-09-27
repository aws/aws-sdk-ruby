# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws
  module CloudWatchLogs
    module Types

      # @note When making an API call, pass CancelExportTaskRequest
      #   data as a hash:
      #
      #       {
      #         task_id: "ExportTaskId", # required
      #       }
      # @!attribute [rw] task_id
      #   Id of the export task to cancel.
      #   @return [String]
      class CancelExportTaskRequest < Struct.new(
        :task_id)
        include Aws::Structure
      end

      # @note When making an API call, pass CreateExportTaskRequest
      #   data as a hash:
      #
      #       {
      #         task_name: "ExportTaskName",
      #         log_group_name: "LogGroupName", # required
      #         log_stream_name_prefix: "LogStreamName",
      #         from: 1, # required
      #         to: 1, # required
      #         destination: "ExportDestinationBucket", # required
      #         destination_prefix: "ExportDestinationPrefix",
      #       }
      # @!attribute [rw] task_name
      #   The name of the export task.
      #   @return [String]
      #
      # @!attribute [rw] log_group_name
      #   The name of the log group to export.
      #   @return [String]
      #
      # @!attribute [rw] log_stream_name_prefix
      #   Will only export log streams that match the provided
      #   logStreamNamePrefix. If you don't specify a value, no prefix filter
      #   is applied.
      #   @return [String]
      #
      # @!attribute [rw] from
      #   A point in time expressed as the number of milliseconds since Jan 1,
      #   1970 00:00:00 UTC. It indicates the start time of the range for the
      #   request. Events with a timestamp prior to this time will not be
      #   exported.
      #   @return [Integer]
      #
      # @!attribute [rw] to
      #   A point in time expressed as the number of milliseconds since Jan 1,
      #   1970 00:00:00 UTC. It indicates the end time of the range for the
      #   request. Events with a timestamp later than this time will not be
      #   exported.
      #   @return [Integer]
      #
      # @!attribute [rw] destination
      #   Name of Amazon S3 bucket to which the log data will be exported.
      #
      #   **Note:** Only buckets in the same AWS region are supported.
      #   @return [String]
      #
      # @!attribute [rw] destination_prefix
      #   Prefix that will be used as the start of Amazon S3 key for every
      #   object exported. If not specified, this defaults to
      #   'exportedlogs'.
      #   @return [String]
      class CreateExportTaskRequest < Struct.new(
        :task_name,
        :log_group_name,
        :log_stream_name_prefix,
        :from,
        :to,
        :destination,
        :destination_prefix)
        include Aws::Structure
      end

      # @!attribute [rw] task_id
      #   Id of the export task that got created.
      #   @return [String]
      class CreateExportTaskResponse < Struct.new(
        :task_id)
        include Aws::Structure
      end

      # @note When making an API call, pass CreateLogGroupRequest
      #   data as a hash:
      #
      #       {
      #         log_group_name: "LogGroupName", # required
      #       }
      # @!attribute [rw] log_group_name
      #   The name of the log group to create.
      #   @return [String]
      class CreateLogGroupRequest < Struct.new(
        :log_group_name)
        include Aws::Structure
      end

      # @note When making an API call, pass CreateLogStreamRequest
      #   data as a hash:
      #
      #       {
      #         log_group_name: "LogGroupName", # required
      #         log_stream_name: "LogStreamName", # required
      #       }
      # @!attribute [rw] log_group_name
      #   The name of the log group under which the log stream is to be
      #   created.
      #   @return [String]
      #
      # @!attribute [rw] log_stream_name
      #   The name of the log stream to create.
      #   @return [String]
      class CreateLogStreamRequest < Struct.new(
        :log_group_name,
        :log_stream_name)
        include Aws::Structure
      end

      # @note When making an API call, pass DeleteDestinationRequest
      #   data as a hash:
      #
      #       {
      #         destination_name: "DestinationName", # required
      #       }
      # @!attribute [rw] destination_name
      #   The name of destination to delete.
      #   @return [String]
      class DeleteDestinationRequest < Struct.new(
        :destination_name)
        include Aws::Structure
      end

      # @note When making an API call, pass DeleteLogGroupRequest
      #   data as a hash:
      #
      #       {
      #         log_group_name: "LogGroupName", # required
      #       }
      # @!attribute [rw] log_group_name
      #   The name of the log group to delete.
      #   @return [String]
      class DeleteLogGroupRequest < Struct.new(
        :log_group_name)
        include Aws::Structure
      end

      # @note When making an API call, pass DeleteLogStreamRequest
      #   data as a hash:
      #
      #       {
      #         log_group_name: "LogGroupName", # required
      #         log_stream_name: "LogStreamName", # required
      #       }
      # @!attribute [rw] log_group_name
      #   The name of the log group under which the log stream to delete
      #   belongs.
      #   @return [String]
      #
      # @!attribute [rw] log_stream_name
      #   The name of the log stream to delete.
      #   @return [String]
      class DeleteLogStreamRequest < Struct.new(
        :log_group_name,
        :log_stream_name)
        include Aws::Structure
      end

      # @note When making an API call, pass DeleteMetricFilterRequest
      #   data as a hash:
      #
      #       {
      #         log_group_name: "LogGroupName", # required
      #         filter_name: "FilterName", # required
      #       }
      # @!attribute [rw] log_group_name
      #   The name of the log group that is associated with the metric filter
      #   to delete.
      #   @return [String]
      #
      # @!attribute [rw] filter_name
      #   The name of the metric filter to delete.
      #   @return [String]
      class DeleteMetricFilterRequest < Struct.new(
        :log_group_name,
        :filter_name)
        include Aws::Structure
      end

      # @note When making an API call, pass DeleteRetentionPolicyRequest
      #   data as a hash:
      #
      #       {
      #         log_group_name: "LogGroupName", # required
      #       }
      # @!attribute [rw] log_group_name
      #   The name of the log group that is associated with the retention
      #   policy to delete.
      #   @return [String]
      class DeleteRetentionPolicyRequest < Struct.new(
        :log_group_name)
        include Aws::Structure
      end

      # @note When making an API call, pass DeleteSubscriptionFilterRequest
      #   data as a hash:
      #
      #       {
      #         log_group_name: "LogGroupName", # required
      #         filter_name: "FilterName", # required
      #       }
      # @!attribute [rw] log_group_name
      #   The name of the log group that is associated with the subscription
      #   filter to delete.
      #   @return [String]
      #
      # @!attribute [rw] filter_name
      #   The name of the subscription filter to delete.
      #   @return [String]
      class DeleteSubscriptionFilterRequest < Struct.new(
        :log_group_name,
        :filter_name)
        include Aws::Structure
      end

      # @note When making an API call, pass DescribeDestinationsRequest
      #   data as a hash:
      #
      #       {
      #         destination_name_prefix: "DestinationName",
      #         next_token: "NextToken",
      #         limit: 1,
      #       }
      # @!attribute [rw] destination_name_prefix
      #   Will only return destinations that match the provided
      #   destinationNamePrefix. If you don't specify a value, no prefix is
      #   applied.
      #   @return [String]
      #
      # @!attribute [rw] next_token
      #   A string token used for pagination that points to the next page of
      #   results. It must be a value obtained from the response of the
      #   previous request. The token expires after 24 hours.
      #   @return [String]
      #
      # @!attribute [rw] limit
      #   The maximum number of results to return.
      #   @return [Integer]
      class DescribeDestinationsRequest < Struct.new(
        :destination_name_prefix,
        :next_token,
        :limit)
        include Aws::Structure
      end

      # @!attribute [rw] destinations
      #   @return [Array<Types::Destination>]
      #
      # @!attribute [rw] next_token
      #   A string token used for pagination that points to the next page of
      #   results. It must be a value obtained from the response of the
      #   previous request. The token expires after 24 hours.
      #   @return [String]
      class DescribeDestinationsResponse < Struct.new(
        :destinations,
        :next_token)
        include Aws::Structure
      end

      # @note When making an API call, pass DescribeExportTasksRequest
      #   data as a hash:
      #
      #       {
      #         task_id: "ExportTaskId",
      #         status_code: "CANCELLED", # accepts CANCELLED, COMPLETED, FAILED, PENDING, PENDING_CANCEL, RUNNING
      #         next_token: "NextToken",
      #         limit: 1,
      #       }
      # @!attribute [rw] task_id
      #   Export task that matches the specified task Id will be returned.
      #   This can result in zero or one export task.
      #   @return [String]
      #
      # @!attribute [rw] status_code
      #   All export tasks that matches the specified status code will be
      #   returned. This can return zero or more export tasks.
      #   @return [String]
      #
      # @!attribute [rw] next_token
      #   A string token used for pagination that points to the next page of
      #   results. It must be a value obtained from the response of the
      #   previous `DescribeExportTasks` request.
      #   @return [String]
      #
      # @!attribute [rw] limit
      #   The maximum number of items returned in the response. If you don't
      #   specify a value, the request would return up to 50 items.
      #   @return [Integer]
      class DescribeExportTasksRequest < Struct.new(
        :task_id,
        :status_code,
        :next_token,
        :limit)
        include Aws::Structure
      end

      # @!attribute [rw] export_tasks
      #   A list of export tasks.
      #   @return [Array<Types::ExportTask>]
      #
      # @!attribute [rw] next_token
      #   A string token used for pagination that points to the next page of
      #   results. It must be a value obtained from the response of the
      #   previous request. The token expires after 24 hours.
      #   @return [String]
      class DescribeExportTasksResponse < Struct.new(
        :export_tasks,
        :next_token)
        include Aws::Structure
      end

      # @note When making an API call, pass DescribeLogGroupsRequest
      #   data as a hash:
      #
      #       {
      #         log_group_name_prefix: "LogGroupName",
      #         next_token: "NextToken",
      #         limit: 1,
      #       }
      # @!attribute [rw] log_group_name_prefix
      #   Will only return log groups that match the provided
      #   logGroupNamePrefix. If you don't specify a value, no prefix filter
      #   is applied.
      #   @return [String]
      #
      # @!attribute [rw] next_token
      #   A string token used for pagination that points to the next page of
      #   results. It must be a value obtained from the response of the
      #   previous `DescribeLogGroups` request.
      #   @return [String]
      #
      # @!attribute [rw] limit
      #   The maximum number of items returned in the response. If you don't
      #   specify a value, the request would return up to 50 items.
      #   @return [Integer]
      class DescribeLogGroupsRequest < Struct.new(
        :log_group_name_prefix,
        :next_token,
        :limit)
        include Aws::Structure
      end

      # @!attribute [rw] log_groups
      #   A list of log groups.
      #   @return [Array<Types::LogGroup>]
      #
      # @!attribute [rw] next_token
      #   A string token used for pagination that points to the next page of
      #   results. It must be a value obtained from the response of the
      #   previous request. The token expires after 24 hours.
      #   @return [String]
      class DescribeLogGroupsResponse < Struct.new(
        :log_groups,
        :next_token)
        include Aws::Structure
      end

      # @note When making an API call, pass DescribeLogStreamsRequest
      #   data as a hash:
      #
      #       {
      #         log_group_name: "LogGroupName", # required
      #         log_stream_name_prefix: "LogStreamName",
      #         order_by: "LogStreamName", # accepts LogStreamName, LastEventTime
      #         descending: false,
      #         next_token: "NextToken",
      #         limit: 1,
      #       }
      # @!attribute [rw] log_group_name
      #   The log group name for which log streams are to be listed.
      #   @return [String]
      #
      # @!attribute [rw] log_stream_name_prefix
      #   Will only return log streams that match the provided
      #   logStreamNamePrefix. If you don't specify a value, no prefix filter
      #   is applied.
      #   @return [String]
      #
      # @!attribute [rw] order_by
      #   Specifies what to order the returned log streams by. Valid arguments
      #   are 'LogStreamName' or 'LastEventTime'. If you don't specify a
      #   value, results are ordered by LogStreamName. If 'LastEventTime' is
      #   chosen, the request cannot also contain a logStreamNamePrefix.
      #   @return [String]
      #
      # @!attribute [rw] descending
      #   If set to true, results are returned in descending order. If you
      #   don't specify a value or set it to false, results are returned in
      #   ascending order.
      #   @return [Boolean]
      #
      # @!attribute [rw] next_token
      #   A string token used for pagination that points to the next page of
      #   results. It must be a value obtained from the response of the
      #   previous `DescribeLogStreams` request.
      #   @return [String]
      #
      # @!attribute [rw] limit
      #   The maximum number of items returned in the response. If you don't
      #   specify a value, the request would return up to 50 items.
      #   @return [Integer]
      class DescribeLogStreamsRequest < Struct.new(
        :log_group_name,
        :log_stream_name_prefix,
        :order_by,
        :descending,
        :next_token,
        :limit)
        include Aws::Structure
      end

      # @!attribute [rw] log_streams
      #   A list of log streams.
      #   @return [Array<Types::LogStream>]
      #
      # @!attribute [rw] next_token
      #   A string token used for pagination that points to the next page of
      #   results. It must be a value obtained from the response of the
      #   previous request. The token expires after 24 hours.
      #   @return [String]
      class DescribeLogStreamsResponse < Struct.new(
        :log_streams,
        :next_token)
        include Aws::Structure
      end

      # @note When making an API call, pass DescribeMetricFiltersRequest
      #   data as a hash:
      #
      #       {
      #         log_group_name: "LogGroupName", # required
      #         filter_name_prefix: "FilterName",
      #         next_token: "NextToken",
      #         limit: 1,
      #       }
      # @!attribute [rw] log_group_name
      #   The log group name for which metric filters are to be listed.
      #   @return [String]
      #
      # @!attribute [rw] filter_name_prefix
      #   Will only return metric filters that match the provided
      #   filterNamePrefix. If you don't specify a value, no prefix filter is
      #   applied.
      #   @return [String]
      #
      # @!attribute [rw] next_token
      #   A string token used for pagination that points to the next page of
      #   results. It must be a value obtained from the response of the
      #   previous `DescribeMetricFilters` request.
      #   @return [String]
      #
      # @!attribute [rw] limit
      #   The maximum number of items returned in the response. If you don't
      #   specify a value, the request would return up to 50 items.
      #   @return [Integer]
      class DescribeMetricFiltersRequest < Struct.new(
        :log_group_name,
        :filter_name_prefix,
        :next_token,
        :limit)
        include Aws::Structure
      end

      # @!attribute [rw] metric_filters
      #   @return [Array<Types::MetricFilter>]
      #
      # @!attribute [rw] next_token
      #   A string token used for pagination that points to the next page of
      #   results. It must be a value obtained from the response of the
      #   previous request. The token expires after 24 hours.
      #   @return [String]
      class DescribeMetricFiltersResponse < Struct.new(
        :metric_filters,
        :next_token)
        include Aws::Structure
      end

      # @note When making an API call, pass DescribeSubscriptionFiltersRequest
      #   data as a hash:
      #
      #       {
      #         log_group_name: "LogGroupName", # required
      #         filter_name_prefix: "FilterName",
      #         next_token: "NextToken",
      #         limit: 1,
      #       }
      # @!attribute [rw] log_group_name
      #   The log group name for which subscription filters are to be listed.
      #   @return [String]
      #
      # @!attribute [rw] filter_name_prefix
      #   Will only return subscription filters that match the provided
      #   filterNamePrefix. If you don't specify a value, no prefix filter is
      #   applied.
      #   @return [String]
      #
      # @!attribute [rw] next_token
      #   A string token used for pagination that points to the next page of
      #   results. It must be a value obtained from the response of the
      #   previous request. The token expires after 24 hours.
      #   @return [String]
      #
      # @!attribute [rw] limit
      #   The maximum number of results to return.
      #   @return [Integer]
      class DescribeSubscriptionFiltersRequest < Struct.new(
        :log_group_name,
        :filter_name_prefix,
        :next_token,
        :limit)
        include Aws::Structure
      end

      # @!attribute [rw] subscription_filters
      #   @return [Array<Types::SubscriptionFilter>]
      #
      # @!attribute [rw] next_token
      #   A string token used for pagination that points to the next page of
      #   results. It must be a value obtained from the response of the
      #   previous request. The token expires after 24 hours.
      #   @return [String]
      class DescribeSubscriptionFiltersResponse < Struct.new(
        :subscription_filters,
        :next_token)
        include Aws::Structure
      end

      # A cross account destination that is the recipient of subscription log
      # events.
      # @!attribute [rw] destination_name
      #   Name of the destination.
      #   @return [String]
      #
      # @!attribute [rw] target_arn
      #   ARN of the physical target where the log events will be delivered
      #   (eg. ARN of a Kinesis stream).
      #   @return [String]
      #
      # @!attribute [rw] role_arn
      #   A role for impersonation for delivering log events to the target.
      #   @return [String]
      #
      # @!attribute [rw] access_policy
      #   An IAM policy document that governs which AWS accounts can create
      #   subscription filters against this destination.
      #   @return [String]
      #
      # @!attribute [rw] arn
      #   ARN of this destination.
      #   @return [String]
      #
      # @!attribute [rw] creation_time
      #   A point in time expressed as the number of milliseconds since Jan 1,
      #   1970 00:00:00 UTC specifying when this destination was created.
      #   @return [Integer]
      class Destination < Struct.new(
        :destination_name,
        :target_arn,
        :role_arn,
        :access_policy,
        :arn,
        :creation_time)
        include Aws::Structure
      end

      # Represents an export task.
      # @!attribute [rw] task_id
      #   Id of the export task.
      #   @return [String]
      #
      # @!attribute [rw] task_name
      #   The name of the export task.
      #   @return [String]
      #
      # @!attribute [rw] log_group_name
      #   The name of the log group from which logs data was exported.
      #   @return [String]
      #
      # @!attribute [rw] from
      #   A point in time expressed as the number of milliseconds since Jan 1,
      #   1970 00:00:00 UTC. Events with a timestamp prior to this time are
      #   not exported.
      #   @return [Integer]
      #
      # @!attribute [rw] to
      #   A point in time expressed as the number of milliseconds since Jan 1,
      #   1970 00:00:00 UTC. Events with a timestamp later than this time are
      #   not exported.
      #   @return [Integer]
      #
      # @!attribute [rw] destination
      #   Name of Amazon S3 bucket to which the log data was exported.
      #   @return [String]
      #
      # @!attribute [rw] destination_prefix
      #   Prefix that was used as the start of Amazon S3 key for every object
      #   exported.
      #   @return [String]
      #
      # @!attribute [rw] status
      #   Status of the export task.
      #   @return [Types::ExportTaskStatus]
      #
      # @!attribute [rw] execution_info
      #   Execution info about the export task.
      #   @return [Types::ExportTaskExecutionInfo]
      class ExportTask < Struct.new(
        :task_id,
        :task_name,
        :log_group_name,
        :from,
        :to,
        :destination,
        :destination_prefix,
        :status,
        :execution_info)
        include Aws::Structure
      end

      # Represents the status of an export task.
      # @!attribute [rw] creation_time
      #   A point in time when the export task got created.
      #   @return [Integer]
      #
      # @!attribute [rw] completion_time
      #   A point in time when the export task got completed.
      #   @return [Integer]
      class ExportTaskExecutionInfo < Struct.new(
        :creation_time,
        :completion_time)
        include Aws::Structure
      end

      # Represents the status of an export task.
      # @!attribute [rw] code
      #   Status code of the export task.
      #   @return [String]
      #
      # @!attribute [rw] message
      #   Status message related to the `code`.
      #   @return [String]
      class ExportTaskStatus < Struct.new(
        :code,
        :message)
        include Aws::Structure
      end

      # @note When making an API call, pass FilterLogEventsRequest
      #   data as a hash:
      #
      #       {
      #         log_group_name: "LogGroupName", # required
      #         log_stream_names: ["LogStreamName"],
      #         start_time: 1,
      #         end_time: 1,
      #         filter_pattern: "FilterPattern",
      #         next_token: "NextToken",
      #         limit: 1,
      #         interleaved: false,
      #       }
      # @!attribute [rw] log_group_name
      #   The name of the log group to query.
      #   @return [String]
      #
      # @!attribute [rw] log_stream_names
      #   Optional list of log stream names within the specified log group to
      #   search. Defaults to all the log streams in the log group.
      #   @return [Array<String>]
      #
      # @!attribute [rw] start_time
      #   A point in time expressed as the number of milliseconds since Jan 1,
      #   1970 00:00:00 UTC. If provided, events with a timestamp prior to
      #   this time are not returned.
      #   @return [Integer]
      #
      # @!attribute [rw] end_time
      #   A point in time expressed as the number of milliseconds since Jan 1,
      #   1970 00:00:00 UTC. If provided, events with a timestamp later than
      #   this time are not returned.
      #   @return [Integer]
      #
      # @!attribute [rw] filter_pattern
      #   A valid CloudWatch Logs filter pattern to use for filtering the
      #   response. If not provided, all the events are matched.
      #   @return [String]
      #
      # @!attribute [rw] next_token
      #   A pagination token obtained from a `FilterLogEvents` response to
      #   continue paginating the FilterLogEvents results. This token is
      #   omitted from the response when there are no other events to display.
      #   @return [String]
      #
      # @!attribute [rw] limit
      #   The maximum number of events to return in a page of results. Default
      #   is 10,000 events.
      #   @return [Integer]
      #
      # @!attribute [rw] interleaved
      #   If provided, the API will make a best effort to provide responses
      #   that contain events from multiple log streams within the log group
      #   interleaved in a single response. If not provided, all the matched
      #   log events in the first log stream will be searched first, then
      #   those in the next log stream, etc.
      #   @return [Boolean]
      class FilterLogEventsRequest < Struct.new(
        :log_group_name,
        :log_stream_names,
        :start_time,
        :end_time,
        :filter_pattern,
        :next_token,
        :limit,
        :interleaved)
        include Aws::Structure
      end

      # @!attribute [rw] events
      #   A list of `FilteredLogEvent` objects representing the matched events
      #   from the request.
      #   @return [Array<Types::FilteredLogEvent>]
      #
      # @!attribute [rw] searched_log_streams
      #   A list of `SearchedLogStream` objects indicating which log streams
      #   have been searched in this request and whether each has been
      #   searched completely or still has more to be paginated.
      #   @return [Array<Types::SearchedLogStream>]
      #
      # @!attribute [rw] next_token
      #   A pagination token obtained from a `FilterLogEvents` response to
      #   continue paginating the FilterLogEvents results. This token is
      #   omitted from the response when there are no other events to display.
      #   @return [String]
      class FilterLogEventsResponse < Struct.new(
        :events,
        :searched_log_streams,
        :next_token)
        include Aws::Structure
      end

      # Represents a matched event from a `FilterLogEvents` request.
      # @!attribute [rw] log_stream_name
      #   The name of the log stream this event belongs to.
      #   @return [String]
      #
      # @!attribute [rw] timestamp
      #   A point in time expressed as the number of milliseconds since Jan 1,
      #   1970 00:00:00 UTC.
      #   @return [Integer]
      #
      # @!attribute [rw] message
      #   The data contained in the log event.
      #   @return [String]
      #
      # @!attribute [rw] ingestion_time
      #   A point in time expressed as the number of milliseconds since Jan 1,
      #   1970 00:00:00 UTC.
      #   @return [Integer]
      #
      # @!attribute [rw] event_id
      #   A unique identifier for this event.
      #   @return [String]
      class FilteredLogEvent < Struct.new(
        :log_stream_name,
        :timestamp,
        :message,
        :ingestion_time,
        :event_id)
        include Aws::Structure
      end

      # @note When making an API call, pass GetLogEventsRequest
      #   data as a hash:
      #
      #       {
      #         log_group_name: "LogGroupName", # required
      #         log_stream_name: "LogStreamName", # required
      #         start_time: 1,
      #         end_time: 1,
      #         next_token: "NextToken",
      #         limit: 1,
      #         start_from_head: false,
      #       }
      # @!attribute [rw] log_group_name
      #   The name of the log group to query.
      #   @return [String]
      #
      # @!attribute [rw] log_stream_name
      #   The name of the log stream to query.
      #   @return [String]
      #
      # @!attribute [rw] start_time
      #   A point in time expressed as the number of milliseconds since Jan 1,
      #   1970 00:00:00 UTC.
      #   @return [Integer]
      #
      # @!attribute [rw] end_time
      #   A point in time expressed as the number of milliseconds since Jan 1,
      #   1970 00:00:00 UTC.
      #   @return [Integer]
      #
      # @!attribute [rw] next_token
      #   A string token used for pagination that points to the next page of
      #   results. It must be a value obtained from the `nextForwardToken` or
      #   `nextBackwardToken` fields in the response of the previous
      #   `GetLogEvents` request.
      #   @return [String]
      #
      # @!attribute [rw] limit
      #   The maximum number of log events returned in the response. If you
      #   don't specify a value, the request would return as many log events
      #   as can fit in a response size of 1MB, up to 10,000 log events.
      #   @return [Integer]
      #
      # @!attribute [rw] start_from_head
      #   If set to true, the earliest log events would be returned first. The
      #   default is false (the latest log events are returned first).
      #   @return [Boolean]
      class GetLogEventsRequest < Struct.new(
        :log_group_name,
        :log_stream_name,
        :start_time,
        :end_time,
        :next_token,
        :limit,
        :start_from_head)
        include Aws::Structure
      end

      # @!attribute [rw] events
      #   @return [Array<Types::OutputLogEvent>]
      #
      # @!attribute [rw] next_forward_token
      #   A string token used for pagination that points to the next page of
      #   results. It must be a value obtained from the response of the
      #   previous request. The token expires after 24 hours.
      #   @return [String]
      #
      # @!attribute [rw] next_backward_token
      #   A string token used for pagination that points to the next page of
      #   results. It must be a value obtained from the response of the
      #   previous request. The token expires after 24 hours.
      #   @return [String]
      class GetLogEventsResponse < Struct.new(
        :events,
        :next_forward_token,
        :next_backward_token)
        include Aws::Structure
      end

      # A log event is a record of some activity that was recorded by the
      # application or resource being monitored. The log event record that
      # CloudWatch Logs understands contains two properties: the timestamp of
      # when the event occurred, and the raw event message.
      # @note When making an API call, pass InputLogEvent
      #   data as a hash:
      #
      #       {
      #         timestamp: 1, # required
      #         message: "EventMessage", # required
      #       }
      # @!attribute [rw] timestamp
      #   A point in time expressed as the number of milliseconds since Jan 1,
      #   1970 00:00:00 UTC.
      #   @return [Integer]
      #
      # @!attribute [rw] message
      #   @return [String]
      class InputLogEvent < Struct.new(
        :timestamp,
        :message)
        include Aws::Structure
      end

      # @!attribute [rw] log_group_name
      #   @return [String]
      #
      # @!attribute [rw] creation_time
      #   A point in time expressed as the number of milliseconds since Jan 1,
      #   1970 00:00:00 UTC.
      #   @return [Integer]
      #
      # @!attribute [rw] retention_in_days
      #   Specifies the number of days you want to retain log events in the
      #   specified log group. Possible values are: 1, 3, 5, 7, 14, 30, 60,
      #   90, 120, 150, 180, 365, 400, 545, 731, 1827, 3653.
      #   @return [Integer]
      #
      # @!attribute [rw] metric_filter_count
      #   The number of metric filters associated with the log group.
      #   @return [Integer]
      #
      # @!attribute [rw] arn
      #   @return [String]
      #
      # @!attribute [rw] stored_bytes
      #   @return [Integer]
      class LogGroup < Struct.new(
        :log_group_name,
        :creation_time,
        :retention_in_days,
        :metric_filter_count,
        :arn,
        :stored_bytes)
        include Aws::Structure
      end

      # A log stream is sequence of log events from a single emitter of logs.
      # @!attribute [rw] log_stream_name
      #   @return [String]
      #
      # @!attribute [rw] creation_time
      #   A point in time expressed as the number of milliseconds since Jan 1,
      #   1970 00:00:00 UTC.
      #   @return [Integer]
      #
      # @!attribute [rw] first_event_timestamp
      #   A point in time expressed as the number of milliseconds since Jan 1,
      #   1970 00:00:00 UTC.
      #   @return [Integer]
      #
      # @!attribute [rw] last_event_timestamp
      #   A point in time expressed as the number of milliseconds since Jan 1,
      #   1970 00:00:00 UTC.
      #   @return [Integer]
      #
      # @!attribute [rw] last_ingestion_time
      #   A point in time expressed as the number of milliseconds since Jan 1,
      #   1970 00:00:00 UTC.
      #   @return [Integer]
      #
      # @!attribute [rw] upload_sequence_token
      #   A string token used for making PutLogEvents requests. A
      #   `sequenceToken` can only be used once, and PutLogEvents requests
      #   must include the `sequenceToken` obtained from the response of the
      #   previous request.
      #   @return [String]
      #
      # @!attribute [rw] arn
      #   @return [String]
      #
      # @!attribute [rw] stored_bytes
      #   @return [Integer]
      class LogStream < Struct.new(
        :log_stream_name,
        :creation_time,
        :first_event_timestamp,
        :last_event_timestamp,
        :last_ingestion_time,
        :upload_sequence_token,
        :arn,
        :stored_bytes)
        include Aws::Structure
      end

      # Metric filters can be used to express how CloudWatch Logs would
      # extract metric observations from ingested log events and transform
      # them to metric data in a CloudWatch metric.
      # @!attribute [rw] filter_name
      #   A name for a metric or subscription filter.
      #   @return [String]
      #
      # @!attribute [rw] filter_pattern
      #   A symbolic description of how CloudWatch Logs should interpret the
      #   data in each log event. For example, a log event may contain
      #   timestamps, IP addresses, strings, and so on. You use the filter
      #   pattern to specify what to look for in the log event message.
      #   @return [String]
      #
      # @!attribute [rw] metric_transformations
      #   @return [Array<Types::MetricTransformation>]
      #
      # @!attribute [rw] creation_time
      #   A point in time expressed as the number of milliseconds since Jan 1,
      #   1970 00:00:00 UTC.
      #   @return [Integer]
      class MetricFilter < Struct.new(
        :filter_name,
        :filter_pattern,
        :metric_transformations,
        :creation_time)
        include Aws::Structure
      end

      # @!attribute [rw] event_number
      #   @return [Integer]
      #
      # @!attribute [rw] event_message
      #   @return [String]
      #
      # @!attribute [rw] extracted_values
      #   @return [Hash<String,String>]
      class MetricFilterMatchRecord < Struct.new(
        :event_number,
        :event_message,
        :extracted_values)
        include Aws::Structure
      end

      # @note When making an API call, pass MetricTransformation
      #   data as a hash:
      #
      #       {
      #         metric_name: "MetricName", # required
      #         metric_namespace: "MetricNamespace", # required
      #         metric_value: "MetricValue", # required
      #         default_value: 1.0,
      #       }
      # @!attribute [rw] metric_name
      #   Name of the metric.
      #   @return [String]
      #
      # @!attribute [rw] metric_namespace
      #   Namespace to which the metric belongs.
      #   @return [String]
      #
      # @!attribute [rw] metric_value
      #   A string representing a value to publish to this metric when a
      #   filter pattern matches a log event.
      #   @return [String]
      #
      # @!attribute [rw] default_value
      #   (Optional) A default value to emit when a filter pattern does not
      #   match a log event. Can be null.
      #   @return [Float]
      class MetricTransformation < Struct.new(
        :metric_name,
        :metric_namespace,
        :metric_value,
        :default_value)
        include Aws::Structure
      end

      # @!attribute [rw] timestamp
      #   A point in time expressed as the number of milliseconds since Jan 1,
      #   1970 00:00:00 UTC.
      #   @return [Integer]
      #
      # @!attribute [rw] message
      #   @return [String]
      #
      # @!attribute [rw] ingestion_time
      #   A point in time expressed as the number of milliseconds since Jan 1,
      #   1970 00:00:00 UTC.
      #   @return [Integer]
      class OutputLogEvent < Struct.new(
        :timestamp,
        :message,
        :ingestion_time)
        include Aws::Structure
      end

      # @note When making an API call, pass PutDestinationPolicyRequest
      #   data as a hash:
      #
      #       {
      #         destination_name: "DestinationName", # required
      #         access_policy: "AccessPolicy", # required
      #       }
      # @!attribute [rw] destination_name
      #   A name for an existing destination.
      #   @return [String]
      #
      # @!attribute [rw] access_policy
      #   An IAM policy document that authorizes cross-account users to
      #   deliver their log events to associated destination.
      #   @return [String]
      class PutDestinationPolicyRequest < Struct.new(
        :destination_name,
        :access_policy)
        include Aws::Structure
      end

      # @note When making an API call, pass PutDestinationRequest
      #   data as a hash:
      #
      #       {
      #         destination_name: "DestinationName", # required
      #         target_arn: "TargetArn", # required
      #         role_arn: "RoleArn", # required
      #       }
      # @!attribute [rw] destination_name
      #   A name for the destination.
      #   @return [String]
      #
      # @!attribute [rw] target_arn
      #   The ARN of an Amazon Kinesis stream to deliver matching log events
      #   to.
      #   @return [String]
      #
      # @!attribute [rw] role_arn
      #   The ARN of an IAM role that grants CloudWatch Logs permissions to do
      #   Amazon Kinesis PutRecord requests on the destination stream.
      #   @return [String]
      class PutDestinationRequest < Struct.new(
        :destination_name,
        :target_arn,
        :role_arn)
        include Aws::Structure
      end

      # @!attribute [rw] destination
      #   A cross account destination that is the recipient of subscription
      #   log events.
      #   @return [Types::Destination]
      class PutDestinationResponse < Struct.new(
        :destination)
        include Aws::Structure
      end

      # @note When making an API call, pass PutLogEventsRequest
      #   data as a hash:
      #
      #       {
      #         log_group_name: "LogGroupName", # required
      #         log_stream_name: "LogStreamName", # required
      #         log_events: [ # required
      #           {
      #             timestamp: 1, # required
      #             message: "EventMessage", # required
      #           },
      #         ],
      #         sequence_token: "SequenceToken",
      #       }
      # @!attribute [rw] log_group_name
      #   The name of the log group to put log events to.
      #   @return [String]
      #
      # @!attribute [rw] log_stream_name
      #   The name of the log stream to put log events to.
      #   @return [String]
      #
      # @!attribute [rw] log_events
      #   A list of log events belonging to a log stream.
      #   @return [Array<Types::InputLogEvent>]
      #
      # @!attribute [rw] sequence_token
      #   A string token that must be obtained from the response of the
      #   previous `PutLogEvents` request.
      #   @return [String]
      class PutLogEventsRequest < Struct.new(
        :log_group_name,
        :log_stream_name,
        :log_events,
        :sequence_token)
        include Aws::Structure
      end

      # @!attribute [rw] next_sequence_token
      #   A string token used for making PutLogEvents requests. A
      #   `sequenceToken` can only be used once, and PutLogEvents requests
      #   must include the `sequenceToken` obtained from the response of the
      #   previous request.
      #   @return [String]
      #
      # @!attribute [rw] rejected_log_events_info
      #   @return [Types::RejectedLogEventsInfo]
      class PutLogEventsResponse < Struct.new(
        :next_sequence_token,
        :rejected_log_events_info)
        include Aws::Structure
      end

      # @note When making an API call, pass PutMetricFilterRequest
      #   data as a hash:
      #
      #       {
      #         log_group_name: "LogGroupName", # required
      #         filter_name: "FilterName", # required
      #         filter_pattern: "FilterPattern", # required
      #         metric_transformations: [ # required
      #           {
      #             metric_name: "MetricName", # required
      #             metric_namespace: "MetricNamespace", # required
      #             metric_value: "MetricValue", # required
      #             default_value: 1.0,
      #           },
      #         ],
      #       }
      # @!attribute [rw] log_group_name
      #   The name of the log group to associate the metric filter with.
      #   @return [String]
      #
      # @!attribute [rw] filter_name
      #   A name for the metric filter.
      #   @return [String]
      #
      # @!attribute [rw] filter_pattern
      #   A valid CloudWatch Logs filter pattern for extracting metric data
      #   out of ingested log events.
      #   @return [String]
      #
      # @!attribute [rw] metric_transformations
      #   A collection of information needed to define how metric data gets
      #   emitted.
      #   @return [Array<Types::MetricTransformation>]
      class PutMetricFilterRequest < Struct.new(
        :log_group_name,
        :filter_name,
        :filter_pattern,
        :metric_transformations)
        include Aws::Structure
      end

      # @note When making an API call, pass PutRetentionPolicyRequest
      #   data as a hash:
      #
      #       {
      #         log_group_name: "LogGroupName", # required
      #         retention_in_days: 1, # required
      #       }
      # @!attribute [rw] log_group_name
      #   The name of the log group to associate the retention policy with.
      #   @return [String]
      #
      # @!attribute [rw] retention_in_days
      #   Specifies the number of days you want to retain log events in the
      #   specified log group. Possible values are: 1, 3, 5, 7, 14, 30, 60,
      #   90, 120, 150, 180, 365, 400, 545, 731, 1827, 3653.
      #   @return [Integer]
      class PutRetentionPolicyRequest < Struct.new(
        :log_group_name,
        :retention_in_days)
        include Aws::Structure
      end

      # @note When making an API call, pass PutSubscriptionFilterRequest
      #   data as a hash:
      #
      #       {
      #         log_group_name: "LogGroupName", # required
      #         filter_name: "FilterName", # required
      #         filter_pattern: "FilterPattern", # required
      #         destination_arn: "DestinationArn", # required
      #         role_arn: "RoleArn",
      #       }
      # @!attribute [rw] log_group_name
      #   The name of the log group to associate the subscription filter with.
      #   @return [String]
      #
      # @!attribute [rw] filter_name
      #   A name for the subscription filter.
      #   @return [String]
      #
      # @!attribute [rw] filter_pattern
      #   A valid CloudWatch Logs filter pattern for subscribing to a filtered
      #   stream of log events.
      #   @return [String]
      #
      # @!attribute [rw] destination_arn
      #   The ARN of the destination to deliver matching log events to.
      #   Currently, the supported destinations are:
      #
      #   * An Amazon Kinesis stream belonging to the same account as the
      #     subscription filter, for same-account delivery.
      #
      #   * A logical destination (used via an ARN of `Destination`) belonging
      #     to a different account, for cross-account delivery.
      #
      #   * An Amazon Kinesis Firehose stream belonging to the same account as
      #     the subscription filter, for same-account delivery.
      #
      #   * An AWS Lambda function belonging to the same account as the
      #     subscription filter, for same-account delivery.
      #   @return [String]
      #
      # @!attribute [rw] role_arn
      #   The ARN of an IAM role that grants CloudWatch Logs permissions to
      #   deliver ingested log events to the destination stream. You don't
      #   need to provide the ARN when you are working with a logical
      #   destination (used via an ARN of `Destination`) for cross-account
      #   delivery.
      #   @return [String]
      class PutSubscriptionFilterRequest < Struct.new(
        :log_group_name,
        :filter_name,
        :filter_pattern,
        :destination_arn,
        :role_arn)
        include Aws::Structure
      end

      # @!attribute [rw] too_new_log_event_start_index
      #   @return [Integer]
      #
      # @!attribute [rw] too_old_log_event_end_index
      #   @return [Integer]
      #
      # @!attribute [rw] expired_log_event_end_index
      #   @return [Integer]
      class RejectedLogEventsInfo < Struct.new(
        :too_new_log_event_start_index,
        :too_old_log_event_end_index,
        :expired_log_event_end_index)
        include Aws::Structure
      end

      # An object indicating the search status of a log stream in a
      # `FilterLogEvents` request.
      # @!attribute [rw] log_stream_name
      #   The name of the log stream.
      #   @return [String]
      #
      # @!attribute [rw] searched_completely
      #   Indicates whether all the events in this log stream were searched or
      #   more data exists to search by paginating further.
      #   @return [Boolean]
      class SearchedLogStream < Struct.new(
        :log_stream_name,
        :searched_completely)
        include Aws::Structure
      end

      # @!attribute [rw] filter_name
      #   A name for a metric or subscription filter.
      #   @return [String]
      #
      # @!attribute [rw] log_group_name
      #   @return [String]
      #
      # @!attribute [rw] filter_pattern
      #   A symbolic description of how CloudWatch Logs should interpret the
      #   data in each log event. For example, a log event may contain
      #   timestamps, IP addresses, strings, and so on. You use the filter
      #   pattern to specify what to look for in the log event message.
      #   @return [String]
      #
      # @!attribute [rw] destination_arn
      #   @return [String]
      #
      # @!attribute [rw] role_arn
      #   @return [String]
      #
      # @!attribute [rw] creation_time
      #   A point in time expressed as the number of milliseconds since Jan 1,
      #   1970 00:00:00 UTC.
      #   @return [Integer]
      class SubscriptionFilter < Struct.new(
        :filter_name,
        :log_group_name,
        :filter_pattern,
        :destination_arn,
        :role_arn,
        :creation_time)
        include Aws::Structure
      end

      # @note When making an API call, pass TestMetricFilterRequest
      #   data as a hash:
      #
      #       {
      #         filter_pattern: "FilterPattern", # required
      #         log_event_messages: ["EventMessage"], # required
      #       }
      # @!attribute [rw] filter_pattern
      #   A symbolic description of how CloudWatch Logs should interpret the
      #   data in each log event. For example, a log event may contain
      #   timestamps, IP addresses, strings, and so on. You use the filter
      #   pattern to specify what to look for in the log event message.
      #   @return [String]
      #
      # @!attribute [rw] log_event_messages
      #   A list of log event messages to test.
      #   @return [Array<String>]
      class TestMetricFilterRequest < Struct.new(
        :filter_pattern,
        :log_event_messages)
        include Aws::Structure
      end

      # @!attribute [rw] matches
      #   @return [Array<Types::MetricFilterMatchRecord>]
      class TestMetricFilterResponse < Struct.new(
        :matches)
        include Aws::Structure
      end

    end
  end
end
