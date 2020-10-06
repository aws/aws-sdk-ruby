# frozen_string_literal: true

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
require 'aws-sdk-core/plugins/endpoint_discovery.rb'
require 'aws-sdk-core/plugins/endpoint_pattern.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/transfer_encoding.rb'
require 'aws-sdk-core/plugins/http_checksum.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:kinesisanalyticsv2)

module Aws::KinesisAnalyticsV2
  # An API client for KinesisAnalyticsV2.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::KinesisAnalyticsV2::Client.new(
  #       region: region_name,
  #       credentials: credentials,
  #       # ...
  #     )
  #
  # For details on configuring region and credentials see
  # the [developer guide](/sdk-for-ruby/v3/developer-guide/setup-config.html).
  #
  # See {#initialize} for a full list of supported configuration options.
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :kinesisanalyticsv2

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
    add_plugin(Aws::Plugins::EndpointDiscovery)
    add_plugin(Aws::Plugins::EndpointPattern)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::TransferEncoding)
    add_plugin(Aws::Plugins::HttpChecksum)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

    # @overload initialize(options)
    #   @param [Hash] options
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials. This can be an instance of any one of the
    #     following classes:
    #
    #     * `Aws::Credentials` - Used for configuring static, non-refreshing
    #       credentials.
    #
    #     * `Aws::SharedCredentials` - Used for loading static credentials from a
    #       shared file, such as `~/.aws/config`.
    #
    #     * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #     * `Aws::AssumeRoleWebIdentityCredentials` - Used when you need to
    #       assume a role after providing credentials via the web.
    #
    #     * `Aws::SSOCredentials` - Used for loading credentials from AWS SSO using an
    #       access token generated from `aws login`.
    #
    #     * `Aws::ProcessCredentials` - Used for loading credentials from a
    #       process that outputs to stdout.
    #
    #     * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #       from an EC2 IMDS on an EC2 instance.
    #
    #     * `Aws::ECSCredentials` - Used for loading credentials from
    #       instances running in ECS.
    #
    #     * `Aws::CognitoIdentityCredentials` - Used for loading credentials
    #       from the Cognito Identity service.
    #
    #     When `:credentials` are not configured directly, the following
    #     locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #     * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts
    #       are very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentails` or `Aws::ECSCredentials` to
    #       enable retries and extended timeouts.
    #
    #   @option options [required, String] :region
    #     The AWS region to connect to.  The configured `:region` is
    #     used to determine the service `:endpoint`. When not passed,
    #     a default `:region` is searched for in the following locations:
    #
    #     * `Aws.config[:region]`
    #     * `ENV['AWS_REGION']`
    #     * `ENV['AMAZON_REGION']`
    #     * `ENV['AWS_DEFAULT_REGION']`
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #
    #   @option options [String] :access_key_id
    #
    #   @option options [Boolean] :active_endpoint_cache (false)
    #     When set to `true`, a thread polling for endpoints will be running in
    #     the background every 60 secs (default). Defaults to `false`.
    #
    #   @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #     Used only in `adaptive` retry mode.  When true, the request will sleep
    #     until there is sufficent client side capacity to retry the request.
    #     When false, the request will raise a `RetryCapacityNotAvailableError` and will
    #     not retry instead of sleeping.
    #
    #   @option options [Boolean] :client_side_monitoring (false)
    #     When `true`, client-side metrics will be collected for all API requests from
    #     this client.
    #
    #   @option options [String] :client_side_monitoring_client_id ("")
    #     Allows you to provide an identifier for this client which will be attached to
    #     all generated client side metrics. Defaults to an empty string.
    #
    #   @option options [String] :client_side_monitoring_host ("127.0.0.1")
    #     Allows you to specify the DNS hostname or IPv4 or IPv6 address that the client
    #     side monitoring agent is running on, where client metrics will be published via UDP.
    #
    #   @option options [Integer] :client_side_monitoring_port (31000)
    #     Required for publishing client metrics. The port that the client side monitoring
    #     agent is running on, where client metrics will be published via UDP.
    #
    #   @option options [Aws::ClientSideMonitoring::Publisher] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #     Allows you to provide a custom client-side monitoring publisher class. By default,
    #     will use the Client Side Monitoring Agent Publisher.
    #
    #   @option options [Boolean] :convert_params (true)
    #     When `true`, an attempt is made to coerce request parameters into
    #     the required types.
    #
    #   @option options [Boolean] :correct_clock_skew (true)
    #     Used only in `standard` and adaptive retry modes. Specifies whether to apply
    #     a clock skew correction and retry requests with skewed client clocks.
    #
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
    #
    #   @option options [String] :endpoint
    #     The client endpoint is normally constructed from the `:region`
    #     option. You should only configure an `:endpoint` when connecting
    #     to test or custom endpoints. This should be a valid HTTP(S) URI.
    #
    #   @option options [Integer] :endpoint_cache_max_entries (1000)
    #     Used for the maximum size limit of the LRU cache storing endpoints data
    #     for endpoint discovery enabled operations. Defaults to 1000.
    #
    #   @option options [Integer] :endpoint_cache_max_threads (10)
    #     Used for the maximum threads in use for polling endpoints to be cached, defaults to 10.
    #
    #   @option options [Integer] :endpoint_cache_poll_interval (60)
    #     When :endpoint_discovery and :active_endpoint_cache is enabled,
    #     Use this option to config the time interval in seconds for making
    #     requests fetching endpoints information. Defaults to 60 sec.
    #
    #   @option options [Boolean] :endpoint_discovery (false)
    #     When set to `true`, endpoint discovery will be enabled for operations when available.
    #
    #   @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #     The log formatter.
    #
    #   @option options [Symbol] :log_level (:info)
    #     The log level to send messages to the `:logger` at.
    #
    #   @option options [Logger] :logger
    #     The Logger instance to send log messages to.  If this option
    #     is not set, logging will be disabled.
    #
    #   @option options [Integer] :max_attempts (3)
    #     An integer representing the maximum number attempts that will be made for
    #     a single request, including the initial attempt.  For example,
    #     setting this value to 5 will result in a request being retried up to
    #     4 times. Used in `standard` and `adaptive` retry modes.
    #
    #   @option options [String] :profile ("default")
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    #   @option options [Proc] :retry_backoff
    #     A proc or lambda used for backoff. Defaults to 2**retries * retry_base_delay.
    #     This option is only used in the `legacy` retry mode.
    #
    #   @option options [Float] :retry_base_delay (0.3)
    #     The base delay in seconds used by the default backoff function. This option
    #     is only used in the `legacy` retry mode.
    #
    #   @option options [Symbol] :retry_jitter (:none)
    #     A delay randomiser function used by the default backoff function.
    #     Some predefined functions can be referenced by name - :none, :equal, :full,
    #     otherwise a Proc that takes and returns a number. This option is only used
    #     in the `legacy` retry mode.
    #
    #     @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    #   @option options [Integer] :retry_limit (3)
    #     The maximum number of times to retry failed requests.  Only
    #     ~ 500 level server errors and certain ~ 400 level client errors
    #     are retried.  Generally, these are throttling errors, data
    #     checksum errors, networking errors, timeout errors, auth errors,
    #     endpoint discovery, and errors from expired credentials.
    #     This option is only used in the `legacy` retry mode.
    #
    #   @option options [Integer] :retry_max_delay (0)
    #     The maximum number of seconds to delay between retries (0 for no limit)
    #     used by the default backoff function. This option is only used in the
    #     `legacy` retry mode.
    #
    #   @option options [String] :retry_mode ("legacy")
    #     Specifies which retry algorithm to use. Values are:
    #
    #     * `legacy` - The pre-existing retry behavior.  This is default value if
    #       no retry mode is provided.
    #
    #     * `standard` - A standardized set of retry rules across the AWS SDKs.
    #       This includes support for retry quotas, which limit the number of
    #       unsuccessful retries a client can make.
    #
    #     * `adaptive` - An experimental retry mode that includes all the
    #       functionality of `standard` mode along with automatic client side
    #       throttling.  This is a provisional mode that may change behavior
    #       in the future.
    #
    #
    #   @option options [String] :secret_access_key
    #
    #   @option options [String] :session_token
    #
    #   @option options [Boolean] :simple_json (false)
    #     Disables request parameter conversion, validation, and formatting.
    #     Also disable response data type conversions. This option is useful
    #     when you want to ensure the highest level of performance by
    #     avoiding overhead of walking request parameters and response data
    #     structures.
    #
    #     When `:simple_json` is enabled, the request parameters hash must
    #     be formatted exactly as the DynamoDB API expects.
    #
    #   @option options [Boolean] :stub_responses (false)
    #     Causes the client to return stubbed responses. By default
    #     fake responses are generated and returned. You can specify
    #     the response data to return or errors to raise by calling
    #     {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #     ** Please note ** When response stubbing is enabled, no HTTP
    #     requests are made, and retries are disabled.
    #
    #   @option options [Boolean] :validate_params (true)
    #     When `true`, request parameters are validated before
    #     sending the request.
    #
    #   @option options [URI::HTTP,String] :http_proxy A proxy to send
    #     requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_open_timeout (15) The number of
    #     seconds to wait when opening a HTTP session before raising a
    #     `Timeout::Error`.
    #
    #   @option options [Integer] :http_read_timeout (60) The default
    #     number of seconds to wait for response data.  This value can
    #     safely be set per-request on the session.
    #
    #   @option options [Float] :http_idle_timeout (5) The number of
    #     seconds a connection is allowed to sit idle before it is
    #     considered stale.  Stale connections are closed and removed
    #     from the pool before making a request.
    #
    #   @option options [Float] :http_continue_timeout (1) The number of
    #     seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has
    #     "Expect" header set to "100-continue".  Defaults to `nil` which
    #     disables this behaviour.  This value can safely be set per
    #     request on the session.
    #
    #   @option options [Boolean] :http_wire_trace (false) When `true`,
    #     HTTP debug output will be sent to the `:logger`.
    #
    #   @option options [Boolean] :ssl_verify_peer (true) When `true`,
    #     SSL peer certificates are verified when establishing a
    #     connection.
    #
    #   @option options [String] :ssl_ca_bundle Full path to the SSL
    #     certificate authority bundle file that should be used when
    #     verifying peer certificates.  If you do not pass
    #     `:ssl_ca_bundle` or `:ssl_ca_directory` the the system default
    #     will be used if available.
    #
    #   @option options [String] :ssl_ca_directory Full path of the
    #     directory that contains the unbundled SSL certificate
    #     authority files for verifying peer certificates.  If you do
    #     not pass `:ssl_ca_bundle` or `:ssl_ca_directory` the the
    #     system default will be used if available.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Adds an Amazon CloudWatch log stream to monitor application
    # configuration errors.
    #
    # @option params [required, String] :application_name
    #   The Kinesis Data Analytics application name.
    #
    # @option params [required, Integer] :current_application_version_id
    #   The version ID of the Kinesis Data Analytics application. You can
    #   retrieve the application version ID using DescribeApplication.
    #
    # @option params [required, Types::CloudWatchLoggingOption] :cloud_watch_logging_option
    #   Provides the Amazon CloudWatch log stream Amazon Resource Name (ARN).
    #
    # @return [Types::AddApplicationCloudWatchLoggingOptionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddApplicationCloudWatchLoggingOptionResponse#application_arn #application_arn} => String
    #   * {Types::AddApplicationCloudWatchLoggingOptionResponse#application_version_id #application_version_id} => Integer
    #   * {Types::AddApplicationCloudWatchLoggingOptionResponse#cloud_watch_logging_option_descriptions #cloud_watch_logging_option_descriptions} => Array&lt;Types::CloudWatchLoggingOptionDescription&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_application_cloud_watch_logging_option({
    #     application_name: "ApplicationName", # required
    #     current_application_version_id: 1, # required
    #     cloud_watch_logging_option: { # required
    #       log_stream_arn: "LogStreamARN", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.application_arn #=> String
    #   resp.application_version_id #=> Integer
    #   resp.cloud_watch_logging_option_descriptions #=> Array
    #   resp.cloud_watch_logging_option_descriptions[0].cloud_watch_logging_option_id #=> String
    #   resp.cloud_watch_logging_option_descriptions[0].log_stream_arn #=> String
    #   resp.cloud_watch_logging_option_descriptions[0].role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/AddApplicationCloudWatchLoggingOption AWS API Documentation
    #
    # @overload add_application_cloud_watch_logging_option(params = {})
    # @param [Hash] params ({})
    def add_application_cloud_watch_logging_option(params = {}, options = {})
      req = build_request(:add_application_cloud_watch_logging_option, params)
      req.send_request(options)
    end

    # Adds a streaming source to your SQL-based Kinesis Data Analytics
    # application.
    #
    # You can add a streaming source when you create an application, or you
    # can use this operation to add a streaming source after you create an
    # application. For more information, see CreateApplication.
    #
    # Any configuration update, including adding a streaming source using
    # this operation, results in a new version of the application. You can
    # use the DescribeApplication operation to find the current application
    # version.
    #
    # @option params [required, String] :application_name
    #   The name of your existing application to which you want to add the
    #   streaming source.
    #
    # @option params [required, Integer] :current_application_version_id
    #   The current version of your application. You can use the
    #   DescribeApplication operation to find the current application version.
    #
    # @option params [required, Types::Input] :input
    #   The Input to add.
    #
    # @return [Types::AddApplicationInputResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddApplicationInputResponse#application_arn #application_arn} => String
    #   * {Types::AddApplicationInputResponse#application_version_id #application_version_id} => Integer
    #   * {Types::AddApplicationInputResponse#input_descriptions #input_descriptions} => Array&lt;Types::InputDescription&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_application_input({
    #     application_name: "ApplicationName", # required
    #     current_application_version_id: 1, # required
    #     input: { # required
    #       name_prefix: "InAppStreamName", # required
    #       input_processing_configuration: {
    #         input_lambda_processor: { # required
    #           resource_arn: "ResourceARN", # required
    #         },
    #       },
    #       kinesis_streams_input: {
    #         resource_arn: "ResourceARN", # required
    #       },
    #       kinesis_firehose_input: {
    #         resource_arn: "ResourceARN", # required
    #       },
    #       input_parallelism: {
    #         count: 1,
    #       },
    #       input_schema: { # required
    #         record_format: { # required
    #           record_format_type: "JSON", # required, accepts JSON, CSV
    #           mapping_parameters: {
    #             json_mapping_parameters: {
    #               record_row_path: "RecordRowPath", # required
    #             },
    #             csv_mapping_parameters: {
    #               record_row_delimiter: "RecordRowDelimiter", # required
    #               record_column_delimiter: "RecordColumnDelimiter", # required
    #             },
    #           },
    #         },
    #         record_encoding: "RecordEncoding",
    #         record_columns: [ # required
    #           {
    #             name: "RecordColumnName", # required
    #             mapping: "RecordColumnMapping",
    #             sql_type: "RecordColumnSqlType", # required
    #           },
    #         ],
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.application_arn #=> String
    #   resp.application_version_id #=> Integer
    #   resp.input_descriptions #=> Array
    #   resp.input_descriptions[0].input_id #=> String
    #   resp.input_descriptions[0].name_prefix #=> String
    #   resp.input_descriptions[0].in_app_stream_names #=> Array
    #   resp.input_descriptions[0].in_app_stream_names[0] #=> String
    #   resp.input_descriptions[0].input_processing_configuration_description.input_lambda_processor_description.resource_arn #=> String
    #   resp.input_descriptions[0].input_processing_configuration_description.input_lambda_processor_description.role_arn #=> String
    #   resp.input_descriptions[0].kinesis_streams_input_description.resource_arn #=> String
    #   resp.input_descriptions[0].kinesis_streams_input_description.role_arn #=> String
    #   resp.input_descriptions[0].kinesis_firehose_input_description.resource_arn #=> String
    #   resp.input_descriptions[0].kinesis_firehose_input_description.role_arn #=> String
    #   resp.input_descriptions[0].input_schema.record_format.record_format_type #=> String, one of "JSON", "CSV"
    #   resp.input_descriptions[0].input_schema.record_format.mapping_parameters.json_mapping_parameters.record_row_path #=> String
    #   resp.input_descriptions[0].input_schema.record_format.mapping_parameters.csv_mapping_parameters.record_row_delimiter #=> String
    #   resp.input_descriptions[0].input_schema.record_format.mapping_parameters.csv_mapping_parameters.record_column_delimiter #=> String
    #   resp.input_descriptions[0].input_schema.record_encoding #=> String
    #   resp.input_descriptions[0].input_schema.record_columns #=> Array
    #   resp.input_descriptions[0].input_schema.record_columns[0].name #=> String
    #   resp.input_descriptions[0].input_schema.record_columns[0].mapping #=> String
    #   resp.input_descriptions[0].input_schema.record_columns[0].sql_type #=> String
    #   resp.input_descriptions[0].input_parallelism.count #=> Integer
    #   resp.input_descriptions[0].input_starting_position_configuration.input_starting_position #=> String, one of "NOW", "TRIM_HORIZON", "LAST_STOPPED_POINT"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/AddApplicationInput AWS API Documentation
    #
    # @overload add_application_input(params = {})
    # @param [Hash] params ({})
    def add_application_input(params = {}, options = {})
      req = build_request(:add_application_input, params)
      req.send_request(options)
    end

    # Adds an InputProcessingConfiguration to a SQL-based Kinesis Data
    # Analytics application. An input processor pre-processes records on the
    # input stream before the application's SQL code executes. Currently,
    # the only input processor available is [AWS Lambda][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lambda/
    #
    # @option params [required, String] :application_name
    #   The name of the application to which you want to add the input
    #   processing configuration.
    #
    # @option params [required, Integer] :current_application_version_id
    #   The version of the application to which you want to add the input
    #   processing configuration. You can use the DescribeApplication
    #   operation to get the current application version. If the version
    #   specified is not the current version, the
    #   `ConcurrentModificationException` is returned.
    #
    # @option params [required, String] :input_id
    #   The ID of the input configuration to add the input processing
    #   configuration to. You can get a list of the input IDs for an
    #   application using the DescribeApplication operation.
    #
    # @option params [required, Types::InputProcessingConfiguration] :input_processing_configuration
    #   The InputProcessingConfiguration to add to the application.
    #
    # @return [Types::AddApplicationInputProcessingConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddApplicationInputProcessingConfigurationResponse#application_arn #application_arn} => String
    #   * {Types::AddApplicationInputProcessingConfigurationResponse#application_version_id #application_version_id} => Integer
    #   * {Types::AddApplicationInputProcessingConfigurationResponse#input_id #input_id} => String
    #   * {Types::AddApplicationInputProcessingConfigurationResponse#input_processing_configuration_description #input_processing_configuration_description} => Types::InputProcessingConfigurationDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_application_input_processing_configuration({
    #     application_name: "ApplicationName", # required
    #     current_application_version_id: 1, # required
    #     input_id: "Id", # required
    #     input_processing_configuration: { # required
    #       input_lambda_processor: { # required
    #         resource_arn: "ResourceARN", # required
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.application_arn #=> String
    #   resp.application_version_id #=> Integer
    #   resp.input_id #=> String
    #   resp.input_processing_configuration_description.input_lambda_processor_description.resource_arn #=> String
    #   resp.input_processing_configuration_description.input_lambda_processor_description.role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/AddApplicationInputProcessingConfiguration AWS API Documentation
    #
    # @overload add_application_input_processing_configuration(params = {})
    # @param [Hash] params ({})
    def add_application_input_processing_configuration(params = {}, options = {})
      req = build_request(:add_application_input_processing_configuration, params)
      req.send_request(options)
    end

    # Adds an external destination to your SQL-based Kinesis Data Analytics
    # application.
    #
    # If you want Kinesis Data Analytics to deliver data from an
    # in-application stream within your application to an external
    # destination (such as an Kinesis data stream, a Kinesis Data Firehose
    # delivery stream, or an AWS Lambda function), you add the relevant
    # configuration to your application using this operation. You can
    # configure one or more outputs for your application. Each output
    # configuration maps an in-application stream and an external
    # destination.
    #
    # You can use one of the output configurations to deliver data from your
    # in-application error stream to an external destination so that you can
    # analyze the errors.
    #
    # Any configuration update, including adding a streaming source using
    # this operation, results in a new version of the application. You can
    # use the DescribeApplication operation to find the current application
    # version.
    #
    # @option params [required, String] :application_name
    #   The name of the application to which you want to add the output
    #   configuration.
    #
    # @option params [required, Integer] :current_application_version_id
    #   The version of the application to which you want to add the output
    #   configuration. You can use the DescribeApplication operation to get
    #   the current application version. If the version specified is not the
    #   current version, the `ConcurrentModificationException` is returned.
    #
    # @option params [required, Types::Output] :output
    #   An array of objects, each describing one output configuration. In the
    #   output configuration, you specify the name of an in-application
    #   stream, a destination (that is, a Kinesis data stream, a Kinesis Data
    #   Firehose delivery stream, or an AWS Lambda function), and record the
    #   formation to use when writing to the destination.
    #
    # @return [Types::AddApplicationOutputResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddApplicationOutputResponse#application_arn #application_arn} => String
    #   * {Types::AddApplicationOutputResponse#application_version_id #application_version_id} => Integer
    #   * {Types::AddApplicationOutputResponse#output_descriptions #output_descriptions} => Array&lt;Types::OutputDescription&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_application_output({
    #     application_name: "ApplicationName", # required
    #     current_application_version_id: 1, # required
    #     output: { # required
    #       name: "InAppStreamName", # required
    #       kinesis_streams_output: {
    #         resource_arn: "ResourceARN", # required
    #       },
    #       kinesis_firehose_output: {
    #         resource_arn: "ResourceARN", # required
    #       },
    #       lambda_output: {
    #         resource_arn: "ResourceARN", # required
    #       },
    #       destination_schema: { # required
    #         record_format_type: "JSON", # required, accepts JSON, CSV
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.application_arn #=> String
    #   resp.application_version_id #=> Integer
    #   resp.output_descriptions #=> Array
    #   resp.output_descriptions[0].output_id #=> String
    #   resp.output_descriptions[0].name #=> String
    #   resp.output_descriptions[0].kinesis_streams_output_description.resource_arn #=> String
    #   resp.output_descriptions[0].kinesis_streams_output_description.role_arn #=> String
    #   resp.output_descriptions[0].kinesis_firehose_output_description.resource_arn #=> String
    #   resp.output_descriptions[0].kinesis_firehose_output_description.role_arn #=> String
    #   resp.output_descriptions[0].lambda_output_description.resource_arn #=> String
    #   resp.output_descriptions[0].lambda_output_description.role_arn #=> String
    #   resp.output_descriptions[0].destination_schema.record_format_type #=> String, one of "JSON", "CSV"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/AddApplicationOutput AWS API Documentation
    #
    # @overload add_application_output(params = {})
    # @param [Hash] params ({})
    def add_application_output(params = {}, options = {})
      req = build_request(:add_application_output, params)
      req.send_request(options)
    end

    # Adds a reference data source to an existing SQL-based Kinesis Data
    # Analytics application.
    #
    # Kinesis Data Analytics reads reference data (that is, an Amazon S3
    # object) and creates an in-application table within your application.
    # In the request, you provide the source (S3 bucket name and object key
    # name), name of the in-application table to create, and the necessary
    # mapping information that describes how data in an Amazon S3 object
    # maps to columns in the resulting in-application table.
    #
    # @option params [required, String] :application_name
    #   The name of an existing application.
    #
    # @option params [required, Integer] :current_application_version_id
    #   The version of the application for which you are adding the reference
    #   data source. You can use the DescribeApplication operation to get the
    #   current application version. If the version specified is not the
    #   current version, the `ConcurrentModificationException` is returned.
    #
    # @option params [required, Types::ReferenceDataSource] :reference_data_source
    #   The reference data source can be an object in your Amazon S3 bucket.
    #   Kinesis Data Analytics reads the object and copies the data into the
    #   in-application table that is created. You provide an S3 bucket, object
    #   key name, and the resulting in-application table that is created.
    #
    # @return [Types::AddApplicationReferenceDataSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddApplicationReferenceDataSourceResponse#application_arn #application_arn} => String
    #   * {Types::AddApplicationReferenceDataSourceResponse#application_version_id #application_version_id} => Integer
    #   * {Types::AddApplicationReferenceDataSourceResponse#reference_data_source_descriptions #reference_data_source_descriptions} => Array&lt;Types::ReferenceDataSourceDescription&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_application_reference_data_source({
    #     application_name: "ApplicationName", # required
    #     current_application_version_id: 1, # required
    #     reference_data_source: { # required
    #       table_name: "InAppTableName", # required
    #       s3_reference_data_source: {
    #         bucket_arn: "BucketARN",
    #         file_key: "FileKey",
    #       },
    #       reference_schema: { # required
    #         record_format: { # required
    #           record_format_type: "JSON", # required, accepts JSON, CSV
    #           mapping_parameters: {
    #             json_mapping_parameters: {
    #               record_row_path: "RecordRowPath", # required
    #             },
    #             csv_mapping_parameters: {
    #               record_row_delimiter: "RecordRowDelimiter", # required
    #               record_column_delimiter: "RecordColumnDelimiter", # required
    #             },
    #           },
    #         },
    #         record_encoding: "RecordEncoding",
    #         record_columns: [ # required
    #           {
    #             name: "RecordColumnName", # required
    #             mapping: "RecordColumnMapping",
    #             sql_type: "RecordColumnSqlType", # required
    #           },
    #         ],
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.application_arn #=> String
    #   resp.application_version_id #=> Integer
    #   resp.reference_data_source_descriptions #=> Array
    #   resp.reference_data_source_descriptions[0].reference_id #=> String
    #   resp.reference_data_source_descriptions[0].table_name #=> String
    #   resp.reference_data_source_descriptions[0].s3_reference_data_source_description.bucket_arn #=> String
    #   resp.reference_data_source_descriptions[0].s3_reference_data_source_description.file_key #=> String
    #   resp.reference_data_source_descriptions[0].s3_reference_data_source_description.reference_role_arn #=> String
    #   resp.reference_data_source_descriptions[0].reference_schema.record_format.record_format_type #=> String, one of "JSON", "CSV"
    #   resp.reference_data_source_descriptions[0].reference_schema.record_format.mapping_parameters.json_mapping_parameters.record_row_path #=> String
    #   resp.reference_data_source_descriptions[0].reference_schema.record_format.mapping_parameters.csv_mapping_parameters.record_row_delimiter #=> String
    #   resp.reference_data_source_descriptions[0].reference_schema.record_format.mapping_parameters.csv_mapping_parameters.record_column_delimiter #=> String
    #   resp.reference_data_source_descriptions[0].reference_schema.record_encoding #=> String
    #   resp.reference_data_source_descriptions[0].reference_schema.record_columns #=> Array
    #   resp.reference_data_source_descriptions[0].reference_schema.record_columns[0].name #=> String
    #   resp.reference_data_source_descriptions[0].reference_schema.record_columns[0].mapping #=> String
    #   resp.reference_data_source_descriptions[0].reference_schema.record_columns[0].sql_type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/AddApplicationReferenceDataSource AWS API Documentation
    #
    # @overload add_application_reference_data_source(params = {})
    # @param [Hash] params ({})
    def add_application_reference_data_source(params = {}, options = {})
      req = build_request(:add_application_reference_data_source, params)
      req.send_request(options)
    end

    # Adds a Virtual Private Cloud (VPC) configuration to the application.
    # Applications can use VPCs to store and access resources securely.
    #
    # Note the following about VPC configurations for Kinesis Data Analytics
    # applications:
    #
    # * VPC configurations are not supported for SQL applications.
    #
    # * When a VPC is added to a Kinesis Data Analytics application, the
    #   application can no longer be accessed from the Internet directly. To
    #   enable Internet access to the application, add an Internet gateway
    #   to your VPC.
    #
    # @option params [required, String] :application_name
    #   The name of an existing application.
    #
    # @option params [required, Integer] :current_application_version_id
    #   The version of the application to which you want to add the VPC
    #   configuration. You can use the DescribeApplication operation to get
    #   the current application version. If the version specified is not the
    #   current version, the `ConcurrentModificationException` is returned.
    #
    # @option params [required, Types::VpcConfiguration] :vpc_configuration
    #   Description of the VPC to add to the application.
    #
    # @return [Types::AddApplicationVpcConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddApplicationVpcConfigurationResponse#application_arn #application_arn} => String
    #   * {Types::AddApplicationVpcConfigurationResponse#application_version_id #application_version_id} => Integer
    #   * {Types::AddApplicationVpcConfigurationResponse#vpc_configuration_description #vpc_configuration_description} => Types::VpcConfigurationDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_application_vpc_configuration({
    #     application_name: "ApplicationName", # required
    #     current_application_version_id: 1, # required
    #     vpc_configuration: { # required
    #       subnet_ids: ["SubnetId"], # required
    #       security_group_ids: ["SecurityGroupId"], # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.application_arn #=> String
    #   resp.application_version_id #=> Integer
    #   resp.vpc_configuration_description.vpc_configuration_id #=> String
    #   resp.vpc_configuration_description.vpc_id #=> String
    #   resp.vpc_configuration_description.subnet_ids #=> Array
    #   resp.vpc_configuration_description.subnet_ids[0] #=> String
    #   resp.vpc_configuration_description.security_group_ids #=> Array
    #   resp.vpc_configuration_description.security_group_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/AddApplicationVpcConfiguration AWS API Documentation
    #
    # @overload add_application_vpc_configuration(params = {})
    # @param [Hash] params ({})
    def add_application_vpc_configuration(params = {}, options = {})
      req = build_request(:add_application_vpc_configuration, params)
      req.send_request(options)
    end

    # Creates a Kinesis Data Analytics application. For information about
    # creating a Kinesis Data Analytics application, see [Creating an
    # Application][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kinesisanalytics/latest/java/getting-started.html
    #
    # @option params [required, String] :application_name
    #   The name of your application (for example, `sample-app`).
    #
    # @option params [String] :application_description
    #   A summary description of the application.
    #
    # @option params [required, String] :runtime_environment
    #   The runtime environment for the application (`SQL-1.0`, `FLINK-1_6`,
    #   or `FLINK-1_8`).
    #
    # @option params [required, String] :service_execution_role
    #   The IAM role used by the application to access Kinesis data streams,
    #   Kinesis Data Firehose delivery streams, Amazon S3 objects, and other
    #   external resources.
    #
    # @option params [Types::ApplicationConfiguration] :application_configuration
    #   Use this parameter to configure the application.
    #
    # @option params [Array<Types::CloudWatchLoggingOption>] :cloud_watch_logging_options
    #   Use this parameter to configure an Amazon CloudWatch log stream to
    #   monitor application configuration errors.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of one or more tags to assign to the application. A tag is a
    #   key-value pair that identifies an application. Note that the maximum
    #   number of application tags includes system tags. The maximum number of
    #   user-defined application tags is 50. For more information, see [Using
    #   Tagging][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kinesisanalytics/latest/java/how-tagging.html
    #
    # @return [Types::CreateApplicationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateApplicationResponse#application_detail #application_detail} => Types::ApplicationDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_application({
    #     application_name: "ApplicationName", # required
    #     application_description: "ApplicationDescription",
    #     runtime_environment: "SQL-1_0", # required, accepts SQL-1_0, FLINK-1_6, FLINK-1_8
    #     service_execution_role: "RoleARN", # required
    #     application_configuration: {
    #       sql_application_configuration: {
    #         inputs: [
    #           {
    #             name_prefix: "InAppStreamName", # required
    #             input_processing_configuration: {
    #               input_lambda_processor: { # required
    #                 resource_arn: "ResourceARN", # required
    #               },
    #             },
    #             kinesis_streams_input: {
    #               resource_arn: "ResourceARN", # required
    #             },
    #             kinesis_firehose_input: {
    #               resource_arn: "ResourceARN", # required
    #             },
    #             input_parallelism: {
    #               count: 1,
    #             },
    #             input_schema: { # required
    #               record_format: { # required
    #                 record_format_type: "JSON", # required, accepts JSON, CSV
    #                 mapping_parameters: {
    #                   json_mapping_parameters: {
    #                     record_row_path: "RecordRowPath", # required
    #                   },
    #                   csv_mapping_parameters: {
    #                     record_row_delimiter: "RecordRowDelimiter", # required
    #                     record_column_delimiter: "RecordColumnDelimiter", # required
    #                   },
    #                 },
    #               },
    #               record_encoding: "RecordEncoding",
    #               record_columns: [ # required
    #                 {
    #                   name: "RecordColumnName", # required
    #                   mapping: "RecordColumnMapping",
    #                   sql_type: "RecordColumnSqlType", # required
    #                 },
    #               ],
    #             },
    #           },
    #         ],
    #         outputs: [
    #           {
    #             name: "InAppStreamName", # required
    #             kinesis_streams_output: {
    #               resource_arn: "ResourceARN", # required
    #             },
    #             kinesis_firehose_output: {
    #               resource_arn: "ResourceARN", # required
    #             },
    #             lambda_output: {
    #               resource_arn: "ResourceARN", # required
    #             },
    #             destination_schema: { # required
    #               record_format_type: "JSON", # required, accepts JSON, CSV
    #             },
    #           },
    #         ],
    #         reference_data_sources: [
    #           {
    #             table_name: "InAppTableName", # required
    #             s3_reference_data_source: {
    #               bucket_arn: "BucketARN",
    #               file_key: "FileKey",
    #             },
    #             reference_schema: { # required
    #               record_format: { # required
    #                 record_format_type: "JSON", # required, accepts JSON, CSV
    #                 mapping_parameters: {
    #                   json_mapping_parameters: {
    #                     record_row_path: "RecordRowPath", # required
    #                   },
    #                   csv_mapping_parameters: {
    #                     record_row_delimiter: "RecordRowDelimiter", # required
    #                     record_column_delimiter: "RecordColumnDelimiter", # required
    #                   },
    #                 },
    #               },
    #               record_encoding: "RecordEncoding",
    #               record_columns: [ # required
    #                 {
    #                   name: "RecordColumnName", # required
    #                   mapping: "RecordColumnMapping",
    #                   sql_type: "RecordColumnSqlType", # required
    #                 },
    #               ],
    #             },
    #           },
    #         ],
    #       },
    #       flink_application_configuration: {
    #         checkpoint_configuration: {
    #           configuration_type: "DEFAULT", # required, accepts DEFAULT, CUSTOM
    #           checkpointing_enabled: false,
    #           checkpoint_interval: 1,
    #           min_pause_between_checkpoints: 1,
    #         },
    #         monitoring_configuration: {
    #           configuration_type: "DEFAULT", # required, accepts DEFAULT, CUSTOM
    #           metrics_level: "APPLICATION", # accepts APPLICATION, TASK, OPERATOR, PARALLELISM
    #           log_level: "INFO", # accepts INFO, WARN, ERROR, DEBUG
    #         },
    #         parallelism_configuration: {
    #           configuration_type: "DEFAULT", # required, accepts DEFAULT, CUSTOM
    #           parallelism: 1,
    #           parallelism_per_kpu: 1,
    #           auto_scaling_enabled: false,
    #         },
    #       },
    #       environment_properties: {
    #         property_groups: [ # required
    #           {
    #             property_group_id: "Id", # required
    #             property_map: { # required
    #               "PropertyKey" => "PropertyValue",
    #             },
    #           },
    #         ],
    #       },
    #       application_code_configuration: { # required
    #         code_content: {
    #           text_content: "TextContent",
    #           zip_file_content: "data",
    #           s3_content_location: {
    #             bucket_arn: "BucketARN", # required
    #             file_key: "FileKey", # required
    #             object_version: "ObjectVersion",
    #           },
    #         },
    #         code_content_type: "PLAINTEXT", # required, accepts PLAINTEXT, ZIPFILE
    #       },
    #       application_snapshot_configuration: {
    #         snapshots_enabled: false, # required
    #       },
    #       vpc_configurations: [
    #         {
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["SecurityGroupId"], # required
    #         },
    #       ],
    #     },
    #     cloud_watch_logging_options: [
    #       {
    #         log_stream_arn: "LogStreamARN", # required
    #       },
    #     ],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.application_detail.application_arn #=> String
    #   resp.application_detail.application_description #=> String
    #   resp.application_detail.application_name #=> String
    #   resp.application_detail.runtime_environment #=> String, one of "SQL-1_0", "FLINK-1_6", "FLINK-1_8"
    #   resp.application_detail.service_execution_role #=> String
    #   resp.application_detail.application_status #=> String, one of "DELETING", "STARTING", "STOPPING", "READY", "RUNNING", "UPDATING", "AUTOSCALING", "FORCE_STOPPING"
    #   resp.application_detail.application_version_id #=> Integer
    #   resp.application_detail.create_timestamp #=> Time
    #   resp.application_detail.last_update_timestamp #=> Time
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions #=> Array
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_id #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].name_prefix #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].in_app_stream_names #=> Array
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].in_app_stream_names[0] #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_processing_configuration_description.input_lambda_processor_description.resource_arn #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_processing_configuration_description.input_lambda_processor_description.role_arn #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].kinesis_streams_input_description.resource_arn #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].kinesis_streams_input_description.role_arn #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].kinesis_firehose_input_description.resource_arn #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].kinesis_firehose_input_description.role_arn #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_format.record_format_type #=> String, one of "JSON", "CSV"
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_format.mapping_parameters.json_mapping_parameters.record_row_path #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_format.mapping_parameters.csv_mapping_parameters.record_row_delimiter #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_format.mapping_parameters.csv_mapping_parameters.record_column_delimiter #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_encoding #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_columns #=> Array
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_columns[0].name #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_columns[0].mapping #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_columns[0].sql_type #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_parallelism.count #=> Integer
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_starting_position_configuration.input_starting_position #=> String, one of "NOW", "TRIM_HORIZON", "LAST_STOPPED_POINT"
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions #=> Array
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].output_id #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].name #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].kinesis_streams_output_description.resource_arn #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].kinesis_streams_output_description.role_arn #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].kinesis_firehose_output_description.resource_arn #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].kinesis_firehose_output_description.role_arn #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].lambda_output_description.resource_arn #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].lambda_output_description.role_arn #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].destination_schema.record_format_type #=> String, one of "JSON", "CSV"
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions #=> Array
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].reference_id #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].table_name #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].s3_reference_data_source_description.bucket_arn #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].s3_reference_data_source_description.file_key #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].s3_reference_data_source_description.reference_role_arn #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].reference_schema.record_format.record_format_type #=> String, one of "JSON", "CSV"
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].reference_schema.record_format.mapping_parameters.json_mapping_parameters.record_row_path #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].reference_schema.record_format.mapping_parameters.csv_mapping_parameters.record_row_delimiter #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].reference_schema.record_format.mapping_parameters.csv_mapping_parameters.record_column_delimiter #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].reference_schema.record_encoding #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].reference_schema.record_columns #=> Array
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].reference_schema.record_columns[0].name #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].reference_schema.record_columns[0].mapping #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].reference_schema.record_columns[0].sql_type #=> String
    #   resp.application_detail.application_configuration_description.application_code_configuration_description.code_content_type #=> String, one of "PLAINTEXT", "ZIPFILE"
    #   resp.application_detail.application_configuration_description.application_code_configuration_description.code_content_description.text_content #=> String
    #   resp.application_detail.application_configuration_description.application_code_configuration_description.code_content_description.code_md5 #=> String
    #   resp.application_detail.application_configuration_description.application_code_configuration_description.code_content_description.code_size #=> Integer
    #   resp.application_detail.application_configuration_description.application_code_configuration_description.code_content_description.s3_application_code_location_description.bucket_arn #=> String
    #   resp.application_detail.application_configuration_description.application_code_configuration_description.code_content_description.s3_application_code_location_description.file_key #=> String
    #   resp.application_detail.application_configuration_description.application_code_configuration_description.code_content_description.s3_application_code_location_description.object_version #=> String
    #   resp.application_detail.application_configuration_description.run_configuration_description.application_restore_configuration_description.application_restore_type #=> String, one of "SKIP_RESTORE_FROM_SNAPSHOT", "RESTORE_FROM_LATEST_SNAPSHOT", "RESTORE_FROM_CUSTOM_SNAPSHOT"
    #   resp.application_detail.application_configuration_description.run_configuration_description.application_restore_configuration_description.snapshot_name #=> String
    #   resp.application_detail.application_configuration_description.run_configuration_description.flink_run_configuration_description.allow_non_restored_state #=> Boolean
    #   resp.application_detail.application_configuration_description.flink_application_configuration_description.checkpoint_configuration_description.configuration_type #=> String, one of "DEFAULT", "CUSTOM"
    #   resp.application_detail.application_configuration_description.flink_application_configuration_description.checkpoint_configuration_description.checkpointing_enabled #=> Boolean
    #   resp.application_detail.application_configuration_description.flink_application_configuration_description.checkpoint_configuration_description.checkpoint_interval #=> Integer
    #   resp.application_detail.application_configuration_description.flink_application_configuration_description.checkpoint_configuration_description.min_pause_between_checkpoints #=> Integer
    #   resp.application_detail.application_configuration_description.flink_application_configuration_description.monitoring_configuration_description.configuration_type #=> String, one of "DEFAULT", "CUSTOM"
    #   resp.application_detail.application_configuration_description.flink_application_configuration_description.monitoring_configuration_description.metrics_level #=> String, one of "APPLICATION", "TASK", "OPERATOR", "PARALLELISM"
    #   resp.application_detail.application_configuration_description.flink_application_configuration_description.monitoring_configuration_description.log_level #=> String, one of "INFO", "WARN", "ERROR", "DEBUG"
    #   resp.application_detail.application_configuration_description.flink_application_configuration_description.parallelism_configuration_description.configuration_type #=> String, one of "DEFAULT", "CUSTOM"
    #   resp.application_detail.application_configuration_description.flink_application_configuration_description.parallelism_configuration_description.parallelism #=> Integer
    #   resp.application_detail.application_configuration_description.flink_application_configuration_description.parallelism_configuration_description.parallelism_per_kpu #=> Integer
    #   resp.application_detail.application_configuration_description.flink_application_configuration_description.parallelism_configuration_description.current_parallelism #=> Integer
    #   resp.application_detail.application_configuration_description.flink_application_configuration_description.parallelism_configuration_description.auto_scaling_enabled #=> Boolean
    #   resp.application_detail.application_configuration_description.flink_application_configuration_description.job_plan_description #=> String
    #   resp.application_detail.application_configuration_description.environment_property_descriptions.property_group_descriptions #=> Array
    #   resp.application_detail.application_configuration_description.environment_property_descriptions.property_group_descriptions[0].property_group_id #=> String
    #   resp.application_detail.application_configuration_description.environment_property_descriptions.property_group_descriptions[0].property_map #=> Hash
    #   resp.application_detail.application_configuration_description.environment_property_descriptions.property_group_descriptions[0].property_map["PropertyKey"] #=> String
    #   resp.application_detail.application_configuration_description.application_snapshot_configuration_description.snapshots_enabled #=> Boolean
    #   resp.application_detail.application_configuration_description.vpc_configuration_descriptions #=> Array
    #   resp.application_detail.application_configuration_description.vpc_configuration_descriptions[0].vpc_configuration_id #=> String
    #   resp.application_detail.application_configuration_description.vpc_configuration_descriptions[0].vpc_id #=> String
    #   resp.application_detail.application_configuration_description.vpc_configuration_descriptions[0].subnet_ids #=> Array
    #   resp.application_detail.application_configuration_description.vpc_configuration_descriptions[0].subnet_ids[0] #=> String
    #   resp.application_detail.application_configuration_description.vpc_configuration_descriptions[0].security_group_ids #=> Array
    #   resp.application_detail.application_configuration_description.vpc_configuration_descriptions[0].security_group_ids[0] #=> String
    #   resp.application_detail.cloud_watch_logging_option_descriptions #=> Array
    #   resp.application_detail.cloud_watch_logging_option_descriptions[0].cloud_watch_logging_option_id #=> String
    #   resp.application_detail.cloud_watch_logging_option_descriptions[0].log_stream_arn #=> String
    #   resp.application_detail.cloud_watch_logging_option_descriptions[0].role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/CreateApplication AWS API Documentation
    #
    # @overload create_application(params = {})
    # @param [Hash] params ({})
    def create_application(params = {}, options = {})
      req = build_request(:create_application, params)
      req.send_request(options)
    end

    # Creates a snapshot of the application's state data.
    #
    # @option params [required, String] :application_name
    #   The name of an existing application
    #
    # @option params [required, String] :snapshot_name
    #   An identifier for the application snapshot.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_application_snapshot({
    #     application_name: "ApplicationName", # required
    #     snapshot_name: "SnapshotName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/CreateApplicationSnapshot AWS API Documentation
    #
    # @overload create_application_snapshot(params = {})
    # @param [Hash] params ({})
    def create_application_snapshot(params = {}, options = {})
      req = build_request(:create_application_snapshot, params)
      req.send_request(options)
    end

    # Deletes the specified application. Kinesis Data Analytics halts
    # application execution and deletes the application.
    #
    # @option params [required, String] :application_name
    #   The name of the application to delete.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :create_timestamp
    #   Use the `DescribeApplication` operation to get this value.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_application({
    #     application_name: "ApplicationName", # required
    #     create_timestamp: Time.now, # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/DeleteApplication AWS API Documentation
    #
    # @overload delete_application(params = {})
    # @param [Hash] params ({})
    def delete_application(params = {}, options = {})
      req = build_request(:delete_application, params)
      req.send_request(options)
    end

    # Deletes an Amazon CloudWatch log stream from an Kinesis Data Analytics
    # application.
    #
    # @option params [required, String] :application_name
    #   The application name.
    #
    # @option params [required, Integer] :current_application_version_id
    #   The version ID of the application. You can retrieve the application
    #   version ID using DescribeApplication.
    #
    # @option params [required, String] :cloud_watch_logging_option_id
    #   The `CloudWatchLoggingOptionId` of the Amazon CloudWatch logging
    #   option to delete. You can get the `CloudWatchLoggingOptionId` by using
    #   the DescribeApplication operation.
    #
    # @return [Types::DeleteApplicationCloudWatchLoggingOptionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteApplicationCloudWatchLoggingOptionResponse#application_arn #application_arn} => String
    #   * {Types::DeleteApplicationCloudWatchLoggingOptionResponse#application_version_id #application_version_id} => Integer
    #   * {Types::DeleteApplicationCloudWatchLoggingOptionResponse#cloud_watch_logging_option_descriptions #cloud_watch_logging_option_descriptions} => Array&lt;Types::CloudWatchLoggingOptionDescription&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_application_cloud_watch_logging_option({
    #     application_name: "ApplicationName", # required
    #     current_application_version_id: 1, # required
    #     cloud_watch_logging_option_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_arn #=> String
    #   resp.application_version_id #=> Integer
    #   resp.cloud_watch_logging_option_descriptions #=> Array
    #   resp.cloud_watch_logging_option_descriptions[0].cloud_watch_logging_option_id #=> String
    #   resp.cloud_watch_logging_option_descriptions[0].log_stream_arn #=> String
    #   resp.cloud_watch_logging_option_descriptions[0].role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/DeleteApplicationCloudWatchLoggingOption AWS API Documentation
    #
    # @overload delete_application_cloud_watch_logging_option(params = {})
    # @param [Hash] params ({})
    def delete_application_cloud_watch_logging_option(params = {}, options = {})
      req = build_request(:delete_application_cloud_watch_logging_option, params)
      req.send_request(options)
    end

    # Deletes an InputProcessingConfiguration from an input.
    #
    # @option params [required, String] :application_name
    #   The name of the application.
    #
    # @option params [required, Integer] :current_application_version_id
    #   The application version. You can use the DescribeApplication operation
    #   to get the current application version. If the version specified is
    #   not the current version, the `ConcurrentModificationException` is
    #   returned.
    #
    # @option params [required, String] :input_id
    #   The ID of the input configuration from which to delete the input
    #   processing configuration. You can get a list of the input IDs for an
    #   application by using the DescribeApplication operation.
    #
    # @return [Types::DeleteApplicationInputProcessingConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteApplicationInputProcessingConfigurationResponse#application_arn #application_arn} => String
    #   * {Types::DeleteApplicationInputProcessingConfigurationResponse#application_version_id #application_version_id} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_application_input_processing_configuration({
    #     application_name: "ApplicationName", # required
    #     current_application_version_id: 1, # required
    #     input_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_arn #=> String
    #   resp.application_version_id #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/DeleteApplicationInputProcessingConfiguration AWS API Documentation
    #
    # @overload delete_application_input_processing_configuration(params = {})
    # @param [Hash] params ({})
    def delete_application_input_processing_configuration(params = {}, options = {})
      req = build_request(:delete_application_input_processing_configuration, params)
      req.send_request(options)
    end

    # Deletes the output destination configuration from your SQL-based
    # Kinesis Data Analytics application's configuration. Kinesis Data
    # Analytics will no longer write data from the corresponding
    # in-application stream to the external output destination.
    #
    # @option params [required, String] :application_name
    #   The application name.
    #
    # @option params [required, Integer] :current_application_version_id
    #   The application version. You can use the DescribeApplication operation
    #   to get the current application version. If the version specified is
    #   not the current version, the `ConcurrentModificationException` is
    #   returned.
    #
    # @option params [required, String] :output_id
    #   The ID of the configuration to delete. Each output configuration that
    #   is added to the application (either when the application is created or
    #   later) using the AddApplicationOutput operation has a unique ID. You
    #   need to provide the ID to uniquely identify the output configuration
    #   that you want to delete from the application configuration. You can
    #   use the DescribeApplication operation to get the specific `OutputId`.
    #
    # @return [Types::DeleteApplicationOutputResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteApplicationOutputResponse#application_arn #application_arn} => String
    #   * {Types::DeleteApplicationOutputResponse#application_version_id #application_version_id} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_application_output({
    #     application_name: "ApplicationName", # required
    #     current_application_version_id: 1, # required
    #     output_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_arn #=> String
    #   resp.application_version_id #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/DeleteApplicationOutput AWS API Documentation
    #
    # @overload delete_application_output(params = {})
    # @param [Hash] params ({})
    def delete_application_output(params = {}, options = {})
      req = build_request(:delete_application_output, params)
      req.send_request(options)
    end

    # Deletes a reference data source configuration from the specified
    # SQL-based Kinesis Data Analytics application's configuration.
    #
    # If the application is running, Kinesis Data Analytics immediately
    # removes the in-application table that you created using the
    # AddApplicationReferenceDataSource operation.
    #
    # @option params [required, String] :application_name
    #   The name of an existing application.
    #
    # @option params [required, Integer] :current_application_version_id
    #   The current application version. You can use the DescribeApplication
    #   operation to get the current application version. If the version
    #   specified is not the current version, the
    #   `ConcurrentModificationException` is returned.
    #
    # @option params [required, String] :reference_id
    #   The ID of the reference data source. When you add a reference data
    #   source to your application using the
    #   AddApplicationReferenceDataSource, Kinesis Data Analytics assigns an
    #   ID. You can use the DescribeApplication operation to get the reference
    #   ID.
    #
    # @return [Types::DeleteApplicationReferenceDataSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteApplicationReferenceDataSourceResponse#application_arn #application_arn} => String
    #   * {Types::DeleteApplicationReferenceDataSourceResponse#application_version_id #application_version_id} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_application_reference_data_source({
    #     application_name: "ApplicationName", # required
    #     current_application_version_id: 1, # required
    #     reference_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_arn #=> String
    #   resp.application_version_id #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/DeleteApplicationReferenceDataSource AWS API Documentation
    #
    # @overload delete_application_reference_data_source(params = {})
    # @param [Hash] params ({})
    def delete_application_reference_data_source(params = {}, options = {})
      req = build_request(:delete_application_reference_data_source, params)
      req.send_request(options)
    end

    # Deletes a snapshot of application state.
    #
    # @option params [required, String] :application_name
    #   The name of an existing application.
    #
    # @option params [required, String] :snapshot_name
    #   The identifier for the snapshot delete.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :snapshot_creation_timestamp
    #   The creation timestamp of the application snapshot to delete. You can
    #   retrieve this value using or .
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_application_snapshot({
    #     application_name: "ApplicationName", # required
    #     snapshot_name: "SnapshotName", # required
    #     snapshot_creation_timestamp: Time.now, # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/DeleteApplicationSnapshot AWS API Documentation
    #
    # @overload delete_application_snapshot(params = {})
    # @param [Hash] params ({})
    def delete_application_snapshot(params = {}, options = {})
      req = build_request(:delete_application_snapshot, params)
      req.send_request(options)
    end

    # Removes a VPC configuration from a Kinesis Data Analytics application.
    #
    # @option params [required, String] :application_name
    #   The name of an existing application.
    #
    # @option params [required, Integer] :current_application_version_id
    #   The current application version ID. You can retrieve the application
    #   version ID using DescribeApplication.
    #
    # @option params [required, String] :vpc_configuration_id
    #   The ID of the VPC configuration to delete.
    #
    # @return [Types::DeleteApplicationVpcConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteApplicationVpcConfigurationResponse#application_arn #application_arn} => String
    #   * {Types::DeleteApplicationVpcConfigurationResponse#application_version_id #application_version_id} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_application_vpc_configuration({
    #     application_name: "ApplicationName", # required
    #     current_application_version_id: 1, # required
    #     vpc_configuration_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_arn #=> String
    #   resp.application_version_id #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/DeleteApplicationVpcConfiguration AWS API Documentation
    #
    # @overload delete_application_vpc_configuration(params = {})
    # @param [Hash] params ({})
    def delete_application_vpc_configuration(params = {}, options = {})
      req = build_request(:delete_application_vpc_configuration, params)
      req.send_request(options)
    end

    # Returns information about a specific Kinesis Data Analytics
    # application.
    #
    # If you want to retrieve a list of all applications in your account,
    # use the ListApplications operation.
    #
    # @option params [required, String] :application_name
    #   The name of the application.
    #
    # @option params [Boolean] :include_additional_details
    #   Displays verbose information about a Kinesis Data Analytics
    #   application, including the application's job plan.
    #
    # @return [Types::DescribeApplicationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeApplicationResponse#application_detail #application_detail} => Types::ApplicationDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_application({
    #     application_name: "ApplicationName", # required
    #     include_additional_details: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.application_detail.application_arn #=> String
    #   resp.application_detail.application_description #=> String
    #   resp.application_detail.application_name #=> String
    #   resp.application_detail.runtime_environment #=> String, one of "SQL-1_0", "FLINK-1_6", "FLINK-1_8"
    #   resp.application_detail.service_execution_role #=> String
    #   resp.application_detail.application_status #=> String, one of "DELETING", "STARTING", "STOPPING", "READY", "RUNNING", "UPDATING", "AUTOSCALING", "FORCE_STOPPING"
    #   resp.application_detail.application_version_id #=> Integer
    #   resp.application_detail.create_timestamp #=> Time
    #   resp.application_detail.last_update_timestamp #=> Time
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions #=> Array
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_id #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].name_prefix #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].in_app_stream_names #=> Array
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].in_app_stream_names[0] #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_processing_configuration_description.input_lambda_processor_description.resource_arn #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_processing_configuration_description.input_lambda_processor_description.role_arn #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].kinesis_streams_input_description.resource_arn #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].kinesis_streams_input_description.role_arn #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].kinesis_firehose_input_description.resource_arn #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].kinesis_firehose_input_description.role_arn #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_format.record_format_type #=> String, one of "JSON", "CSV"
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_format.mapping_parameters.json_mapping_parameters.record_row_path #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_format.mapping_parameters.csv_mapping_parameters.record_row_delimiter #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_format.mapping_parameters.csv_mapping_parameters.record_column_delimiter #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_encoding #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_columns #=> Array
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_columns[0].name #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_columns[0].mapping #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_columns[0].sql_type #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_parallelism.count #=> Integer
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_starting_position_configuration.input_starting_position #=> String, one of "NOW", "TRIM_HORIZON", "LAST_STOPPED_POINT"
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions #=> Array
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].output_id #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].name #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].kinesis_streams_output_description.resource_arn #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].kinesis_streams_output_description.role_arn #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].kinesis_firehose_output_description.resource_arn #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].kinesis_firehose_output_description.role_arn #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].lambda_output_description.resource_arn #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].lambda_output_description.role_arn #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].destination_schema.record_format_type #=> String, one of "JSON", "CSV"
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions #=> Array
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].reference_id #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].table_name #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].s3_reference_data_source_description.bucket_arn #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].s3_reference_data_source_description.file_key #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].s3_reference_data_source_description.reference_role_arn #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].reference_schema.record_format.record_format_type #=> String, one of "JSON", "CSV"
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].reference_schema.record_format.mapping_parameters.json_mapping_parameters.record_row_path #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].reference_schema.record_format.mapping_parameters.csv_mapping_parameters.record_row_delimiter #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].reference_schema.record_format.mapping_parameters.csv_mapping_parameters.record_column_delimiter #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].reference_schema.record_encoding #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].reference_schema.record_columns #=> Array
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].reference_schema.record_columns[0].name #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].reference_schema.record_columns[0].mapping #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].reference_schema.record_columns[0].sql_type #=> String
    #   resp.application_detail.application_configuration_description.application_code_configuration_description.code_content_type #=> String, one of "PLAINTEXT", "ZIPFILE"
    #   resp.application_detail.application_configuration_description.application_code_configuration_description.code_content_description.text_content #=> String
    #   resp.application_detail.application_configuration_description.application_code_configuration_description.code_content_description.code_md5 #=> String
    #   resp.application_detail.application_configuration_description.application_code_configuration_description.code_content_description.code_size #=> Integer
    #   resp.application_detail.application_configuration_description.application_code_configuration_description.code_content_description.s3_application_code_location_description.bucket_arn #=> String
    #   resp.application_detail.application_configuration_description.application_code_configuration_description.code_content_description.s3_application_code_location_description.file_key #=> String
    #   resp.application_detail.application_configuration_description.application_code_configuration_description.code_content_description.s3_application_code_location_description.object_version #=> String
    #   resp.application_detail.application_configuration_description.run_configuration_description.application_restore_configuration_description.application_restore_type #=> String, one of "SKIP_RESTORE_FROM_SNAPSHOT", "RESTORE_FROM_LATEST_SNAPSHOT", "RESTORE_FROM_CUSTOM_SNAPSHOT"
    #   resp.application_detail.application_configuration_description.run_configuration_description.application_restore_configuration_description.snapshot_name #=> String
    #   resp.application_detail.application_configuration_description.run_configuration_description.flink_run_configuration_description.allow_non_restored_state #=> Boolean
    #   resp.application_detail.application_configuration_description.flink_application_configuration_description.checkpoint_configuration_description.configuration_type #=> String, one of "DEFAULT", "CUSTOM"
    #   resp.application_detail.application_configuration_description.flink_application_configuration_description.checkpoint_configuration_description.checkpointing_enabled #=> Boolean
    #   resp.application_detail.application_configuration_description.flink_application_configuration_description.checkpoint_configuration_description.checkpoint_interval #=> Integer
    #   resp.application_detail.application_configuration_description.flink_application_configuration_description.checkpoint_configuration_description.min_pause_between_checkpoints #=> Integer
    #   resp.application_detail.application_configuration_description.flink_application_configuration_description.monitoring_configuration_description.configuration_type #=> String, one of "DEFAULT", "CUSTOM"
    #   resp.application_detail.application_configuration_description.flink_application_configuration_description.monitoring_configuration_description.metrics_level #=> String, one of "APPLICATION", "TASK", "OPERATOR", "PARALLELISM"
    #   resp.application_detail.application_configuration_description.flink_application_configuration_description.monitoring_configuration_description.log_level #=> String, one of "INFO", "WARN", "ERROR", "DEBUG"
    #   resp.application_detail.application_configuration_description.flink_application_configuration_description.parallelism_configuration_description.configuration_type #=> String, one of "DEFAULT", "CUSTOM"
    #   resp.application_detail.application_configuration_description.flink_application_configuration_description.parallelism_configuration_description.parallelism #=> Integer
    #   resp.application_detail.application_configuration_description.flink_application_configuration_description.parallelism_configuration_description.parallelism_per_kpu #=> Integer
    #   resp.application_detail.application_configuration_description.flink_application_configuration_description.parallelism_configuration_description.current_parallelism #=> Integer
    #   resp.application_detail.application_configuration_description.flink_application_configuration_description.parallelism_configuration_description.auto_scaling_enabled #=> Boolean
    #   resp.application_detail.application_configuration_description.flink_application_configuration_description.job_plan_description #=> String
    #   resp.application_detail.application_configuration_description.environment_property_descriptions.property_group_descriptions #=> Array
    #   resp.application_detail.application_configuration_description.environment_property_descriptions.property_group_descriptions[0].property_group_id #=> String
    #   resp.application_detail.application_configuration_description.environment_property_descriptions.property_group_descriptions[0].property_map #=> Hash
    #   resp.application_detail.application_configuration_description.environment_property_descriptions.property_group_descriptions[0].property_map["PropertyKey"] #=> String
    #   resp.application_detail.application_configuration_description.application_snapshot_configuration_description.snapshots_enabled #=> Boolean
    #   resp.application_detail.application_configuration_description.vpc_configuration_descriptions #=> Array
    #   resp.application_detail.application_configuration_description.vpc_configuration_descriptions[0].vpc_configuration_id #=> String
    #   resp.application_detail.application_configuration_description.vpc_configuration_descriptions[0].vpc_id #=> String
    #   resp.application_detail.application_configuration_description.vpc_configuration_descriptions[0].subnet_ids #=> Array
    #   resp.application_detail.application_configuration_description.vpc_configuration_descriptions[0].subnet_ids[0] #=> String
    #   resp.application_detail.application_configuration_description.vpc_configuration_descriptions[0].security_group_ids #=> Array
    #   resp.application_detail.application_configuration_description.vpc_configuration_descriptions[0].security_group_ids[0] #=> String
    #   resp.application_detail.cloud_watch_logging_option_descriptions #=> Array
    #   resp.application_detail.cloud_watch_logging_option_descriptions[0].cloud_watch_logging_option_id #=> String
    #   resp.application_detail.cloud_watch_logging_option_descriptions[0].log_stream_arn #=> String
    #   resp.application_detail.cloud_watch_logging_option_descriptions[0].role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/DescribeApplication AWS API Documentation
    #
    # @overload describe_application(params = {})
    # @param [Hash] params ({})
    def describe_application(params = {}, options = {})
      req = build_request(:describe_application, params)
      req.send_request(options)
    end

    # Returns information about a snapshot of application state data.
    #
    # @option params [required, String] :application_name
    #   The name of an existing application.
    #
    # @option params [required, String] :snapshot_name
    #   The identifier of an application snapshot. You can retrieve this value
    #   using .
    #
    # @return [Types::DescribeApplicationSnapshotResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeApplicationSnapshotResponse#snapshot_details #snapshot_details} => Types::SnapshotDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_application_snapshot({
    #     application_name: "ApplicationName", # required
    #     snapshot_name: "SnapshotName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.snapshot_details.snapshot_name #=> String
    #   resp.snapshot_details.snapshot_status #=> String, one of "CREATING", "READY", "DELETING", "FAILED"
    #   resp.snapshot_details.application_version_id #=> Integer
    #   resp.snapshot_details.snapshot_creation_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/DescribeApplicationSnapshot AWS API Documentation
    #
    # @overload describe_application_snapshot(params = {})
    # @param [Hash] params ({})
    def describe_application_snapshot(params = {}, options = {})
      req = build_request(:describe_application_snapshot, params)
      req.send_request(options)
    end

    # Infers a schema for a SQL-based Kinesis Data Analytics application by
    # evaluating sample records on the specified streaming source (Kinesis
    # data stream or Kinesis Data Firehose delivery stream) or Amazon S3
    # object. In the response, the operation returns the inferred schema and
    # also the sample records that the operation used to infer the schema.
    #
    # You can use the inferred schema when configuring a streaming source
    # for your application. When you create an application using the Kinesis
    # Data Analytics console, the console uses this operation to infer a
    # schema and show it in the console user interface.
    #
    # @option params [String] :resource_arn
    #   The Amazon Resource Name (ARN) of the streaming source.
    #
    # @option params [required, String] :service_execution_role
    #   The ARN of the role that is used to access the streaming source.
    #
    # @option params [Types::InputStartingPositionConfiguration] :input_starting_position_configuration
    #   The point at which you want Kinesis Data Analytics to start reading
    #   records from the specified streaming source discovery purposes.
    #
    # @option params [Types::S3Configuration] :s3_configuration
    #   Specify this parameter to discover a schema from data in an Amazon S3
    #   object.
    #
    # @option params [Types::InputProcessingConfiguration] :input_processing_configuration
    #   The InputProcessingConfiguration to use to preprocess the records
    #   before discovering the schema of the records.
    #
    # @return [Types::DiscoverInputSchemaResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DiscoverInputSchemaResponse#input_schema #input_schema} => Types::SourceSchema
    #   * {Types::DiscoverInputSchemaResponse#parsed_input_records #parsed_input_records} => Array&lt;Array&lt;String&gt;&gt;
    #   * {Types::DiscoverInputSchemaResponse#processed_input_records #processed_input_records} => Array&lt;String&gt;
    #   * {Types::DiscoverInputSchemaResponse#raw_input_records #raw_input_records} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.discover_input_schema({
    #     resource_arn: "ResourceARN",
    #     service_execution_role: "RoleARN", # required
    #     input_starting_position_configuration: {
    #       input_starting_position: "NOW", # accepts NOW, TRIM_HORIZON, LAST_STOPPED_POINT
    #     },
    #     s3_configuration: {
    #       bucket_arn: "BucketARN", # required
    #       file_key: "FileKey", # required
    #     },
    #     input_processing_configuration: {
    #       input_lambda_processor: { # required
    #         resource_arn: "ResourceARN", # required
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.input_schema.record_format.record_format_type #=> String, one of "JSON", "CSV"
    #   resp.input_schema.record_format.mapping_parameters.json_mapping_parameters.record_row_path #=> String
    #   resp.input_schema.record_format.mapping_parameters.csv_mapping_parameters.record_row_delimiter #=> String
    #   resp.input_schema.record_format.mapping_parameters.csv_mapping_parameters.record_column_delimiter #=> String
    #   resp.input_schema.record_encoding #=> String
    #   resp.input_schema.record_columns #=> Array
    #   resp.input_schema.record_columns[0].name #=> String
    #   resp.input_schema.record_columns[0].mapping #=> String
    #   resp.input_schema.record_columns[0].sql_type #=> String
    #   resp.parsed_input_records #=> Array
    #   resp.parsed_input_records[0] #=> Array
    #   resp.parsed_input_records[0][0] #=> String
    #   resp.processed_input_records #=> Array
    #   resp.processed_input_records[0] #=> String
    #   resp.raw_input_records #=> Array
    #   resp.raw_input_records[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/DiscoverInputSchema AWS API Documentation
    #
    # @overload discover_input_schema(params = {})
    # @param [Hash] params ({})
    def discover_input_schema(params = {}, options = {})
      req = build_request(:discover_input_schema, params)
      req.send_request(options)
    end

    # Lists information about the current application snapshots.
    #
    # @option params [required, String] :application_name
    #   The name of an existing application.
    #
    # @option params [Integer] :limit
    #   The maximum number of application snapshots to list.
    #
    # @option params [String] :next_token
    #   Use this parameter if you receive a `NextToken` response in a previous
    #   request that indicates that there is more output available. Set it to
    #   the value of the previous call's `NextToken` response to indicate
    #   where the output should continue from.
    #
    # @return [Types::ListApplicationSnapshotsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListApplicationSnapshotsResponse#snapshot_summaries #snapshot_summaries} => Array&lt;Types::SnapshotDetails&gt;
    #   * {Types::ListApplicationSnapshotsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_application_snapshots({
    #     application_name: "ApplicationName", # required
    #     limit: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.snapshot_summaries #=> Array
    #   resp.snapshot_summaries[0].snapshot_name #=> String
    #   resp.snapshot_summaries[0].snapshot_status #=> String, one of "CREATING", "READY", "DELETING", "FAILED"
    #   resp.snapshot_summaries[0].application_version_id #=> Integer
    #   resp.snapshot_summaries[0].snapshot_creation_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/ListApplicationSnapshots AWS API Documentation
    #
    # @overload list_application_snapshots(params = {})
    # @param [Hash] params ({})
    def list_application_snapshots(params = {}, options = {})
      req = build_request(:list_application_snapshots, params)
      req.send_request(options)
    end

    # Returns a list of Kinesis Data Analytics applications in your account.
    # For each application, the response includes the application name,
    # Amazon Resource Name (ARN), and status.
    #
    # If you want detailed information about a specific application, use
    # DescribeApplication.
    #
    # @option params [Integer] :limit
    #   The maximum number of applications to list.
    #
    # @option params [String] :next_token
    #   If a previous command returned a pagination token, pass it into this
    #   value to retrieve the next set of results. For more information about
    #   pagination, see [Using the AWS Command Line Interface's Pagination
    #   Options][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cli/latest/userguide/pagination.html
    #
    # @return [Types::ListApplicationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListApplicationsResponse#application_summaries #application_summaries} => Array&lt;Types::ApplicationSummary&gt;
    #   * {Types::ListApplicationsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_applications({
    #     limit: 1,
    #     next_token: "ApplicationName",
    #   })
    #
    # @example Response structure
    #
    #   resp.application_summaries #=> Array
    #   resp.application_summaries[0].application_name #=> String
    #   resp.application_summaries[0].application_arn #=> String
    #   resp.application_summaries[0].application_status #=> String, one of "DELETING", "STARTING", "STOPPING", "READY", "RUNNING", "UPDATING", "AUTOSCALING", "FORCE_STOPPING"
    #   resp.application_summaries[0].application_version_id #=> Integer
    #   resp.application_summaries[0].runtime_environment #=> String, one of "SQL-1_0", "FLINK-1_6", "FLINK-1_8"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/ListApplications AWS API Documentation
    #
    # @overload list_applications(params = {})
    # @param [Hash] params ({})
    def list_applications(params = {}, options = {})
      req = build_request(:list_applications, params)
      req.send_request(options)
    end

    # Retrieves the list of key-value tags assigned to the application. For
    # more information, see [Using Tagging][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kinesisanalytics/latest/java/how-tagging.html
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the application for which to retrieve tags.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "KinesisAnalyticsARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Starts the specified Kinesis Data Analytics application. After
    # creating an application, you must exclusively call this operation to
    # start your application.
    #
    # @option params [required, String] :application_name
    #   The name of the application.
    #
    # @option params [required, Types::RunConfiguration] :run_configuration
    #   Identifies the run configuration (start parameters) of a Kinesis Data
    #   Analytics application.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_application({
    #     application_name: "ApplicationName", # required
    #     run_configuration: { # required
    #       flink_run_configuration: {
    #         allow_non_restored_state: false,
    #       },
    #       sql_run_configurations: [
    #         {
    #           input_id: "Id", # required
    #           input_starting_position_configuration: { # required
    #             input_starting_position: "NOW", # accepts NOW, TRIM_HORIZON, LAST_STOPPED_POINT
    #           },
    #         },
    #       ],
    #       application_restore_configuration: {
    #         application_restore_type: "SKIP_RESTORE_FROM_SNAPSHOT", # required, accepts SKIP_RESTORE_FROM_SNAPSHOT, RESTORE_FROM_LATEST_SNAPSHOT, RESTORE_FROM_CUSTOM_SNAPSHOT
    #         snapshot_name: "SnapshotName",
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/StartApplication AWS API Documentation
    #
    # @overload start_application(params = {})
    # @param [Hash] params ({})
    def start_application(params = {}, options = {})
      req = build_request(:start_application, params)
      req.send_request(options)
    end

    # Stops the application from processing data. You can stop an
    # application only if it is in the running state. You can use the
    # DescribeApplication operation to find the application state.
    #
    # @option params [required, String] :application_name
    #   The name of the running application to stop.
    #
    # @option params [Boolean] :force
    #   Set to `true` to force the application to stop. If you set `Force` to
    #   `true`, Kinesis Data Analytics stops the application without taking a
    #   snapshot.
    #
    #   You can only force stop a Flink-based Kinesis Data Analytics
    #   application. You can't force stop a SQL-based Kinesis Data Analytics
    #   application.
    #
    #   The application must be in the `STARTING`, `UPDATING`, `STOPPING`,
    #   `AUTOSCALING`, or `RUNNING` state.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_application({
    #     application_name: "ApplicationName", # required
    #     force: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/StopApplication AWS API Documentation
    #
    # @overload stop_application(params = {})
    # @param [Hash] params ({})
    def stop_application(params = {}, options = {})
      req = build_request(:stop_application, params)
      req.send_request(options)
    end

    # Adds one or more key-value tags to a Kinesis Data Analytics
    # application. Note that the maximum number of application tags includes
    # system tags. The maximum number of user-defined application tags is
    # 50. For more information, see [Using Tagging][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kinesisanalytics/latest/java/how-tagging.html
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the application to assign the tags.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The key-value tags to assign to the application.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "KinesisAnalyticsARN", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes one or more tags from a Kinesis Data Analytics application.
    # For more information, see [Using Tagging][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kinesisanalytics/latest/java/how-tagging.html
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the Kinesis Data Analytics application from which to remove
    #   the tags.
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of keys of tags to remove from the specified application.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "KinesisAnalyticsARN", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates an existing Kinesis Data Analytics application. Using this
    # operation, you can update application code, input configuration, and
    # output configuration.
    #
    # Kinesis Data Analytics updates the `ApplicationVersionId` each time
    # you update your application.
    #
    # <note markdown="1"> You cannot update the `RuntimeEnvironment` of an existing application.
    # If you need to update an application's `RuntimeEnvironment`, you must
    # delete the application and create it again.
    #
    #  </note>
    #
    # @option params [required, String] :application_name
    #   The name of the application to update.
    #
    # @option params [required, Integer] :current_application_version_id
    #   The current application version ID. You can retrieve the application
    #   version ID using DescribeApplication.
    #
    # @option params [Types::ApplicationConfigurationUpdate] :application_configuration_update
    #   Describes application configuration updates.
    #
    # @option params [String] :service_execution_role_update
    #   Describes updates to the service execution role.
    #
    # @option params [Types::RunConfigurationUpdate] :run_configuration_update
    #   Describes updates to the application's starting parameters.
    #
    # @option params [Array<Types::CloudWatchLoggingOptionUpdate>] :cloud_watch_logging_option_updates
    #   Describes application Amazon CloudWatch logging option updates. You
    #   can only update existing CloudWatch logging options with this action.
    #   To add a new CloudWatch logging option, use
    #   AddApplicationCloudWatchLoggingOption.
    #
    # @return [Types::UpdateApplicationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateApplicationResponse#application_detail #application_detail} => Types::ApplicationDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_application({
    #     application_name: "ApplicationName", # required
    #     current_application_version_id: 1, # required
    #     application_configuration_update: {
    #       sql_application_configuration_update: {
    #         input_updates: [
    #           {
    #             input_id: "Id", # required
    #             name_prefix_update: "InAppStreamName",
    #             input_processing_configuration_update: {
    #               input_lambda_processor_update: { # required
    #                 resource_arn_update: "ResourceARN", # required
    #               },
    #             },
    #             kinesis_streams_input_update: {
    #               resource_arn_update: "ResourceARN", # required
    #             },
    #             kinesis_firehose_input_update: {
    #               resource_arn_update: "ResourceARN", # required
    #             },
    #             input_schema_update: {
    #               record_format_update: {
    #                 record_format_type: "JSON", # required, accepts JSON, CSV
    #                 mapping_parameters: {
    #                   json_mapping_parameters: {
    #                     record_row_path: "RecordRowPath", # required
    #                   },
    #                   csv_mapping_parameters: {
    #                     record_row_delimiter: "RecordRowDelimiter", # required
    #                     record_column_delimiter: "RecordColumnDelimiter", # required
    #                   },
    #                 },
    #               },
    #               record_encoding_update: "RecordEncoding",
    #               record_column_updates: [
    #                 {
    #                   name: "RecordColumnName", # required
    #                   mapping: "RecordColumnMapping",
    #                   sql_type: "RecordColumnSqlType", # required
    #                 },
    #               ],
    #             },
    #             input_parallelism_update: {
    #               count_update: 1, # required
    #             },
    #           },
    #         ],
    #         output_updates: [
    #           {
    #             output_id: "Id", # required
    #             name_update: "InAppStreamName",
    #             kinesis_streams_output_update: {
    #               resource_arn_update: "ResourceARN", # required
    #             },
    #             kinesis_firehose_output_update: {
    #               resource_arn_update: "ResourceARN", # required
    #             },
    #             lambda_output_update: {
    #               resource_arn_update: "ResourceARN", # required
    #             },
    #             destination_schema_update: {
    #               record_format_type: "JSON", # required, accepts JSON, CSV
    #             },
    #           },
    #         ],
    #         reference_data_source_updates: [
    #           {
    #             reference_id: "Id", # required
    #             table_name_update: "InAppTableName",
    #             s3_reference_data_source_update: {
    #               bucket_arn_update: "BucketARN",
    #               file_key_update: "FileKey",
    #             },
    #             reference_schema_update: {
    #               record_format: { # required
    #                 record_format_type: "JSON", # required, accepts JSON, CSV
    #                 mapping_parameters: {
    #                   json_mapping_parameters: {
    #                     record_row_path: "RecordRowPath", # required
    #                   },
    #                   csv_mapping_parameters: {
    #                     record_row_delimiter: "RecordRowDelimiter", # required
    #                     record_column_delimiter: "RecordColumnDelimiter", # required
    #                   },
    #                 },
    #               },
    #               record_encoding: "RecordEncoding",
    #               record_columns: [ # required
    #                 {
    #                   name: "RecordColumnName", # required
    #                   mapping: "RecordColumnMapping",
    #                   sql_type: "RecordColumnSqlType", # required
    #                 },
    #               ],
    #             },
    #           },
    #         ],
    #       },
    #       application_code_configuration_update: {
    #         code_content_type_update: "PLAINTEXT", # accepts PLAINTEXT, ZIPFILE
    #         code_content_update: {
    #           text_content_update: "TextContent",
    #           zip_file_content_update: "data",
    #           s3_content_location_update: {
    #             bucket_arn_update: "BucketARN",
    #             file_key_update: "FileKey",
    #             object_version_update: "ObjectVersion",
    #           },
    #         },
    #       },
    #       flink_application_configuration_update: {
    #         checkpoint_configuration_update: {
    #           configuration_type_update: "DEFAULT", # accepts DEFAULT, CUSTOM
    #           checkpointing_enabled_update: false,
    #           checkpoint_interval_update: 1,
    #           min_pause_between_checkpoints_update: 1,
    #         },
    #         monitoring_configuration_update: {
    #           configuration_type_update: "DEFAULT", # accepts DEFAULT, CUSTOM
    #           metrics_level_update: "APPLICATION", # accepts APPLICATION, TASK, OPERATOR, PARALLELISM
    #           log_level_update: "INFO", # accepts INFO, WARN, ERROR, DEBUG
    #         },
    #         parallelism_configuration_update: {
    #           configuration_type_update: "DEFAULT", # accepts DEFAULT, CUSTOM
    #           parallelism_update: 1,
    #           parallelism_per_kpu_update: 1,
    #           auto_scaling_enabled_update: false,
    #         },
    #       },
    #       environment_property_updates: {
    #         property_groups: [ # required
    #           {
    #             property_group_id: "Id", # required
    #             property_map: { # required
    #               "PropertyKey" => "PropertyValue",
    #             },
    #           },
    #         ],
    #       },
    #       application_snapshot_configuration_update: {
    #         snapshots_enabled_update: false, # required
    #       },
    #       vpc_configuration_updates: [
    #         {
    #           vpc_configuration_id: "Id", # required
    #           subnet_id_updates: ["SubnetId"],
    #           security_group_id_updates: ["SecurityGroupId"],
    #         },
    #       ],
    #     },
    #     service_execution_role_update: "RoleARN",
    #     run_configuration_update: {
    #       flink_run_configuration: {
    #         allow_non_restored_state: false,
    #       },
    #       application_restore_configuration: {
    #         application_restore_type: "SKIP_RESTORE_FROM_SNAPSHOT", # required, accepts SKIP_RESTORE_FROM_SNAPSHOT, RESTORE_FROM_LATEST_SNAPSHOT, RESTORE_FROM_CUSTOM_SNAPSHOT
    #         snapshot_name: "SnapshotName",
    #       },
    #     },
    #     cloud_watch_logging_option_updates: [
    #       {
    #         cloud_watch_logging_option_id: "Id", # required
    #         log_stream_arn_update: "LogStreamARN",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.application_detail.application_arn #=> String
    #   resp.application_detail.application_description #=> String
    #   resp.application_detail.application_name #=> String
    #   resp.application_detail.runtime_environment #=> String, one of "SQL-1_0", "FLINK-1_6", "FLINK-1_8"
    #   resp.application_detail.service_execution_role #=> String
    #   resp.application_detail.application_status #=> String, one of "DELETING", "STARTING", "STOPPING", "READY", "RUNNING", "UPDATING", "AUTOSCALING", "FORCE_STOPPING"
    #   resp.application_detail.application_version_id #=> Integer
    #   resp.application_detail.create_timestamp #=> Time
    #   resp.application_detail.last_update_timestamp #=> Time
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions #=> Array
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_id #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].name_prefix #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].in_app_stream_names #=> Array
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].in_app_stream_names[0] #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_processing_configuration_description.input_lambda_processor_description.resource_arn #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_processing_configuration_description.input_lambda_processor_description.role_arn #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].kinesis_streams_input_description.resource_arn #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].kinesis_streams_input_description.role_arn #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].kinesis_firehose_input_description.resource_arn #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].kinesis_firehose_input_description.role_arn #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_format.record_format_type #=> String, one of "JSON", "CSV"
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_format.mapping_parameters.json_mapping_parameters.record_row_path #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_format.mapping_parameters.csv_mapping_parameters.record_row_delimiter #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_format.mapping_parameters.csv_mapping_parameters.record_column_delimiter #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_encoding #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_columns #=> Array
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_columns[0].name #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_columns[0].mapping #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_columns[0].sql_type #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_parallelism.count #=> Integer
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_starting_position_configuration.input_starting_position #=> String, one of "NOW", "TRIM_HORIZON", "LAST_STOPPED_POINT"
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions #=> Array
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].output_id #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].name #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].kinesis_streams_output_description.resource_arn #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].kinesis_streams_output_description.role_arn #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].kinesis_firehose_output_description.resource_arn #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].kinesis_firehose_output_description.role_arn #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].lambda_output_description.resource_arn #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].lambda_output_description.role_arn #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].destination_schema.record_format_type #=> String, one of "JSON", "CSV"
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions #=> Array
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].reference_id #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].table_name #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].s3_reference_data_source_description.bucket_arn #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].s3_reference_data_source_description.file_key #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].s3_reference_data_source_description.reference_role_arn #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].reference_schema.record_format.record_format_type #=> String, one of "JSON", "CSV"
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].reference_schema.record_format.mapping_parameters.json_mapping_parameters.record_row_path #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].reference_schema.record_format.mapping_parameters.csv_mapping_parameters.record_row_delimiter #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].reference_schema.record_format.mapping_parameters.csv_mapping_parameters.record_column_delimiter #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].reference_schema.record_encoding #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].reference_schema.record_columns #=> Array
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].reference_schema.record_columns[0].name #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].reference_schema.record_columns[0].mapping #=> String
    #   resp.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].reference_schema.record_columns[0].sql_type #=> String
    #   resp.application_detail.application_configuration_description.application_code_configuration_description.code_content_type #=> String, one of "PLAINTEXT", "ZIPFILE"
    #   resp.application_detail.application_configuration_description.application_code_configuration_description.code_content_description.text_content #=> String
    #   resp.application_detail.application_configuration_description.application_code_configuration_description.code_content_description.code_md5 #=> String
    #   resp.application_detail.application_configuration_description.application_code_configuration_description.code_content_description.code_size #=> Integer
    #   resp.application_detail.application_configuration_description.application_code_configuration_description.code_content_description.s3_application_code_location_description.bucket_arn #=> String
    #   resp.application_detail.application_configuration_description.application_code_configuration_description.code_content_description.s3_application_code_location_description.file_key #=> String
    #   resp.application_detail.application_configuration_description.application_code_configuration_description.code_content_description.s3_application_code_location_description.object_version #=> String
    #   resp.application_detail.application_configuration_description.run_configuration_description.application_restore_configuration_description.application_restore_type #=> String, one of "SKIP_RESTORE_FROM_SNAPSHOT", "RESTORE_FROM_LATEST_SNAPSHOT", "RESTORE_FROM_CUSTOM_SNAPSHOT"
    #   resp.application_detail.application_configuration_description.run_configuration_description.application_restore_configuration_description.snapshot_name #=> String
    #   resp.application_detail.application_configuration_description.run_configuration_description.flink_run_configuration_description.allow_non_restored_state #=> Boolean
    #   resp.application_detail.application_configuration_description.flink_application_configuration_description.checkpoint_configuration_description.configuration_type #=> String, one of "DEFAULT", "CUSTOM"
    #   resp.application_detail.application_configuration_description.flink_application_configuration_description.checkpoint_configuration_description.checkpointing_enabled #=> Boolean
    #   resp.application_detail.application_configuration_description.flink_application_configuration_description.checkpoint_configuration_description.checkpoint_interval #=> Integer
    #   resp.application_detail.application_configuration_description.flink_application_configuration_description.checkpoint_configuration_description.min_pause_between_checkpoints #=> Integer
    #   resp.application_detail.application_configuration_description.flink_application_configuration_description.monitoring_configuration_description.configuration_type #=> String, one of "DEFAULT", "CUSTOM"
    #   resp.application_detail.application_configuration_description.flink_application_configuration_description.monitoring_configuration_description.metrics_level #=> String, one of "APPLICATION", "TASK", "OPERATOR", "PARALLELISM"
    #   resp.application_detail.application_configuration_description.flink_application_configuration_description.monitoring_configuration_description.log_level #=> String, one of "INFO", "WARN", "ERROR", "DEBUG"
    #   resp.application_detail.application_configuration_description.flink_application_configuration_description.parallelism_configuration_description.configuration_type #=> String, one of "DEFAULT", "CUSTOM"
    #   resp.application_detail.application_configuration_description.flink_application_configuration_description.parallelism_configuration_description.parallelism #=> Integer
    #   resp.application_detail.application_configuration_description.flink_application_configuration_description.parallelism_configuration_description.parallelism_per_kpu #=> Integer
    #   resp.application_detail.application_configuration_description.flink_application_configuration_description.parallelism_configuration_description.current_parallelism #=> Integer
    #   resp.application_detail.application_configuration_description.flink_application_configuration_description.parallelism_configuration_description.auto_scaling_enabled #=> Boolean
    #   resp.application_detail.application_configuration_description.flink_application_configuration_description.job_plan_description #=> String
    #   resp.application_detail.application_configuration_description.environment_property_descriptions.property_group_descriptions #=> Array
    #   resp.application_detail.application_configuration_description.environment_property_descriptions.property_group_descriptions[0].property_group_id #=> String
    #   resp.application_detail.application_configuration_description.environment_property_descriptions.property_group_descriptions[0].property_map #=> Hash
    #   resp.application_detail.application_configuration_description.environment_property_descriptions.property_group_descriptions[0].property_map["PropertyKey"] #=> String
    #   resp.application_detail.application_configuration_description.application_snapshot_configuration_description.snapshots_enabled #=> Boolean
    #   resp.application_detail.application_configuration_description.vpc_configuration_descriptions #=> Array
    #   resp.application_detail.application_configuration_description.vpc_configuration_descriptions[0].vpc_configuration_id #=> String
    #   resp.application_detail.application_configuration_description.vpc_configuration_descriptions[0].vpc_id #=> String
    #   resp.application_detail.application_configuration_description.vpc_configuration_descriptions[0].subnet_ids #=> Array
    #   resp.application_detail.application_configuration_description.vpc_configuration_descriptions[0].subnet_ids[0] #=> String
    #   resp.application_detail.application_configuration_description.vpc_configuration_descriptions[0].security_group_ids #=> Array
    #   resp.application_detail.application_configuration_description.vpc_configuration_descriptions[0].security_group_ids[0] #=> String
    #   resp.application_detail.cloud_watch_logging_option_descriptions #=> Array
    #   resp.application_detail.cloud_watch_logging_option_descriptions[0].cloud_watch_logging_option_id #=> String
    #   resp.application_detail.cloud_watch_logging_option_descriptions[0].log_stream_arn #=> String
    #   resp.application_detail.cloud_watch_logging_option_descriptions[0].role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalyticsv2-2018-05-23/UpdateApplication AWS API Documentation
    #
    # @overload update_application(params = {})
    # @param [Hash] params ({})
    def update_application(params = {}, options = {})
      req = build_request(:update_application, params)
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
      context[:gem_name] = 'aws-sdk-kinesisanalyticsv2'
      context[:gem_version] = '1.23.0'
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
