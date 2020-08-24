# frozen_string_literal: true

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
    #   data. This must be a symmetric CMK. For more information, see
    #   [Amazon Resource Names - AWS Key Management Service (AWS KMS)][1]
    #   and [Using Symmetric and Asymmetric Keys][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kms
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/AssociateKmsKeyRequest AWS API Documentation
    #
    class AssociateKmsKeyRequest < Struct.new(
      :log_group_name,
      :kms_key_id)
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   of milliseconds after Jan 1, 1970 00:00:00 UTC. Events with a
    #   timestamp earlier than this time are not exported.
    #   @return [Integer]
    #
    # @!attribute [rw] to
    #   The end time of the range for the request, expressed as the number
    #   of milliseconds after Jan 1, 1970 00:00:00 UTC. Events with a
    #   timestamp later than this time are not exported.
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kms
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The event was already logged.
    #
    # @!attribute [rw] expected_sequence_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DataAlreadyAcceptedException AWS API Documentation
    #
    class DataAlreadyAcceptedException < Struct.new(
      :expected_sequence_token)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteQueryDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         query_definition_id: "QueryId", # required
    #       }
    #
    # @!attribute [rw] query_definition_id
    #   The ID of the query definition that you want to delete. You can use
    #   [DescribeQueryDefinitions][1] to retrieve the IDs of your saved
    #   query definitions.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeQueryDefinitions.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteQueryDefinitionRequest AWS API Documentation
    #
    class DeleteQueryDefinitionRequest < Struct.new(
      :query_definition_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] success
    #   A value of TRUE indicates that the operation succeeded. FALSE
    #   indicates that the operation failed.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DeleteQueryDefinitionResponse AWS API Documentation
    #
    class DeleteQueryDefinitionResponse < Struct.new(
      :success)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] log_groups
    #   The log groups.
    #
    #   If the `retentionInDays` value if not included for a log group, then
    #   that log group is set to have its events never expire.
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
      SENSITIVE = []
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
    #   If `orderBy` is `LastEventTime`, you cannot specify this parameter.
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
    #   `lastEventTimeStamp` represents the time of the most recent log
    #   event in the log stream in CloudWatch Logs. This number is expressed
    #   as the number of milliseconds after Jan 1, 1970 00:00:00 UTC.
    #   `lastEventTimeStamp` updates on an eventual consistency basis. It
    #   typically updates in less than an hour from ingestion, but in rare
    #   situations might take longer.
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   The prefix to match. CloudWatch Logs uses the value you set here
    #   only if you also include the `logGroupName` parameter in your
    #   request.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeQueriesRequest
    #   data as a hash:
    #
    #       {
    #         log_group_name: "LogGroupName",
    #         status: "Scheduled", # accepts Scheduled, Running, Complete, Failed, Cancelled
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] log_group_name
    #   Limits the returned queries to only those for the specified log
    #   group.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Limits the returned queries to only those that have the specified
    #   status. Valid values are `Cancelled`, `Complete`, `Failed`,
    #   `Running`, and `Scheduled`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Limits the number of returned queries to the specified number.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. The token expires
    #   after 24 hours.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeQueriesRequest AWS API Documentation
    #
    class DescribeQueriesRequest < Struct.new(
      :log_group_name,
      :status,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] queries
    #   The list of queries that match the request.
    #   @return [Array<Types::QueryInfo>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. The token expires
    #   after 24 hours.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeQueriesResponse AWS API Documentation
    #
    class DescribeQueriesResponse < Struct.new(
      :queries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeQueryDefinitionsRequest
    #   data as a hash:
    #
    #       {
    #         query_definition_name_prefix: "QueryDefinitionName",
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] query_definition_name_prefix
    #   Use this parameter to filter your results to only the query
    #   definitions that have names that start with the prefix you specify.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Limits the number of returned query definitions to the specified
    #   number.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. The token expires
    #   after 24 hours.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeQueryDefinitionsRequest AWS API Documentation
    #
    class DescribeQueryDefinitionsRequest < Struct.new(
      :query_definition_name_prefix,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] query_definitions
    #   The list of query definitions that match your request.
    #   @return [Array<Types::QueryDefinition>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. The token expires
    #   after 24 hours.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/DescribeQueryDefinitionsResponse AWS API Documentation
    #
    class DescribeQueryDefinitionsResponse < Struct.new(
      :query_definitions,
      :next_token)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   The Amazon Resource Name (ARN) of the physical target where the log
    #   events are delivered (for example, a Kinesis stream).
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   1970 00:00:00 UTC. Events with a timestamp before this time are not
    #   exported.
    #   @return [Integer]
    #
    # @!attribute [rw] to
    #   The end time, expressed as the number of milliseconds after Jan 1,
    #   1970 00:00:00 UTC. Events with a timestamp later than this time are
    #   not exported.
    #   @return [Integer]
    #
    # @!attribute [rw] destination
    #   The name of the S3 bucket to which the log data was exported.
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
    #   Execution information about the export task.
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   `logStreamNames`, the action returns an `InvalidParameterException`
    #   error.
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
    #   after Jan 1, 1970 00:00:00 UTC. Events with a timestamp before this
    #   time are not returned.
    #
    #   If you omit `startTime` and `endTime` the most recent log events are
    #   retrieved, to up 1 MB or 10,000 log events.
    #   @return [Integer]
    #
    # @!attribute [rw] end_time
    #   The end of the time range, expressed as the number of milliseconds
    #   after Jan 1, 1970 00:00:00 UTC. Events with a timestamp later than
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
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html
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
    #
    #   **Important:** Starting on June 17, 2019, this parameter is ignored
    #   and the value is assumed to be true. The response from this
    #   operation always interleaves events from multiple log streams within
    #   a log group.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] events
    #   The matched events.
    #   @return [Array<Types::FilteredLogEvent>]
    #
    # @!attribute [rw] searched_log_streams
    #   **IMPORTANT** Starting on May 15, 2020, this parameter will be
    #   deprecated. This parameter will be an empty list after the
    #   deprecation occurs.
    #
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a matched event.
    #
    # @!attribute [rw] log_stream_name
    #   The name of the log stream to which this event belongs.
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
      SENSITIVE = []
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
    #   after Jan 1, 1970 00:00:00 UTC. Events with a timestamp equal to
    #   this time or later than this time are included. Events with a
    #   timestamp earlier than this time are not included.
    #   @return [Integer]
    #
    # @!attribute [rw] end_time
    #   The end of the time range, expressed as the number of milliseconds
    #   after Jan 1, 1970 00:00:00 UTC. Events with a timestamp equal to or
    #   later than this time are not included.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    #   Using this token works only when you specify `true` for
    #   `startFromHead`.
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
    #
    #   If you are using `nextToken` in this operation, you must specify
    #   `true` for `startFromHead`.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] events
    #   The events.
    #   @return [Array<Types::OutputLogEvent>]
    #
    # @!attribute [rw] next_forward_token
    #   The token for the next set of items in the forward direction. The
    #   token expires after 24 hours. If you have reached the end of the
    #   stream, it returns the same token you passed in.
    #   @return [String]
    #
    # @!attribute [rw] next_backward_token
    #   The token for the next set of items in the backward direction. The
    #   token expires after 24 hours. This token is never null. If you have
    #   reached the end of the stream, it returns the same token you passed
    #   in.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/GetLogEventsResponse AWS API Documentation
    #
    class GetLogEventsResponse < Struct.new(
      :events,
      :next_forward_token,
      :next_backward_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetLogGroupFieldsRequest
    #   data as a hash:
    #
    #       {
    #         log_group_name: "LogGroupName", # required
    #         time: 1,
    #       }
    #
    # @!attribute [rw] log_group_name
    #   The name of the log group to search.
    #   @return [String]
    #
    # @!attribute [rw] time
    #   The time to set as the center of the query. If you specify `time`,
    #   the 8 minutes before and 8 minutes after this time are searched. If
    #   you omit `time`, the past 15 minutes are queried.
    #
    #   The `time` value is specified as epoch time, the number of seconds
    #   since January 1, 1970, 00:00:00 UTC.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/GetLogGroupFieldsRequest AWS API Documentation
    #
    class GetLogGroupFieldsRequest < Struct.new(
      :log_group_name,
      :time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] log_group_fields
    #   The array of fields found in the query. Each object in the array
    #   contains the name of the field, along with the percentage of time it
    #   appeared in the log events that were queried.
    #   @return [Array<Types::LogGroupField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/GetLogGroupFieldsResponse AWS API Documentation
    #
    class GetLogGroupFieldsResponse < Struct.new(
      :log_group_fields)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetLogRecordRequest
    #   data as a hash:
    #
    #       {
    #         log_record_pointer: "LogRecordPointer", # required
    #       }
    #
    # @!attribute [rw] log_record_pointer
    #   The pointer corresponding to the log event record you want to
    #   retrieve. You get this from the response of a `GetQueryResults`
    #   operation. In that response, the value of the `@ptr` field for a log
    #   event is the value to use as `logRecordPointer` to retrieve that
    #   complete log event record.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/GetLogRecordRequest AWS API Documentation
    #
    class GetLogRecordRequest < Struct.new(
      :log_record_pointer)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] log_record
    #   The requested log event, as a JSON string.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/GetLogRecordResponse AWS API Documentation
    #
    class GetLogRecordResponse < Struct.new(
      :log_record)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetQueryResultsRequest
    #   data as a hash:
    #
    #       {
    #         query_id: "QueryId", # required
    #       }
    #
    # @!attribute [rw] query_id
    #   The ID number of the query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/GetQueryResultsRequest AWS API Documentation
    #
    class GetQueryResultsRequest < Struct.new(
      :query_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] results
    #   The log events that matched the query criteria during the most
    #   recent time it ran.
    #
    #   The `results` value is an array of arrays. Each log event is one
    #   object in the top-level array. Each of these log event objects is an
    #   array of `field`/`value` pairs.
    #   @return [Array<Array<Types::ResultField>>]
    #
    # @!attribute [rw] statistics
    #   Includes the number of log events scanned by the query, the number
    #   of log events that matched the query criteria, and the total number
    #   of bytes in the log events that were scanned. These values reflect
    #   the full raw results of the query.
    #   @return [Types::QueryStatistics]
    #
    # @!attribute [rw] status
    #   The status of the most recent running of the query. Possible values
    #   are `Cancelled`, `Complete`, `Failed`, `Running`, `Scheduled`,
    #   `Timeout`, and `Unknown`.
    #
    #   Queries time out after 15 minutes of execution. To avoid having your
    #   queries time out, reduce the time range being searched or partition
    #   your query into a number of queries.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/GetQueryResultsResponse AWS API Documentation
    #
    class GetQueryResultsResponse < Struct.new(
      :results,
      :statistics,
      :status)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation is not valid on the specified resource.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/InvalidOperationException AWS API Documentation
    #
    class InvalidOperationException < Aws::EmptyStructure; end

    # A parameter is specified incorrectly.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/InvalidParameterException AWS API Documentation
    #
    class InvalidParameterException < Aws::EmptyStructure; end

    # The sequence token is not valid. You can get the correct sequence
    # token in the `expectedSequenceToken` field in the
    # `InvalidSequenceTokenException` message.
    #
    # @!attribute [rw] expected_sequence_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/InvalidSequenceTokenException AWS API Documentation
    #
    class InvalidSequenceTokenException < Struct.new(
      :expected_sequence_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have reached the maximum number of resources that can be created.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Aws::EmptyStructure; end

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
      SENSITIVE = []
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
      SENSITIVE = []
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
    #
    #   If you omit `retentionInDays` in a `PutRetentionPolicy` operation,
    #   the events in the log group are always retained and never expire.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The fields contained in log events found by a `GetLogGroupFields`
    # operation, along with the percentage of queried log events in which
    # each field appears.
    #
    # @!attribute [rw] name
    #   The name of a log field.
    #   @return [String]
    #
    # @!attribute [rw] percent
    #   The percentage of log events queried that contained the field.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/LogGroupField AWS API Documentation
    #
    class LogGroupField < Struct.new(
      :name,
      :percent)
      SENSITIVE = []
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
    #   The time of the most recent log event in the log stream in
    #   CloudWatch Logs. This number is expressed as the number of
    #   milliseconds after Jan 1, 1970 00:00:00 UTC. The `lastEventTime`
    #   value updates on an eventual consistency basis. It typically updates
    #   in less than an hour from ingestion, but in rare situations might
    #   take longer.
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
    #
    #   **Important:** On June 17, 2019, this parameter was deprecated for
    #   log streams, and is always reported as zero. This change applies
    #   only to log streams. The `storedBytes` parameter for log groups is
    #   not affected.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The query string is not valid. Details about this error are displayed
    # in a `QueryCompileError` object. For more information, see
    # [QueryCompileError][1].
    #
    # For more information about valid query syntax, see [CloudWatch Logs
    # Insights Query Syntax][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_QueryCompileError.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html
    #
    # @!attribute [rw] query_compile_error
    #   Reserved.
    #   @return [Types::QueryCompileError]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/MalformedQueryException AWS API Documentation
    #
    class MalformedQueryException < Struct.new(
      :query_compile_error)
      SENSITIVE = []
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
    #   data in each log event. For example, a log event can contain
    #   timestamps, IP addresses, strings, and so on. You use the filter
    #   pattern to specify what to look for in the log event message.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates how to transform ingested log events to metric data in a
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
    #   A custom namespace to contain your metric in CloudWatch. Use
    #   namespaces to group together metrics that are similar. For more
    #   information, see [Namespaces][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#Namespace
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Multiple requests to update the same resource were in conflict.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/OperationAbortedException AWS API Documentation
    #
    class OperationAbortedException < Aws::EmptyStructure; end

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
      SENSITIVE = []
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
    #   deliver their log events to the associated destination. This can be
    #   up to 5120 bytes.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutDestinationPolicyRequest AWS API Documentation
    #
    class PutDestinationPolicyRequest < Struct.new(
      :destination_name,
      :access_policy)
      SENSITIVE = []
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
    #   call the Amazon Kinesis `PutRecord` operation on the destination
    #   stream.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutDestinationRequest AWS API Documentation
    #
    class PutDestinationRequest < Struct.new(
      :destination_name,
      :target_arn,
      :role_arn)
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   using [DescribeLogStreams][1]. If you call `PutLogEvents` twice
    #   within a narrow time period using the same value for
    #   `sequenceToken`, both calls might be successful or one might be
    #   rejected.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeLogStreams.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutLogEventsRequest AWS API Documentation
    #
    class PutLogEventsRequest < Struct.new(
      :log_group_name,
      :log_stream_name,
      :log_events,
      :sequence_token)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutQueryDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         name: "QueryDefinitionName", # required
    #         query_definition_id: "QueryId",
    #         log_group_names: ["LogGroupName"],
    #         query_string: "QueryDefinitionString", # required
    #       }
    #
    # @!attribute [rw] name
    #   A name for the query definition. If you are saving a lot of query
    #   definitions, we recommend that you name them so that you can easily
    #   find the ones you want by using the first part of the name as a
    #   filter in the `queryDefinitionNamePrefix` parameter of
    #   [DescribeQueryDefinitions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeQueryDefinitions.html
    #   @return [String]
    #
    # @!attribute [rw] query_definition_id
    #   If you are updating a query definition, use this parameter to
    #   specify the ID of the query definition that you want to update. You
    #   can use [DescribeQueryDefinitions][1] to retrieve the IDs of your
    #   saved query definitions.
    #
    #   If you are creating a query definition, do not specify this
    #   parameter. CloudWatch generates a unique ID for the new query
    #   definition and include it in the response to this operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeQueryDefinitions.html
    #   @return [String]
    #
    # @!attribute [rw] log_group_names
    #   Use this parameter to include specific log groups as part of your
    #   query definition.
    #
    #   If you are updating a query definition and you omit this parameter,
    #   then the updated definition will contain no log groups.
    #   @return [Array<String>]
    #
    # @!attribute [rw] query_string
    #   The query string to use for this definition. For more information,
    #   see [CloudWatch Logs Insights Query Syntax][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutQueryDefinitionRequest AWS API Documentation
    #
    class PutQueryDefinitionRequest < Struct.new(
      :name,
      :query_definition_id,
      :log_group_names,
      :query_string)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] query_definition_id
    #   The ID of the query definition.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutQueryDefinitionResponse AWS API Documentation
    #
    class PutQueryDefinitionResponse < Struct.new(
      :query_definition_id)
      SENSITIVE = []
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
    #   JSON string. This parameter is required.
    #
    #   The following example creates a resource policy enabling the Route
    #   53 service to put DNS query logs in to the specified log group.
    #   Replace `"logArn"` with the ARN of your CloudWatch Logs resource,
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    #
    #   If you omit `retentionInDays` in a `PutRetentionPolicy` operation,
    #   the events in the log group are always retained and never expire.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/PutRetentionPolicyRequest AWS API Documentation
    #
    class PutRetentionPolicyRequest < Struct.new(
      :log_group_name,
      :retention_in_days)
      SENSITIVE = []
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
    #   associated with a log group, use [DescribeSubscriptionFilters][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeSubscriptionFilters.html
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
    #   default, log data is grouped by log stream, but the grouping can be
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Reserved.
    #
    # @!attribute [rw] location
    #   Reserved.
    #   @return [Types::QueryCompileErrorLocation]
    #
    # @!attribute [rw] message
    #   Reserved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/QueryCompileError AWS API Documentation
    #
    class QueryCompileError < Struct.new(
      :location,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Reserved.
    #
    # @!attribute [rw] start_char_offset
    #   Reserved.
    #   @return [Integer]
    #
    # @!attribute [rw] end_char_offset
    #   Reserved.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/QueryCompileErrorLocation AWS API Documentation
    #
    class QueryCompileErrorLocation < Struct.new(
      :start_char_offset,
      :end_char_offset)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure contains details about a saved CloudWatch Logs Insights
    # query definition.
    #
    # @!attribute [rw] query_definition_id
    #   The unique ID of the query definition.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the query definition.
    #   @return [String]
    #
    # @!attribute [rw] query_string
    #   The query string to use for this definition. For more information,
    #   see [CloudWatch Logs Insights Query Syntax][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html
    #   @return [String]
    #
    # @!attribute [rw] last_modified
    #   The date that the query definition was most recently modified.
    #   @return [Integer]
    #
    # @!attribute [rw] log_group_names
    #   If this query definition contains a list of log groups that it is
    #   limited to, that list appears here.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/QueryDefinition AWS API Documentation
    #
    class QueryDefinition < Struct.new(
      :query_definition_id,
      :name,
      :query_string,
      :last_modified,
      :log_group_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about one CloudWatch Logs Insights query that matches the
    # request in a `DescribeQueries` operation.
    #
    # @!attribute [rw] query_id
    #   The unique ID number of this query.
    #   @return [String]
    #
    # @!attribute [rw] query_string
    #   The query string used in this query.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of this query. Possible values are `Cancelled`,
    #   `Complete`, `Failed`, `Running`, `Scheduled`, and `Unknown`.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The date and time that this query was created.
    #   @return [Integer]
    #
    # @!attribute [rw] log_group_name
    #   The name of the log group scanned by this query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/QueryInfo AWS API Documentation
    #
    class QueryInfo < Struct.new(
      :query_id,
      :query_string,
      :status,
      :create_time,
      :log_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the number of log events scanned by the query, the number of
    # log events that matched the query criteria, and the total number of
    # bytes in the log events that were scanned.
    #
    # @!attribute [rw] records_matched
    #   The number of log events that matched the query string.
    #   @return [Float]
    #
    # @!attribute [rw] records_scanned
    #   The total number of log events scanned during the query.
    #   @return [Float]
    #
    # @!attribute [rw] bytes_scanned
    #   The total number of bytes in the log events scanned during the
    #   query.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/QueryStatistics AWS API Documentation
    #
    class QueryStatistics < Struct.new(
      :records_matched,
      :records_scanned,
      :bytes_scanned)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource already exists.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/ResourceAlreadyExistsException AWS API Documentation
    #
    class ResourceAlreadyExistsException < Aws::EmptyStructure; end

    # The specified resource does not exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Aws::EmptyStructure; end

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
    #   Timestamp showing when this policy was last updated, expressed as
    #   the number of milliseconds after Jan 1, 1970 00:00:00 UTC.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/ResourcePolicy AWS API Documentation
    #
    class ResourcePolicy < Struct.new(
      :policy_name,
      :policy_document,
      :last_updated_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains one field from one log event returned by a CloudWatch Logs
    # Insights query, along with the value of that field.
    #
    # For more information about the fields that are generated by CloudWatch
    # logs, see [Supported Logs and Discovered Fields][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_AnalyzeLogData-discoverable-fields.html
    #
    # @!attribute [rw] field
    #   The log event field.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of this field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/ResultField AWS API Documentation
    #
    class ResultField < Struct.new(
      :field,
      :value)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The service cannot complete the request.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/ServiceUnavailableException AWS API Documentation
    #
    class ServiceUnavailableException < Aws::EmptyStructure; end

    # @note When making an API call, you may pass StartQueryRequest
    #   data as a hash:
    #
    #       {
    #         log_group_name: "LogGroupName",
    #         log_group_names: ["LogGroupName"],
    #         start_time: 1, # required
    #         end_time: 1, # required
    #         query_string: "QueryString", # required
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] log_group_name
    #   The log group on which to perform the query.
    #
    #   A `StartQuery` operation must include a `logGroupNames` or a
    #   `logGroupName` parameter, but not both.
    #   @return [String]
    #
    # @!attribute [rw] log_group_names
    #   The list of log groups to be queried. You can include up to 20 log
    #   groups.
    #
    #   A `StartQuery` operation must include a `logGroupNames` or a
    #   `logGroupName` parameter, but not both.
    #   @return [Array<String>]
    #
    # @!attribute [rw] start_time
    #   The beginning of the time range to query. The range is inclusive, so
    #   the specified start time is included in the query. Specified as
    #   epoch time, the number of seconds since January 1, 1970, 00:00:00
    #   UTC.
    #   @return [Integer]
    #
    # @!attribute [rw] end_time
    #   The end of the time range to query. The range is inclusive, so the
    #   specified end time is included in the query. Specified as epoch
    #   time, the number of seconds since January 1, 1970, 00:00:00 UTC.
    #   @return [Integer]
    #
    # @!attribute [rw] query_string
    #   The query string to use. For more information, see [CloudWatch Logs
    #   Insights Query Syntax][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of log events to return in the query. If the
    #   query string uses the `fields` command, only the specified fields
    #   and their values are returned. The default is 1000.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/StartQueryRequest AWS API Documentation
    #
    class StartQueryRequest < Struct.new(
      :log_group_name,
      :log_group_names,
      :start_time,
      :end_time,
      :query_string,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] query_id
    #   The unique ID of the query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/StartQueryResponse AWS API Documentation
    #
    class StartQueryResponse < Struct.new(
      :query_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopQueryRequest
    #   data as a hash:
    #
    #       {
    #         query_id: "QueryId", # required
    #       }
    #
    # @!attribute [rw] query_id
    #   The ID number of the query to stop. To find this ID number, use
    #   `DescribeQueries`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/StopQueryRequest AWS API Documentation
    #
    class StopQueryRequest < Struct.new(
      :query_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] success
    #   This is true if the query was stopped by the `StopQuery` operation.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/StopQueryResponse AWS API Documentation
    #
    class StopQueryResponse < Struct.new(
      :success)
      SENSITIVE = []
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
    #   data in each log event. For example, a log event can contain
    #   timestamps, IP addresses, strings, and so on. You use the filter
    #   pattern to specify what to look for in the log event message.
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   data in each log event. For example, a log event can contain
    #   timestamps, IP addresses, strings, and so on. You use the filter
    #   pattern to specify what to look for in the log event message.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The most likely cause is an invalid AWS access key ID or secret key.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/logs-2014-03-28/UnrecognizedClientException AWS API Documentation
    #
    class UnrecognizedClientException < Aws::EmptyStructure; end

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
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
