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

Aws::Plugins::GlobalConfiguration.add_identifier(:kinesisanalytics)

module Aws::KinesisAnalytics
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :kinesisanalytics

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

    # Adds a CloudWatch log stream to monitor application configuration
    # errors. For more information about using CloudWatch log streams with
    # Amazon Kinesis Analytics applications, see [Working with Amazon
    # CloudWatch Logs][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/kinesisanalytics/latest/dev/cloudwatch-logs.html
    #
    # @option params [required, String] :application_name
    #   The Kinesis Analytics application name.
    #
    # @option params [required, Integer] :current_application_version_id
    #   The version ID of the Kinesis Analytics application.
    #
    # @option params [required, Types::CloudWatchLoggingOption] :cloud_watch_logging_option
    #   Provides the CloudWatch log stream Amazon Resource Name (ARN) and the
    #   IAM role ARN. Note: To write application messages to CloudWatch, the
    #   IAM role that is used must have the `PutLogEvents` policy action
    #   enabled.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_application_cloud_watch_logging_option({
    #     application_name: "ApplicationName", # required
    #     current_application_version_id: 1, # required
    #     cloud_watch_logging_option: { # required
    #       log_stream_arn: "LogStreamARN", # required
    #       role_arn: "RoleARN", # required
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/AddApplicationCloudWatchLoggingOption AWS API Documentation
    #
    # @overload add_application_cloud_watch_logging_option(params = {})
    # @param [Hash] params ({})
    def add_application_cloud_watch_logging_option(params = {}, options = {})
      req = build_request(:add_application_cloud_watch_logging_option, params)
      req.send_request(options)
    end

    # Adds a streaming source to your Amazon Kinesis application. For
    # conceptual information, see [Configuring Application Input][1].
    #
    # You can add a streaming source either when you create an application
    # or you can use this operation to add a streaming source after you
    # create an application. For more information, see CreateApplication.
    #
    # Any configuration update, including adding a streaming source using
    # this operation, results in a new version of the application. You can
    # use the DescribeApplication operation to find the current application
    # version.
    #
    # This operation requires permissions to perform the
    # `kinesisanalytics:AddApplicationInput` action.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html
    #
    # @option params [required, String] :application_name
    #   Name of your existing Amazon Kinesis Analytics application to which
    #   you want to add the streaming source.
    #
    # @option params [required, Integer] :current_application_version_id
    #   Current version of your Amazon Kinesis Analytics application. You can
    #   use the DescribeApplication operation to find the current application
    #   version.
    #
    # @option params [required, Types::Input] :input
    #   The Input to add.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
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
    #           role_arn: "RoleARN", # required
    #         },
    #       },
    #       kinesis_streams_input: {
    #         resource_arn: "ResourceARN", # required
    #         role_arn: "RoleARN", # required
    #       },
    #       kinesis_firehose_input: {
    #         resource_arn: "ResourceARN", # required
    #         role_arn: "RoleARN", # required
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/AddApplicationInput AWS API Documentation
    #
    # @overload add_application_input(params = {})
    # @param [Hash] params ({})
    def add_application_input(params = {}, options = {})
      req = build_request(:add_application_input, params)
      req.send_request(options)
    end

    # Adds an InputProcessingConfiguration to an application. An input
    # processor preprocesses records on the input stream before the
    # application's SQL code executes. Currently, the only input processor
    # available is [AWS Lambda][1].
    #
    #
    #
    # [1]: https://aws.amazon.com/documentation/lambda/
    #
    # @option params [required, String] :application_name
    #   Name of the application to which you want to add the input processing
    #   configuration.
    #
    # @option params [required, Integer] :current_application_version_id
    #   Version of the application to which you want to add the input
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
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
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
    #         role_arn: "RoleARN", # required
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/AddApplicationInputProcessingConfiguration AWS API Documentation
    #
    # @overload add_application_input_processing_configuration(params = {})
    # @param [Hash] params ({})
    def add_application_input_processing_configuration(params = {}, options = {})
      req = build_request(:add_application_input_processing_configuration, params)
      req.send_request(options)
    end

    # Adds an external destination to your Amazon Kinesis Analytics
    # application.
    #
    # If you want Amazon Kinesis Analytics to deliver data from an
    # in-application stream within your application to an external
    # destination (such as an Amazon Kinesis stream, an Amazon Kinesis
    # Firehose delivery stream, or an Amazon Lambda function), you add the
    # relevant configuration to your application using this operation. You
    # can configure one or more outputs for your application. Each output
    # configuration maps an in-application stream and an external
    # destination.
    #
    # You can use one of the output configurations to deliver data from your
    # in-application error stream to an external destination so that you can
    # analyze the errors. For conceptual information, see [Understanding
    # Application Output (Destination)][1].
    #
    # Note that any configuration update, including adding a streaming
    # source using this operation, results in a new version of the
    # application. You can use the DescribeApplication operation to find the
    # current application version.
    #
    # For the limits on the number of application inputs and outputs you can
    # configure, see [Limits][2].
    #
    # This operation requires permissions to perform the
    # `kinesisanalytics:AddApplicationOutput` action.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html
    # [2]: http://docs.aws.amazon.com/kinesisanalytics/latest/dev/limits.html
    #
    # @option params [required, String] :application_name
    #   Name of the application to which you want to add the output
    #   configuration.
    #
    # @option params [required, Integer] :current_application_version_id
    #   Version of the application to which you want to add the output
    #   configuration. You can use the DescribeApplication operation to get
    #   the current application version. If the version specified is not the
    #   current version, the `ConcurrentModificationException` is returned.
    #
    # @option params [required, Types::Output] :output
    #   An array of objects, each describing one output configuration. In the
    #   output configuration, you specify the name of an in-application
    #   stream, a destination (that is, an Amazon Kinesis stream, an Amazon
    #   Kinesis Firehose delivery stream, or an Amazon Lambda function), and
    #   record the formation to use when writing to the destination.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
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
    #         role_arn: "RoleARN", # required
    #       },
    #       kinesis_firehose_output: {
    #         resource_arn: "ResourceARN", # required
    #         role_arn: "RoleARN", # required
    #       },
    #       lambda_output: {
    #         resource_arn: "ResourceARN", # required
    #         role_arn: "RoleARN", # required
    #       },
    #       destination_schema: { # required
    #         record_format_type: "JSON", # accepts JSON, CSV
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/AddApplicationOutput AWS API Documentation
    #
    # @overload add_application_output(params = {})
    # @param [Hash] params ({})
    def add_application_output(params = {}, options = {})
      req = build_request(:add_application_output, params)
      req.send_request(options)
    end

    # Adds a reference data source to an existing application.
    #
    # Amazon Kinesis Analytics reads reference data (that is, an Amazon S3
    # object) and creates an in-application table within your application.
    # In the request, you provide the source (S3 bucket name and object key
    # name), name of the in-application table to create, and the necessary
    # mapping information that describes how data in Amazon S3 object maps
    # to columns in the resulting in-application table.
    #
    # For conceptual information, see [Configuring Application Input][1].
    # For the limits on data sources you can add to your application, see
    # [Limits][2].
    #
    # This operation requires permissions to perform the
    # `kinesisanalytics:AddApplicationOutput` action.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html
    # [2]: http://docs.aws.amazon.com/kinesisanalytics/latest/dev/limits.html
    #
    # @option params [required, String] :application_name
    #   Name of an existing application.
    #
    # @option params [required, Integer] :current_application_version_id
    #   Version of the application for which you are adding the reference data
    #   source. You can use the DescribeApplication operation to get the
    #   current application version. If the version specified is not the
    #   current version, the `ConcurrentModificationException` is returned.
    #
    # @option params [required, Types::ReferenceDataSource] :reference_data_source
    #   The reference data source can be an object in your Amazon S3 bucket.
    #   Amazon Kinesis Analytics reads the object and copies the data into the
    #   in-application table that is created. You provide an S3 bucket, object
    #   key name, and the resulting in-application table that is created. You
    #   must also provide an IAM role with the necessary permissions that
    #   Amazon Kinesis Analytics can assume to read the object from your S3
    #   bucket on your behalf.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_application_reference_data_source({
    #     application_name: "ApplicationName", # required
    #     current_application_version_id: 1, # required
    #     reference_data_source: { # required
    #       table_name: "InAppTableName", # required
    #       s3_reference_data_source: {
    #         bucket_arn: "BucketARN", # required
    #         file_key: "FileKey", # required
    #         reference_role_arn: "RoleARN", # required
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/AddApplicationReferenceDataSource AWS API Documentation
    #
    # @overload add_application_reference_data_source(params = {})
    # @param [Hash] params ({})
    def add_application_reference_data_source(params = {}, options = {})
      req = build_request(:add_application_reference_data_source, params)
      req.send_request(options)
    end

    # Creates an Amazon Kinesis Analytics application. You can configure
    # each application with one streaming source as input, application code
    # to process the input, and up to three destinations where you want
    # Amazon Kinesis Analytics to write the output data from your
    # application. For an overview, see [How it Works][1].
    #
    # In the input configuration, you map the streaming source to an
    # in-application stream, which you can think of as a constantly updating
    # table. In the mapping, you must provide a schema for the
    # in-application stream and map each data column in the in-application
    # stream to a data element in the streaming source.
    #
    # Your application code is one or more SQL statements that read input
    # data, transform it, and generate output. Your application code can
    # create one or more SQL artifacts like SQL streams or pumps.
    #
    # In the output configuration, you can configure the application to
    # write data from in-application streams created in your applications to
    # up to three destinations.
    #
    # To read data from your source stream or write data to destination
    # streams, Amazon Kinesis Analytics needs your permissions. You grant
    # these permissions by creating IAM roles. This operation requires
    # permissions to perform the `kinesisanalytics:CreateApplication`
    # action.
    #
    # For introductory exercises to create an Amazon Kinesis Analytics
    # application, see [Getting Started][2].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works.html
    # [2]: http://docs.aws.amazon.com/kinesisanalytics/latest/dev/getting-started.html
    #
    # @option params [required, String] :application_name
    #   Name of your Amazon Kinesis Analytics application (for example,
    #   `sample-app`).
    #
    # @option params [String] :application_description
    #   Summary description of the application.
    #
    # @option params [Array<Types::Input>] :inputs
    #   Use this parameter to configure the application input.
    #
    #   You can configure your application to receive input from a single
    #   streaming source. In this configuration, you map this streaming source
    #   to an in-application stream that is created. Your application code can
    #   then query the in-application stream like a table (you can think of it
    #   as a constantly updating table).
    #
    #   For the streaming source, you provide its Amazon Resource Name (ARN)
    #   and format of data on the stream (for example, JSON, CSV, etc.). You
    #   also must provide an IAM role that Amazon Kinesis Analytics can assume
    #   to read this stream on your behalf.
    #
    #   To create the in-application stream, you need to specify a schema to
    #   transform your data into a schematized version used in SQL. In the
    #   schema, you provide the necessary mapping of the data elements in the
    #   streaming source to record columns in the in-app stream.
    #
    # @option params [Array<Types::Output>] :outputs
    #   You can configure application output to write data from any of the
    #   in-application streams to up to three destinations.
    #
    #   These destinations can be Amazon Kinesis streams, Amazon Kinesis
    #   Firehose delivery streams, Amazon Lambda destinations, or any
    #   combination of the three.
    #
    #   In the configuration, you specify the in-application stream name, the
    #   destination stream or Lambda function Amazon Resource Name (ARN), and
    #   the format to use when writing data. You must also provide an IAM role
    #   that Amazon Kinesis Analytics can assume to write to the destination
    #   stream or Lambda function on your behalf.
    #
    #   In the output configuration, you also provide the output stream or
    #   Lambda function ARN. For stream destinations, you provide the format
    #   of data in the stream (for example, JSON, CSV). You also must provide
    #   an IAM role that Amazon Kinesis Analytics can assume to write to the
    #   stream or Lambda function on your behalf.
    #
    # @option params [Array<Types::CloudWatchLoggingOption>] :cloud_watch_logging_options
    #   Use this parameter to configure a CloudWatch log stream to monitor
    #   application configuration errors. For more information, see [Working
    #   with Amazon CloudWatch Logs][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/kinesisanalytics/latest/dev/cloudwatch-logs.html
    #
    # @option params [String] :application_code
    #   One or more SQL statements that read input data, transform it, and
    #   generate output. For example, you can write a SQL statement that reads
    #   data from one in-application stream, generates a running average of
    #   the number of advertisement clicks by vendor, and insert resulting
    #   rows in another in-application stream using pumps. For more
    #   information about the typical pattern, see [Application Code][1].
    #
    #   You can provide such series of SQL statements, where output of one
    #   statement can be used as the input for the next statement. You store
    #   intermediate results by creating in-application streams and pumps.
    #
    #   Note that the application code must create the streams with names
    #   specified in the `Outputs`. For example, if your `Outputs` defines
    #   output streams named `ExampleOutputStream1` and
    #   `ExampleOutputStream2`, then your application code must create these
    #   streams.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-app-code.html
    #
    # @return [Types::CreateApplicationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateApplicationResponse#application_summary #application_summary} => Types::ApplicationSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_application({
    #     application_name: "ApplicationName", # required
    #     application_description: "ApplicationDescription",
    #     inputs: [
    #       {
    #         name_prefix: "InAppStreamName", # required
    #         input_processing_configuration: {
    #           input_lambda_processor: { # required
    #             resource_arn: "ResourceARN", # required
    #             role_arn: "RoleARN", # required
    #           },
    #         },
    #         kinesis_streams_input: {
    #           resource_arn: "ResourceARN", # required
    #           role_arn: "RoleARN", # required
    #         },
    #         kinesis_firehose_input: {
    #           resource_arn: "ResourceARN", # required
    #           role_arn: "RoleARN", # required
    #         },
    #         input_parallelism: {
    #           count: 1,
    #         },
    #         input_schema: { # required
    #           record_format: { # required
    #             record_format_type: "JSON", # required, accepts JSON, CSV
    #             mapping_parameters: {
    #               json_mapping_parameters: {
    #                 record_row_path: "RecordRowPath", # required
    #               },
    #               csv_mapping_parameters: {
    #                 record_row_delimiter: "RecordRowDelimiter", # required
    #                 record_column_delimiter: "RecordColumnDelimiter", # required
    #               },
    #             },
    #           },
    #           record_encoding: "RecordEncoding",
    #           record_columns: [ # required
    #             {
    #               name: "RecordColumnName", # required
    #               mapping: "RecordColumnMapping",
    #               sql_type: "RecordColumnSqlType", # required
    #             },
    #           ],
    #         },
    #       },
    #     ],
    #     outputs: [
    #       {
    #         name: "InAppStreamName", # required
    #         kinesis_streams_output: {
    #           resource_arn: "ResourceARN", # required
    #           role_arn: "RoleARN", # required
    #         },
    #         kinesis_firehose_output: {
    #           resource_arn: "ResourceARN", # required
    #           role_arn: "RoleARN", # required
    #         },
    #         lambda_output: {
    #           resource_arn: "ResourceARN", # required
    #           role_arn: "RoleARN", # required
    #         },
    #         destination_schema: { # required
    #           record_format_type: "JSON", # accepts JSON, CSV
    #         },
    #       },
    #     ],
    #     cloud_watch_logging_options: [
    #       {
    #         log_stream_arn: "LogStreamARN", # required
    #         role_arn: "RoleARN", # required
    #       },
    #     ],
    #     application_code: "ApplicationCode",
    #   })
    #
    # @example Response structure
    #
    #   resp.application_summary.application_name #=> String
    #   resp.application_summary.application_arn #=> String
    #   resp.application_summary.application_status #=> String, one of "DELETING", "STARTING", "STOPPING", "READY", "RUNNING", "UPDATING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/CreateApplication AWS API Documentation
    #
    # @overload create_application(params = {})
    # @param [Hash] params ({})
    def create_application(params = {}, options = {})
      req = build_request(:create_application, params)
      req.send_request(options)
    end

    # Deletes the specified application. Amazon Kinesis Analytics halts
    # application execution and deletes the application, including any
    # application artifacts (such as in-application streams, reference
    # table, and application code).
    #
    # This operation requires permissions to perform the
    # `kinesisanalytics:DeleteApplication` action.
    #
    # @option params [required, String] :application_name
    #   Name of the Amazon Kinesis Analytics application to delete.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :create_timestamp
    #   You can use the `DescribeApplication` operation to get this value.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/DeleteApplication AWS API Documentation
    #
    # @overload delete_application(params = {})
    # @param [Hash] params ({})
    def delete_application(params = {}, options = {})
      req = build_request(:delete_application, params)
      req.send_request(options)
    end

    # Deletes a CloudWatch log stream from an application. For more
    # information about using CloudWatch log streams with Amazon Kinesis
    # Analytics applications, see [Working with Amazon CloudWatch Logs][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/kinesisanalytics/latest/dev/cloudwatch-logs.html
    #
    # @option params [required, String] :application_name
    #   The Kinesis Analytics application name.
    #
    # @option params [required, Integer] :current_application_version_id
    #   The version ID of the Kinesis Analytics application.
    #
    # @option params [required, String] :cloud_watch_logging_option_id
    #   The `CloudWatchLoggingOptionId` of the CloudWatch logging option to
    #   delete. You can get the `CloudWatchLoggingOptionId` by using the
    #   DescribeApplication operation.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_application_cloud_watch_logging_option({
    #     application_name: "ApplicationName", # required
    #     current_application_version_id: 1, # required
    #     cloud_watch_logging_option_id: "Id", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/DeleteApplicationCloudWatchLoggingOption AWS API Documentation
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
    #   The Kinesis Analytics application name.
    #
    # @option params [required, Integer] :current_application_version_id
    #   The version ID of the Kinesis Analytics application.
    #
    # @option params [required, String] :input_id
    #   The ID of the input configuration from which to delete the input
    #   processing configuration. You can get a list of the input IDs for an
    #   application by using the DescribeApplication operation.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_application_input_processing_configuration({
    #     application_name: "ApplicationName", # required
    #     current_application_version_id: 1, # required
    #     input_id: "Id", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/DeleteApplicationInputProcessingConfiguration AWS API Documentation
    #
    # @overload delete_application_input_processing_configuration(params = {})
    # @param [Hash] params ({})
    def delete_application_input_processing_configuration(params = {}, options = {})
      req = build_request(:delete_application_input_processing_configuration, params)
      req.send_request(options)
    end

    # Deletes output destination configuration from your application
    # configuration. Amazon Kinesis Analytics will no longer write data from
    # the corresponding in-application stream to the external output
    # destination.
    #
    # This operation requires permissions to perform the
    # `kinesisanalytics:DeleteApplicationOutput` action.
    #
    # @option params [required, String] :application_name
    #   Amazon Kinesis Analytics application name.
    #
    # @option params [required, Integer] :current_application_version_id
    #   Amazon Kinesis Analytics application version. You can use the
    #   DescribeApplication operation to get the current application version.
    #   If the version specified is not the current version, the
    #   `ConcurrentModificationException` is returned.
    #
    # @option params [required, String] :output_id
    #   The ID of the configuration to delete. Each output configuration that
    #   is added to the application, either when the application is created or
    #   later using the AddApplicationOutput operation, has a unique ID. You
    #   need to provide the ID to uniquely identify the output configuration
    #   that you want to delete from the application configuration. You can
    #   use the DescribeApplication operation to get the specific `OutputId`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_application_output({
    #     application_name: "ApplicationName", # required
    #     current_application_version_id: 1, # required
    #     output_id: "Id", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/DeleteApplicationOutput AWS API Documentation
    #
    # @overload delete_application_output(params = {})
    # @param [Hash] params ({})
    def delete_application_output(params = {}, options = {})
      req = build_request(:delete_application_output, params)
      req.send_request(options)
    end

    # Deletes a reference data source configuration from the specified
    # application configuration.
    #
    # If the application is running, Amazon Kinesis Analytics immediately
    # removes the in-application table that you created using the
    # AddApplicationReferenceDataSource operation.
    #
    # This operation requires permissions to perform the
    # `kinesisanalytics.DeleteApplicationReferenceDataSource` action.
    #
    # @option params [required, String] :application_name
    #   Name of an existing application.
    #
    # @option params [required, Integer] :current_application_version_id
    #   Version of the application. You can use the DescribeApplication
    #   operation to get the current application version. If the version
    #   specified is not the current version, the
    #   `ConcurrentModificationException` is returned.
    #
    # @option params [required, String] :reference_id
    #   ID of the reference data source. When you add a reference data source
    #   to your application using the AddApplicationReferenceDataSource,
    #   Amazon Kinesis Analytics assigns an ID. You can use the
    #   DescribeApplication operation to get the reference ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_application_reference_data_source({
    #     application_name: "ApplicationName", # required
    #     current_application_version_id: 1, # required
    #     reference_id: "Id", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/DeleteApplicationReferenceDataSource AWS API Documentation
    #
    # @overload delete_application_reference_data_source(params = {})
    # @param [Hash] params ({})
    def delete_application_reference_data_source(params = {}, options = {})
      req = build_request(:delete_application_reference_data_source, params)
      req.send_request(options)
    end

    # Returns information about a specific Amazon Kinesis Analytics
    # application.
    #
    # If you want to retrieve a list of all applications in your account,
    # use the ListApplications operation.
    #
    # This operation requires permissions to perform the
    # `kinesisanalytics:DescribeApplication` action. You can use
    # `DescribeApplication` to get the current application versionId, which
    # you need to call other operations such as `Update`.
    #
    # @option params [required, String] :application_name
    #   Name of the application.
    #
    # @return [Types::DescribeApplicationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeApplicationResponse#application_detail #application_detail} => Types::ApplicationDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_application({
    #     application_name: "ApplicationName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_detail.application_name #=> String
    #   resp.application_detail.application_description #=> String
    #   resp.application_detail.application_arn #=> String
    #   resp.application_detail.application_status #=> String, one of "DELETING", "STARTING", "STOPPING", "READY", "RUNNING", "UPDATING"
    #   resp.application_detail.create_timestamp #=> Time
    #   resp.application_detail.last_update_timestamp #=> Time
    #   resp.application_detail.input_descriptions #=> Array
    #   resp.application_detail.input_descriptions[0].input_id #=> String
    #   resp.application_detail.input_descriptions[0].name_prefix #=> String
    #   resp.application_detail.input_descriptions[0].in_app_stream_names #=> Array
    #   resp.application_detail.input_descriptions[0].in_app_stream_names[0] #=> String
    #   resp.application_detail.input_descriptions[0].input_processing_configuration_description.input_lambda_processor_description.resource_arn #=> String
    #   resp.application_detail.input_descriptions[0].input_processing_configuration_description.input_lambda_processor_description.role_arn #=> String
    #   resp.application_detail.input_descriptions[0].kinesis_streams_input_description.resource_arn #=> String
    #   resp.application_detail.input_descriptions[0].kinesis_streams_input_description.role_arn #=> String
    #   resp.application_detail.input_descriptions[0].kinesis_firehose_input_description.resource_arn #=> String
    #   resp.application_detail.input_descriptions[0].kinesis_firehose_input_description.role_arn #=> String
    #   resp.application_detail.input_descriptions[0].input_schema.record_format.record_format_type #=> String, one of "JSON", "CSV"
    #   resp.application_detail.input_descriptions[0].input_schema.record_format.mapping_parameters.json_mapping_parameters.record_row_path #=> String
    #   resp.application_detail.input_descriptions[0].input_schema.record_format.mapping_parameters.csv_mapping_parameters.record_row_delimiter #=> String
    #   resp.application_detail.input_descriptions[0].input_schema.record_format.mapping_parameters.csv_mapping_parameters.record_column_delimiter #=> String
    #   resp.application_detail.input_descriptions[0].input_schema.record_encoding #=> String
    #   resp.application_detail.input_descriptions[0].input_schema.record_columns #=> Array
    #   resp.application_detail.input_descriptions[0].input_schema.record_columns[0].name #=> String
    #   resp.application_detail.input_descriptions[0].input_schema.record_columns[0].mapping #=> String
    #   resp.application_detail.input_descriptions[0].input_schema.record_columns[0].sql_type #=> String
    #   resp.application_detail.input_descriptions[0].input_parallelism.count #=> Integer
    #   resp.application_detail.input_descriptions[0].input_starting_position_configuration.input_starting_position #=> String, one of "NOW", "TRIM_HORIZON", "LAST_STOPPED_POINT"
    #   resp.application_detail.output_descriptions #=> Array
    #   resp.application_detail.output_descriptions[0].output_id #=> String
    #   resp.application_detail.output_descriptions[0].name #=> String
    #   resp.application_detail.output_descriptions[0].kinesis_streams_output_description.resource_arn #=> String
    #   resp.application_detail.output_descriptions[0].kinesis_streams_output_description.role_arn #=> String
    #   resp.application_detail.output_descriptions[0].kinesis_firehose_output_description.resource_arn #=> String
    #   resp.application_detail.output_descriptions[0].kinesis_firehose_output_description.role_arn #=> String
    #   resp.application_detail.output_descriptions[0].lambda_output_description.resource_arn #=> String
    #   resp.application_detail.output_descriptions[0].lambda_output_description.role_arn #=> String
    #   resp.application_detail.output_descriptions[0].destination_schema.record_format_type #=> String, one of "JSON", "CSV"
    #   resp.application_detail.reference_data_source_descriptions #=> Array
    #   resp.application_detail.reference_data_source_descriptions[0].reference_id #=> String
    #   resp.application_detail.reference_data_source_descriptions[0].table_name #=> String
    #   resp.application_detail.reference_data_source_descriptions[0].s3_reference_data_source_description.bucket_arn #=> String
    #   resp.application_detail.reference_data_source_descriptions[0].s3_reference_data_source_description.file_key #=> String
    #   resp.application_detail.reference_data_source_descriptions[0].s3_reference_data_source_description.reference_role_arn #=> String
    #   resp.application_detail.reference_data_source_descriptions[0].reference_schema.record_format.record_format_type #=> String, one of "JSON", "CSV"
    #   resp.application_detail.reference_data_source_descriptions[0].reference_schema.record_format.mapping_parameters.json_mapping_parameters.record_row_path #=> String
    #   resp.application_detail.reference_data_source_descriptions[0].reference_schema.record_format.mapping_parameters.csv_mapping_parameters.record_row_delimiter #=> String
    #   resp.application_detail.reference_data_source_descriptions[0].reference_schema.record_format.mapping_parameters.csv_mapping_parameters.record_column_delimiter #=> String
    #   resp.application_detail.reference_data_source_descriptions[0].reference_schema.record_encoding #=> String
    #   resp.application_detail.reference_data_source_descriptions[0].reference_schema.record_columns #=> Array
    #   resp.application_detail.reference_data_source_descriptions[0].reference_schema.record_columns[0].name #=> String
    #   resp.application_detail.reference_data_source_descriptions[0].reference_schema.record_columns[0].mapping #=> String
    #   resp.application_detail.reference_data_source_descriptions[0].reference_schema.record_columns[0].sql_type #=> String
    #   resp.application_detail.cloud_watch_logging_option_descriptions #=> Array
    #   resp.application_detail.cloud_watch_logging_option_descriptions[0].cloud_watch_logging_option_id #=> String
    #   resp.application_detail.cloud_watch_logging_option_descriptions[0].log_stream_arn #=> String
    #   resp.application_detail.cloud_watch_logging_option_descriptions[0].role_arn #=> String
    #   resp.application_detail.application_code #=> String
    #   resp.application_detail.application_version_id #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/DescribeApplication AWS API Documentation
    #
    # @overload describe_application(params = {})
    # @param [Hash] params ({})
    def describe_application(params = {}, options = {})
      req = build_request(:describe_application, params)
      req.send_request(options)
    end

    # Infers a schema by evaluating sample records on the specified
    # streaming source (Amazon Kinesis stream or Amazon Kinesis Firehose
    # delivery stream) or S3 object. In the response, the operation returns
    # the inferred schema and also the sample records that the operation
    # used to infer the schema.
    #
    # You can use the inferred schema when configuring a streaming source
    # for your application. For conceptual information, see [Configuring
    # Application Input][1]. Note that when you create an application using
    # the Amazon Kinesis Analytics console, the console uses this operation
    # to infer a schema and show it in the console user interface.
    #
    # This operation requires permissions to perform the
    # `kinesisanalytics:DiscoverInputSchema` action.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html
    #
    # @option params [String] :resource_arn
    #   Amazon Resource Name (ARN) of the streaming source.
    #
    # @option params [String] :role_arn
    #   ARN of the IAM role that Amazon Kinesis Analytics can assume to access
    #   the stream on your behalf.
    #
    # @option params [Types::InputStartingPositionConfiguration] :input_starting_position_configuration
    #   Point at which you want Amazon Kinesis Analytics to start reading
    #   records from the specified streaming source discovery purposes.
    #
    # @option params [Types::S3Configuration] :s3_configuration
    #   Specify this parameter to discover a schema from data in an S3 object.
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
    #     role_arn: "RoleARN",
    #     input_starting_position_configuration: {
    #       input_starting_position: "NOW", # accepts NOW, TRIM_HORIZON, LAST_STOPPED_POINT
    #     },
    #     s3_configuration: {
    #       role_arn: "RoleARN", # required
    #       bucket_arn: "BucketARN", # required
    #       file_key: "FileKey", # required
    #     },
    #     input_processing_configuration: {
    #       input_lambda_processor: { # required
    #         resource_arn: "ResourceARN", # required
    #         role_arn: "RoleARN", # required
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/DiscoverInputSchema AWS API Documentation
    #
    # @overload discover_input_schema(params = {})
    # @param [Hash] params ({})
    def discover_input_schema(params = {}, options = {})
      req = build_request(:discover_input_schema, params)
      req.send_request(options)
    end

    # Returns a list of Amazon Kinesis Analytics applications in your
    # account. For each application, the response includes the application
    # name, Amazon Resource Name (ARN), and status. If the response returns
    # the `HasMoreApplications` value as true, you can send another request
    # by adding the `ExclusiveStartApplicationName` in the request body, and
    # set the value of this to the last application name from the previous
    # response.
    #
    # If you want detailed information about a specific application, use
    # DescribeApplication.
    #
    # This operation requires permissions to perform the
    # `kinesisanalytics:ListApplications` action.
    #
    # @option params [Integer] :limit
    #   Maximum number of applications to list.
    #
    # @option params [String] :exclusive_start_application_name
    #   Name of the application to start the list with. When using pagination
    #   to retrieve the list, you don't need to specify this parameter in the
    #   first request. However, in subsequent requests, you add the last
    #   application name from the previous response to get the next page of
    #   applications.
    #
    # @return [Types::ListApplicationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListApplicationsResponse#application_summaries #application_summaries} => Array&lt;Types::ApplicationSummary&gt;
    #   * {Types::ListApplicationsResponse#has_more_applications #has_more_applications} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_applications({
    #     limit: 1,
    #     exclusive_start_application_name: "ApplicationName",
    #   })
    #
    # @example Response structure
    #
    #   resp.application_summaries #=> Array
    #   resp.application_summaries[0].application_name #=> String
    #   resp.application_summaries[0].application_arn #=> String
    #   resp.application_summaries[0].application_status #=> String, one of "DELETING", "STARTING", "STOPPING", "READY", "RUNNING", "UPDATING"
    #   resp.has_more_applications #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/ListApplications AWS API Documentation
    #
    # @overload list_applications(params = {})
    # @param [Hash] params ({})
    def list_applications(params = {}, options = {})
      req = build_request(:list_applications, params)
      req.send_request(options)
    end

    # Starts the specified Amazon Kinesis Analytics application. After
    # creating an application, you must exclusively call this operation to
    # start your application.
    #
    # After the application starts, it begins consuming the input data,
    # processes it, and writes the output to the configured destination.
    #
    # The application status must be `READY` for you to start an
    # application. You can get the application status in the console or
    # using the DescribeApplication operation.
    #
    # After you start the application, you can stop the application from
    # processing the input by calling the StopApplication operation.
    #
    # This operation requires permissions to perform the
    # `kinesisanalytics:StartApplication` action.
    #
    # @option params [required, String] :application_name
    #   Name of the application.
    #
    # @option params [required, Array<Types::InputConfiguration>] :input_configurations
    #   Identifies the specific input, by ID, that the application starts
    #   consuming. Amazon Kinesis Analytics starts reading the streaming
    #   source associated with the input. You can also specify where in the
    #   streaming source you want Amazon Kinesis Analytics to start reading.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_application({
    #     application_name: "ApplicationName", # required
    #     input_configurations: [ # required
    #       {
    #         id: "Id", # required
    #         input_starting_position_configuration: { # required
    #           input_starting_position: "NOW", # accepts NOW, TRIM_HORIZON, LAST_STOPPED_POINT
    #         },
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/StartApplication AWS API Documentation
    #
    # @overload start_application(params = {})
    # @param [Hash] params ({})
    def start_application(params = {}, options = {})
      req = build_request(:start_application, params)
      req.send_request(options)
    end

    # Stops the application from processing input data. You can stop an
    # application only if it is in the running state. You can use the
    # DescribeApplication operation to find the application state. After the
    # application is stopped, Amazon Kinesis Analytics stops reading data
    # from the input, the application stops processing data, and there is no
    # output written to the destination.
    #
    # This operation requires permissions to perform the
    # `kinesisanalytics:StopApplication` action.
    #
    # @option params [required, String] :application_name
    #   Name of the running application to stop.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_application({
    #     application_name: "ApplicationName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/StopApplication AWS API Documentation
    #
    # @overload stop_application(params = {})
    # @param [Hash] params ({})
    def stop_application(params = {}, options = {})
      req = build_request(:stop_application, params)
      req.send_request(options)
    end

    # Updates an existing Amazon Kinesis Analytics application. Using this
    # API, you can update application code, input configuration, and output
    # configuration.
    #
    # Note that Amazon Kinesis Analytics updates the
    # `CurrentApplicationVersionId` each time you update your application.
    #
    # This operation requires permission for the
    # `kinesisanalytics:UpdateApplication` action.
    #
    # @option params [required, String] :application_name
    #   Name of the Amazon Kinesis Analytics application to update.
    #
    # @option params [required, Integer] :current_application_version_id
    #   The current application version ID. You can use the
    #   DescribeApplication operation to get this value.
    #
    # @option params [required, Types::ApplicationUpdate] :application_update
    #   Describes application updates.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_application({
    #     application_name: "ApplicationName", # required
    #     current_application_version_id: 1, # required
    #     application_update: { # required
    #       input_updates: [
    #         {
    #           input_id: "Id", # required
    #           name_prefix_update: "InAppStreamName",
    #           input_processing_configuration_update: {
    #             input_lambda_processor_update: { # required
    #               resource_arn_update: "ResourceARN",
    #               role_arn_update: "RoleARN",
    #             },
    #           },
    #           kinesis_streams_input_update: {
    #             resource_arn_update: "ResourceARN",
    #             role_arn_update: "RoleARN",
    #           },
    #           kinesis_firehose_input_update: {
    #             resource_arn_update: "ResourceARN",
    #             role_arn_update: "RoleARN",
    #           },
    #           input_schema_update: {
    #             record_format_update: {
    #               record_format_type: "JSON", # required, accepts JSON, CSV
    #               mapping_parameters: {
    #                 json_mapping_parameters: {
    #                   record_row_path: "RecordRowPath", # required
    #                 },
    #                 csv_mapping_parameters: {
    #                   record_row_delimiter: "RecordRowDelimiter", # required
    #                   record_column_delimiter: "RecordColumnDelimiter", # required
    #                 },
    #               },
    #             },
    #             record_encoding_update: "RecordEncoding",
    #             record_column_updates: [
    #               {
    #                 name: "RecordColumnName", # required
    #                 mapping: "RecordColumnMapping",
    #                 sql_type: "RecordColumnSqlType", # required
    #               },
    #             ],
    #           },
    #           input_parallelism_update: {
    #             count_update: 1,
    #           },
    #         },
    #       ],
    #       application_code_update: "ApplicationCode",
    #       output_updates: [
    #         {
    #           output_id: "Id", # required
    #           name_update: "InAppStreamName",
    #           kinesis_streams_output_update: {
    #             resource_arn_update: "ResourceARN",
    #             role_arn_update: "RoleARN",
    #           },
    #           kinesis_firehose_output_update: {
    #             resource_arn_update: "ResourceARN",
    #             role_arn_update: "RoleARN",
    #           },
    #           lambda_output_update: {
    #             resource_arn_update: "ResourceARN",
    #             role_arn_update: "RoleARN",
    #           },
    #           destination_schema_update: {
    #             record_format_type: "JSON", # accepts JSON, CSV
    #           },
    #         },
    #       ],
    #       reference_data_source_updates: [
    #         {
    #           reference_id: "Id", # required
    #           table_name_update: "InAppTableName",
    #           s3_reference_data_source_update: {
    #             bucket_arn_update: "BucketARN",
    #             file_key_update: "FileKey",
    #             reference_role_arn_update: "RoleARN",
    #           },
    #           reference_schema_update: {
    #             record_format: { # required
    #               record_format_type: "JSON", # required, accepts JSON, CSV
    #               mapping_parameters: {
    #                 json_mapping_parameters: {
    #                   record_row_path: "RecordRowPath", # required
    #                 },
    #                 csv_mapping_parameters: {
    #                   record_row_delimiter: "RecordRowDelimiter", # required
    #                   record_column_delimiter: "RecordColumnDelimiter", # required
    #                 },
    #               },
    #             },
    #             record_encoding: "RecordEncoding",
    #             record_columns: [ # required
    #               {
    #                 name: "RecordColumnName", # required
    #                 mapping: "RecordColumnMapping",
    #                 sql_type: "RecordColumnSqlType", # required
    #               },
    #             ],
    #           },
    #         },
    #       ],
    #       cloud_watch_logging_option_updates: [
    #         {
    #           cloud_watch_logging_option_id: "Id", # required
    #           log_stream_arn_update: "LogStreamARN",
    #           role_arn_update: "RoleARN",
    #         },
    #       ],
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics-2015-08-14/UpdateApplication AWS API Documentation
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
      context[:gem_name] = 'aws-sdk-kinesisanalytics'
      context[:gem_version] = '1.5.0'
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
