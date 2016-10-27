# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration::IDENTIFIERS << :cloudwatchlogs

module Aws
  module CloudWatchLogs
    class Client < Seahorse::Client::Base

      include Aws::ClientStubs
      include Aws::ClientWaiters

      @identifier = :cloudwatchlogs

      set_api(ClientApi::API)

      add_plugin(Seahorse::Client::Plugins::ContentLength)
      add_plugin(Aws::Plugins::CredentialsConfiguration)
      add_plugin(Aws::Plugins::Logging)
      add_plugin(Aws::Plugins::ParamConverter)
      add_plugin(Aws::Plugins::ParamValidator)
      add_plugin(Aws::Plugins::UserAgent)
      add_plugin(Aws::Plugins::HelpfulSocketErrors)
      add_plugin(Aws::Plugins::RetryErrors)
      add_plugin(Aws::Plugins::GlobalConfiguration)
      add_plugin(Aws::Plugins::RegionalEndpoint)
      add_plugin(Aws::Plugins::SignatureV4)
      add_plugin(Aws::Plugins::ResponsePaging)
      add_plugin(Aws::Plugins::StubResponses)
      add_plugin(Aws::Plugins::Protocols::JsonRpc)

      # @option options [required, Aws::CredentialProvider] :credentials
      #   Your AWS credentials. This can be an instance of any one of the
      #   following classes:
      #
      #   * `Aws::Credentials` - Used for configuring static, non-refreshing
      #     credentials.
      #
      #   * `Aws::InstanceProfileCredentials` - Used for loading credentials
      #     from an EC2 IMDS on an EC2 instance.
      #
      #   * `Aws::SharedCredentials` - Used for loading credentials from a
      #     shared file, such as `~/.aws/config`.
      #
      #   * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
      #
      #   When `:credentials` are not configured directly, the following
      #   locations will be searched for credentials:
      #
      #   * `Aws.config[:credentials]`
      #   * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
      #   * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
      #   * `~/.aws/credentials`
      #   * `~/.aws/config`
      #   * EC2 IMDS instance profile - When used by default, the timeouts are
      #     very aggressive. Construct and pass an instance of
      #     `Aws::InstanceProfileCredentails` to enable retries and extended
      #     timeouts.
      # @option options [required, String] :region
      #   The AWS region to connect to.  The configured `:region` is
      #   used to determine the service `:endpoint`. When not passed,
      #   a default `:region` is search for in the following locations:
      #
      #   * `Aws.config[:region]`
      #   * `ENV['AWS_REGION']`
      #   * `ENV['AMAZON_REGION']`
      #   * `ENV['AWS_DEFAULT_REGION']`
      #   * `~/.aws/credentials`
      #   * `~/.aws/config`
      # @option options [String] :access_key_id
      # @option options [Boolean] :convert_params (true)
      #   When `true`, an attempt is made to coerce request parameters into
      #   the required types.
      # @option options [String] :endpoint
      #   The client endpoint is normally constructed from the `:region`
      #   option. You should only configure an `:endpoint` when connecting
      #   to test endpoints. This should be avalid HTTP(S) URI.
      # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
      #   The log formatter.
      # @option options [Symbol] :log_level (:info)
      #   The log level to send messages to the `:logger` at.
      # @option options [Logger] :logger
      #   The Logger instance to send log messages to.  If this option
      #   is not set, logging will be disabled.
      # @option options [String] :profile ("default")
      #   Used when loading credentials from the shared credentials file
      #   at HOME/.aws/credentials.  When not specified, 'default' is used.
      # @option options [Integer] :retry_limit (3)
      #   The maximum number of times to retry failed requests.  Only
      #   ~ 500 level server errors and certain ~ 400 level client errors
      #   are retried.  Generally, these are throttling errors, data
      #   checksum errors, networking errors, timeout errors and auth
      #   errors from expired credentials.
      # @option options [String] :secret_access_key
      # @option options [String] :session_token
      # @option options [Boolean] :simple_json (false)
      #   Disables request parameter conversion, validation, and formatting.
      #   Also disable response data type conversions. This option is useful
      #   when you want to ensure the highest level of performance by
      #   avoiding overhead of walking request parameters and response data
      #   structures.
      #
      #   When `:simple_json` is enabled, the request parameters hash must
      #   be formatted exactly as the DynamoDB API expects.
      # @option options [Boolean] :stub_responses (false)
      #   Causes the client to return stubbed responses. By default
      #   fake responses are generated and returned. You can specify
      #   the response data to return or errors to raise by calling
      #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
      #
      #   ** Please note ** When response stubbing is enabled, no HTTP
      #   requests are made, and retries are disabled.
      # @option options [Boolean] :validate_params (true)
      #   When `true`, request parameters are validated before
      #   sending the request.
      def initialize(*args)
        super
      end

      # @!group API Operations

      # Cancels an export task if it is in `PENDING` or `RUNNING` state.
      # @option params [required, String] :task_id
      #   Id of the export task to cancel.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.cancel_export_task({
      #     task_id: "ExportTaskId", # required
      #   })
      # @overload cancel_export_task(params = {})
      # @param [Hash] params ({})
      def cancel_export_task(params = {}, options = {})
        req = build_request(:cancel_export_task, params)
        req.send_request(options)
      end

      # Creates an `ExportTask` which allows you to efficiently export data
      # from a Log Group to your Amazon S3 bucket.
      #
      # This is an asynchronous call. If all the required information is
      # provided, this API will initiate an export task and respond with the
      # task Id. Once started, `DescribeExportTasks` can be used to get the
      # status of an export task. You can only have one active (`RUNNING` or
      # `PENDING`) export task at a time, per account.
      #
      # You can export logs from multiple log groups or multiple time ranges
      # to the same Amazon S3 bucket. To separate out log data for each export
      # task, you can specify a prefix that will be used as the Amazon S3 key
      # prefix for all exported objects.
      # @option params [String] :task_name
      #   The name of the export task.
      # @option params [required, String] :log_group_name
      #   The name of the log group to export.
      # @option params [String] :log_stream_name_prefix
      #   Will only export log streams that match the provided
      #   logStreamNamePrefix. If you don't specify a value, no prefix filter
      #   is applied.
      # @option params [required, Integer] :from
      #   A point in time expressed as the number of milliseconds since Jan 1,
      #   1970 00:00:00 UTC. It indicates the start time of the range for the
      #   request. Events with a timestamp prior to this time will not be
      #   exported.
      # @option params [required, Integer] :to
      #   A point in time expressed as the number of milliseconds since Jan 1,
      #   1970 00:00:00 UTC. It indicates the end time of the range for the
      #   request. Events with a timestamp later than this time will not be
      #   exported.
      # @option params [required, String] :destination
      #   Name of Amazon S3 bucket to which the log data will be exported.
      #
      #   **Note:** Only buckets in the same AWS region are supported.
      # @option params [String] :destination_prefix
      #   Prefix that will be used as the start of Amazon S3 key for every
      #   object exported. If not specified, this defaults to 'exportedlogs'.
      # @return [Types::CreateExportTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateExportTaskResponse#task_id #taskId} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_export_task({
      #     task_name: "ExportTaskName",
      #     log_group_name: "LogGroupName", # required
      #     log_stream_name_prefix: "LogStreamName",
      #     from: 1, # required
      #     to: 1, # required
      #     destination: "ExportDestinationBucket", # required
      #     destination_prefix: "ExportDestinationPrefix",
      #   })
      #
      # @example Response structure
      #   resp.task_id #=> String
      # @overload create_export_task(params = {})
      # @param [Hash] params ({})
      def create_export_task(params = {}, options = {})
        req = build_request(:create_export_task, params)
        req.send_request(options)
      end

      # Creates a new log group with the specified name. The name of the log
      # group must be unique within a region for an AWS account. You can
      # create up to 500 log groups per account.
      #
      # You must use the following guidelines when naming a log group:
      #
      # * Log group names can be between 1 and 512 characters long.
      #
      # * Allowed characters are a-z, A-Z, 0-9, '\_' (underscore), '-'
      #   (hyphen), '/' (forward slash), and '.' (period).
      # @option params [required, String] :log_group_name
      #   The name of the log group to create.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_log_group({
      #     log_group_name: "LogGroupName", # required
      #   })
      # @overload create_log_group(params = {})
      # @param [Hash] params ({})
      def create_log_group(params = {}, options = {})
        req = build_request(:create_log_group, params)
        req.send_request(options)
      end

      # Creates a new log stream in the specified log group. The name of the
      # log stream must be unique within the log group. There is no limit on
      # the number of log streams that can exist in a log group.
      #
      # You must use the following guidelines when naming a log stream:
      #
      # * Log stream names can be between 1 and 512 characters long.
      #
      # * The ':' colon character is not allowed.
      # @option params [required, String] :log_group_name
      #   The name of the log group under which the log stream is to be created.
      # @option params [required, String] :log_stream_name
      #   The name of the log stream to create.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_log_stream({
      #     log_group_name: "LogGroupName", # required
      #     log_stream_name: "LogStreamName", # required
      #   })
      # @overload create_log_stream(params = {})
      # @param [Hash] params ({})
      def create_log_stream(params = {}, options = {})
        req = build_request(:create_log_stream, params)
        req.send_request(options)
      end

      # Deletes the destination with the specified name and eventually
      # disables all the subscription filters that publish to it. This will
      # not delete the physical resource encapsulated by the destination.
      # @option params [required, String] :destination_name
      #   The name of destination to delete.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_destination({
      #     destination_name: "DestinationName", # required
      #   })
      # @overload delete_destination(params = {})
      # @param [Hash] params ({})
      def delete_destination(params = {}, options = {})
        req = build_request(:delete_destination, params)
        req.send_request(options)
      end

      # Deletes the log group with the specified name and permanently deletes
      # all the archived log events associated with it.
      # @option params [required, String] :log_group_name
      #   The name of the log group to delete.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_log_group({
      #     log_group_name: "LogGroupName", # required
      #   })
      # @overload delete_log_group(params = {})
      # @param [Hash] params ({})
      def delete_log_group(params = {}, options = {})
        req = build_request(:delete_log_group, params)
        req.send_request(options)
      end

      # Deletes a log stream and permanently deletes all the archived log
      # events associated with it.
      # @option params [required, String] :log_group_name
      #   The name of the log group under which the log stream to delete
      #   belongs.
      # @option params [required, String] :log_stream_name
      #   The name of the log stream to delete.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_log_stream({
      #     log_group_name: "LogGroupName", # required
      #     log_stream_name: "LogStreamName", # required
      #   })
      # @overload delete_log_stream(params = {})
      # @param [Hash] params ({})
      def delete_log_stream(params = {}, options = {})
        req = build_request(:delete_log_stream, params)
        req.send_request(options)
      end

      # Deletes a metric filter associated with the specified log group.
      # @option params [required, String] :log_group_name
      #   The name of the log group that is associated with the metric filter to
      #   delete.
      # @option params [required, String] :filter_name
      #   The name of the metric filter to delete.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_metric_filter({
      #     log_group_name: "LogGroupName", # required
      #     filter_name: "FilterName", # required
      #   })
      # @overload delete_metric_filter(params = {})
      # @param [Hash] params ({})
      def delete_metric_filter(params = {}, options = {})
        req = build_request(:delete_metric_filter, params)
        req.send_request(options)
      end

      # Deletes the retention policy of the specified log group. Log events
      # would not expire if they belong to log groups without a retention
      # policy.
      # @option params [required, String] :log_group_name
      #   The name of the log group that is associated with the retention policy
      #   to delete.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_retention_policy({
      #     log_group_name: "LogGroupName", # required
      #   })
      # @overload delete_retention_policy(params = {})
      # @param [Hash] params ({})
      def delete_retention_policy(params = {}, options = {})
        req = build_request(:delete_retention_policy, params)
        req.send_request(options)
      end

      # Deletes a subscription filter associated with the specified log group.
      # @option params [required, String] :log_group_name
      #   The name of the log group that is associated with the subscription
      #   filter to delete.
      # @option params [required, String] :filter_name
      #   The name of the subscription filter to delete.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_subscription_filter({
      #     log_group_name: "LogGroupName", # required
      #     filter_name: "FilterName", # required
      #   })
      # @overload delete_subscription_filter(params = {})
      # @param [Hash] params ({})
      def delete_subscription_filter(params = {}, options = {})
        req = build_request(:delete_subscription_filter, params)
        req.send_request(options)
      end

      # Returns all the destinations that are associated with the AWS account
      # making the request. The list returned in the response is ASCII-sorted
      # by destination name.
      #
      # By default, this operation returns up to 50 destinations. If there are
      # more destinations to list, the response would contain a `nextToken`
      # value in the response body. You can also limit the number of
      # destinations returned in the response by specifying the `limit`
      # parameter in the request.
      # @option params [String] :destination_name_prefix
      #   Will only return destinations that match the provided
      #   destinationNamePrefix. If you don't specify a value, no prefix is
      #   applied.
      # @option params [String] :next_token
      #   A string token used for pagination that points to the next page of
      #   results. It must be a value obtained from the response of the previous
      #   request. The token expires after 24 hours.
      # @option params [Integer] :limit
      #   The maximum number of results to return.
      # @return [Types::DescribeDestinationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeDestinationsResponse#destinations #destinations} => Array&lt;Types::Destination&gt;
      #   * {Types::DescribeDestinationsResponse#next_token #nextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_destinations({
      #     destination_name_prefix: "DestinationName",
      #     next_token: "NextToken",
      #     limit: 1,
      #   })
      #
      # @example Response structure
      #   resp.destinations #=> Array
      #   resp.destinations[0].destination_name #=> String
      #   resp.destinations[0].target_arn #=> String
      #   resp.destinations[0].role_arn #=> String
      #   resp.destinations[0].access_policy #=> String
      #   resp.destinations[0].arn #=> String
      #   resp.destinations[0].creation_time #=> Integer
      #   resp.next_token #=> String
      # @overload describe_destinations(params = {})
      # @param [Hash] params ({})
      def describe_destinations(params = {}, options = {})
        req = build_request(:describe_destinations, params)
        req.send_request(options)
      end

      # Returns all the export tasks that are associated with the AWS account
      # making the request. The export tasks can be filtered based on `TaskId`
      # or `TaskStatus`.
      #
      # By default, this operation returns up to 50 export tasks that satisfy
      # the specified filters. If there are more export tasks to list, the
      # response would contain a `nextToken` value in the response body. You
      # can also limit the number of export tasks returned in the response by
      # specifying the `limit` parameter in the request.
      # @option params [String] :task_id
      #   Export task that matches the specified task Id will be returned. This
      #   can result in zero or one export task.
      # @option params [String] :status_code
      #   All export tasks that matches the specified status code will be
      #   returned. This can return zero or more export tasks.
      # @option params [String] :next_token
      #   A string token used for pagination that points to the next page of
      #   results. It must be a value obtained from the response of the previous
      #   `DescribeExportTasks` request.
      # @option params [Integer] :limit
      #   The maximum number of items returned in the response. If you don't
      #   specify a value, the request would return up to 50 items.
      # @return [Types::DescribeExportTasksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeExportTasksResponse#export_tasks #exportTasks} => Array&lt;Types::ExportTask&gt;
      #   * {Types::DescribeExportTasksResponse#next_token #nextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_export_tasks({
      #     task_id: "ExportTaskId",
      #     status_code: "CANCELLED", # accepts CANCELLED, COMPLETED, FAILED, PENDING, PENDING_CANCEL, RUNNING
      #     next_token: "NextToken",
      #     limit: 1,
      #   })
      #
      # @example Response structure
      #   resp.export_tasks #=> Array
      #   resp.export_tasks[0].task_id #=> String
      #   resp.export_tasks[0].task_name #=> String
      #   resp.export_tasks[0].log_group_name #=> String
      #   resp.export_tasks[0].from #=> Integer
      #   resp.export_tasks[0].to #=> Integer
      #   resp.export_tasks[0].destination #=> String
      #   resp.export_tasks[0].destination_prefix #=> String
      #   resp.export_tasks[0].status.code #=> String, one of "CANCELLED", "COMPLETED", "FAILED", "PENDING", "PENDING_CANCEL", "RUNNING"
      #   resp.export_tasks[0].status.message #=> String
      #   resp.export_tasks[0].execution_info.creation_time #=> Integer
      #   resp.export_tasks[0].execution_info.completion_time #=> Integer
      #   resp.next_token #=> String
      # @overload describe_export_tasks(params = {})
      # @param [Hash] params ({})
      def describe_export_tasks(params = {}, options = {})
        req = build_request(:describe_export_tasks, params)
        req.send_request(options)
      end

      # Returns all the log groups that are associated with the AWS account
      # making the request. The list returned in the response is ASCII-sorted
      # by log group name.
      #
      # By default, this operation returns up to 50 log groups. If there are
      # more log groups to list, the response would contain a `nextToken`
      # value in the response body. You can also limit the number of log
      # groups returned in the response by specifying the `limit` parameter in
      # the request.
      # @option params [String] :log_group_name_prefix
      #   Will only return log groups that match the provided
      #   logGroupNamePrefix. If you don't specify a value, no prefix filter is
      #   applied.
      # @option params [String] :next_token
      #   A string token used for pagination that points to the next page of
      #   results. It must be a value obtained from the response of the previous
      #   `DescribeLogGroups` request.
      # @option params [Integer] :limit
      #   The maximum number of items returned in the response. If you don't
      #   specify a value, the request would return up to 50 items.
      # @return [Types::DescribeLogGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeLogGroupsResponse#log_groups #logGroups} => Array&lt;Types::LogGroup&gt;
      #   * {Types::DescribeLogGroupsResponse#next_token #nextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_log_groups({
      #     log_group_name_prefix: "LogGroupName",
      #     next_token: "NextToken",
      #     limit: 1,
      #   })
      #
      # @example Response structure
      #   resp.log_groups #=> Array
      #   resp.log_groups[0].log_group_name #=> String
      #   resp.log_groups[0].creation_time #=> Integer
      #   resp.log_groups[0].retention_in_days #=> Integer
      #   resp.log_groups[0].metric_filter_count #=> Integer
      #   resp.log_groups[0].arn #=> String
      #   resp.log_groups[0].stored_bytes #=> Integer
      #   resp.next_token #=> String
      # @overload describe_log_groups(params = {})
      # @param [Hash] params ({})
      def describe_log_groups(params = {}, options = {})
        req = build_request(:describe_log_groups, params)
        req.send_request(options)
      end

      # Returns all the log streams that are associated with the specified log
      # group. The list returned in the response is ASCII-sorted by log stream
      # name.
      #
      # By default, this operation returns up to 50 log streams. If there are
      # more log streams to list, the response would contain a `nextToken`
      # value in the response body. You can also limit the number of log
      # streams returned in the response by specifying the `limit` parameter
      # in the request. This operation has a limit of five transactions per
      # second, after which transactions are throttled.
      # @option params [required, String] :log_group_name
      #   The log group name for which log streams are to be listed.
      # @option params [String] :log_stream_name_prefix
      #   Will only return log streams that match the provided
      #   logStreamNamePrefix. If you don't specify a value, no prefix filter
      #   is applied.
      # @option params [String] :order_by
      #   Specifies what to order the returned log streams by. Valid arguments
      #   are 'LogStreamName' or 'LastEventTime'. If you don't specify a
      #   value, results are ordered by LogStreamName. If 'LastEventTime' is
      #   chosen, the request cannot also contain a logStreamNamePrefix.
      # @option params [Boolean] :descending
      #   If set to true, results are returned in descending order. If you
      #   don't specify a value or set it to false, results are returned in
      #   ascending order.
      # @option params [String] :next_token
      #   A string token used for pagination that points to the next page of
      #   results. It must be a value obtained from the response of the previous
      #   `DescribeLogStreams` request.
      # @option params [Integer] :limit
      #   The maximum number of items returned in the response. If you don't
      #   specify a value, the request would return up to 50 items.
      # @return [Types::DescribeLogStreamsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeLogStreamsResponse#log_streams #logStreams} => Array&lt;Types::LogStream&gt;
      #   * {Types::DescribeLogStreamsResponse#next_token #nextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_log_streams({
      #     log_group_name: "LogGroupName", # required
      #     log_stream_name_prefix: "LogStreamName",
      #     order_by: "LogStreamName", # accepts LogStreamName, LastEventTime
      #     descending: false,
      #     next_token: "NextToken",
      #     limit: 1,
      #   })
      #
      # @example Response structure
      #   resp.log_streams #=> Array
      #   resp.log_streams[0].log_stream_name #=> String
      #   resp.log_streams[0].creation_time #=> Integer
      #   resp.log_streams[0].first_event_timestamp #=> Integer
      #   resp.log_streams[0].last_event_timestamp #=> Integer
      #   resp.log_streams[0].last_ingestion_time #=> Integer
      #   resp.log_streams[0].upload_sequence_token #=> String
      #   resp.log_streams[0].arn #=> String
      #   resp.log_streams[0].stored_bytes #=> Integer
      #   resp.next_token #=> String
      # @overload describe_log_streams(params = {})
      # @param [Hash] params ({})
      def describe_log_streams(params = {}, options = {})
        req = build_request(:describe_log_streams, params)
        req.send_request(options)
      end

      # Returns all the metrics filters associated with the specified log
      # group. The list returned in the response is ASCII-sorted by filter
      # name.
      #
      # By default, this operation returns up to 50 metric filters. If there
      # are more metric filters to list, the response would contain a
      # `nextToken` value in the response body. You can also limit the number
      # of metric filters returned in the response by specifying the `limit`
      # parameter in the request.
      # @option params [required, String] :log_group_name
      #   The log group name for which metric filters are to be listed.
      # @option params [String] :filter_name_prefix
      #   Will only return metric filters that match the provided
      #   filterNamePrefix. If you don't specify a value, no prefix filter is
      #   applied.
      # @option params [String] :next_token
      #   A string token used for pagination that points to the next page of
      #   results. It must be a value obtained from the response of the previous
      #   `DescribeMetricFilters` request.
      # @option params [Integer] :limit
      #   The maximum number of items returned in the response. If you don't
      #   specify a value, the request would return up to 50 items.
      # @return [Types::DescribeMetricFiltersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeMetricFiltersResponse#metric_filters #metricFilters} => Array&lt;Types::MetricFilter&gt;
      #   * {Types::DescribeMetricFiltersResponse#next_token #nextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_metric_filters({
      #     log_group_name: "LogGroupName", # required
      #     filter_name_prefix: "FilterName",
      #     next_token: "NextToken",
      #     limit: 1,
      #   })
      #
      # @example Response structure
      #   resp.metric_filters #=> Array
      #   resp.metric_filters[0].filter_name #=> String
      #   resp.metric_filters[0].filter_pattern #=> String
      #   resp.metric_filters[0].metric_transformations #=> Array
      #   resp.metric_filters[0].metric_transformations[0].metric_name #=> String
      #   resp.metric_filters[0].metric_transformations[0].metric_namespace #=> String
      #   resp.metric_filters[0].metric_transformations[0].metric_value #=> String
      #   resp.metric_filters[0].metric_transformations[0].default_value #=> Float
      #   resp.metric_filters[0].creation_time #=> Integer
      #   resp.next_token #=> String
      # @overload describe_metric_filters(params = {})
      # @param [Hash] params ({})
      def describe_metric_filters(params = {}, options = {})
        req = build_request(:describe_metric_filters, params)
        req.send_request(options)
      end

      # Returns all the subscription filters associated with the specified log
      # group. The list returned in the response is ASCII-sorted by filter
      # name.
      #
      # By default, this operation returns up to 50 subscription filters. If
      # there are more subscription filters to list, the response would
      # contain a `nextToken` value in the response body. You can also limit
      # the number of subscription filters returned in the response by
      # specifying the `limit` parameter in the request.
      # @option params [required, String] :log_group_name
      #   The log group name for which subscription filters are to be listed.
      # @option params [String] :filter_name_prefix
      #   Will only return subscription filters that match the provided
      #   filterNamePrefix. If you don't specify a value, no prefix filter is
      #   applied.
      # @option params [String] :next_token
      #   A string token used for pagination that points to the next page of
      #   results. It must be a value obtained from the response of the previous
      #   request. The token expires after 24 hours.
      # @option params [Integer] :limit
      #   The maximum number of results to return.
      # @return [Types::DescribeSubscriptionFiltersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeSubscriptionFiltersResponse#subscription_filters #subscriptionFilters} => Array&lt;Types::SubscriptionFilter&gt;
      #   * {Types::DescribeSubscriptionFiltersResponse#next_token #nextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_subscription_filters({
      #     log_group_name: "LogGroupName", # required
      #     filter_name_prefix: "FilterName",
      #     next_token: "NextToken",
      #     limit: 1,
      #   })
      #
      # @example Response structure
      #   resp.subscription_filters #=> Array
      #   resp.subscription_filters[0].filter_name #=> String
      #   resp.subscription_filters[0].log_group_name #=> String
      #   resp.subscription_filters[0].filter_pattern #=> String
      #   resp.subscription_filters[0].destination_arn #=> String
      #   resp.subscription_filters[0].role_arn #=> String
      #   resp.subscription_filters[0].creation_time #=> Integer
      #   resp.next_token #=> String
      # @overload describe_subscription_filters(params = {})
      # @param [Hash] params ({})
      def describe_subscription_filters(params = {}, options = {})
        req = build_request(:describe_subscription_filters, params)
        req.send_request(options)
      end

      # Retrieves log events, optionally filtered by a filter pattern from the
      # specified log group. You can provide an optional time range to filter
      # the results on the event `timestamp`. You can limit the streams
      # searched to an explicit list of `logStreamNames`.
      #
      # By default, this operation returns as much matching log events as can
      # fit in a response size of 1MB, up to 10,000 log events, or all the
      # events found within a time-bounded scan window. If the response
      # includes a `nextToken`, then there is more data to search, and the
      # search can be resumed with a new request providing the nextToken. The
      # response will contain a list of `searchedLogStreams` that contains
      # information about which streams were searched in the request and
      # whether they have been searched completely or require further
      # pagination. The `limit` parameter in the request can be used to
      # specify the maximum number of events to return in a page.
      # @option params [required, String] :log_group_name
      #   The name of the log group to query.
      # @option params [Array<String>] :log_stream_names
      #   Optional list of log stream names within the specified log group to
      #   search. Defaults to all the log streams in the log group.
      # @option params [Integer] :start_time
      #   A point in time expressed as the number of milliseconds since Jan 1,
      #   1970 00:00:00 UTC. If provided, events with a timestamp prior to this
      #   time are not returned.
      # @option params [Integer] :end_time
      #   A point in time expressed as the number of milliseconds since Jan 1,
      #   1970 00:00:00 UTC. If provided, events with a timestamp later than
      #   this time are not returned.
      # @option params [String] :filter_pattern
      #   A valid CloudWatch Logs filter pattern to use for filtering the
      #   response. If not provided, all the events are matched.
      # @option params [String] :next_token
      #   A pagination token obtained from a `FilterLogEvents` response to
      #   continue paginating the FilterLogEvents results. This token is omitted
      #   from the response when there are no other events to display.
      # @option params [Integer] :limit
      #   The maximum number of events to return in a page of results. Default
      #   is 10,000 events.
      # @option params [Boolean] :interleaved
      #   If provided, the API will make a best effort to provide responses that
      #   contain events from multiple log streams within the log group
      #   interleaved in a single response. If not provided, all the matched log
      #   events in the first log stream will be searched first, then those in
      #   the next log stream, etc.
      # @return [Types::FilterLogEventsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::FilterLogEventsResponse#events #events} => Array&lt;Types::FilteredLogEvent&gt;
      #   * {Types::FilterLogEventsResponse#searched_log_streams #searchedLogStreams} => Array&lt;Types::SearchedLogStream&gt;
      #   * {Types::FilterLogEventsResponse#next_token #nextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.filter_log_events({
      #     log_group_name: "LogGroupName", # required
      #     log_stream_names: ["LogStreamName"],
      #     start_time: 1,
      #     end_time: 1,
      #     filter_pattern: "FilterPattern",
      #     next_token: "NextToken",
      #     limit: 1,
      #     interleaved: false,
      #   })
      #
      # @example Response structure
      #   resp.events #=> Array
      #   resp.events[0].log_stream_name #=> String
      #   resp.events[0].timestamp #=> Integer
      #   resp.events[0].message #=> String
      #   resp.events[0].ingestion_time #=> Integer
      #   resp.events[0].event_id #=> String
      #   resp.searched_log_streams #=> Array
      #   resp.searched_log_streams[0].log_stream_name #=> String
      #   resp.searched_log_streams[0].searched_completely #=> Boolean
      #   resp.next_token #=> String
      # @overload filter_log_events(params = {})
      # @param [Hash] params ({})
      def filter_log_events(params = {}, options = {})
        req = build_request(:filter_log_events, params)
        req.send_request(options)
      end

      # Retrieves log events from the specified log stream. You can provide an
      # optional time range to filter the results on the event `timestamp`.
      #
      # By default, this operation returns as much log events as can fit in a
      # response size of 1MB, up to 10,000 log events. The response will
      # always include a `nextForwardToken` and a `nextBackwardToken` in the
      # response body. You can use any of these tokens in subsequent
      # `GetLogEvents` requests to paginate through events in either forward
      # or backward direction. You can also limit the number of log events
      # returned in the response by specifying the `limit` parameter in the
      # request.
      # @option params [required, String] :log_group_name
      #   The name of the log group to query.
      # @option params [required, String] :log_stream_name
      #   The name of the log stream to query.
      # @option params [Integer] :start_time
      #   A point in time expressed as the number of milliseconds since Jan 1,
      #   1970 00:00:00 UTC.
      # @option params [Integer] :end_time
      #   A point in time expressed as the number of milliseconds since Jan 1,
      #   1970 00:00:00 UTC.
      # @option params [String] :next_token
      #   A string token used for pagination that points to the next page of
      #   results. It must be a value obtained from the `nextForwardToken` or
      #   `nextBackwardToken` fields in the response of the previous
      #   `GetLogEvents` request.
      # @option params [Integer] :limit
      #   The maximum number of log events returned in the response. If you
      #   don't specify a value, the request would return as many log events as
      #   can fit in a response size of 1MB, up to 10,000 log events.
      # @option params [Boolean] :start_from_head
      #   If set to true, the earliest log events would be returned first. The
      #   default is false (the latest log events are returned first).
      # @return [Types::GetLogEventsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetLogEventsResponse#events #events} => Array&lt;Types::OutputLogEvent&gt;
      #   * {Types::GetLogEventsResponse#next_forward_token #nextForwardToken} => String
      #   * {Types::GetLogEventsResponse#next_backward_token #nextBackwardToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_log_events({
      #     log_group_name: "LogGroupName", # required
      #     log_stream_name: "LogStreamName", # required
      #     start_time: 1,
      #     end_time: 1,
      #     next_token: "NextToken",
      #     limit: 1,
      #     start_from_head: false,
      #   })
      #
      # @example Response structure
      #   resp.events #=> Array
      #   resp.events[0].timestamp #=> Integer
      #   resp.events[0].message #=> String
      #   resp.events[0].ingestion_time #=> Integer
      #   resp.next_forward_token #=> String
      #   resp.next_backward_token #=> String
      # @overload get_log_events(params = {})
      # @param [Hash] params ({})
      def get_log_events(params = {}, options = {})
        req = build_request(:get_log_events, params)
        req.send_request(options)
      end

      # Creates or updates a `Destination`. A destination encapsulates a
      # physical resource (such as a Kinesis stream) and allows you to
      # subscribe to a real-time stream of log events of a different account,
      # ingested through `PutLogEvents` requests. Currently, the only
      # supported physical resource is a Amazon Kinesis stream belonging to
      # the same account as the destination.
      #
      # A destination controls what is written to its Amazon Kinesis stream
      # through an access policy. By default, PutDestination does not set any
      # access policy with the destination, which means a cross-account user
      # will not be able to call `PutSubscriptionFilter` against this
      # destination. To enable that, the destination owner must call
      # `PutDestinationPolicy` after PutDestination.
      # @option params [required, String] :destination_name
      #   A name for the destination.
      # @option params [required, String] :target_arn
      #   The ARN of an Amazon Kinesis stream to deliver matching log events to.
      # @option params [required, String] :role_arn
      #   The ARN of an IAM role that grants CloudWatch Logs permissions to do
      #   Amazon Kinesis PutRecord requests on the destination stream.
      # @return [Types::PutDestinationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::PutDestinationResponse#destination #destination} => Types::Destination
      #
      # @example Request syntax with placeholder values
      #   resp = client.put_destination({
      #     destination_name: "DestinationName", # required
      #     target_arn: "TargetArn", # required
      #     role_arn: "RoleArn", # required
      #   })
      #
      # @example Response structure
      #   resp.destination.destination_name #=> String
      #   resp.destination.target_arn #=> String
      #   resp.destination.role_arn #=> String
      #   resp.destination.access_policy #=> String
      #   resp.destination.arn #=> String
      #   resp.destination.creation_time #=> Integer
      # @overload put_destination(params = {})
      # @param [Hash] params ({})
      def put_destination(params = {}, options = {})
        req = build_request(:put_destination, params)
        req.send_request(options)
      end

      # Creates or updates an access policy associated with an existing
      # `Destination`. An access policy is an [IAM policy document][1] that is
      # used to authorize claims to register a subscription filter against a
      # given destination.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies_overview.html
      # @option params [required, String] :destination_name
      #   A name for an existing destination.
      # @option params [required, String] :access_policy
      #   An IAM policy document that authorizes cross-account users to deliver
      #   their log events to associated destination.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.put_destination_policy({
      #     destination_name: "DestinationName", # required
      #     access_policy: "AccessPolicy", # required
      #   })
      # @overload put_destination_policy(params = {})
      # @param [Hash] params ({})
      def put_destination_policy(params = {}, options = {})
        req = build_request(:put_destination_policy, params)
        req.send_request(options)
      end

      # Uploads a batch of log events to the specified log stream.
      #
      # Every PutLogEvents request must include the `sequenceToken` obtained
      # from the response of the previous request. An upload in a newly
      # created log stream does not require a `sequenceToken`. You can also
      # get the `sequenceToken` using DescribeLogStreams.
      #
      # The batch of events must satisfy the following constraints:
      #
      # * The maximum batch size is 1,048,576 bytes, and this size is
      #   calculated as the sum of all event messages in UTF-8, plus 26 bytes
      #   for each log event.
      #
      # * None of the log events in the batch can be more than 2 hours in the
      #   future.
      #
      # * None of the log events in the batch can be older than 14 days or the
      #   retention period of the log group.
      #
      # * The log events in the batch must be in chronological ordered by
      #   their `timestamp`.
      #
      # * The maximum number of log events in a batch is 10,000.
      #
      # * A batch of log events in a single PutLogEvents request cannot span
      #   more than 24 hours. Otherwise, the PutLogEvents operation will fail.
      # @option params [required, String] :log_group_name
      #   The name of the log group to put log events to.
      # @option params [required, String] :log_stream_name
      #   The name of the log stream to put log events to.
      # @option params [required, Array<Types::InputLogEvent>] :log_events
      #   A list of log events belonging to a log stream.
      # @option params [String] :sequence_token
      #   A string token that must be obtained from the response of the previous
      #   `PutLogEvents` request.
      # @return [Types::PutLogEventsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::PutLogEventsResponse#next_sequence_token #nextSequenceToken} => String
      #   * {Types::PutLogEventsResponse#rejected_log_events_info #rejectedLogEventsInfo} => Types::RejectedLogEventsInfo
      #
      # @example Request syntax with placeholder values
      #   resp = client.put_log_events({
      #     log_group_name: "LogGroupName", # required
      #     log_stream_name: "LogStreamName", # required
      #     log_events: [ # required
      #       {
      #         timestamp: 1, # required
      #         message: "EventMessage", # required
      #       },
      #     ],
      #     sequence_token: "SequenceToken",
      #   })
      #
      # @example Response structure
      #   resp.next_sequence_token #=> String
      #   resp.rejected_log_events_info.too_new_log_event_start_index #=> Integer
      #   resp.rejected_log_events_info.too_old_log_event_end_index #=> Integer
      #   resp.rejected_log_events_info.expired_log_event_end_index #=> Integer
      # @overload put_log_events(params = {})
      # @param [Hash] params ({})
      def put_log_events(params = {}, options = {})
        req = build_request(:put_log_events, params)
        req.send_request(options)
      end

      # Creates or updates a metric filter and associates it with the
      # specified log group. Metric filters allow you to configure rules to
      # extract metric data from log events ingested through `PutLogEvents`
      # requests.
      #
      # The maximum number of metric filters that can be associated with a log
      # group is 100.
      # @option params [required, String] :log_group_name
      #   The name of the log group to associate the metric filter with.
      # @option params [required, String] :filter_name
      #   A name for the metric filter.
      # @option params [required, String] :filter_pattern
      #   A valid CloudWatch Logs filter pattern for extracting metric data out
      #   of ingested log events.
      # @option params [required, Array<Types::MetricTransformation>] :metric_transformations
      #   A collection of information needed to define how metric data gets
      #   emitted.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.put_metric_filter({
      #     log_group_name: "LogGroupName", # required
      #     filter_name: "FilterName", # required
      #     filter_pattern: "FilterPattern", # required
      #     metric_transformations: [ # required
      #       {
      #         metric_name: "MetricName", # required
      #         metric_namespace: "MetricNamespace", # required
      #         metric_value: "MetricValue", # required
      #         default_value: 1.0,
      #       },
      #     ],
      #   })
      # @overload put_metric_filter(params = {})
      # @param [Hash] params ({})
      def put_metric_filter(params = {}, options = {})
        req = build_request(:put_metric_filter, params)
        req.send_request(options)
      end

      # Sets the retention of the specified log group. A retention policy
      # allows you to configure the number of days you want to retain log
      # events in the specified log group.
      # @option params [required, String] :log_group_name
      #   The name of the log group to associate the retention policy with.
      # @option params [required, Integer] :retention_in_days
      #   Specifies the number of days you want to retain log events in the
      #   specified log group. Possible values are: 1, 3, 5, 7, 14, 30, 60, 90,
      #   120, 150, 180, 365, 400, 545, 731, 1827, 3653.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.put_retention_policy({
      #     log_group_name: "LogGroupName", # required
      #     retention_in_days: 1, # required
      #   })
      # @overload put_retention_policy(params = {})
      # @param [Hash] params ({})
      def put_retention_policy(params = {}, options = {})
        req = build_request(:put_retention_policy, params)
        req.send_request(options)
      end

      # Creates or updates a subscription filter and associates it with the
      # specified log group. Subscription filters allow you to subscribe to a
      # real-time stream of log events ingested through `PutLogEvents`
      # requests and have them delivered to a specific destination. Currently,
      # the supported destinations are:
      #
      # * An Amazon Kinesis stream belonging to the same account as the
      #   subscription filter, for same-account delivery.
      #
      # * A logical destination (used via an ARN of `Destination`) belonging
      #   to a different account, for cross-account delivery.
      #
      # * An Amazon Kinesis Firehose stream belonging to the same account as
      #   the subscription filter, for same-account delivery.
      #
      # * An AWS Lambda function belonging to the same account as the
      #   subscription filter, for same-account delivery.
      #
      # Currently there can only be one subscription filter associated with a
      # log group.
      # @option params [required, String] :log_group_name
      #   The name of the log group to associate the subscription filter with.
      # @option params [required, String] :filter_name
      #   A name for the subscription filter.
      # @option params [required, String] :filter_pattern
      #   A valid CloudWatch Logs filter pattern for subscribing to a filtered
      #   stream of log events.
      # @option params [required, String] :destination_arn
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
      # @option params [String] :role_arn
      #   The ARN of an IAM role that grants CloudWatch Logs permissions to
      #   deliver ingested log events to the destination stream. You don't need
      #   to provide the ARN when you are working with a logical destination
      #   (used via an ARN of `Destination`) for cross-account delivery.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.put_subscription_filter({
      #     log_group_name: "LogGroupName", # required
      #     filter_name: "FilterName", # required
      #     filter_pattern: "FilterPattern", # required
      #     destination_arn: "DestinationArn", # required
      #     role_arn: "RoleArn",
      #   })
      # @overload put_subscription_filter(params = {})
      # @param [Hash] params ({})
      def put_subscription_filter(params = {}, options = {})
        req = build_request(:put_subscription_filter, params)
        req.send_request(options)
      end

      # Tests the filter pattern of a metric filter against a sample of log
      # event messages. You can use this operation to validate the correctness
      # of a metric filter pattern.
      # @option params [required, String] :filter_pattern
      #   A symbolic description of how CloudWatch Logs should interpret the
      #   data in each log event. For example, a log event may contain
      #   timestamps, IP addresses, strings, and so on. You use the filter
      #   pattern to specify what to look for in the log event message.
      # @option params [required, Array<String>] :log_event_messages
      #   A list of log event messages to test.
      # @return [Types::TestMetricFilterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::TestMetricFilterResponse#matches #matches} => Array&lt;Types::MetricFilterMatchRecord&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.test_metric_filter({
      #     filter_pattern: "FilterPattern", # required
      #     log_event_messages: ["EventMessage"], # required
      #   })
      #
      # @example Response structure
      #   resp.matches #=> Array
      #   resp.matches[0].event_number #=> Integer
      #   resp.matches[0].event_message #=> String
      #   resp.matches[0].extracted_values #=> Hash
      #   resp.matches[0].extracted_values["Token"] #=> String
      # @overload test_metric_filter(params = {})
      # @param [Hash] params ({})
      def test_metric_filter(params = {}, options = {})
        req = build_request(:test_metric_filter, params)
        req.send_request(options)
      end

      # @!endgroup

      # @param [Symbol] waiter_name
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      # @option options [Integer] :max_attempts
      # @option options [Integer] :delay
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def wait_until(waiter_name, params = {}, options = {})
        w = waiter(waiter_name, options)
        yield(w.waiter) if block_given? # deprecated
        w.wait(params)
      end

      def waiter_names
        waiters.keys
      end

      private

      # @param [Symbol] waiter_name
      # @param [Hash] options ({})
      def waiter(waiter_name, options = {})
        waiter_class = waiters[waiter_name]
        if waiter_class
          waiter_class.new(options.merge(client: self))
        else
          raise Aws::Waiters::Errors::NoSuchWaiterError.new(waiter_name, waiters.keys)
        end
      end

      def waiters
        {}
      end

      # @api private
      class << self

        # @api private
        attr_reader :identifier

        def errors_module
          Errors
        end

      end
    end
  end
end
