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
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:pi)

module Aws::PI
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :pi

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
    # @option options [Boolean] :simple_json (false)
    #   Disables request parameter conversion, validation, and formatting.
    #   Also disable response data type conversions. This option is useful
    #   when you want to ensure the highest level of performance by
    #   avoiding overhead of walking request parameters and response data
    #   structures.
    #
    #   When `:simple_json` is enabled, the request parameters hash must
    #   be formatted exactly as the DynamoDB API expects.
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

    # For a specific time period, retrieve the top `N` dimension keys for a
    # metric.
    #
    # @option params [required, String] :service_type
    #   The AWS service for which Performance Insights will return metrics.
    #   The only valid value for *ServiceType* is: `RDS`
    #
    # @option params [required, String] :identifier
    #   An immutable, AWS Region-unique identifier for a data source.
    #   Performance Insights gathers metrics from this data source.
    #
    #   To use an Amazon RDS instance as a data source, you specify its
    #   `DbiResourceId` value - for example: `db-FAIHNTYBKTGAUSUZQYPDS2GW4A`
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   The date and time specifying the beginning of the requested time
    #   series data. You can't specify a `StartTime` that's earlier than 7
    #   days ago. The value specified is *inclusive* - data points equal to or
    #   greater than `StartTime` will be returned.
    #
    #   The value for `StartTime` must be earlier than the value for
    #   `EndTime`.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   The date and time specifying the end of the requested time series
    #   data. The value specified is *exclusive* - data points less than (but
    #   not equal to) `EndTime` will be returned.
    #
    #   The value for `EndTime` must be later than the value for `StartTime`.
    #
    # @option params [required, String] :metric
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
    # @option params [Integer] :period_in_seconds
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
    #   will choose a value for you, with a goal of returning roughly 100-200
    #   data points in the response.
    #
    # @option params [required, Types::DimensionGroup] :group_by
    #   A specification for how to aggregate the data points from a query
    #   result. You must specify a valid dimension group. Performance Insights
    #   will return all of the dimensions within that group, unless you
    #   provide the names of specific dimensions within that group. You can
    #   also request that Performance Insights return a limited number of
    #   values for a dimension.
    #
    # @option params [Types::DimensionGroup] :partition_by
    #   For each dimension specified in `GroupBy`, specify a secondary
    #   dimension to further subdivide the partition keys in the response.
    #
    # @option params [Hash<String,String>] :filter
    #   One or more filters to apply in the request. Restrictions:
    #
    #   * Any number of filters by the same dimension, as specified in the
    #     `GroupBy` or `Partition` parameters.
    #
    #   * A single filter for any other dimension in this dimension group.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return in the response. If more items
    #   exist than the specified `MaxRecords` value, a pagination token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    # @option params [String] :next_token
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond the
    #   token, up to the value specified by `MaxRecords`.
    #
    # @return [Types::DescribeDimensionKeysResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDimensionKeysResponse#aligned_start_time #aligned_start_time} => Time
    #   * {Types::DescribeDimensionKeysResponse#aligned_end_time #aligned_end_time} => Time
    #   * {Types::DescribeDimensionKeysResponse#partition_keys #partition_keys} => Array&lt;Types::ResponsePartitionKey&gt;
    #   * {Types::DescribeDimensionKeysResponse#keys #keys} => Array&lt;Types::DimensionKeyDescription&gt;
    #   * {Types::DescribeDimensionKeysResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_dimension_keys({
    #     service_type: "RDS", # required, accepts RDS
    #     identifier: "String", # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     metric: "String", # required
    #     period_in_seconds: 1,
    #     group_by: { # required
    #       group: "String", # required
    #       dimensions: ["String"],
    #       limit: 1,
    #     },
    #     partition_by: {
    #       group: "String", # required
    #       dimensions: ["String"],
    #       limit: 1,
    #     },
    #     filter: {
    #       "String" => "String",
    #     },
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.aligned_start_time #=> Time
    #   resp.aligned_end_time #=> Time
    #   resp.partition_keys #=> Array
    #   resp.partition_keys[0].dimensions #=> Hash
    #   resp.partition_keys[0].dimensions["String"] #=> String
    #   resp.keys #=> Array
    #   resp.keys[0].dimensions #=> Hash
    #   resp.keys[0].dimensions["String"] #=> String
    #   resp.keys[0].total #=> Float
    #   resp.keys[0].partitions #=> Array
    #   resp.keys[0].partitions[0] #=> Float
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pi-2018-02-27/DescribeDimensionKeys AWS API Documentation
    #
    # @overload describe_dimension_keys(params = {})
    # @param [Hash] params ({})
    def describe_dimension_keys(params = {}, options = {})
      req = build_request(:describe_dimension_keys, params)
      req.send_request(options)
    end

    # Retrieve Performance Insights metrics for a set of data sources, over
    # a time period. You can provide specific dimension groups and
    # dimensions, and provide aggregation and filtering criteria for each
    # group.
    #
    # @option params [required, String] :service_type
    #   The AWS service for which Performance Insights will return metrics.
    #   The only valid value for *ServiceType* is: `RDS`
    #
    # @option params [required, String] :identifier
    #   An immutable, AWS Region-unique identifier for a data source.
    #   Performance Insights gathers metrics from this data source.
    #
    #   To use an Amazon RDS instance as a data source, you specify its
    #   `DbiResourceId` value - for example: `db-FAIHNTYBKTGAUSUZQYPDS2GW4A`
    #
    # @option params [required, Array<Types::MetricQuery>] :metric_queries
    #   An array of one or more queries to perform. Each query must specify a
    #   Performance Insights metric, and can optionally specify aggregation
    #   and filtering criteria.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   The date and time specifying the beginning of the requested time
    #   series data. You can't specify a `StartTime` that's earlier than 7
    #   days ago. The value specified is *inclusive* - data points equal to or
    #   greater than `StartTime` will be returned.
    #
    #   The value for `StartTime` must be earlier than the value for
    #   `EndTime`.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   The date and time specifiying the end of the requested time series
    #   data. The value specified is *exclusive* - data points less than (but
    #   not equal to) `EndTime` will be returned.
    #
    #   The value for `EndTime` must be later than the value for `StartTime`.
    #
    # @option params [Integer] :period_in_seconds
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
    #   will choose a value for you, with a goal of returning roughly 100-200
    #   data points in the response.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return in the response. If more items
    #   exist than the specified `MaxRecords` value, a pagination token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    # @option params [String] :next_token
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond the
    #   token, up to the value specified by `MaxRecords`.
    #
    # @return [Types::GetResourceMetricsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourceMetricsResponse#aligned_start_time #aligned_start_time} => Time
    #   * {Types::GetResourceMetricsResponse#aligned_end_time #aligned_end_time} => Time
    #   * {Types::GetResourceMetricsResponse#identifier #identifier} => String
    #   * {Types::GetResourceMetricsResponse#metric_list #metric_list} => Array&lt;Types::MetricKeyDataPoints&gt;
    #   * {Types::GetResourceMetricsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_metrics({
    #     service_type: "RDS", # required, accepts RDS
    #     identifier: "String", # required
    #     metric_queries: [ # required
    #       {
    #         metric: "String", # required
    #         group_by: {
    #           group: "String", # required
    #           dimensions: ["String"],
    #           limit: 1,
    #         },
    #         filter: {
    #           "String" => "String",
    #         },
    #       },
    #     ],
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     period_in_seconds: 1,
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.aligned_start_time #=> Time
    #   resp.aligned_end_time #=> Time
    #   resp.identifier #=> String
    #   resp.metric_list #=> Array
    #   resp.metric_list[0].key.metric #=> String
    #   resp.metric_list[0].key.dimensions #=> Hash
    #   resp.metric_list[0].key.dimensions["String"] #=> String
    #   resp.metric_list[0].data_points #=> Array
    #   resp.metric_list[0].data_points[0].timestamp #=> Time
    #   resp.metric_list[0].data_points[0].value #=> Float
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pi-2018-02-27/GetResourceMetrics AWS API Documentation
    #
    # @overload get_resource_metrics(params = {})
    # @param [Hash] params ({})
    def get_resource_metrics(params = {}, options = {})
      req = build_request(:get_resource_metrics, params)
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
      context[:gem_name] = 'aws-sdk-pi'
      context[:gem_version] = '1.3.0'
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
