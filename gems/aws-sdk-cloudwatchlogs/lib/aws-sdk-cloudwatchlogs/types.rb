# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CloudWatchLogs
  module Types

    # @note When making an API call, you may pass AssociateKmsKeyRequest
    #   data as a hash:
    #
    #       {
    #         log_group_name: "LogGroupName", # required
    #         kms_key_id: "KmsKeyId", # required
    #       }
    #
    # @!attribute [rw] log_group_name
    #   The name of the log group.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The Amazon Resource Name (ARN) of the CMK to use when encrypting log
    #   data. For more information, see [Amazon Resource Names - AWS Key
    #   Management Service (AWS KMS)][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kms
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/AssociateKmsKeyRequest AWS API Documentation
    #
    class AssociateKmsKeyRequest < Struct.new(
      :log_group_name,
      :kms_key_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CancelExportTaskRequest
    #   data as a hash:
    #
    #       {
    #         task_id: "ExportTaskId", # required
    #       }
    #
    # @!attribute [rw] task_id
    #   The ID of the export task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/CancelExportTaskRequest AWS API Documentation
    #
    class CancelExportTaskRequest < Struct.new(
      :task_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateExportTaskRequest
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
    #
    # @!attribute [rw] task_name
    #   The name of the export task.
    #   @return [String]
    #
    # @!attribute [rw] log_group_name
    #   The name of the log group.
    #   @return [String]
    #
    # @!attribute [rw] log_stream_name_prefix
    #   Export only log streams that match the provided prefix. If you
    #   don't specify a value, no prefix filter is applied.
    #   @return [String]
    #
    # @!attribute [rw] from
    #   The start time of the range for the request, expressed as the number
    #   of milliseconds after Jan 1, 1970 00:00:00 UTC. Events with a time
    #   stamp earlier than this time are not exported.
    #   @return [Integer]
    #
    # @!attribute [rw] to
    #   The end time of the range for the request, expressed as the number
    #   of milliseconds after Jan 1, 1970 00:00:00 UTC. Events with a time
    #   stamp later than this time are not exported.
    #   @return [Integer]
    #
    # @!attribute [rw] destination
    #   The name of S3 bucket for the exported log data. The bucket must be
    #   in the same AWS region.
    #   @return [String]
    #
    # @!attribute [rw] destination_prefix
    #   The prefix used as the start of the key for every object exported.
    #   If you don't specify a value, the default is `exportedlogs`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/CreateExportTaskRequest AWS API Documentation
    #
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
    #   The ID of the export task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/CreateExportTaskResponse AWS API Documentation
    #
    class CreateExportTaskResponse < Struct.new(
      :task_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateLogGroupRequest
    #   data as a hash:
    #
    #       {
    #         log_group_name: "LogGroupName", # required
    #         kms_key_id: "KmsKeyId",
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] log_group_name
    #   The name of the log group.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The Amazon Resource Name (ARN) of the CMK to use when encrypting log
    #   data. For more information, see [Amazon Resource Names - AWS Key
    #   Management Service (AWS KMS)][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kms
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key-value pairs to use for the tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/CreateLogGroupRequest AWS API Documentation
    #
    class CreateLogGroupRequest < Struct.new(
      :log_group_name,
      :kms_key_id,
      :tags)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateLogStreamRequest
    #   data as a hash:
    #
    #       {
    #         log_group_name: "LogGroupName", # required
    #         log_stream_name: "LogStreamName", # required
    #       }
    #
    # @!attribute [rw] log_group_name
    #   The name of the log group.
    #   @return [String]
    #
    # @!attribute [rw] log_stream_name
    #   The name of the log stream.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/CreateLogStreamRequest AWS API Documentation
    #
    class CreateLogStreamRequest < Struct.new(
      :log_group_name,
      :log_stream_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteDestinationRequest
    #   data as a hash:
    #
    #       {
    #         destination_name: "DestinationName", # required
    #       }
    #
    # @!attribute [rw] destination_name
    #   The name of the destination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteDestinationRequest AWS API Documentation
    #
    class DeleteDestinationRequest < Struct.new(
      :destination_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteLogGroupRequest
    #   data as a hash:
    #
    #       {
    #         log_group_name: "LogGroupName", # required
    #       }
    #
    # @!attribute [rw] log_group_name
    #   The name of the log group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteLogGroupRequest AWS API Documentation
    #
    class DeleteLogGroupRequest < Struct.new(
      :log_group_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteLogStreamRequest
    #   data as a hash:
    #
    #       {
    #         log_group_name: "LogGroupName", # required
    #         log_stream_name: "LogStreamName", # required
    #       }
    #
    # @!attribute [rw] log_group_name
    #   The name of the log group.
    #   @return [String]
    #
    # @!attribute [rw] log_stream_name
    #   The name of the log stream.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteLogStreamRequest AWS API Documentation
    #
    class DeleteLogStreamRequest < Struct.new(
      :log_group_name,
      :log_stream_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteMetricFilterRequest
    #   data as a hash:
    #
    #       {
    #         log_group_name: "LogGroupName", # required
    #         filter_name: "FilterName", # required
    #       }
    #
    # @!attribute [rw] log_group_name
    #   The name of the log group.
    #   @return [String]
    #
    # @!attribute [rw] filter_name
    #   The name of the metric filter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteMetricFilterRequest AWS API Documentation
    #
    class DeleteMetricFilterRequest < Struct.new(
      :log_group_name,
      :filter_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteResourcePolicyRequest
    #   data as a hash:
    #
    #       {
    #         policy_name: "PolicyName",
    #       }
    #
    # @!attribute [rw] policy_name
    #   The name of the policy to be revoked. This parameter is required.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteResourcePolicyRequest AWS API Documentation
    #
    class DeleteResourcePolicyRequest < Struct.new(
      :policy_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteRetentionPolicyRequest
    #   data as a hash:
    #
    #       {
    #         log_group_name: "LogGroupName", # required
    #       }
    #
    # @!attribute [rw] log_group_name
    #   The name of the log group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteRetentionPolicyRequest AWS API Documentation
    #
    class DeleteRetentionPolicyRequest < Struct.new(
      :log_group_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteSubscriptionFilterRequest
    #   data as a hash:
    #
    #       {
    #         log_group_name: "LogGroupName", # required
    #         filter_name: "FilterName", # required
    #       }
    #
    # @!attribute [rw] log_group_name
    #   The name of the log group.
    #   @return [String]
    #
    # @!attribute [rw] filter_name
    #   The name of the subscription filter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteSubscriptionFilterRequest AWS API Documentation
    #
    class DeleteSubscriptionFilterRequest < Struct.new(
      :log_group_name,
      :filter_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDestinationsRequest
    #   data as a hash:
    #
    #       {
    #         destination_name_prefix: "DestinationName",
    #         next_token: "NextToken",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] destination_name_prefix
    #   The prefix to match. If you don't specify a value, no prefix filter
    #   is applied.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of items returned. If you don't specify a value,
    #   the default is up to 50 items.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeDestinationsRequest AWS API Documentation
    #
    class DescribeDestinationsRequest < Struct.new(
      :destination_name_prefix,
      :next_token,
      :limit)
      include Aws::Structure
    end

    # @!attribute [rw] destinations
    #   The destinations.
    #   @return [Array<Types::Destination>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. The token expires
    #   after 24 hours.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeDestinationsResponse AWS API Documentation
    #
    class DescribeDestinationsResponse < Struct.new(
      :destinations,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeExportTasksRequest
    #   data as a hash:
    #
    #       {
    #         task_id: "ExportTaskId",
    #         status_code: "CANCELLED", # accepts CANCELLED, COMPLETED, FAILED, PENDING, PENDING_CANCEL, RUNNING
    #         next_token: "NextToken",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] task_id
    #   The ID of the export task. Specifying a task ID filters the results
    #   to zero or one export tasks.
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   The status code of the export task. Specifying a status code filters
    #   the results to zero or more export tasks.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of items returned. If you don't specify a value,
    #   the default is up to 50 items.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeExportTasksRequest AWS API Documentation
    #
    class DescribeExportTasksRequest < Struct.new(
      :task_id,
      :status_code,
      :next_token,
      :limit)
      include Aws::Structure
    end

    # @!attribute [rw] export_tasks
    #   The export tasks.
    #   @return [Array<Types::ExportTask>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. The token expires
    #   after 24 hours.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeExportTasksResponse AWS API Documentation
    #
    class DescribeExportTasksResponse < Struct.new(
      :export_tasks,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeLogGroupsRequest
    #   data as a hash:
    #
    #       {
    #         log_group_name_prefix: "LogGroupName",
    #         next_token: "NextToken",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] log_group_name_prefix
    #   The prefix to match.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of items returned. If you don't specify a value,
    #   the default is up to 50 items.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeLogGroupsRequest AWS API Documentation
    #
    class DescribeLogGroupsRequest < Struct.new(
      :log_group_name_prefix,
      :next_token,
      :limit)
      include Aws::Structure
    end

    # @!attribute [rw] log_groups
    #   The log groups.
    #   @return [Array<Types::LogGroup>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. The token expires
    #   after 24 hours.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeLogGroupsResponse AWS API Documentation
    #
    class DescribeLogGroupsResponse < Struct.new(
      :log_groups,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeLogStreamsRequest
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
    #
    # @!attribute [rw] log_group_name
    #   The name of the log group.
    #   @return [String]
    #
    # @!attribute [rw] log_stream_name_prefix
    #   The prefix to match.
    #
    #   If `orderBy` is `LastEventTime`,you cannot specify this parameter.
    #   @return [String]
    #
    # @!attribute [rw] order_by
    #   If the value is `LogStreamName`, the results are ordered by log
    #   stream name. If the value is `LastEventTime`, the results are
    #   ordered by the event time. The default value is `LogStreamName`.
    #
    #   If you order the results by event time, you cannot specify the
    #   `logStreamNamePrefix` parameter.
    #
    #   lastEventTimestamp represents the time of the most recent log event
    #   in the log stream in CloudWatch Logs. This number is expressed as
    #   the number of milliseconds after Jan 1, 1970 00:00:00 UTC.
    #   lastEventTimeStamp updates on an eventual consistency basis. It
    #   typically updates in less than an hour from ingestion, but may take
    #   longer in some rare situations.
    #   @return [String]
    #
    # @!attribute [rw] descending
    #   If the value is true, results are returned in descending order. If
    #   the value is to false, results are returned in ascending order. The
    #   default value is false.
    #   @return [Boolean]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of items returned. If you don't specify a value,
    #   the default is up to 50 items.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeLogStreamsRequest AWS API Documentation
    #
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
    #   The log streams.
    #   @return [Array<Types::LogStream>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. The token expires
    #   after 24 hours.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeLogStreamsResponse AWS API Documentation
    #
    class DescribeLogStreamsResponse < Struct.new(
      :log_streams,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeMetricFiltersRequest
    #   data as a hash:
    #
    #       {
    #         log_group_name: "LogGroupName",
    #         filter_name_prefix: "FilterName",
    #         next_token: "NextToken",
    #         limit: 1,
    #         metric_name: "MetricName",
    #         metric_namespace: "MetricNamespace",
    #       }
    #
    # @!attribute [rw] log_group_name
    #   The name of the log group.
    #   @return [String]
    #
    # @!attribute [rw] filter_name_prefix
    #   The prefix to match.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of items returned. If you don't specify a value,
    #   the default is up to 50 items.
    #   @return [Integer]
    #
    # @!attribute [rw] metric_name
    #   Filters results to include only those with the specified metric
    #   name. If you include this parameter in your request, you must also
    #   include the `metricNamespace` parameter.
    #   @return [String]
    #
    # @!attribute [rw] metric_namespace
    #   Filters results to include only those in the specified namespace. If
    #   you include this parameter in your request, you must also include
    #   the `metricName` parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeMetricFiltersRequest AWS API Documentation
    #
    class DescribeMetricFiltersRequest < Struct.new(
      :log_group_name,
      :filter_name_prefix,
      :next_token,
      :limit,
      :metric_name,
      :metric_namespace)
      include Aws::Structure
    end

    # @!attribute [rw] metric_filters
    #   The metric filters.
    #   @return [Array<Types::MetricFilter>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. The token expires
    #   after 24 hours.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeMetricFiltersResponse AWS API Documentation
    #
    class DescribeMetricFiltersResponse < Struct.new(
      :metric_filters,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeResourcePoliciesRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. The token expires
    #   after 24 hours.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of resource policies to be displayed with one
    #   call of this API.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeResourcePoliciesRequest AWS API Documentation
    #
    class DescribeResourcePoliciesRequest < Struct.new(
      :next_token,
      :limit)
      include Aws::Structure
    end

    # @!attribute [rw] resource_policies
    #   The resource policies that exist in this account.
    #   @return [Array<Types::ResourcePolicy>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. The token expires
    #   after 24 hours.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeResourcePoliciesResponse AWS API Documentation
    #
    class DescribeResourcePoliciesResponse < Struct.new(
      :resource_policies,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeSubscriptionFiltersRequest
    #   data as a hash:
    #
    #       {
    #         log_group_name: "LogGroupName", # required
    #         filter_name_prefix: "FilterName",
    #         next_token: "NextToken",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] log_group_name
    #   The name of the log group.
    #   @return [String]
    #
    # @!attribute [rw] filter_name_prefix
    #   The prefix to match. If you don't specify a value, no prefix filter
    #   is applied.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of items returned. If you don't specify a value,
    #   the default is up to 50 items.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeSubscriptionFiltersRequest AWS API Documentation
    #
    class DescribeSubscriptionFiltersRequest < Struct.new(
      :log_group_name,
      :filter_name_prefix,
      :next_token,
      :limit)
      include Aws::Structure
    end

    # @!attribute [rw] subscription_filters
    #   The subscription filters.
    #   @return [Array<Types::SubscriptionFilter>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. The token expires
    #   after 24 hours.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeSubscriptionFiltersResponse AWS API Documentation
    #
    class DescribeSubscriptionFiltersResponse < Struct.new(
      :subscription_filters,
      :next_token)
      include Aws::Structure
    end

    # Represents a cross-account destination that receives subscription log
    # events.
    #
    # @!attribute [rw] destination_name
    #   The name of the destination.
    #   @return [String]
    #
    # @!attribute [rw] target_arn
    #   The Amazon Resource Name (ARN) of the physical target to where the
    #   log events are delivered (for example, a Kinesis stream).
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   A role for impersonation, used when delivering log events to the
    #   target.
    #   @return [String]
    #
    # @!attribute [rw] access_policy
    #   An IAM policy document that governs which AWS accounts can create
    #   subscription filters against this destination.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of this destination.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The creation time of the destination, expressed as the number of
    #   milliseconds after Jan 1, 1970 00:00:00 UTC.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/Destination AWS API Documentation
    #
    class Destination < Struct.new(
      :destination_name,
      :target_arn,
      :role_arn,
      :access_policy,
      :arn,
      :creation_time)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisassociateKmsKeyRequest
    #   data as a hash:
    #
    #       {
    #         log_group_name: "LogGroupName", # required
    #       }
    #
    # @!attribute [rw] log_group_name
    #   The name of the log group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DisassociateKmsKeyRequest AWS API Documentation
    #
    class DisassociateKmsKeyRequest < Struct.new(
      :log_group_name)
      include Aws::Structure
    end

    # Represents an export task.
    #
    # @!attribute [rw] task_id
    #   The ID of the export task.
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
    #   The start time, expressed as the number of milliseconds after Jan 1,
    #   1970 00:00:00 UTC. Events with a time stamp before this time are not
    #   exported.
    #   @return [Integer]
    #
    # @!attribute [rw] to
    #   The end time, expressed as the number of milliseconds after Jan 1,
    #   1970 00:00:00 UTC. Events with a time stamp later than this time are
    #   not exported.
    #   @return [Integer]
    #
    # @!attribute [rw] destination
    #   The name of Amazon S3 bucket to which the log data was exported.
    #   @return [String]
    #
    # @!attribute [rw] destination_prefix
    #   The prefix that was used as the start of Amazon S3 key for every
    #   object exported.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the export task.
    #   @return [Types::ExportTaskStatus]
    #
    # @!attribute [rw] execution_info
    #   Execution info about the export task.
    #   @return [Types::ExportTaskExecutionInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/ExportTask AWS API Documentation
    #
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
    #
    # @!attribute [rw] creation_time
    #   The creation time of the export task, expressed as the number of
    #   milliseconds after Jan 1, 1970 00:00:00 UTC.
    #   @return [Integer]
    #
    # @!attribute [rw] completion_time
    #   The completion time of the export task, expressed as the number of
    #   milliseconds after Jan 1, 1970 00:00:00 UTC.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/ExportTaskExecutionInfo AWS API Documentation
    #
    class ExportTaskExecutionInfo < Struct.new(
      :creation_time,
      :completion_time)
      include Aws::Structure
    end

    # Represents the status of an export task.
    #
    # @!attribute [rw] code
    #   The status code of the export task.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The status message related to the status code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/ExportTaskStatus AWS API Documentation
    #
    class ExportTaskStatus < Struct.new(
      :code,
      :message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass FilterLogEventsRequest
    #   data as a hash:
    #
    #       {
    #         log_group_name: "LogGroupName", # required
    #         log_stream_names: ["LogStreamName"],
    #         log_stream_name_prefix: "LogStreamName",
    #         start_time: 1,
    #         end_time: 1,
    #         filter_pattern: "FilterPattern",
    #         next_token: "NextToken",
    #         limit: 1,
    #         interleaved: false,
    #       }
    #
    # @!attribute [rw] log_group_name
    #   The name of the log group to search.
    #   @return [String]
    #
    # @!attribute [rw] log_stream_names
    #   Filters the results to only logs from the log streams in this list.
    #
    #   If you specify a value for both `logStreamNamePrefix` and
    #   `logStreamNames`, but the value for `logStreamNamePrefix` does not
    #   match any log stream names specified in `logStreamNames`, the action
    #   returns an `InvalidParameterException` error.
    #   @return [Array<String>]
    #
    # @!attribute [rw] log_stream_name_prefix
    #   Filters the results to include only events from log streams that
    #   have names starting with this prefix.
    #
    #   If you specify a value for both `logStreamNamePrefix` and
    #   `logStreamNames`, but the value for `logStreamNamePrefix` does not
    #   match any log stream names specified in `logStreamNames`, the action
    #   returns an `InvalidParameterException` error.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The start of the time range, expressed as the number of milliseconds
    #   after Jan 1, 1970 00:00:00 UTC. Events with a time stamp before this
    #   time are not returned.
    #   @return [Integer]
    #
    # @!attribute [rw] end_time
    #   The end of the time range, expressed as the number of milliseconds
    #   after Jan 1, 1970 00:00:00 UTC. Events with a time stamp later than
    #   this time are not returned.
    #   @return [Integer]
    #
    # @!attribute [rw] filter_pattern
    #   The filter pattern to use. For more information, see [Filter and
    #   Pattern Syntax][1].
    #
    #   If not provided, all the events are matched.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of events to return. (You received this
    #   token from a previous call.)
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of events to return. The default is 10,000
    #   events.
    #   @return [Integer]
    #
    # @!attribute [rw] interleaved
    #   If the value is true, the operation makes a best effort to provide
    #   responses that contain events from multiple log streams within the
    #   log group, interleaved in a single response. If the value is false,
    #   all the matched log events in the first log stream are searched
    #   first, then those in the next log stream, and so on. The default is
    #   false.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/FilterLogEventsRequest AWS API Documentation
    #
    class FilterLogEventsRequest < Struct.new(
      :log_group_name,
      :log_stream_names,
      :log_stream_name_prefix,
      :start_time,
      :end_time,
      :filter_pattern,
      :next_token,
      :limit,
      :interleaved)
      include Aws::Structure
    end

    # @!attribute [rw] events
    #   The matched events.
    #   @return [Array<Types::FilteredLogEvent>]
    #
    # @!attribute [rw] searched_log_streams
    #   Indicates which log streams have been searched and whether each has
    #   been searched completely.
    #   @return [Array<Types::SearchedLogStream>]
    #
    # @!attribute [rw] next_token
    #   The token to use when requesting the next set of items. The token
    #   expires after 24 hours.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/FilterLogEventsResponse AWS API Documentation
    #
    class FilterLogEventsResponse < Struct.new(
      :events,
      :searched_log_streams,
      :next_token)
      include Aws::Structure
    end

    # Represents a matched event.
    #
    # @!attribute [rw] log_stream_name
    #   The name of the log stream this event belongs to.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   The time the event occurred, expressed as the number of milliseconds
    #   after Jan 1, 1970 00:00:00 UTC.
    #   @return [Integer]
    #
    # @!attribute [rw] message
    #   The data contained in the log event.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_time
    #   The time the event was ingested, expressed as the number of
    #   milliseconds after Jan 1, 1970 00:00:00 UTC.
    #   @return [Integer]
    #
    # @!attribute [rw] event_id
    #   The ID of the event.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/FilteredLogEvent AWS API Documentation
    #
    class FilteredLogEvent < Struct.new(
      :log_stream_name,
      :timestamp,
      :message,
      :ingestion_time,
      :event_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetLogEventsRequest
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
    #
    # @!attribute [rw] log_group_name
    #   The name of the log group.
    #   @return [String]
    #
    # @!attribute [rw] log_stream_name
    #   The name of the log stream.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The start of the time range, expressed as the number of milliseconds
    #   after Jan 1, 1970 00:00:00 UTC. Events with a time stamp equal to
    #   this time or later than this time are included. Events with a time
    #   stamp earlier than this time are not included.
    #   @return [Integer]
    #
    # @!attribute [rw] end_time
    #   The end of the time range, expressed as the number of milliseconds
    #   after Jan 1, 1970 00:00:00 UTC. Events with a time stamp equal to or
    #   later than this time are not included.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of log events returned. If you don't specify a
    #   value, the maximum is as many log events as can fit in a response
    #   size of 1 MB, up to 10,000 log events.
    #   @return [Integer]
    #
    # @!attribute [rw] start_from_head
    #   If the value is true, the earliest log events are returned first. If
    #   the value is false, the latest log events are returned first. The
    #   default value is false.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/GetLogEventsRequest AWS API Documentation
    #
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
    #   The events.
    #   @return [Array<Types::OutputLogEvent>]
    #
    # @!attribute [rw] next_forward_token
    #   The token for the next set of items in the forward direction. The
    #   token expires after 24 hours. If you have reached the end of the
    #   stream, it will return the same token you passed in.
    #   @return [String]
    #
    # @!attribute [rw] next_backward_token
    #   The token for the next set of items in the backward direction. The
    #   token expires after 24 hours. This token will never be null. If you
    #   have reached the end of the stream, it will return the same token
    #   you passed in.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/GetLogEventsResponse AWS API Documentation
    #
    class GetLogEventsResponse < Struct.new(
      :events,
      :next_forward_token,
      :next_backward_token)
      include Aws::Structure
    end

    # Represents a log event, which is a record of activity that was
    # recorded by the application or resource being monitored.
    #
    # @note When making an API call, you may pass InputLogEvent
    #   data as a hash:
    #
    #       {
    #         timestamp: 1, # required
    #         message: "EventMessage", # required
    #       }
    #
    # @!attribute [rw] timestamp
    #   The time the event occurred, expressed as the number of milliseconds
    #   after Jan 1, 1970 00:00:00 UTC.
    #   @return [Integer]
    #
    # @!attribute [rw] message
    #   The raw event message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/InputLogEvent AWS API Documentation
    #
    class InputLogEvent < Struct.new(
      :timestamp,
      :message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsLogGroupRequest
    #   data as a hash:
    #
    #       {
    #         log_group_name: "LogGroupName", # required
    #       }
    #
    # @!attribute [rw] log_group_name
    #   The name of the log group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/ListTagsLogGroupRequest AWS API Documentation
    #
    class ListTagsLogGroupRequest < Struct.new(
      :log_group_name)
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags for the log group.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/ListTagsLogGroupResponse AWS API Documentation
    #
    class ListTagsLogGroupResponse < Struct.new(
      :tags)
      include Aws::Structure
    end

    # Represents a log group.
    #
    # @!attribute [rw] log_group_name
    #   The name of the log group.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The creation time of the log group, expressed as the number of
    #   milliseconds after Jan 1, 1970 00:00:00 UTC.
    #   @return [Integer]
    #
    # @!attribute [rw] retention_in_days
    #   The number of days to retain the log events in the specified log
    #   group. Possible values are: 1, 3, 5, 7, 14, 30, 60, 90, 120, 150,
    #   180, 365, 400, 545, 731, 1827, and 3653.
    #   @return [Integer]
    #
    # @!attribute [rw] metric_filter_count
    #   The number of metric filters.
    #   @return [Integer]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the log group.
    #   @return [String]
    #
    # @!attribute [rw] stored_bytes
    #   The number of bytes stored.
    #   @return [Integer]
    #
    # @!attribute [rw] kms_key_id
    #   The Amazon Resource Name (ARN) of the CMK to use when encrypting log
    #   data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/LogGroup AWS API Documentation
    #
    class LogGroup < Struct.new(
      :log_group_name,
      :creation_time,
      :retention_in_days,
      :metric_filter_count,
      :arn,
      :stored_bytes,
      :kms_key_id)
      include Aws::Structure
    end

    # Represents a log stream, which is a sequence of log events from a
    # single emitter of logs.
    #
    # @!attribute [rw] log_stream_name
    #   The name of the log stream.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The creation time of the stream, expressed as the number of
    #   milliseconds after Jan 1, 1970 00:00:00 UTC.
    #   @return [Integer]
    #
    # @!attribute [rw] first_event_timestamp
    #   The time of the first event, expressed as the number of milliseconds
    #   after Jan 1, 1970 00:00:00 UTC.
    #   @return [Integer]
    #
    # @!attribute [rw] last_event_timestamp
    #   the time of the most recent log event in the log stream in
    #   CloudWatch Logs. This number is expressed as the number of
    #   milliseconds after Jan 1, 1970 00:00:00 UTC. lastEventTime updates
    #   on an eventual consistency basis. It typically updates in less than
    #   an hour from ingestion, but may take longer in some rare situations.
    #   @return [Integer]
    #
    # @!attribute [rw] last_ingestion_time
    #   The ingestion time, expressed as the number of milliseconds after
    #   Jan 1, 1970 00:00:00 UTC.
    #   @return [Integer]
    #
    # @!attribute [rw] upload_sequence_token
    #   The sequence token.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the log stream.
    #   @return [String]
    #
    # @!attribute [rw] stored_bytes
    #   The number of bytes stored.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/LogStream AWS API Documentation
    #
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

    # Metric filters express how CloudWatch Logs would extract metric
    # observations from ingested log events and transform them into metric
    # data in a CloudWatch metric.
    #
    # @!attribute [rw] filter_name
    #   The name of the metric filter.
    #   @return [String]
    #
    # @!attribute [rw] filter_pattern
    #   A symbolic description of how CloudWatch Logs should interpret the
    #   data in each log event. For example, a log event may contain time
    #   stamps, IP addresses, strings, and so on. You use the filter pattern
    #   to specify what to look for in the log event message.
    #   @return [String]
    #
    # @!attribute [rw] metric_transformations
    #   The metric transformations.
    #   @return [Array<Types::MetricTransformation>]
    #
    # @!attribute [rw] creation_time
    #   The creation time of the metric filter, expressed as the number of
    #   milliseconds after Jan 1, 1970 00:00:00 UTC.
    #   @return [Integer]
    #
    # @!attribute [rw] log_group_name
    #   The name of the log group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/MetricFilter AWS API Documentation
    #
    class MetricFilter < Struct.new(
      :filter_name,
      :filter_pattern,
      :metric_transformations,
      :creation_time,
      :log_group_name)
      include Aws::Structure
    end

    # Represents a matched event.
    #
    # @!attribute [rw] event_number
    #   The event number.
    #   @return [Integer]
    #
    # @!attribute [rw] event_message
    #   The raw event data.
    #   @return [String]
    #
    # @!attribute [rw] extracted_values
    #   The values extracted from the event data by the filter.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/MetricFilterMatchRecord AWS API Documentation
    #
    class MetricFilterMatchRecord < Struct.new(
      :event_number,
      :event_message,
      :extracted_values)
      include Aws::Structure
    end

    # Indicates how to transform ingested log events in to metric data in a
    # CloudWatch metric.
    #
    # @note When making an API call, you may pass MetricTransformation
    #   data as a hash:
    #
    #       {
    #         metric_name: "MetricName", # required
    #         metric_namespace: "MetricNamespace", # required
    #         metric_value: "MetricValue", # required
    #         default_value: 1.0,
    #       }
    #
    # @!attribute [rw] metric_name
    #   The name of the CloudWatch metric.
    #   @return [String]
    #
    # @!attribute [rw] metric_namespace
    #   The namespace of the CloudWatch metric.
    #   @return [String]
    #
    # @!attribute [rw] metric_value
    #   The value to publish to the CloudWatch metric when a filter pattern
    #   matches a log event.
    #   @return [String]
    #
    # @!attribute [rw] default_value
    #   (Optional) The value to emit when a filter pattern does not match a
    #   log event. This value can be null.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/MetricTransformation AWS API Documentation
    #
    class MetricTransformation < Struct.new(
      :metric_name,
      :metric_namespace,
      :metric_value,
      :default_value)
      include Aws::Structure
    end

    # Represents a log event.
    #
    # @!attribute [rw] timestamp
    #   The time the event occurred, expressed as the number of milliseconds
    #   after Jan 1, 1970 00:00:00 UTC.
    #   @return [Integer]
    #
    # @!attribute [rw] message
    #   The data contained in the log event.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_time
    #   The time the event was ingested, expressed as the number of
    #   milliseconds after Jan 1, 1970 00:00:00 UTC.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/OutputLogEvent AWS API Documentation
    #
    class OutputLogEvent < Struct.new(
      :timestamp,
      :message,
      :ingestion_time)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutDestinationPolicyRequest
    #   data as a hash:
    #
    #       {
    #         destination_name: "DestinationName", # required
    #         access_policy: "AccessPolicy", # required
    #       }
    #
    # @!attribute [rw] destination_name
    #   A name for an existing destination.
    #   @return [String]
    #
    # @!attribute [rw] access_policy
    #   An IAM policy document that authorizes cross-account users to
    #   deliver their log events to the associated destination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutDestinationPolicyRequest AWS API Documentation
    #
    class PutDestinationPolicyRequest < Struct.new(
      :destination_name,
      :access_policy)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutDestinationRequest
    #   data as a hash:
    #
    #       {
    #         destination_name: "DestinationName", # required
    #         target_arn: "TargetArn", # required
    #         role_arn: "RoleArn", # required
    #       }
    #
    # @!attribute [rw] destination_name
    #   A name for the destination.
    #   @return [String]
    #
    # @!attribute [rw] target_arn
    #   The ARN of an Amazon Kinesis stream to which to deliver matching log
    #   events.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of an IAM role that grants CloudWatch Logs permissions to
    #   call the Amazon Kinesis PutRecord operation on the destination
    #   stream.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutDestinationRequest AWS API Documentation
    #
    class PutDestinationRequest < Struct.new(
      :destination_name,
      :target_arn,
      :role_arn)
      include Aws::Structure
    end

    # @!attribute [rw] destination
    #   The destination.
    #   @return [Types::Destination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutDestinationResponse AWS API Documentation
    #
    class PutDestinationResponse < Struct.new(
      :destination)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutLogEventsRequest
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
    #
    # @!attribute [rw] log_group_name
    #   The name of the log group.
    #   @return [String]
    #
    # @!attribute [rw] log_stream_name
    #   The name of the log stream.
    #   @return [String]
    #
    # @!attribute [rw] log_events
    #   The log events.
    #   @return [Array<Types::InputLogEvent>]
    #
    # @!attribute [rw] sequence_token
    #   The sequence token obtained from the response of the previous
    #   `PutLogEvents` call. An upload in a newly created log stream does
    #   not require a sequence token. You can also get the sequence token
    #   using DescribeLogStreams. If you call `PutLogEvents` twice within a
    #   narrow time period using the same value for `sequenceToken`, both
    #   calls may be successful, or one may be rejected.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutLogEventsRequest AWS API Documentation
    #
    class PutLogEventsRequest < Struct.new(
      :log_group_name,
      :log_stream_name,
      :log_events,
      :sequence_token)
      include Aws::Structure
    end

    # @!attribute [rw] next_sequence_token
    #   The next sequence token.
    #   @return [String]
    #
    # @!attribute [rw] rejected_log_events_info
    #   The rejected events.
    #   @return [Types::RejectedLogEventsInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutLogEventsResponse AWS API Documentation
    #
    class PutLogEventsResponse < Struct.new(
      :next_sequence_token,
      :rejected_log_events_info)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutMetricFilterRequest
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
    #
    # @!attribute [rw] log_group_name
    #   The name of the log group.
    #   @return [String]
    #
    # @!attribute [rw] filter_name
    #   A name for the metric filter.
    #   @return [String]
    #
    # @!attribute [rw] filter_pattern
    #   A filter pattern for extracting metric data out of ingested log
    #   events.
    #   @return [String]
    #
    # @!attribute [rw] metric_transformations
    #   A collection of information that defines how metric data gets
    #   emitted.
    #   @return [Array<Types::MetricTransformation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutMetricFilterRequest AWS API Documentation
    #
    class PutMetricFilterRequest < Struct.new(
      :log_group_name,
      :filter_name,
      :filter_pattern,
      :metric_transformations)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutResourcePolicyRequest
    #   data as a hash:
    #
    #       {
    #         policy_name: "PolicyName",
    #         policy_document: "PolicyDocument",
    #       }
    #
    # @!attribute [rw] policy_name
    #   Name of the new policy. This parameter is required.
    #   @return [String]
    #
    # @!attribute [rw] policy_document
    #   Details of the new policy, including the identity of the principal
    #   that is enabled to put logs to this account. This is formatted as a
    #   JSON string.
    #
    #   The following example creates a resource policy enabling the Route
    #   53 service to put DNS query logs in to the specified log group.
    #   Replace "logArn" with the ARN of your CloudWatch Logs resource,
    #   such as a log group or log stream.
    #
    #   `\{ "Version": "2012-10-17", "Statement": [ \{ "Sid":
    #   "Route53LogsToCloudWatchLogs", "Effect": "Allow", "Principal": \{
    #   "Service": [ "route53.amazonaws.com" ] \},
    #   "Action":"logs:PutLogEvents", "Resource": "logArn" \} ] \} `
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutResourcePolicyRequest AWS API Documentation
    #
    class PutResourcePolicyRequest < Struct.new(
      :policy_name,
      :policy_document)
      include Aws::Structure
    end

    # @!attribute [rw] resource_policy
    #   The new policy.
    #   @return [Types::ResourcePolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutResourcePolicyResponse AWS API Documentation
    #
    class PutResourcePolicyResponse < Struct.new(
      :resource_policy)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutRetentionPolicyRequest
    #   data as a hash:
    #
    #       {
    #         log_group_name: "LogGroupName", # required
    #         retention_in_days: 1, # required
    #       }
    #
    # @!attribute [rw] log_group_name
    #   The name of the log group.
    #   @return [String]
    #
    # @!attribute [rw] retention_in_days
    #   The number of days to retain the log events in the specified log
    #   group. Possible values are: 1, 3, 5, 7, 14, 30, 60, 90, 120, 150,
    #   180, 365, 400, 545, 731, 1827, and 3653.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutRetentionPolicyRequest AWS API Documentation
    #
    class PutRetentionPolicyRequest < Struct.new(
      :log_group_name,
      :retention_in_days)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutSubscriptionFilterRequest
    #   data as a hash:
    #
    #       {
    #         log_group_name: "LogGroupName", # required
    #         filter_name: "FilterName", # required
    #         filter_pattern: "FilterPattern", # required
    #         destination_arn: "DestinationArn", # required
    #         role_arn: "RoleArn",
    #         distribution: "Random", # accepts Random, ByLogStream
    #       }
    #
    # @!attribute [rw] log_group_name
    #   The name of the log group.
    #   @return [String]
    #
    # @!attribute [rw] filter_name
    #   A name for the subscription filter. If you are updating an existing
    #   filter, you must specify the correct name in `filterName`.
    #   Otherwise, the call fails because you cannot associate a second
    #   filter with a log group. To find the name of the filter currently
    #   associated with a log group, use DescribeSubscriptionFilters.
    #   @return [String]
    #
    # @!attribute [rw] filter_pattern
    #   A filter pattern for subscribing to a filtered stream of log events.
    #   @return [String]
    #
    # @!attribute [rw] destination_arn
    #   The ARN of the destination to deliver matching log events to.
    #   Currently, the supported destinations are:
    #
    #   * An Amazon Kinesis stream belonging to the same account as the
    #     subscription filter, for same-account delivery.
    #
    #   * A logical destination (specified using an ARN) belonging to a
    #     different account, for cross-account delivery.
    #
    #   * An Amazon Kinesis Firehose delivery stream belonging to the same
    #     account as the subscription filter, for same-account delivery.
    #
    #   * An AWS Lambda function belonging to the same account as the
    #     subscription filter, for same-account delivery.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of an IAM role that grants CloudWatch Logs permissions to
    #   deliver ingested log events to the destination stream. You don't
    #   need to provide the ARN when you are working with a logical
    #   destination for cross-account delivery.
    #   @return [String]
    #
    # @!attribute [rw] distribution
    #   The method used to distribute log data to the destination. By
    #   default log data is grouped by log stream, but the grouping can be
    #   set to random for a more even distribution. This property is only
    #   applicable when the destination is an Amazon Kinesis stream.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutSubscriptionFilterRequest AWS API Documentation
    #
    class PutSubscriptionFilterRequest < Struct.new(
      :log_group_name,
      :filter_name,
      :filter_pattern,
      :destination_arn,
      :role_arn,
      :distribution)
      include Aws::Structure
    end

    # Represents the rejected events.
    #
    # @!attribute [rw] too_new_log_event_start_index
    #   The log events that are too new.
    #   @return [Integer]
    #
    # @!attribute [rw] too_old_log_event_end_index
    #   The log events that are too old.
    #   @return [Integer]
    #
    # @!attribute [rw] expired_log_event_end_index
    #   The expired log events.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/RejectedLogEventsInfo AWS API Documentation
    #
    class RejectedLogEventsInfo < Struct.new(
      :too_new_log_event_start_index,
      :too_old_log_event_end_index,
      :expired_log_event_end_index)
      include Aws::Structure
    end

    # A policy enabling one or more entities to put logs to a log group in
    # this account.
    #
    # @!attribute [rw] policy_name
    #   The name of the resource policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_document
    #   The details of the policy.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   Time stamp showing when this policy was last updated, expressed as
    #   the number of milliseconds after Jan 1, 1970 00:00:00 UTC.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/ResourcePolicy AWS API Documentation
    #
    class ResourcePolicy < Struct.new(
      :policy_name,
      :policy_document,
      :last_updated_time)
      include Aws::Structure
    end

    # Represents the search status of a log stream.
    #
    # @!attribute [rw] log_stream_name
    #   The name of the log stream.
    #   @return [String]
    #
    # @!attribute [rw] searched_completely
    #   Indicates whether all the events in this log stream were searched.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/SearchedLogStream AWS API Documentation
    #
    class SearchedLogStream < Struct.new(
      :log_stream_name,
      :searched_completely)
      include Aws::Structure
    end

    # Represents a subscription filter.
    #
    # @!attribute [rw] filter_name
    #   The name of the subscription filter.
    #   @return [String]
    #
    # @!attribute [rw] log_group_name
    #   The name of the log group.
    #   @return [String]
    #
    # @!attribute [rw] filter_pattern
    #   A symbolic description of how CloudWatch Logs should interpret the
    #   data in each log event. For example, a log event may contain time
    #   stamps, IP addresses, strings, and so on. You use the filter pattern
    #   to specify what to look for in the log event message.
    #   @return [String]
    #
    # @!attribute [rw] destination_arn
    #   The Amazon Resource Name (ARN) of the destination.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   @return [String]
    #
    # @!attribute [rw] distribution
    #   The method used to distribute log data to the destination, which can
    #   be either random or grouped by log stream.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The creation time of the subscription filter, expressed as the
    #   number of milliseconds after Jan 1, 1970 00:00:00 UTC.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/SubscriptionFilter AWS API Documentation
    #
    class SubscriptionFilter < Struct.new(
      :filter_name,
      :log_group_name,
      :filter_pattern,
      :destination_arn,
      :role_arn,
      :distribution,
      :creation_time)
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagLogGroupRequest
    #   data as a hash:
    #
    #       {
    #         log_group_name: "LogGroupName", # required
    #         tags: { # required
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] log_group_name
    #   The name of the log group.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key-value pairs to use for the tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/TagLogGroupRequest AWS API Documentation
    #
    class TagLogGroupRequest < Struct.new(
      :log_group_name,
      :tags)
      include Aws::Structure
    end

    # @note When making an API call, you may pass TestMetricFilterRequest
    #   data as a hash:
    #
    #       {
    #         filter_pattern: "FilterPattern", # required
    #         log_event_messages: ["EventMessage"], # required
    #       }
    #
    # @!attribute [rw] filter_pattern
    #   A symbolic description of how CloudWatch Logs should interpret the
    #   data in each log event. For example, a log event may contain time
    #   stamps, IP addresses, strings, and so on. You use the filter pattern
    #   to specify what to look for in the log event message.
    #   @return [String]
    #
    # @!attribute [rw] log_event_messages
    #   The log event messages to test.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/TestMetricFilterRequest AWS API Documentation
    #
    class TestMetricFilterRequest < Struct.new(
      :filter_pattern,
      :log_event_messages)
      include Aws::Structure
    end

    # @!attribute [rw] matches
    #   The matched events.
    #   @return [Array<Types::MetricFilterMatchRecord>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/TestMetricFilterResponse AWS API Documentation
    #
    class TestMetricFilterResponse < Struct.new(
      :matches)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagLogGroupRequest
    #   data as a hash:
    #
    #       {
    #         log_group_name: "LogGroupName", # required
    #         tags: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] log_group_name
    #   The name of the log group.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag keys. The corresponding tags are removed from the log group.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/UntagLogGroupRequest AWS API Documentation
    #
    class UntagLogGroupRequest < Struct.new(
      :log_group_name,
      :tags)
      include Aws::Structure
    end

  end
end
