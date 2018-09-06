# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
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
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:iotanalytics)

module Aws::IoTAnalytics
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :iotanalytics

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
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::RestJson)

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
    #
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
    #
    # @option options [String] :access_key_id
    #
    # @option options [] :client_side_monitoring (false)
    #   When `true`, client-side metrics will be collected for all API requests from
    #   this client.
    #
    # @option options [] :client_side_monitoring_client_id ("")
    #   Allows you to provide an identifier for this client which will be attached to
    #   all generated client side metrics. Defaults to an empty string.
    #
    # @option options [] :client_side_monitoring_port (31000)
    #   Required for publishing client metrics. The port that the client side monitoring
    #   agent is running on, where client metrics will be published via UDP.
    #
    # @option options [] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #   Allows you to provide a custom client-side monitoring publisher class. By default,
    #   will use the Client Side Monitoring Agent Publisher.
    #
    # @option options [Boolean] :convert_params (true)
    #   When `true`, an attempt is made to coerce request parameters into
    #   the required types.
    #
    # @option options [String] :endpoint
    #   The client endpoint is normally constructed from the `:region`
    #   option. You should only configure an `:endpoint` when connecting
    #   to test endpoints. This should be avalid HTTP(S) URI.
    #
    # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #   The log formatter.
    #
    # @option options [Symbol] :log_level (:info)
    #   The log level to send messages to the `:logger` at.
    #
    # @option options [Logger] :logger
    #   The Logger instance to send log messages to.  If this option
    #   is not set, logging will be disabled.
    #
    # @option options [String] :profile ("default")
    #   Used when loading credentials from the shared credentials file
    #   at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    # @option options [Float] :retry_base_delay (0.3)
    #   The base delay in seconds used by the default backoff function.
    #
    # @option options [Symbol] :retry_jitter (:none)
    #   A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #   @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
    #
    # @option options [Integer] :retry_max_delay (0)
    #   The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
    #
    # @option options [String] :secret_access_key
    #
    # @option options [String] :session_token
    #
    # @option options [Boolean] :stub_responses (false)
    #   Causes the client to return stubbed responses. By default
    #   fake responses are generated and returned. You can specify
    #   the response data to return or errors to raise by calling
    #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #   ** Please note ** When response stubbing is enabled, no HTTP
    #   requests are made, and retries are disabled.
    #
    # @option options [Boolean] :validate_params (true)
    #   When `true`, request parameters are validated before
    #   sending the request.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Sends messages to a channel.
    #
    # @option params [required, String] :channel_name
    #   The name of the channel where the messages are sent.
    #
    # @option params [required, Array<Types::Message>] :messages
    #   The list of messages to be sent. Each message has format: '\\\{
    #   "messageId": "string", "payload": "string"\\}'.
    #
    # @return [Types::BatchPutMessageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchPutMessageResponse#batch_put_message_error_entries #batch_put_message_error_entries} => Array&lt;Types::BatchPutMessageErrorEntry&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_put_message({
    #     channel_name: "ChannelName", # required
    #     messages: [ # required
    #       {
    #         message_id: "MessageId", # required
    #         payload: "data", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.batch_put_message_error_entries #=> Array
    #   resp.batch_put_message_error_entries[0].message_id #=> String
    #   resp.batch_put_message_error_entries[0].error_code #=> String
    #   resp.batch_put_message_error_entries[0].error_message #=> String
    #
    # @overload batch_put_message(params = {})
    # @param [Hash] params ({})
    def batch_put_message(params = {}, options = {})
      req = build_request(:batch_put_message, params)
      req.send_request(options)
    end

    # Cancels the reprocessing of data through the pipeline.
    #
    # @option params [required, String] :pipeline_name
    #   The name of pipeline for which data reprocessing is canceled.
    #
    # @option params [required, String] :reprocessing_id
    #   The ID of the reprocessing task (returned by
    #   "StartPipelineReprocessing").
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_pipeline_reprocessing({
    #     pipeline_name: "PipelineName", # required
    #     reprocessing_id: "ReprocessingId", # required
    #   })
    #
    # @overload cancel_pipeline_reprocessing(params = {})
    # @param [Hash] params ({})
    def cancel_pipeline_reprocessing(params = {}, options = {})
      req = build_request(:cancel_pipeline_reprocessing, params)
      req.send_request(options)
    end

    # Creates a channel. A channel collects data from an MQTT topic and
    # archives the raw, unprocessed messages before publishing the data to a
    # pipeline.
    #
    # @option params [required, String] :channel_name
    #   The name of the channel.
    #
    # @option params [Types::RetentionPeriod] :retention_period
    #   How long, in days, message data is kept for the channel.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Metadata which can be used to manage the channel.
    #
    # @return [Types::CreateChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateChannelResponse#channel_name #channel_name} => String
    #   * {Types::CreateChannelResponse#channel_arn #channel_arn} => String
    #   * {Types::CreateChannelResponse#retention_period #retention_period} => Types::RetentionPeriod
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_channel({
    #     channel_name: "ChannelName", # required
    #     retention_period: {
    #       unlimited: false,
    #       number_of_days: 1,
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_name #=> String
    #   resp.channel_arn #=> String
    #   resp.retention_period.unlimited #=> Boolean
    #   resp.retention_period.number_of_days #=> Integer
    #
    # @overload create_channel(params = {})
    # @param [Hash] params ({})
    def create_channel(params = {}, options = {})
      req = build_request(:create_channel, params)
      req.send_request(options)
    end

    # Creates a data set. A data set stores data retrieved from a data store
    # by applying a "queryAction" (a SQL query) or a "containerAction"
    # (executing a containerized application). This operation creates the
    # skeleton of a data set. The data set can be populated manually by
    # calling "CreateDatasetContent" or automatically according to a
    # "trigger" you specify.
    #
    # @option params [required, String] :dataset_name
    #   The name of the data set.
    #
    # @option params [required, Array<Types::DatasetAction>] :actions
    #   A list of actions that create the data set contents.
    #
    # @option params [Array<Types::DatasetTrigger>] :triggers
    #   A list of triggers. A trigger causes data set contents to be populated
    #   at a specified time interval or when another data set's contents are
    #   created. The list of triggers can be empty or contain up to five
    #   **DataSetTrigger** objects.
    #
    # @option params [Types::RetentionPeriod] :retention_period
    #   \[Optional\] How long, in days, message data is kept for the data set.
    #   If not given or set to null, the latest version of the dataset content
    #   plus the latest succeeded version (if they are different) are retained
    #   for at most 90 days.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Metadata which can be used to manage the data set.
    #
    # @return [Types::CreateDatasetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDatasetResponse#dataset_name #dataset_name} => String
    #   * {Types::CreateDatasetResponse#dataset_arn #dataset_arn} => String
    #   * {Types::CreateDatasetResponse#retention_period #retention_period} => Types::RetentionPeriod
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_dataset({
    #     dataset_name: "DatasetName", # required
    #     actions: [ # required
    #       {
    #         action_name: "DatasetActionName",
    #         query_action: {
    #           sql_query: "SqlQuery", # required
    #           filters: [
    #             {
    #               delta_time: {
    #                 offset_seconds: 1, # required
    #                 time_expression: "TimeExpression", # required
    #               },
    #             },
    #           ],
    #         },
    #         container_action: {
    #           image: "Image", # required
    #           execution_role_arn: "RoleArn", # required
    #           resource_configuration: { # required
    #             compute_type: "ACU_1", # required, accepts ACU_1, ACU_2
    #             volume_size_in_gb: 1, # required
    #           },
    #           variables: [
    #             {
    #               name: "VariableName", # required
    #               string_value: "StringValue",
    #               double_value: 1.0,
    #               dataset_content_version_value: {
    #                 dataset_name: "DatasetName", # required
    #               },
    #               output_file_uri_value: {
    #                 file_name: "OutputFileName", # required
    #               },
    #             },
    #           ],
    #         },
    #       },
    #     ],
    #     triggers: [
    #       {
    #         schedule: {
    #           expression: "ScheduleExpression",
    #         },
    #         dataset: {
    #           name: "DatasetName", # required
    #         },
    #       },
    #     ],
    #     retention_period: {
    #       unlimited: false,
    #       number_of_days: 1,
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset_name #=> String
    #   resp.dataset_arn #=> String
    #   resp.retention_period.unlimited #=> Boolean
    #   resp.retention_period.number_of_days #=> Integer
    #
    # @overload create_dataset(params = {})
    # @param [Hash] params ({})
    def create_dataset(params = {}, options = {})
      req = build_request(:create_dataset, params)
      req.send_request(options)
    end

    # Creates the content of a data set by applying a SQL action.
    #
    # @option params [required, String] :dataset_name
    #   The name of the data set.
    #
    # @return [Types::CreateDatasetContentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDatasetContentResponse#version_id #version_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_dataset_content({
    #     dataset_name: "DatasetName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.version_id #=> String
    #
    # @overload create_dataset_content(params = {})
    # @param [Hash] params ({})
    def create_dataset_content(params = {}, options = {})
      req = build_request(:create_dataset_content, params)
      req.send_request(options)
    end

    # Creates a data store, which is a repository for messages.
    #
    # @option params [required, String] :datastore_name
    #   The name of the data store.
    #
    # @option params [Types::RetentionPeriod] :retention_period
    #   How long, in days, message data is kept for the data store.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Metadata which can be used to manage the data store.
    #
    # @return [Types::CreateDatastoreResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDatastoreResponse#datastore_name #datastore_name} => String
    #   * {Types::CreateDatastoreResponse#datastore_arn #datastore_arn} => String
    #   * {Types::CreateDatastoreResponse#retention_period #retention_period} => Types::RetentionPeriod
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_datastore({
    #     datastore_name: "DatastoreName", # required
    #     retention_period: {
    #       unlimited: false,
    #       number_of_days: 1,
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.datastore_name #=> String
    #   resp.datastore_arn #=> String
    #   resp.retention_period.unlimited #=> Boolean
    #   resp.retention_period.number_of_days #=> Integer
    #
    # @overload create_datastore(params = {})
    # @param [Hash] params ({})
    def create_datastore(params = {}, options = {})
      req = build_request(:create_datastore, params)
      req.send_request(options)
    end

    # Creates a pipeline. A pipeline consumes messages from one or more
    # channels and allows you to process the messages before storing them in
    # a data store.
    #
    # @option params [required, String] :pipeline_name
    #   The name of the pipeline.
    #
    # @option params [required, Array<Types::PipelineActivity>] :pipeline_activities
    #   A list of pipeline activities.
    #
    #   The list can be 1-25 **PipelineActivity** objects. Activities perform
    #   transformations on your messages, such as removing, renaming, or
    #   adding message attributes; filtering messages based on attribute
    #   values; invoking your Lambda functions on messages for advanced
    #   processing; or performing mathematical transformations to normalize
    #   device data.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Metadata which can be used to manage the pipeline.
    #
    # @return [Types::CreatePipelineResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePipelineResponse#pipeline_name #pipeline_name} => String
    #   * {Types::CreatePipelineResponse#pipeline_arn #pipeline_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_pipeline({
    #     pipeline_name: "PipelineName", # required
    #     pipeline_activities: [ # required
    #       {
    #         channel: {
    #           name: "ActivityName", # required
    #           channel_name: "ChannelName", # required
    #           next: "ActivityName",
    #         },
    #         lambda: {
    #           name: "ActivityName", # required
    #           lambda_name: "LambdaName", # required
    #           batch_size: 1, # required
    #           next: "ActivityName",
    #         },
    #         datastore: {
    #           name: "ActivityName", # required
    #           datastore_name: "DatastoreName", # required
    #         },
    #         add_attributes: {
    #           name: "ActivityName", # required
    #           attributes: { # required
    #             "AttributeName" => "AttributeName",
    #           },
    #           next: "ActivityName",
    #         },
    #         remove_attributes: {
    #           name: "ActivityName", # required
    #           attributes: ["AttributeName"], # required
    #           next: "ActivityName",
    #         },
    #         select_attributes: {
    #           name: "ActivityName", # required
    #           attributes: ["AttributeName"], # required
    #           next: "ActivityName",
    #         },
    #         filter: {
    #           name: "ActivityName", # required
    #           filter: "FilterExpression", # required
    #           next: "ActivityName",
    #         },
    #         math: {
    #           name: "ActivityName", # required
    #           attribute: "AttributeName", # required
    #           math: "MathExpression", # required
    #           next: "ActivityName",
    #         },
    #         device_registry_enrich: {
    #           name: "ActivityName", # required
    #           attribute: "AttributeName", # required
    #           thing_name: "AttributeName", # required
    #           role_arn: "RoleArn", # required
    #           next: "ActivityName",
    #         },
    #         device_shadow_enrich: {
    #           name: "ActivityName", # required
    #           attribute: "AttributeName", # required
    #           thing_name: "AttributeName", # required
    #           role_arn: "RoleArn", # required
    #           next: "ActivityName",
    #         },
    #       },
    #     ],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.pipeline_name #=> String
    #   resp.pipeline_arn #=> String
    #
    # @overload create_pipeline(params = {})
    # @param [Hash] params ({})
    def create_pipeline(params = {}, options = {})
      req = build_request(:create_pipeline, params)
      req.send_request(options)
    end

    # Deletes the specified channel.
    #
    # @option params [required, String] :channel_name
    #   The name of the channel to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_channel({
    #     channel_name: "ChannelName", # required
    #   })
    #
    # @overload delete_channel(params = {})
    # @param [Hash] params ({})
    def delete_channel(params = {}, options = {})
      req = build_request(:delete_channel, params)
      req.send_request(options)
    end

    # Deletes the specified data set.
    #
    # You do not have to delete the content of the data set before you
    # perform this operation.
    #
    # @option params [required, String] :dataset_name
    #   The name of the data set to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_dataset({
    #     dataset_name: "DatasetName", # required
    #   })
    #
    # @overload delete_dataset(params = {})
    # @param [Hash] params ({})
    def delete_dataset(params = {}, options = {})
      req = build_request(:delete_dataset, params)
      req.send_request(options)
    end

    # Deletes the content of the specified data set.
    #
    # @option params [required, String] :dataset_name
    #   The name of the data set whose content is deleted.
    #
    # @option params [String] :version_id
    #   The version of the data set whose content is deleted. You can also use
    #   the strings "$LATEST" or "$LATEST\_SUCCEEDED" to delete the latest
    #   or latest successfully completed data set. If not specified,
    #   "$LATEST\_SUCCEEDED" is the default.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_dataset_content({
    #     dataset_name: "DatasetName", # required
    #     version_id: "DatasetContentVersion",
    #   })
    #
    # @overload delete_dataset_content(params = {})
    # @param [Hash] params ({})
    def delete_dataset_content(params = {}, options = {})
      req = build_request(:delete_dataset_content, params)
      req.send_request(options)
    end

    # Deletes the specified data store.
    #
    # @option params [required, String] :datastore_name
    #   The name of the data store to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_datastore({
    #     datastore_name: "DatastoreName", # required
    #   })
    #
    # @overload delete_datastore(params = {})
    # @param [Hash] params ({})
    def delete_datastore(params = {}, options = {})
      req = build_request(:delete_datastore, params)
      req.send_request(options)
    end

    # Deletes the specified pipeline.
    #
    # @option params [required, String] :pipeline_name
    #   The name of the pipeline to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_pipeline({
    #     pipeline_name: "PipelineName", # required
    #   })
    #
    # @overload delete_pipeline(params = {})
    # @param [Hash] params ({})
    def delete_pipeline(params = {}, options = {})
      req = build_request(:delete_pipeline, params)
      req.send_request(options)
    end

    # Retrieves information about a channel.
    #
    # @option params [required, String] :channel_name
    #   The name of the channel whose information is retrieved.
    #
    # @option params [Boolean] :include_statistics
    #   If true, additional statistical information about the channel is
    #   included in the response.
    #
    # @return [Types::DescribeChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeChannelResponse#channel #channel} => Types::Channel
    #   * {Types::DescribeChannelResponse#statistics #statistics} => Types::ChannelStatistics
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_channel({
    #     channel_name: "ChannelName", # required
    #     include_statistics: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.channel.name #=> String
    #   resp.channel.arn #=> String
    #   resp.channel.status #=> String, one of "CREATING", "ACTIVE", "DELETING"
    #   resp.channel.retention_period.unlimited #=> Boolean
    #   resp.channel.retention_period.number_of_days #=> Integer
    #   resp.channel.creation_time #=> Time
    #   resp.channel.last_update_time #=> Time
    #   resp.statistics.size.estimated_size_in_bytes #=> Float
    #   resp.statistics.size.estimated_on #=> Time
    #
    # @overload describe_channel(params = {})
    # @param [Hash] params ({})
    def describe_channel(params = {}, options = {})
      req = build_request(:describe_channel, params)
      req.send_request(options)
    end

    # Retrieves information about a data set.
    #
    # @option params [required, String] :dataset_name
    #   The name of the data set whose information is retrieved.
    #
    # @return [Types::DescribeDatasetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDatasetResponse#dataset #dataset} => Types::Dataset
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_dataset({
    #     dataset_name: "DatasetName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset.name #=> String
    #   resp.dataset.arn #=> String
    #   resp.dataset.actions #=> Array
    #   resp.dataset.actions[0].action_name #=> String
    #   resp.dataset.actions[0].query_action.sql_query #=> String
    #   resp.dataset.actions[0].query_action.filters #=> Array
    #   resp.dataset.actions[0].query_action.filters[0].delta_time.offset_seconds #=> Integer
    #   resp.dataset.actions[0].query_action.filters[0].delta_time.time_expression #=> String
    #   resp.dataset.actions[0].container_action.image #=> String
    #   resp.dataset.actions[0].container_action.execution_role_arn #=> String
    #   resp.dataset.actions[0].container_action.resource_configuration.compute_type #=> String, one of "ACU_1", "ACU_2"
    #   resp.dataset.actions[0].container_action.resource_configuration.volume_size_in_gb #=> Integer
    #   resp.dataset.actions[0].container_action.variables #=> Array
    #   resp.dataset.actions[0].container_action.variables[0].name #=> String
    #   resp.dataset.actions[0].container_action.variables[0].string_value #=> String
    #   resp.dataset.actions[0].container_action.variables[0].double_value #=> Float
    #   resp.dataset.actions[0].container_action.variables[0].dataset_content_version_value.dataset_name #=> String
    #   resp.dataset.actions[0].container_action.variables[0].output_file_uri_value.file_name #=> String
    #   resp.dataset.triggers #=> Array
    #   resp.dataset.triggers[0].schedule.expression #=> String
    #   resp.dataset.triggers[0].dataset.name #=> String
    #   resp.dataset.status #=> String, one of "CREATING", "ACTIVE", "DELETING"
    #   resp.dataset.creation_time #=> Time
    #   resp.dataset.last_update_time #=> Time
    #   resp.dataset.retention_period.unlimited #=> Boolean
    #   resp.dataset.retention_period.number_of_days #=> Integer
    #
    # @overload describe_dataset(params = {})
    # @param [Hash] params ({})
    def describe_dataset(params = {}, options = {})
      req = build_request(:describe_dataset, params)
      req.send_request(options)
    end

    # Retrieves information about a data store.
    #
    # @option params [required, String] :datastore_name
    #   The name of the data store
    #
    # @option params [Boolean] :include_statistics
    #   If true, additional statistical information about the datastore is
    #   included in the response.
    #
    # @return [Types::DescribeDatastoreResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDatastoreResponse#datastore #datastore} => Types::Datastore
    #   * {Types::DescribeDatastoreResponse#statistics #statistics} => Types::DatastoreStatistics
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_datastore({
    #     datastore_name: "DatastoreName", # required
    #     include_statistics: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.datastore.name #=> String
    #   resp.datastore.arn #=> String
    #   resp.datastore.status #=> String, one of "CREATING", "ACTIVE", "DELETING"
    #   resp.datastore.retention_period.unlimited #=> Boolean
    #   resp.datastore.retention_period.number_of_days #=> Integer
    #   resp.datastore.creation_time #=> Time
    #   resp.datastore.last_update_time #=> Time
    #   resp.statistics.size.estimated_size_in_bytes #=> Float
    #   resp.statistics.size.estimated_on #=> Time
    #
    # @overload describe_datastore(params = {})
    # @param [Hash] params ({})
    def describe_datastore(params = {}, options = {})
      req = build_request(:describe_datastore, params)
      req.send_request(options)
    end

    # Retrieves the current settings of the AWS IoT Analytics logging
    # options.
    #
    # @return [Types::DescribeLoggingOptionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeLoggingOptionsResponse#logging_options #logging_options} => Types::LoggingOptions
    #
    # @example Response structure
    #
    #   resp.logging_options.role_arn #=> String
    #   resp.logging_options.level #=> String, one of "ERROR"
    #   resp.logging_options.enabled #=> Boolean
    #
    # @overload describe_logging_options(params = {})
    # @param [Hash] params ({})
    def describe_logging_options(params = {}, options = {})
      req = build_request(:describe_logging_options, params)
      req.send_request(options)
    end

    # Retrieves information about a pipeline.
    #
    # @option params [required, String] :pipeline_name
    #   The name of the pipeline whose information is retrieved.
    #
    # @return [Types::DescribePipelineResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePipelineResponse#pipeline #pipeline} => Types::Pipeline
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_pipeline({
    #     pipeline_name: "PipelineName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.pipeline.name #=> String
    #   resp.pipeline.arn #=> String
    #   resp.pipeline.activities #=> Array
    #   resp.pipeline.activities[0].channel.name #=> String
    #   resp.pipeline.activities[0].channel.channel_name #=> String
    #   resp.pipeline.activities[0].channel.next #=> String
    #   resp.pipeline.activities[0].lambda.name #=> String
    #   resp.pipeline.activities[0].lambda.lambda_name #=> String
    #   resp.pipeline.activities[0].lambda.batch_size #=> Integer
    #   resp.pipeline.activities[0].lambda.next #=> String
    #   resp.pipeline.activities[0].datastore.name #=> String
    #   resp.pipeline.activities[0].datastore.datastore_name #=> String
    #   resp.pipeline.activities[0].add_attributes.name #=> String
    #   resp.pipeline.activities[0].add_attributes.attributes #=> Hash
    #   resp.pipeline.activities[0].add_attributes.attributes["AttributeName"] #=> String
    #   resp.pipeline.activities[0].add_attributes.next #=> String
    #   resp.pipeline.activities[0].remove_attributes.name #=> String
    #   resp.pipeline.activities[0].remove_attributes.attributes #=> Array
    #   resp.pipeline.activities[0].remove_attributes.attributes[0] #=> String
    #   resp.pipeline.activities[0].remove_attributes.next #=> String
    #   resp.pipeline.activities[0].select_attributes.name #=> String
    #   resp.pipeline.activities[0].select_attributes.attributes #=> Array
    #   resp.pipeline.activities[0].select_attributes.attributes[0] #=> String
    #   resp.pipeline.activities[0].select_attributes.next #=> String
    #   resp.pipeline.activities[0].filter.name #=> String
    #   resp.pipeline.activities[0].filter.filter #=> String
    #   resp.pipeline.activities[0].filter.next #=> String
    #   resp.pipeline.activities[0].math.name #=> String
    #   resp.pipeline.activities[0].math.attribute #=> String
    #   resp.pipeline.activities[0].math.math #=> String
    #   resp.pipeline.activities[0].math.next #=> String
    #   resp.pipeline.activities[0].device_registry_enrich.name #=> String
    #   resp.pipeline.activities[0].device_registry_enrich.attribute #=> String
    #   resp.pipeline.activities[0].device_registry_enrich.thing_name #=> String
    #   resp.pipeline.activities[0].device_registry_enrich.role_arn #=> String
    #   resp.pipeline.activities[0].device_registry_enrich.next #=> String
    #   resp.pipeline.activities[0].device_shadow_enrich.name #=> String
    #   resp.pipeline.activities[0].device_shadow_enrich.attribute #=> String
    #   resp.pipeline.activities[0].device_shadow_enrich.thing_name #=> String
    #   resp.pipeline.activities[0].device_shadow_enrich.role_arn #=> String
    #   resp.pipeline.activities[0].device_shadow_enrich.next #=> String
    #   resp.pipeline.reprocessing_summaries #=> Array
    #   resp.pipeline.reprocessing_summaries[0].id #=> String
    #   resp.pipeline.reprocessing_summaries[0].status #=> String, one of "RUNNING", "SUCCEEDED", "CANCELLED", "FAILED"
    #   resp.pipeline.reprocessing_summaries[0].creation_time #=> Time
    #   resp.pipeline.creation_time #=> Time
    #   resp.pipeline.last_update_time #=> Time
    #
    # @overload describe_pipeline(params = {})
    # @param [Hash] params ({})
    def describe_pipeline(params = {}, options = {})
      req = build_request(:describe_pipeline, params)
      req.send_request(options)
    end

    # Retrieves the contents of a data set as pre-signed URIs.
    #
    # @option params [required, String] :dataset_name
    #   The name of the data set whose contents are retrieved.
    #
    # @option params [String] :version_id
    #   The version of the data set whose contents are retrieved. You can also
    #   use the strings "$LATEST" or "$LATEST\_SUCCEEDED" to retrieve the
    #   contents of the latest or latest successfully completed data set. If
    #   not specified, "$LATEST\_SUCCEEDED" is the default.
    #
    # @return [Types::GetDatasetContentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDatasetContentResponse#entries #entries} => Array&lt;Types::DatasetEntry&gt;
    #   * {Types::GetDatasetContentResponse#timestamp #timestamp} => Time
    #   * {Types::GetDatasetContentResponse#status #status} => Types::DatasetContentStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_dataset_content({
    #     dataset_name: "DatasetName", # required
    #     version_id: "DatasetContentVersion",
    #   })
    #
    # @example Response structure
    #
    #   resp.entries #=> Array
    #   resp.entries[0].entry_name #=> String
    #   resp.entries[0].data_uri #=> String
    #   resp.timestamp #=> Time
    #   resp.status.state #=> String, one of "CREATING", "SUCCEEDED", "FAILED"
    #   resp.status.reason #=> String
    #
    # @overload get_dataset_content(params = {})
    # @param [Hash] params ({})
    def get_dataset_content(params = {}, options = {})
      req = build_request(:get_dataset_content, params)
      req.send_request(options)
    end

    # Retrieves a list of channels.
    #
    # @option params [String] :next_token
    #   The token for the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in this request.
    #
    #   The default value is 100.
    #
    # @return [Types::ListChannelsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListChannelsResponse#channel_summaries #channel_summaries} => Array&lt;Types::ChannelSummary&gt;
    #   * {Types::ListChannelsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_channels({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_summaries #=> Array
    #   resp.channel_summaries[0].channel_name #=> String
    #   resp.channel_summaries[0].status #=> String, one of "CREATING", "ACTIVE", "DELETING"
    #   resp.channel_summaries[0].creation_time #=> Time
    #   resp.channel_summaries[0].last_update_time #=> Time
    #   resp.next_token #=> String
    #
    # @overload list_channels(params = {})
    # @param [Hash] params ({})
    def list_channels(params = {}, options = {})
      req = build_request(:list_channels, params)
      req.send_request(options)
    end

    # Lists information about data set contents that have been created.
    #
    # @option params [required, String] :dataset_name
    #   The name of the data set whose contents information you want to list.
    #
    # @option params [String] :next_token
    #   The token for the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in this request.
    #
    # @return [Types::ListDatasetContentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDatasetContentsResponse#dataset_content_summaries #dataset_content_summaries} => Array&lt;Types::DatasetContentSummary&gt;
    #   * {Types::ListDatasetContentsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_dataset_contents({
    #     dataset_name: "DatasetName", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset_content_summaries #=> Array
    #   resp.dataset_content_summaries[0].version #=> String
    #   resp.dataset_content_summaries[0].status.state #=> String, one of "CREATING", "SUCCEEDED", "FAILED"
    #   resp.dataset_content_summaries[0].status.reason #=> String
    #   resp.dataset_content_summaries[0].creation_time #=> Time
    #   resp.dataset_content_summaries[0].schedule_time #=> Time
    #   resp.next_token #=> String
    #
    # @overload list_dataset_contents(params = {})
    # @param [Hash] params ({})
    def list_dataset_contents(params = {}, options = {})
      req = build_request(:list_dataset_contents, params)
      req.send_request(options)
    end

    # Retrieves information about data sets.
    #
    # @option params [String] :next_token
    #   The token for the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in this request.
    #
    #   The default value is 100.
    #
    # @return [Types::ListDatasetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDatasetsResponse#dataset_summaries #dataset_summaries} => Array&lt;Types::DatasetSummary&gt;
    #   * {Types::ListDatasetsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_datasets({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset_summaries #=> Array
    #   resp.dataset_summaries[0].dataset_name #=> String
    #   resp.dataset_summaries[0].status #=> String, one of "CREATING", "ACTIVE", "DELETING"
    #   resp.dataset_summaries[0].creation_time #=> Time
    #   resp.dataset_summaries[0].last_update_time #=> Time
    #   resp.dataset_summaries[0].triggers #=> Array
    #   resp.dataset_summaries[0].triggers[0].schedule.expression #=> String
    #   resp.dataset_summaries[0].triggers[0].dataset.name #=> String
    #   resp.dataset_summaries[0].actions #=> Array
    #   resp.dataset_summaries[0].actions[0].action_name #=> String
    #   resp.dataset_summaries[0].actions[0].action_type #=> String, one of "QUERY", "CONTAINER"
    #   resp.next_token #=> String
    #
    # @overload list_datasets(params = {})
    # @param [Hash] params ({})
    def list_datasets(params = {}, options = {})
      req = build_request(:list_datasets, params)
      req.send_request(options)
    end

    # Retrieves a list of data stores.
    #
    # @option params [String] :next_token
    #   The token for the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in this request.
    #
    #   The default value is 100.
    #
    # @return [Types::ListDatastoresResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDatastoresResponse#datastore_summaries #datastore_summaries} => Array&lt;Types::DatastoreSummary&gt;
    #   * {Types::ListDatastoresResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_datastores({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.datastore_summaries #=> Array
    #   resp.datastore_summaries[0].datastore_name #=> String
    #   resp.datastore_summaries[0].status #=> String, one of "CREATING", "ACTIVE", "DELETING"
    #   resp.datastore_summaries[0].creation_time #=> Time
    #   resp.datastore_summaries[0].last_update_time #=> Time
    #   resp.next_token #=> String
    #
    # @overload list_datastores(params = {})
    # @param [Hash] params ({})
    def list_datastores(params = {}, options = {})
      req = build_request(:list_datastores, params)
      req.send_request(options)
    end

    # Retrieves a list of pipelines.
    #
    # @option params [String] :next_token
    #   The token for the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in this request.
    #
    #   The default value is 100.
    #
    # @return [Types::ListPipelinesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPipelinesResponse#pipeline_summaries #pipeline_summaries} => Array&lt;Types::PipelineSummary&gt;
    #   * {Types::ListPipelinesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_pipelines({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.pipeline_summaries #=> Array
    #   resp.pipeline_summaries[0].pipeline_name #=> String
    #   resp.pipeline_summaries[0].reprocessing_summaries #=> Array
    #   resp.pipeline_summaries[0].reprocessing_summaries[0].id #=> String
    #   resp.pipeline_summaries[0].reprocessing_summaries[0].status #=> String, one of "RUNNING", "SUCCEEDED", "CANCELLED", "FAILED"
    #   resp.pipeline_summaries[0].reprocessing_summaries[0].creation_time #=> Time
    #   resp.pipeline_summaries[0].creation_time #=> Time
    #   resp.pipeline_summaries[0].last_update_time #=> Time
    #   resp.next_token #=> String
    #
    # @overload list_pipelines(params = {})
    # @param [Hash] params ({})
    def list_pipelines(params = {}, options = {})
      req = build_request(:list_pipelines, params)
      req.send_request(options)
    end

    # Lists the tags (metadata) which you have assigned to the resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource whose tags you want to list.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Sets or updates the AWS IoT Analytics logging options.
    #
    # Note that if you update the value of any `loggingOptions` field, it
    # takes up to one minute for the change to take effect. Also, if you
    # change the policy attached to the role you specified in the roleArn
    # field (for example, to correct an invalid policy) it takes up to 5
    # minutes for that change to take effect.
    #
    # @option params [required, Types::LoggingOptions] :logging_options
    #   The new values of the AWS IoT Analytics logging options.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_logging_options({
    #     logging_options: { # required
    #       role_arn: "RoleArn", # required
    #       level: "ERROR", # required, accepts ERROR
    #       enabled: false, # required
    #     },
    #   })
    #
    # @overload put_logging_options(params = {})
    # @param [Hash] params ({})
    def put_logging_options(params = {}, options = {})
      req = build_request(:put_logging_options, params)
      req.send_request(options)
    end

    # Simulates the results of running a pipeline activity on a message
    # payload.
    #
    # @option params [required, Types::PipelineActivity] :pipeline_activity
    #   The pipeline activity that is run. This must not be a 'channel'
    #   activity or a 'datastore' activity because these activities are used
    #   in a pipeline only to load the original message and to store the
    #   (possibly) transformed message. If a 'lambda' activity is specified,
    #   only short-running Lambda functions (those with a timeout of less than
    #   30 seconds or less) can be used.
    #
    # @option params [required, Array<String, IO>] :payloads
    #   The sample message payloads on which the pipeline activity is run.
    #
    # @return [Types::RunPipelineActivityResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RunPipelineActivityResponse#payloads #payloads} => Array&lt;String&gt;
    #   * {Types::RunPipelineActivityResponse#log_result #log_result} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.run_pipeline_activity({
    #     pipeline_activity: { # required
    #       channel: {
    #         name: "ActivityName", # required
    #         channel_name: "ChannelName", # required
    #         next: "ActivityName",
    #       },
    #       lambda: {
    #         name: "ActivityName", # required
    #         lambda_name: "LambdaName", # required
    #         batch_size: 1, # required
    #         next: "ActivityName",
    #       },
    #       datastore: {
    #         name: "ActivityName", # required
    #         datastore_name: "DatastoreName", # required
    #       },
    #       add_attributes: {
    #         name: "ActivityName", # required
    #         attributes: { # required
    #           "AttributeName" => "AttributeName",
    #         },
    #         next: "ActivityName",
    #       },
    #       remove_attributes: {
    #         name: "ActivityName", # required
    #         attributes: ["AttributeName"], # required
    #         next: "ActivityName",
    #       },
    #       select_attributes: {
    #         name: "ActivityName", # required
    #         attributes: ["AttributeName"], # required
    #         next: "ActivityName",
    #       },
    #       filter: {
    #         name: "ActivityName", # required
    #         filter: "FilterExpression", # required
    #         next: "ActivityName",
    #       },
    #       math: {
    #         name: "ActivityName", # required
    #         attribute: "AttributeName", # required
    #         math: "MathExpression", # required
    #         next: "ActivityName",
    #       },
    #       device_registry_enrich: {
    #         name: "ActivityName", # required
    #         attribute: "AttributeName", # required
    #         thing_name: "AttributeName", # required
    #         role_arn: "RoleArn", # required
    #         next: "ActivityName",
    #       },
    #       device_shadow_enrich: {
    #         name: "ActivityName", # required
    #         attribute: "AttributeName", # required
    #         thing_name: "AttributeName", # required
    #         role_arn: "RoleArn", # required
    #         next: "ActivityName",
    #       },
    #     },
    #     payloads: ["data"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.payloads #=> Array
    #   resp.payloads[0] #=> String
    #   resp.log_result #=> String
    #
    # @overload run_pipeline_activity(params = {})
    # @param [Hash] params ({})
    def run_pipeline_activity(params = {}, options = {})
      req = build_request(:run_pipeline_activity, params)
      req.send_request(options)
    end

    # Retrieves a sample of messages from the specified channel ingested
    # during the specified timeframe. Up to 10 messages can be retrieved.
    #
    # @option params [required, String] :channel_name
    #   The name of the channel whose message samples are retrieved.
    #
    # @option params [Integer] :max_messages
    #   The number of sample messages to be retrieved. The limit is 10, the
    #   default is also 10.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   The start of the time window from which sample messages are retrieved.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   The end of the time window from which sample messages are retrieved.
    #
    # @return [Types::SampleChannelDataResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SampleChannelDataResponse#payloads #payloads} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.sample_channel_data({
    #     channel_name: "ChannelName", # required
    #     max_messages: 1,
    #     start_time: Time.now,
    #     end_time: Time.now,
    #   })
    #
    # @example Response structure
    #
    #   resp.payloads #=> Array
    #   resp.payloads[0] #=> String
    #
    # @overload sample_channel_data(params = {})
    # @param [Hash] params ({})
    def sample_channel_data(params = {}, options = {})
      req = build_request(:sample_channel_data, params)
      req.send_request(options)
    end

    # Starts the reprocessing of raw message data through the pipeline.
    #
    # @option params [required, String] :pipeline_name
    #   The name of the pipeline on which to start reprocessing.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   The start time (inclusive) of raw message data that is reprocessed.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   The end time (exclusive) of raw message data that is reprocessed.
    #
    # @return [Types::StartPipelineReprocessingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartPipelineReprocessingResponse#reprocessing_id #reprocessing_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_pipeline_reprocessing({
    #     pipeline_name: "PipelineName", # required
    #     start_time: Time.now,
    #     end_time: Time.now,
    #   })
    #
    # @example Response structure
    #
    #   resp.reprocessing_id #=> String
    #
    # @overload start_pipeline_reprocessing(params = {})
    # @param [Hash] params ({})
    def start_pipeline_reprocessing(params = {}, options = {})
      req = build_request(:start_pipeline_reprocessing, params)
      req.send_request(options)
    end

    # Adds to or modifies the tags of the given resource. Tags are metadata
    # which can be used to manage a resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource whose tags will be modified.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The new or modified tags for the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "ResourceArn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes the given tags (metadata) from the resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource whose tags will be removed.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The keys of those tags which will be removed.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "ResourceArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the settings of a channel.
    #
    # @option params [required, String] :channel_name
    #   The name of the channel to be updated.
    #
    # @option params [Types::RetentionPeriod] :retention_period
    #   How long, in days, message data is kept for the channel.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_channel({
    #     channel_name: "ChannelName", # required
    #     retention_period: {
    #       unlimited: false,
    #       number_of_days: 1,
    #     },
    #   })
    #
    # @overload update_channel(params = {})
    # @param [Hash] params ({})
    def update_channel(params = {}, options = {})
      req = build_request(:update_channel, params)
      req.send_request(options)
    end

    # Updates the settings of a data set.
    #
    # @option params [required, String] :dataset_name
    #   The name of the data set to update.
    #
    # @option params [required, Array<Types::DatasetAction>] :actions
    #   A list of "DatasetAction" objects.
    #
    # @option params [Array<Types::DatasetTrigger>] :triggers
    #   A list of "DatasetTrigger" objects. The list can be empty or can
    #   contain up to five **DataSetTrigger** objects.
    #
    # @option params [Types::RetentionPeriod] :retention_period
    #   How long, in days, message data is kept for the data set.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_dataset({
    #     dataset_name: "DatasetName", # required
    #     actions: [ # required
    #       {
    #         action_name: "DatasetActionName",
    #         query_action: {
    #           sql_query: "SqlQuery", # required
    #           filters: [
    #             {
    #               delta_time: {
    #                 offset_seconds: 1, # required
    #                 time_expression: "TimeExpression", # required
    #               },
    #             },
    #           ],
    #         },
    #         container_action: {
    #           image: "Image", # required
    #           execution_role_arn: "RoleArn", # required
    #           resource_configuration: { # required
    #             compute_type: "ACU_1", # required, accepts ACU_1, ACU_2
    #             volume_size_in_gb: 1, # required
    #           },
    #           variables: [
    #             {
    #               name: "VariableName", # required
    #               string_value: "StringValue",
    #               double_value: 1.0,
    #               dataset_content_version_value: {
    #                 dataset_name: "DatasetName", # required
    #               },
    #               output_file_uri_value: {
    #                 file_name: "OutputFileName", # required
    #               },
    #             },
    #           ],
    #         },
    #       },
    #     ],
    #     triggers: [
    #       {
    #         schedule: {
    #           expression: "ScheduleExpression",
    #         },
    #         dataset: {
    #           name: "DatasetName", # required
    #         },
    #       },
    #     ],
    #     retention_period: {
    #       unlimited: false,
    #       number_of_days: 1,
    #     },
    #   })
    #
    # @overload update_dataset(params = {})
    # @param [Hash] params ({})
    def update_dataset(params = {}, options = {})
      req = build_request(:update_dataset, params)
      req.send_request(options)
    end

    # Updates the settings of a data store.
    #
    # @option params [required, String] :datastore_name
    #   The name of the data store to be updated.
    #
    # @option params [Types::RetentionPeriod] :retention_period
    #   How long, in days, message data is kept for the data store.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_datastore({
    #     datastore_name: "DatastoreName", # required
    #     retention_period: {
    #       unlimited: false,
    #       number_of_days: 1,
    #     },
    #   })
    #
    # @overload update_datastore(params = {})
    # @param [Hash] params ({})
    def update_datastore(params = {}, options = {})
      req = build_request(:update_datastore, params)
      req.send_request(options)
    end

    # Updates the settings of a pipeline.
    #
    # @option params [required, String] :pipeline_name
    #   The name of the pipeline to update.
    #
    # @option params [required, Array<Types::PipelineActivity>] :pipeline_activities
    #   A list of "PipelineActivity" objects.
    #
    #   The list can be 1-25 **PipelineActivity** objects. Activities perform
    #   transformations on your messages, such as removing, renaming or adding
    #   message attributes; filtering messages based on attribute values;
    #   invoking your Lambda functions on messages for advanced processing; or
    #   performing mathematical transformations to normalize device data.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_pipeline({
    #     pipeline_name: "PipelineName", # required
    #     pipeline_activities: [ # required
    #       {
    #         channel: {
    #           name: "ActivityName", # required
    #           channel_name: "ChannelName", # required
    #           next: "ActivityName",
    #         },
    #         lambda: {
    #           name: "ActivityName", # required
    #           lambda_name: "LambdaName", # required
    #           batch_size: 1, # required
    #           next: "ActivityName",
    #         },
    #         datastore: {
    #           name: "ActivityName", # required
    #           datastore_name: "DatastoreName", # required
    #         },
    #         add_attributes: {
    #           name: "ActivityName", # required
    #           attributes: { # required
    #             "AttributeName" => "AttributeName",
    #           },
    #           next: "ActivityName",
    #         },
    #         remove_attributes: {
    #           name: "ActivityName", # required
    #           attributes: ["AttributeName"], # required
    #           next: "ActivityName",
    #         },
    #         select_attributes: {
    #           name: "ActivityName", # required
    #           attributes: ["AttributeName"], # required
    #           next: "ActivityName",
    #         },
    #         filter: {
    #           name: "ActivityName", # required
    #           filter: "FilterExpression", # required
    #           next: "ActivityName",
    #         },
    #         math: {
    #           name: "ActivityName", # required
    #           attribute: "AttributeName", # required
    #           math: "MathExpression", # required
    #           next: "ActivityName",
    #         },
    #         device_registry_enrich: {
    #           name: "ActivityName", # required
    #           attribute: "AttributeName", # required
    #           thing_name: "AttributeName", # required
    #           role_arn: "RoleArn", # required
    #           next: "ActivityName",
    #         },
    #         device_shadow_enrich: {
    #           name: "ActivityName", # required
    #           attribute: "AttributeName", # required
    #           thing_name: "AttributeName", # required
    #           role_arn: "RoleArn", # required
    #           next: "ActivityName",
    #         },
    #       },
    #     ],
    #   })
    #
    # @overload update_pipeline(params = {})
    # @param [Hash] params ({})
    def update_pipeline(params = {}, options = {})
      req = build_request(:update_pipeline, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config)
      context[:gem_name] = 'aws-sdk-iotanalytics'
      context[:gem_version] = '1.7.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # @api private
    # @deprecated
    def waiter_names
      []
    end

    class << self

      # @api private
      attr_reader :identifier

      # @api private
      def errors_module
        Errors
      end

    end
  end
end
