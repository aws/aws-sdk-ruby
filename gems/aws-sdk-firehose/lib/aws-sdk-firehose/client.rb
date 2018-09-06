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

Aws::Plugins::GlobalConfiguration.add_identifier(:firehose)

module Aws::Firehose
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :firehose

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

    # Creates a Kinesis Data Firehose delivery stream.
    #
    # By default, you can create up to 50 delivery streams per AWS Region.
    #
    # This is an asynchronous operation that immediately returns. The
    # initial status of the delivery stream is `CREATING`. After the
    # delivery stream is created, its status is `ACTIVE` and it now accepts
    # data. Attempts to send data to a delivery stream that is not in the
    # `ACTIVE` state cause an exception. To check the state of a delivery
    # stream, use DescribeDeliveryStream.
    #
    # A Kinesis Data Firehose delivery stream can be configured to receive
    # records directly from providers using PutRecord or PutRecordBatch, or
    # it can be configured to use an existing Kinesis stream as its source.
    # To specify a Kinesis data stream as input, set the
    # `DeliveryStreamType` parameter to `KinesisStreamAsSource`, and provide
    # the Kinesis stream Amazon Resource Name (ARN) and role ARN in the
    # `KinesisStreamSourceConfiguration` parameter.
    #
    # A delivery stream is configured with a single destination: Amazon S3,
    # Amazon ES, Amazon Redshift, or Splunk. You must specify only one of
    # the following destination configuration parameters:
    # **ExtendedS3DestinationConfiguration**,
    # **S3DestinationConfiguration**,
    # **ElasticsearchDestinationConfiguration**,
    # **RedshiftDestinationConfiguration**, or
    # **SplunkDestinationConfiguration**.
    #
    # When you specify **S3DestinationConfiguration**, you can also provide
    # the following optional values: **BufferingHints**,
    # **EncryptionConfiguration**, and **CompressionFormat**. By default, if
    # no **BufferingHints** value is provided, Kinesis Data Firehose buffers
    # data up to 5 MB or for 5 minutes, whichever condition is satisfied
    # first. **BufferingHints** is a hint, so there are some cases where the
    # service cannot adhere to these conditions strictly. For example,
    # record boundaries might be such that the size is a little over or
    # under the configured buffering size. By default, no encryption is
    # performed. We strongly recommend that you enable encryption to ensure
    # secure data storage in Amazon S3.
    #
    # A few notes about Amazon Redshift as a destination:
    #
    # * An Amazon Redshift destination requires an S3 bucket as intermediate
    #   location. Kinesis Data Firehose first delivers data to Amazon S3 and
    #   then uses `COPY` syntax to load data into an Amazon Redshift table.
    #   This is specified in the
    #   **RedshiftDestinationConfiguration.S3Configuration** parameter.
    #
    # * The compression formats `SNAPPY` or `ZIP` cannot be specified in
    #   `RedshiftDestinationConfiguration.S3Configuration` because the
    #   Amazon Redshift `COPY` operation that reads from the S3 bucket
    #   doesn't support these compression formats.
    #
    # * We strongly recommend that you use the user name and password you
    #   provide exclusively with Kinesis Data Firehose, and that the
    #   permissions for the account are restricted for Amazon Redshift
    #   `INSERT` permissions.
    #
    # Kinesis Data Firehose assumes the IAM role that is configured as part
    # of the destination. The role should allow the Kinesis Data Firehose
    # principal to assume the role, and the role should have permissions
    # that allow the service to deliver the data. For more information, see
    # [Grant Kinesis Data Firehose Access to an Amazon S3 Destination][1] in
    # the *Amazon Kinesis Data Firehose Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/firehose/latest/dev/controlling-access.html#using-iam-s3
    #
    # @option params [required, String] :delivery_stream_name
    #   The name of the delivery stream. This name must be unique per AWS
    #   account in the same AWS Region. If the delivery streams are in
    #   different accounts or different Regions, you can have multiple
    #   delivery streams with the same name.
    #
    # @option params [String] :delivery_stream_type
    #   The delivery stream type. This parameter can be one of the following
    #   values:
    #
    #   * `DirectPut`\: Provider applications access the delivery stream
    #     directly.
    #
    #   * `KinesisStreamAsSource`\: The delivery stream uses a Kinesis data
    #     stream as a source.
    #
    # @option params [Types::KinesisStreamSourceConfiguration] :kinesis_stream_source_configuration
    #   When a Kinesis data stream is used as the source for the delivery
    #   stream, a KinesisStreamSourceConfiguration containing the Kinesis data
    #   stream Amazon Resource Name (ARN) and the role ARN for the source
    #   stream.
    #
    # @option params [Types::S3DestinationConfiguration] :s3_destination_configuration
    #   \[Deprecated\] The destination in Amazon S3. You can specify only one
    #   destination.
    #
    # @option params [Types::ExtendedS3DestinationConfiguration] :extended_s3_destination_configuration
    #   The destination in Amazon S3. You can specify only one destination.
    #
    # @option params [Types::RedshiftDestinationConfiguration] :redshift_destination_configuration
    #   The destination in Amazon Redshift. You can specify only one
    #   destination.
    #
    # @option params [Types::ElasticsearchDestinationConfiguration] :elasticsearch_destination_configuration
    #   The destination in Amazon ES. You can specify only one destination.
    #
    # @option params [Types::SplunkDestinationConfiguration] :splunk_destination_configuration
    #   The destination in Splunk. You can specify only one destination.
    #
    # @return [Types::CreateDeliveryStreamOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDeliveryStreamOutput#delivery_stream_arn #delivery_stream_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_delivery_stream({
    #     delivery_stream_name: "DeliveryStreamName", # required
    #     delivery_stream_type: "DirectPut", # accepts DirectPut, KinesisStreamAsSource
    #     kinesis_stream_source_configuration: {
    #       kinesis_stream_arn: "KinesisStreamARN", # required
    #       role_arn: "RoleARN", # required
    #     },
    #     s3_destination_configuration: {
    #       role_arn: "RoleARN", # required
    #       bucket_arn: "BucketARN", # required
    #       prefix: "Prefix",
    #       buffering_hints: {
    #         size_in_m_bs: 1,
    #         interval_in_seconds: 1,
    #       },
    #       compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy
    #       encryption_configuration: {
    #         no_encryption_config: "NoEncryption", # accepts NoEncryption
    #         kms_encryption_config: {
    #           awskms_key_arn: "AWSKMSKeyARN", # required
    #         },
    #       },
    #       cloud_watch_logging_options: {
    #         enabled: false,
    #         log_group_name: "LogGroupName",
    #         log_stream_name: "LogStreamName",
    #       },
    #     },
    #     extended_s3_destination_configuration: {
    #       role_arn: "RoleARN", # required
    #       bucket_arn: "BucketARN", # required
    #       prefix: "Prefix",
    #       buffering_hints: {
    #         size_in_m_bs: 1,
    #         interval_in_seconds: 1,
    #       },
    #       compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy
    #       encryption_configuration: {
    #         no_encryption_config: "NoEncryption", # accepts NoEncryption
    #         kms_encryption_config: {
    #           awskms_key_arn: "AWSKMSKeyARN", # required
    #         },
    #       },
    #       cloud_watch_logging_options: {
    #         enabled: false,
    #         log_group_name: "LogGroupName",
    #         log_stream_name: "LogStreamName",
    #       },
    #       processing_configuration: {
    #         enabled: false,
    #         processors: [
    #           {
    #             type: "Lambda", # required, accepts Lambda
    #             parameters: [
    #               {
    #                 parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds
    #                 parameter_value: "ProcessorParameterValue", # required
    #               },
    #             ],
    #           },
    #         ],
    #       },
    #       s3_backup_mode: "Disabled", # accepts Disabled, Enabled
    #       s3_backup_configuration: {
    #         role_arn: "RoleARN", # required
    #         bucket_arn: "BucketARN", # required
    #         prefix: "Prefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1,
    #         },
    #         compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy
    #         encryption_configuration: {
    #           no_encryption_config: "NoEncryption", # accepts NoEncryption
    #           kms_encryption_config: {
    #             awskms_key_arn: "AWSKMSKeyARN", # required
    #           },
    #         },
    #         cloud_watch_logging_options: {
    #           enabled: false,
    #           log_group_name: "LogGroupName",
    #           log_stream_name: "LogStreamName",
    #         },
    #       },
    #       data_format_conversion_configuration: {
    #         schema_configuration: {
    #           role_arn: "NonEmptyStringWithoutWhitespace",
    #           catalog_id: "NonEmptyStringWithoutWhitespace",
    #           database_name: "NonEmptyStringWithoutWhitespace",
    #           table_name: "NonEmptyStringWithoutWhitespace",
    #           region: "NonEmptyStringWithoutWhitespace",
    #           version_id: "NonEmptyStringWithoutWhitespace",
    #         },
    #         input_format_configuration: {
    #           deserializer: {
    #             open_x_json_ser_de: {
    #               convert_dots_in_json_keys_to_underscores: false,
    #               case_insensitive: false,
    #               column_to_json_key_mappings: {
    #                 "NonEmptyStringWithoutWhitespace" => "NonEmptyString",
    #               },
    #             },
    #             hive_json_ser_de: {
    #               timestamp_formats: ["NonEmptyString"],
    #             },
    #           },
    #         },
    #         output_format_configuration: {
    #           serializer: {
    #             parquet_ser_de: {
    #               block_size_bytes: 1,
    #               page_size_bytes: 1,
    #               compression: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, SNAPPY
    #               enable_dictionary_compression: false,
    #               max_padding_bytes: 1,
    #               writer_version: "V1", # accepts V1, V2
    #             },
    #             orc_ser_de: {
    #               stripe_size_bytes: 1,
    #               block_size_bytes: 1,
    #               row_index_stride: 1,
    #               enable_padding: false,
    #               padding_tolerance: 1.0,
    #               compression: "NONE", # accepts NONE, ZLIB, SNAPPY
    #               bloom_filter_columns: ["NonEmptyStringWithoutWhitespace"],
    #               bloom_filter_false_positive_probability: 1.0,
    #               dictionary_key_threshold: 1.0,
    #               format_version: "V0_11", # accepts V0_11, V0_12
    #             },
    #           },
    #         },
    #         enabled: false,
    #       },
    #     },
    #     redshift_destination_configuration: {
    #       role_arn: "RoleARN", # required
    #       cluster_jdbc_url: "ClusterJDBCURL", # required
    #       copy_command: { # required
    #         data_table_name: "DataTableName", # required
    #         data_table_columns: "DataTableColumns",
    #         copy_options: "CopyOptions",
    #       },
    #       username: "Username", # required
    #       password: "Password", # required
    #       retry_options: {
    #         duration_in_seconds: 1,
    #       },
    #       s3_configuration: { # required
    #         role_arn: "RoleARN", # required
    #         bucket_arn: "BucketARN", # required
    #         prefix: "Prefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1,
    #         },
    #         compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy
    #         encryption_configuration: {
    #           no_encryption_config: "NoEncryption", # accepts NoEncryption
    #           kms_encryption_config: {
    #             awskms_key_arn: "AWSKMSKeyARN", # required
    #           },
    #         },
    #         cloud_watch_logging_options: {
    #           enabled: false,
    #           log_group_name: "LogGroupName",
    #           log_stream_name: "LogStreamName",
    #         },
    #       },
    #       processing_configuration: {
    #         enabled: false,
    #         processors: [
    #           {
    #             type: "Lambda", # required, accepts Lambda
    #             parameters: [
    #               {
    #                 parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds
    #                 parameter_value: "ProcessorParameterValue", # required
    #               },
    #             ],
    #           },
    #         ],
    #       },
    #       s3_backup_mode: "Disabled", # accepts Disabled, Enabled
    #       s3_backup_configuration: {
    #         role_arn: "RoleARN", # required
    #         bucket_arn: "BucketARN", # required
    #         prefix: "Prefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1,
    #         },
    #         compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy
    #         encryption_configuration: {
    #           no_encryption_config: "NoEncryption", # accepts NoEncryption
    #           kms_encryption_config: {
    #             awskms_key_arn: "AWSKMSKeyARN", # required
    #           },
    #         },
    #         cloud_watch_logging_options: {
    #           enabled: false,
    #           log_group_name: "LogGroupName",
    #           log_stream_name: "LogStreamName",
    #         },
    #       },
    #       cloud_watch_logging_options: {
    #         enabled: false,
    #         log_group_name: "LogGroupName",
    #         log_stream_name: "LogStreamName",
    #       },
    #     },
    #     elasticsearch_destination_configuration: {
    #       role_arn: "RoleARN", # required
    #       domain_arn: "ElasticsearchDomainARN", # required
    #       index_name: "ElasticsearchIndexName", # required
    #       type_name: "ElasticsearchTypeName", # required
    #       index_rotation_period: "NoRotation", # accepts NoRotation, OneHour, OneDay, OneWeek, OneMonth
    #       buffering_hints: {
    #         interval_in_seconds: 1,
    #         size_in_m_bs: 1,
    #       },
    #       retry_options: {
    #         duration_in_seconds: 1,
    #       },
    #       s3_backup_mode: "FailedDocumentsOnly", # accepts FailedDocumentsOnly, AllDocuments
    #       s3_configuration: { # required
    #         role_arn: "RoleARN", # required
    #         bucket_arn: "BucketARN", # required
    #         prefix: "Prefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1,
    #         },
    #         compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy
    #         encryption_configuration: {
    #           no_encryption_config: "NoEncryption", # accepts NoEncryption
    #           kms_encryption_config: {
    #             awskms_key_arn: "AWSKMSKeyARN", # required
    #           },
    #         },
    #         cloud_watch_logging_options: {
    #           enabled: false,
    #           log_group_name: "LogGroupName",
    #           log_stream_name: "LogStreamName",
    #         },
    #       },
    #       processing_configuration: {
    #         enabled: false,
    #         processors: [
    #           {
    #             type: "Lambda", # required, accepts Lambda
    #             parameters: [
    #               {
    #                 parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds
    #                 parameter_value: "ProcessorParameterValue", # required
    #               },
    #             ],
    #           },
    #         ],
    #       },
    #       cloud_watch_logging_options: {
    #         enabled: false,
    #         log_group_name: "LogGroupName",
    #         log_stream_name: "LogStreamName",
    #       },
    #     },
    #     splunk_destination_configuration: {
    #       hec_endpoint: "HECEndpoint", # required
    #       hec_endpoint_type: "Raw", # required, accepts Raw, Event
    #       hec_token: "HECToken", # required
    #       hec_acknowledgment_timeout_in_seconds: 1,
    #       retry_options: {
    #         duration_in_seconds: 1,
    #       },
    #       s3_backup_mode: "FailedEventsOnly", # accepts FailedEventsOnly, AllEvents
    #       s3_configuration: { # required
    #         role_arn: "RoleARN", # required
    #         bucket_arn: "BucketARN", # required
    #         prefix: "Prefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1,
    #         },
    #         compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy
    #         encryption_configuration: {
    #           no_encryption_config: "NoEncryption", # accepts NoEncryption
    #           kms_encryption_config: {
    #             awskms_key_arn: "AWSKMSKeyARN", # required
    #           },
    #         },
    #         cloud_watch_logging_options: {
    #           enabled: false,
    #           log_group_name: "LogGroupName",
    #           log_stream_name: "LogStreamName",
    #         },
    #       },
    #       processing_configuration: {
    #         enabled: false,
    #         processors: [
    #           {
    #             type: "Lambda", # required, accepts Lambda
    #             parameters: [
    #               {
    #                 parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds
    #                 parameter_value: "ProcessorParameterValue", # required
    #               },
    #             ],
    #           },
    #         ],
    #       },
    #       cloud_watch_logging_options: {
    #         enabled: false,
    #         log_group_name: "LogGroupName",
    #         log_stream_name: "LogStreamName",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.delivery_stream_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/CreateDeliveryStream AWS API Documentation
    #
    # @overload create_delivery_stream(params = {})
    # @param [Hash] params ({})
    def create_delivery_stream(params = {}, options = {})
      req = build_request(:create_delivery_stream, params)
      req.send_request(options)
    end

    # Deletes a delivery stream and its data.
    #
    # You can delete a delivery stream only if it is in `ACTIVE` or
    # `DELETING` state, and not in the `CREATING` state. While the deletion
    # request is in process, the delivery stream is in the `DELETING` state.
    #
    # To check the state of a delivery stream, use DescribeDeliveryStream.
    #
    # While the delivery stream is `DELETING` state, the service might
    # continue to accept the records, but it doesn't make any guarantees
    # with respect to delivering the data. Therefore, as a best practice,
    # you should first stop any applications that are sending records before
    # deleting a delivery stream.
    #
    # @option params [required, String] :delivery_stream_name
    #   The name of the delivery stream.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_delivery_stream({
    #     delivery_stream_name: "DeliveryStreamName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/DeleteDeliveryStream AWS API Documentation
    #
    # @overload delete_delivery_stream(params = {})
    # @param [Hash] params ({})
    def delete_delivery_stream(params = {}, options = {})
      req = build_request(:delete_delivery_stream, params)
      req.send_request(options)
    end

    # Describes the specified delivery stream and gets the status. For
    # example, after your delivery stream is created, call
    # `DescribeDeliveryStream` to see whether the delivery stream is
    # `ACTIVE` and therefore ready for data to be sent to it.
    #
    # @option params [required, String] :delivery_stream_name
    #   The name of the delivery stream.
    #
    # @option params [Integer] :limit
    #   The limit on the number of destinations to return. You can have one
    #   destination per delivery stream.
    #
    # @option params [String] :exclusive_start_destination_id
    #   The ID of the destination to start returning the destination
    #   information. Kinesis Data Firehose supports one destination per
    #   delivery stream.
    #
    # @return [Types::DescribeDeliveryStreamOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDeliveryStreamOutput#delivery_stream_description #delivery_stream_description} => Types::DeliveryStreamDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_delivery_stream({
    #     delivery_stream_name: "DeliveryStreamName", # required
    #     limit: 1,
    #     exclusive_start_destination_id: "DestinationId",
    #   })
    #
    # @example Response structure
    #
    #   resp.delivery_stream_description.delivery_stream_name #=> String
    #   resp.delivery_stream_description.delivery_stream_arn #=> String
    #   resp.delivery_stream_description.delivery_stream_status #=> String, one of "CREATING", "DELETING", "ACTIVE"
    #   resp.delivery_stream_description.delivery_stream_type #=> String, one of "DirectPut", "KinesisStreamAsSource"
    #   resp.delivery_stream_description.version_id #=> String
    #   resp.delivery_stream_description.create_timestamp #=> Time
    #   resp.delivery_stream_description.last_update_timestamp #=> Time
    #   resp.delivery_stream_description.source.kinesis_stream_source_description.kinesis_stream_arn #=> String
    #   resp.delivery_stream_description.source.kinesis_stream_source_description.role_arn #=> String
    #   resp.delivery_stream_description.source.kinesis_stream_source_description.delivery_start_timestamp #=> Time
    #   resp.delivery_stream_description.destinations #=> Array
    #   resp.delivery_stream_description.destinations[0].destination_id #=> String
    #   resp.delivery_stream_description.destinations[0].s3_destination_description.role_arn #=> String
    #   resp.delivery_stream_description.destinations[0].s3_destination_description.bucket_arn #=> String
    #   resp.delivery_stream_description.destinations[0].s3_destination_description.prefix #=> String
    #   resp.delivery_stream_description.destinations[0].s3_destination_description.buffering_hints.size_in_m_bs #=> Integer
    #   resp.delivery_stream_description.destinations[0].s3_destination_description.buffering_hints.interval_in_seconds #=> Integer
    #   resp.delivery_stream_description.destinations[0].s3_destination_description.compression_format #=> String, one of "UNCOMPRESSED", "GZIP", "ZIP", "Snappy"
    #   resp.delivery_stream_description.destinations[0].s3_destination_description.encryption_configuration.no_encryption_config #=> String, one of "NoEncryption"
    #   resp.delivery_stream_description.destinations[0].s3_destination_description.encryption_configuration.kms_encryption_config.awskms_key_arn #=> String
    #   resp.delivery_stream_description.destinations[0].s3_destination_description.cloud_watch_logging_options.enabled #=> Boolean
    #   resp.delivery_stream_description.destinations[0].s3_destination_description.cloud_watch_logging_options.log_group_name #=> String
    #   resp.delivery_stream_description.destinations[0].s3_destination_description.cloud_watch_logging_options.log_stream_name #=> String
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.role_arn #=> String
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.bucket_arn #=> String
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.prefix #=> String
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.buffering_hints.size_in_m_bs #=> Integer
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.buffering_hints.interval_in_seconds #=> Integer
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.compression_format #=> String, one of "UNCOMPRESSED", "GZIP", "ZIP", "Snappy"
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.encryption_configuration.no_encryption_config #=> String, one of "NoEncryption"
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.encryption_configuration.kms_encryption_config.awskms_key_arn #=> String
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.cloud_watch_logging_options.enabled #=> Boolean
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.cloud_watch_logging_options.log_group_name #=> String
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.cloud_watch_logging_options.log_stream_name #=> String
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.processing_configuration.enabled #=> Boolean
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.processing_configuration.processors #=> Array
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.processing_configuration.processors[0].type #=> String, one of "Lambda"
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.processing_configuration.processors[0].parameters #=> Array
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.processing_configuration.processors[0].parameters[0].parameter_name #=> String, one of "LambdaArn", "NumberOfRetries", "RoleArn", "BufferSizeInMBs", "BufferIntervalInSeconds"
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.processing_configuration.processors[0].parameters[0].parameter_value #=> String
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.s3_backup_mode #=> String, one of "Disabled", "Enabled"
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.s3_backup_description.role_arn #=> String
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.s3_backup_description.bucket_arn #=> String
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.s3_backup_description.prefix #=> String
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.s3_backup_description.buffering_hints.size_in_m_bs #=> Integer
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.s3_backup_description.buffering_hints.interval_in_seconds #=> Integer
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.s3_backup_description.compression_format #=> String, one of "UNCOMPRESSED", "GZIP", "ZIP", "Snappy"
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.s3_backup_description.encryption_configuration.no_encryption_config #=> String, one of "NoEncryption"
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.s3_backup_description.encryption_configuration.kms_encryption_config.awskms_key_arn #=> String
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.s3_backup_description.cloud_watch_logging_options.enabled #=> Boolean
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.s3_backup_description.cloud_watch_logging_options.log_group_name #=> String
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.s3_backup_description.cloud_watch_logging_options.log_stream_name #=> String
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.schema_configuration.role_arn #=> String
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.schema_configuration.catalog_id #=> String
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.schema_configuration.database_name #=> String
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.schema_configuration.table_name #=> String
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.schema_configuration.region #=> String
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.schema_configuration.version_id #=> String
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.input_format_configuration.deserializer.open_x_json_ser_de.convert_dots_in_json_keys_to_underscores #=> Boolean
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.input_format_configuration.deserializer.open_x_json_ser_de.case_insensitive #=> Boolean
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.input_format_configuration.deserializer.open_x_json_ser_de.column_to_json_key_mappings #=> Hash
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.input_format_configuration.deserializer.open_x_json_ser_de.column_to_json_key_mappings["NonEmptyStringWithoutWhitespace"] #=> String
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.input_format_configuration.deserializer.hive_json_ser_de.timestamp_formats #=> Array
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.input_format_configuration.deserializer.hive_json_ser_de.timestamp_formats[0] #=> String
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.output_format_configuration.serializer.parquet_ser_de.block_size_bytes #=> Integer
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.output_format_configuration.serializer.parquet_ser_de.page_size_bytes #=> Integer
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.output_format_configuration.serializer.parquet_ser_de.compression #=> String, one of "UNCOMPRESSED", "GZIP", "SNAPPY"
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.output_format_configuration.serializer.parquet_ser_de.enable_dictionary_compression #=> Boolean
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.output_format_configuration.serializer.parquet_ser_de.max_padding_bytes #=> Integer
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.output_format_configuration.serializer.parquet_ser_de.writer_version #=> String, one of "V1", "V2"
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.output_format_configuration.serializer.orc_ser_de.stripe_size_bytes #=> Integer
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.output_format_configuration.serializer.orc_ser_de.block_size_bytes #=> Integer
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.output_format_configuration.serializer.orc_ser_de.row_index_stride #=> Integer
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.output_format_configuration.serializer.orc_ser_de.enable_padding #=> Boolean
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.output_format_configuration.serializer.orc_ser_de.padding_tolerance #=> Float
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.output_format_configuration.serializer.orc_ser_de.compression #=> String, one of "NONE", "ZLIB", "SNAPPY"
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.output_format_configuration.serializer.orc_ser_de.bloom_filter_columns #=> Array
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.output_format_configuration.serializer.orc_ser_de.bloom_filter_columns[0] #=> String
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.output_format_configuration.serializer.orc_ser_de.bloom_filter_false_positive_probability #=> Float
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.output_format_configuration.serializer.orc_ser_de.dictionary_key_threshold #=> Float
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.output_format_configuration.serializer.orc_ser_de.format_version #=> String, one of "V0_11", "V0_12"
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.enabled #=> Boolean
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.role_arn #=> String
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.cluster_jdbc_url #=> String
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.copy_command.data_table_name #=> String
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.copy_command.data_table_columns #=> String
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.copy_command.copy_options #=> String
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.username #=> String
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.retry_options.duration_in_seconds #=> Integer
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.s3_destination_description.role_arn #=> String
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.s3_destination_description.bucket_arn #=> String
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.s3_destination_description.prefix #=> String
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.s3_destination_description.buffering_hints.size_in_m_bs #=> Integer
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.s3_destination_description.buffering_hints.interval_in_seconds #=> Integer
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.s3_destination_description.compression_format #=> String, one of "UNCOMPRESSED", "GZIP", "ZIP", "Snappy"
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.s3_destination_description.encryption_configuration.no_encryption_config #=> String, one of "NoEncryption"
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.s3_destination_description.encryption_configuration.kms_encryption_config.awskms_key_arn #=> String
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.s3_destination_description.cloud_watch_logging_options.enabled #=> Boolean
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.s3_destination_description.cloud_watch_logging_options.log_group_name #=> String
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.s3_destination_description.cloud_watch_logging_options.log_stream_name #=> String
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.processing_configuration.enabled #=> Boolean
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.processing_configuration.processors #=> Array
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.processing_configuration.processors[0].type #=> String, one of "Lambda"
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.processing_configuration.processors[0].parameters #=> Array
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.processing_configuration.processors[0].parameters[0].parameter_name #=> String, one of "LambdaArn", "NumberOfRetries", "RoleArn", "BufferSizeInMBs", "BufferIntervalInSeconds"
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.processing_configuration.processors[0].parameters[0].parameter_value #=> String
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.s3_backup_mode #=> String, one of "Disabled", "Enabled"
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.s3_backup_description.role_arn #=> String
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.s3_backup_description.bucket_arn #=> String
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.s3_backup_description.prefix #=> String
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.s3_backup_description.buffering_hints.size_in_m_bs #=> Integer
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.s3_backup_description.buffering_hints.interval_in_seconds #=> Integer
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.s3_backup_description.compression_format #=> String, one of "UNCOMPRESSED", "GZIP", "ZIP", "Snappy"
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.s3_backup_description.encryption_configuration.no_encryption_config #=> String, one of "NoEncryption"
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.s3_backup_description.encryption_configuration.kms_encryption_config.awskms_key_arn #=> String
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.s3_backup_description.cloud_watch_logging_options.enabled #=> Boolean
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.s3_backup_description.cloud_watch_logging_options.log_group_name #=> String
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.s3_backup_description.cloud_watch_logging_options.log_stream_name #=> String
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.cloud_watch_logging_options.enabled #=> Boolean
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.cloud_watch_logging_options.log_group_name #=> String
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.cloud_watch_logging_options.log_stream_name #=> String
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.role_arn #=> String
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.domain_arn #=> String
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.index_name #=> String
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.type_name #=> String
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.index_rotation_period #=> String, one of "NoRotation", "OneHour", "OneDay", "OneWeek", "OneMonth"
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.buffering_hints.interval_in_seconds #=> Integer
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.buffering_hints.size_in_m_bs #=> Integer
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.retry_options.duration_in_seconds #=> Integer
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.s3_backup_mode #=> String, one of "FailedDocumentsOnly", "AllDocuments"
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.s3_destination_description.role_arn #=> String
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.s3_destination_description.bucket_arn #=> String
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.s3_destination_description.prefix #=> String
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.s3_destination_description.buffering_hints.size_in_m_bs #=> Integer
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.s3_destination_description.buffering_hints.interval_in_seconds #=> Integer
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.s3_destination_description.compression_format #=> String, one of "UNCOMPRESSED", "GZIP", "ZIP", "Snappy"
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.s3_destination_description.encryption_configuration.no_encryption_config #=> String, one of "NoEncryption"
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.s3_destination_description.encryption_configuration.kms_encryption_config.awskms_key_arn #=> String
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.s3_destination_description.cloud_watch_logging_options.enabled #=> Boolean
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.s3_destination_description.cloud_watch_logging_options.log_group_name #=> String
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.s3_destination_description.cloud_watch_logging_options.log_stream_name #=> String
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.processing_configuration.enabled #=> Boolean
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.processing_configuration.processors #=> Array
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.processing_configuration.processors[0].type #=> String, one of "Lambda"
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.processing_configuration.processors[0].parameters #=> Array
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.processing_configuration.processors[0].parameters[0].parameter_name #=> String, one of "LambdaArn", "NumberOfRetries", "RoleArn", "BufferSizeInMBs", "BufferIntervalInSeconds"
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.processing_configuration.processors[0].parameters[0].parameter_value #=> String
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.cloud_watch_logging_options.enabled #=> Boolean
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.cloud_watch_logging_options.log_group_name #=> String
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.cloud_watch_logging_options.log_stream_name #=> String
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.hec_endpoint #=> String
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.hec_endpoint_type #=> String, one of "Raw", "Event"
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.hec_token #=> String
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.hec_acknowledgment_timeout_in_seconds #=> Integer
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.retry_options.duration_in_seconds #=> Integer
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.s3_backup_mode #=> String, one of "FailedEventsOnly", "AllEvents"
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.s3_destination_description.role_arn #=> String
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.s3_destination_description.bucket_arn #=> String
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.s3_destination_description.prefix #=> String
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.s3_destination_description.buffering_hints.size_in_m_bs #=> Integer
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.s3_destination_description.buffering_hints.interval_in_seconds #=> Integer
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.s3_destination_description.compression_format #=> String, one of "UNCOMPRESSED", "GZIP", "ZIP", "Snappy"
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.s3_destination_description.encryption_configuration.no_encryption_config #=> String, one of "NoEncryption"
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.s3_destination_description.encryption_configuration.kms_encryption_config.awskms_key_arn #=> String
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.s3_destination_description.cloud_watch_logging_options.enabled #=> Boolean
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.s3_destination_description.cloud_watch_logging_options.log_group_name #=> String
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.s3_destination_description.cloud_watch_logging_options.log_stream_name #=> String
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.processing_configuration.enabled #=> Boolean
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.processing_configuration.processors #=> Array
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.processing_configuration.processors[0].type #=> String, one of "Lambda"
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.processing_configuration.processors[0].parameters #=> Array
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.processing_configuration.processors[0].parameters[0].parameter_name #=> String, one of "LambdaArn", "NumberOfRetries", "RoleArn", "BufferSizeInMBs", "BufferIntervalInSeconds"
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.processing_configuration.processors[0].parameters[0].parameter_value #=> String
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.cloud_watch_logging_options.enabled #=> Boolean
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.cloud_watch_logging_options.log_group_name #=> String
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.cloud_watch_logging_options.log_stream_name #=> String
    #   resp.delivery_stream_description.has_more_destinations #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/DescribeDeliveryStream AWS API Documentation
    #
    # @overload describe_delivery_stream(params = {})
    # @param [Hash] params ({})
    def describe_delivery_stream(params = {}, options = {})
      req = build_request(:describe_delivery_stream, params)
      req.send_request(options)
    end

    # Lists your delivery streams.
    #
    # The number of delivery streams might be too large to return using a
    # single call to `ListDeliveryStreams`. You can limit the number of
    # delivery streams returned, using the **Limit** parameter. To determine
    # whether there are more delivery streams to list, check the value of
    # `HasMoreDeliveryStreams` in the output. If there are more delivery
    # streams to list, you can request them by specifying the name of the
    # last delivery stream returned in the call in the
    # `ExclusiveStartDeliveryStreamName` parameter of a subsequent call.
    #
    # @option params [Integer] :limit
    #   The maximum number of delivery streams to list. The default value is
    #   10.
    #
    # @option params [String] :delivery_stream_type
    #   The delivery stream type. This can be one of the following values:
    #
    #   * `DirectPut`\: Provider applications access the delivery stream
    #     directly.
    #
    #   * `KinesisStreamAsSource`\: The delivery stream uses a Kinesis data
    #     stream as a source.
    #
    #   This parameter is optional. If this parameter is omitted, delivery
    #   streams of all types are returned.
    #
    # @option params [String] :exclusive_start_delivery_stream_name
    #   The name of the delivery stream to start the list with.
    #
    # @return [Types::ListDeliveryStreamsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDeliveryStreamsOutput#delivery_stream_names #delivery_stream_names} => Array&lt;String&gt;
    #   * {Types::ListDeliveryStreamsOutput#has_more_delivery_streams #has_more_delivery_streams} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_delivery_streams({
    #     limit: 1,
    #     delivery_stream_type: "DirectPut", # accepts DirectPut, KinesisStreamAsSource
    #     exclusive_start_delivery_stream_name: "DeliveryStreamName",
    #   })
    #
    # @example Response structure
    #
    #   resp.delivery_stream_names #=> Array
    #   resp.delivery_stream_names[0] #=> String
    #   resp.has_more_delivery_streams #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/ListDeliveryStreams AWS API Documentation
    #
    # @overload list_delivery_streams(params = {})
    # @param [Hash] params ({})
    def list_delivery_streams(params = {}, options = {})
      req = build_request(:list_delivery_streams, params)
      req.send_request(options)
    end

    # Lists the tags for the specified delivery stream. This operation has a
    # limit of five transactions per second per account.
    #
    # @option params [required, String] :delivery_stream_name
    #   The name of the delivery stream whose tags you want to list.
    #
    # @option params [String] :exclusive_start_tag_key
    #   The key to use as the starting point for the list of tags. If you set
    #   this parameter, `ListTagsForDeliveryStream` gets all tags that occur
    #   after `ExclusiveStartTagKey`.
    #
    # @option params [Integer] :limit
    #   The number of tags to return. If this number is less than the total
    #   number of tags associated with the delivery stream, `HasMoreTags` is
    #   set to `true` in the response. To list additional tags, set
    #   `ExclusiveStartTagKey` to the last key in the response.
    #
    # @return [Types::ListTagsForDeliveryStreamOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForDeliveryStreamOutput#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::ListTagsForDeliveryStreamOutput#has_more_tags #has_more_tags} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_delivery_stream({
    #     delivery_stream_name: "DeliveryStreamName", # required
    #     exclusive_start_tag_key: "TagKey",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.has_more_tags #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/ListTagsForDeliveryStream AWS API Documentation
    #
    # @overload list_tags_for_delivery_stream(params = {})
    # @param [Hash] params ({})
    def list_tags_for_delivery_stream(params = {}, options = {})
      req = build_request(:list_tags_for_delivery_stream, params)
      req.send_request(options)
    end

    # Writes a single data record into an Amazon Kinesis Data Firehose
    # delivery stream. To write multiple data records into a delivery
    # stream, use PutRecordBatch. Applications using these operations are
    # referred to as producers.
    #
    # By default, each delivery stream can take in up to 2,000 transactions
    # per second, 5,000 records per second, or 5 MB per second. If you use
    # PutRecord and PutRecordBatch, the limits are an aggregate across these
    # two operations for each delivery stream. For more information about
    # limits and how to request an increase, see [Amazon Kinesis Data
    # Firehose Limits][1].
    #
    # You must specify the name of the delivery stream and the data record
    # when using PutRecord. The data record consists of a data blob that can
    # be up to 1,000 KB in size, and any kind of data. For example, it can
    # be a segment from a log file, geographic location data, website
    # clickstream data, and so on.
    #
    # Kinesis Data Firehose buffers records before delivering them to the
    # destination. To disambiguate the data blobs at the destination, a
    # common solution is to use delimiters in the data, such as a newline
    # (`\n`) or some other character unique within the data. This allows the
    # consumer application to parse individual data items when reading the
    # data from the destination.
    #
    # The `PutRecord` operation returns a `RecordId`, which is a unique
    # string assigned to each record. Producer applications can use this ID
    # for purposes such as auditability and investigation.
    #
    # If the `PutRecord` operation throws a `ServiceUnavailableException`,
    # back off and retry. If the exception persists, it is possible that the
    # throughput limits have been exceeded for the delivery stream.
    #
    # Data records sent to Kinesis Data Firehose are stored for 24 hours
    # from the time they are added to a delivery stream as it tries to send
    # the records to the destination. If the destination is unreachable for
    # more than 24 hours, the data is no longer available.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/firehose/latest/dev/limits.html
    #
    # @option params [required, String] :delivery_stream_name
    #   The name of the delivery stream.
    #
    # @option params [required, Types::Record] :record
    #   The record.
    #
    # @return [Types::PutRecordOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutRecordOutput#record_id #record_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_record({
    #     delivery_stream_name: "DeliveryStreamName", # required
    #     record: { # required
    #       data: "data", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.record_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/PutRecord AWS API Documentation
    #
    # @overload put_record(params = {})
    # @param [Hash] params ({})
    def put_record(params = {}, options = {})
      req = build_request(:put_record, params)
      req.send_request(options)
    end

    # Writes multiple data records into a delivery stream in a single call,
    # which can achieve higher throughput per producer than when writing
    # single records. To write single data records into a delivery stream,
    # use PutRecord. Applications using these operations are referred to as
    # producers.
    #
    # By default, each delivery stream can take in up to 2,000 transactions
    # per second, 5,000 records per second, or 5 MB per second. If you use
    # PutRecord and PutRecordBatch, the limits are an aggregate across these
    # two operations for each delivery stream. For more information about
    # limits, see [Amazon Kinesis Data Firehose Limits][1].
    #
    # Each PutRecordBatch request supports up to 500 records. Each record in
    # the request can be as large as 1,000 KB (before 64-bit encoding), up
    # to a limit of 4 MB for the entire request. These limits cannot be
    # changed.
    #
    # You must specify the name of the delivery stream and the data record
    # when using PutRecord. The data record consists of a data blob that can
    # be up to 1,000 KB in size, and any kind of data. For example, it could
    # be a segment from a log file, geographic location data, website
    # clickstream data, and so on.
    #
    # Kinesis Data Firehose buffers records before delivering them to the
    # destination. To disambiguate the data blobs at the destination, a
    # common solution is to use delimiters in the data, such as a newline
    # (`\n`) or some other character unique within the data. This allows the
    # consumer application to parse individual data items when reading the
    # data from the destination.
    #
    # The PutRecordBatch response includes a count of failed records,
    # **FailedPutCount**, and an array of responses, **RequestResponses**.
    # Each entry in the **RequestResponses** array provides additional
    # information about the processed record. It directly correlates with a
    # record in the request array using the same ordering, from the top to
    # the bottom. The response array always includes the same number of
    # records as the request array. **RequestResponses** includes both
    # successfully and unsuccessfully processed records. Kinesis Data
    # Firehose tries to process all records in each PutRecordBatch request.
    # A single record failure does not stop the processing of subsequent
    # records.
    #
    # A successfully processed record includes a **RecordId** value, which
    # is unique for the record. An unsuccessfully processed record includes
    # **ErrorCode** and **ErrorMessage** values. **ErrorCode** reflects the
    # type of error, and is one of the following values:
    # `ServiceUnavailable` or `InternalFailure`. **ErrorMessage** provides
    # more detailed information about the error.
    #
    # If there is an internal server error or a timeout, the write might
    # have completed or it might have failed. If **FailedPutCount** is
    # greater than 0, retry the request, resending only those records that
    # might have failed processing. This minimizes the possible duplicate
    # records and also reduces the total bytes sent (and corresponding
    # charges). We recommend that you handle any duplicates at the
    # destination.
    #
    # If PutRecordBatch throws **ServiceUnavailableException**, back off and
    # retry. If the exception persists, it is possible that the throughput
    # limits have been exceeded for the delivery stream.
    #
    # Data records sent to Kinesis Data Firehose are stored for 24 hours
    # from the time they are added to a delivery stream as it attempts to
    # send the records to the destination. If the destination is unreachable
    # for more than 24 hours, the data is no longer available.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/firehose/latest/dev/limits.html
    #
    # @option params [required, String] :delivery_stream_name
    #   The name of the delivery stream.
    #
    # @option params [required, Array<Types::Record>] :records
    #   One or more records.
    #
    # @return [Types::PutRecordBatchOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutRecordBatchOutput#failed_put_count #failed_put_count} => Integer
    #   * {Types::PutRecordBatchOutput#request_responses #request_responses} => Array&lt;Types::PutRecordBatchResponseEntry&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_record_batch({
    #     delivery_stream_name: "DeliveryStreamName", # required
    #     records: [ # required
    #       {
    #         data: "data", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_put_count #=> Integer
    #   resp.request_responses #=> Array
    #   resp.request_responses[0].record_id #=> String
    #   resp.request_responses[0].error_code #=> String
    #   resp.request_responses[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/PutRecordBatch AWS API Documentation
    #
    # @overload put_record_batch(params = {})
    # @param [Hash] params ({})
    def put_record_batch(params = {}, options = {})
      req = build_request(:put_record_batch, params)
      req.send_request(options)
    end

    # Adds or updates tags for the specified delivery stream. A tag is a
    # key-value pair (the value is optional) that you can define and assign
    # to AWS resources. If you specify a tag that already exists, the tag
    # value is replaced with the value that you specify in the request. Tags
    # are metadata. For example, you can add friendly names and descriptions
    # or other types of information that can help you distinguish the
    # delivery stream. For more information about tags, see [Using Cost
    # Allocation Tags][1] in the *AWS Billing and Cost Management User
    # Guide*.
    #
    # Each delivery stream can have up to 50 tags.
    #
    # This operation has a limit of five transactions per second per
    # account.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html
    #
    # @option params [required, String] :delivery_stream_name
    #   The name of the delivery stream to which you want to add the tags.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   A set of key-value pairs to use to create the tags.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_delivery_stream({
    #     delivery_stream_name: "DeliveryStreamName", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/TagDeliveryStream AWS API Documentation
    #
    # @overload tag_delivery_stream(params = {})
    # @param [Hash] params ({})
    def tag_delivery_stream(params = {}, options = {})
      req = build_request(:tag_delivery_stream, params)
      req.send_request(options)
    end

    # Removes tags from the specified delivery stream. Removed tags are
    # deleted, and you can't recover them after this operation successfully
    # completes.
    #
    # If you specify a tag that doesn't exist, the operation ignores it.
    #
    # This operation has a limit of five transactions per second per
    # account.
    #
    # @option params [required, String] :delivery_stream_name
    #   The name of the delivery stream.
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of tag keys. Each corresponding tag is removed from the
    #   delivery stream.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_delivery_stream({
    #     delivery_stream_name: "DeliveryStreamName", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/UntagDeliveryStream AWS API Documentation
    #
    # @overload untag_delivery_stream(params = {})
    # @param [Hash] params ({})
    def untag_delivery_stream(params = {}, options = {})
      req = build_request(:untag_delivery_stream, params)
      req.send_request(options)
    end

    # Updates the specified destination of the specified delivery stream.
    #
    # Use this operation to change the destination type (for example, to
    # replace the Amazon S3 destination with Amazon Redshift) or change the
    # parameters associated with a destination (for example, to change the
    # bucket name of the Amazon S3 destination). The update might not occur
    # immediately. The target delivery stream remains active while the
    # configurations are updated, so data writes to the delivery stream can
    # continue during this process. The updated configurations are usually
    # effective within a few minutes.
    #
    # Switching between Amazon ES and other services is not supported. For
    # an Amazon ES destination, you can only update to another Amazon ES
    # destination.
    #
    # If the destination type is the same, Kinesis Data Firehose merges the
    # configuration parameters specified with the destination configuration
    # that already exists on the delivery stream. If any of the parameters
    # are not specified in the call, the existing values are retained. For
    # example, in the Amazon S3 destination, if EncryptionConfiguration is
    # not specified, then the existing `EncryptionConfiguration` is
    # maintained on the destination.
    #
    # If the destination type is not the same, for example, changing the
    # destination from Amazon S3 to Amazon Redshift, Kinesis Data Firehose
    # does not merge any parameters. In this case, all parameters must be
    # specified.
    #
    # Kinesis Data Firehose uses **CurrentDeliveryStreamVersionId** to avoid
    # race conditions and conflicting merges. This is a required field, and
    # the service updates the configuration only if the existing
    # configuration has a version ID that matches. After the update is
    # applied successfully, the version ID is updated, and can be retrieved
    # using DescribeDeliveryStream. Use the new version ID to set
    # **CurrentDeliveryStreamVersionId** in the next call.
    #
    # @option params [required, String] :delivery_stream_name
    #   The name of the delivery stream.
    #
    # @option params [required, String] :current_delivery_stream_version_id
    #   Obtain this value from the **VersionId** result of
    #   DeliveryStreamDescription. This value is required, and helps the
    #   service perform conditional operations. For example, if there is an
    #   interleaving update and this value is null, then the update
    #   destination fails. After the update is successful, the `VersionId`
    #   value is updated. The service then performs a merge of the old
    #   configuration with the new configuration.
    #
    # @option params [required, String] :destination_id
    #   The ID of the destination.
    #
    # @option params [Types::S3DestinationUpdate] :s3_destination_update
    #   \[Deprecated\] Describes an update for a destination in Amazon S3.
    #
    # @option params [Types::ExtendedS3DestinationUpdate] :extended_s3_destination_update
    #   Describes an update for a destination in Amazon S3.
    #
    # @option params [Types::RedshiftDestinationUpdate] :redshift_destination_update
    #   Describes an update for a destination in Amazon Redshift.
    #
    # @option params [Types::ElasticsearchDestinationUpdate] :elasticsearch_destination_update
    #   Describes an update for a destination in Amazon ES.
    #
    # @option params [Types::SplunkDestinationUpdate] :splunk_destination_update
    #   Describes an update for a destination in Splunk.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_destination({
    #     delivery_stream_name: "DeliveryStreamName", # required
    #     current_delivery_stream_version_id: "DeliveryStreamVersionId", # required
    #     destination_id: "DestinationId", # required
    #     s3_destination_update: {
    #       role_arn: "RoleARN",
    #       bucket_arn: "BucketARN",
    #       prefix: "Prefix",
    #       buffering_hints: {
    #         size_in_m_bs: 1,
    #         interval_in_seconds: 1,
    #       },
    #       compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy
    #       encryption_configuration: {
    #         no_encryption_config: "NoEncryption", # accepts NoEncryption
    #         kms_encryption_config: {
    #           awskms_key_arn: "AWSKMSKeyARN", # required
    #         },
    #       },
    #       cloud_watch_logging_options: {
    #         enabled: false,
    #         log_group_name: "LogGroupName",
    #         log_stream_name: "LogStreamName",
    #       },
    #     },
    #     extended_s3_destination_update: {
    #       role_arn: "RoleARN",
    #       bucket_arn: "BucketARN",
    #       prefix: "Prefix",
    #       buffering_hints: {
    #         size_in_m_bs: 1,
    #         interval_in_seconds: 1,
    #       },
    #       compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy
    #       encryption_configuration: {
    #         no_encryption_config: "NoEncryption", # accepts NoEncryption
    #         kms_encryption_config: {
    #           awskms_key_arn: "AWSKMSKeyARN", # required
    #         },
    #       },
    #       cloud_watch_logging_options: {
    #         enabled: false,
    #         log_group_name: "LogGroupName",
    #         log_stream_name: "LogStreamName",
    #       },
    #       processing_configuration: {
    #         enabled: false,
    #         processors: [
    #           {
    #             type: "Lambda", # required, accepts Lambda
    #             parameters: [
    #               {
    #                 parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds
    #                 parameter_value: "ProcessorParameterValue", # required
    #               },
    #             ],
    #           },
    #         ],
    #       },
    #       s3_backup_mode: "Disabled", # accepts Disabled, Enabled
    #       s3_backup_update: {
    #         role_arn: "RoleARN",
    #         bucket_arn: "BucketARN",
    #         prefix: "Prefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1,
    #         },
    #         compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy
    #         encryption_configuration: {
    #           no_encryption_config: "NoEncryption", # accepts NoEncryption
    #           kms_encryption_config: {
    #             awskms_key_arn: "AWSKMSKeyARN", # required
    #           },
    #         },
    #         cloud_watch_logging_options: {
    #           enabled: false,
    #           log_group_name: "LogGroupName",
    #           log_stream_name: "LogStreamName",
    #         },
    #       },
    #       data_format_conversion_configuration: {
    #         schema_configuration: {
    #           role_arn: "NonEmptyStringWithoutWhitespace",
    #           catalog_id: "NonEmptyStringWithoutWhitespace",
    #           database_name: "NonEmptyStringWithoutWhitespace",
    #           table_name: "NonEmptyStringWithoutWhitespace",
    #           region: "NonEmptyStringWithoutWhitespace",
    #           version_id: "NonEmptyStringWithoutWhitespace",
    #         },
    #         input_format_configuration: {
    #           deserializer: {
    #             open_x_json_ser_de: {
    #               convert_dots_in_json_keys_to_underscores: false,
    #               case_insensitive: false,
    #               column_to_json_key_mappings: {
    #                 "NonEmptyStringWithoutWhitespace" => "NonEmptyString",
    #               },
    #             },
    #             hive_json_ser_de: {
    #               timestamp_formats: ["NonEmptyString"],
    #             },
    #           },
    #         },
    #         output_format_configuration: {
    #           serializer: {
    #             parquet_ser_de: {
    #               block_size_bytes: 1,
    #               page_size_bytes: 1,
    #               compression: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, SNAPPY
    #               enable_dictionary_compression: false,
    #               max_padding_bytes: 1,
    #               writer_version: "V1", # accepts V1, V2
    #             },
    #             orc_ser_de: {
    #               stripe_size_bytes: 1,
    #               block_size_bytes: 1,
    #               row_index_stride: 1,
    #               enable_padding: false,
    #               padding_tolerance: 1.0,
    #               compression: "NONE", # accepts NONE, ZLIB, SNAPPY
    #               bloom_filter_columns: ["NonEmptyStringWithoutWhitespace"],
    #               bloom_filter_false_positive_probability: 1.0,
    #               dictionary_key_threshold: 1.0,
    #               format_version: "V0_11", # accepts V0_11, V0_12
    #             },
    #           },
    #         },
    #         enabled: false,
    #       },
    #     },
    #     redshift_destination_update: {
    #       role_arn: "RoleARN",
    #       cluster_jdbc_url: "ClusterJDBCURL",
    #       copy_command: {
    #         data_table_name: "DataTableName", # required
    #         data_table_columns: "DataTableColumns",
    #         copy_options: "CopyOptions",
    #       },
    #       username: "Username",
    #       password: "Password",
    #       retry_options: {
    #         duration_in_seconds: 1,
    #       },
    #       s3_update: {
    #         role_arn: "RoleARN",
    #         bucket_arn: "BucketARN",
    #         prefix: "Prefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1,
    #         },
    #         compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy
    #         encryption_configuration: {
    #           no_encryption_config: "NoEncryption", # accepts NoEncryption
    #           kms_encryption_config: {
    #             awskms_key_arn: "AWSKMSKeyARN", # required
    #           },
    #         },
    #         cloud_watch_logging_options: {
    #           enabled: false,
    #           log_group_name: "LogGroupName",
    #           log_stream_name: "LogStreamName",
    #         },
    #       },
    #       processing_configuration: {
    #         enabled: false,
    #         processors: [
    #           {
    #             type: "Lambda", # required, accepts Lambda
    #             parameters: [
    #               {
    #                 parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds
    #                 parameter_value: "ProcessorParameterValue", # required
    #               },
    #             ],
    #           },
    #         ],
    #       },
    #       s3_backup_mode: "Disabled", # accepts Disabled, Enabled
    #       s3_backup_update: {
    #         role_arn: "RoleARN",
    #         bucket_arn: "BucketARN",
    #         prefix: "Prefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1,
    #         },
    #         compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy
    #         encryption_configuration: {
    #           no_encryption_config: "NoEncryption", # accepts NoEncryption
    #           kms_encryption_config: {
    #             awskms_key_arn: "AWSKMSKeyARN", # required
    #           },
    #         },
    #         cloud_watch_logging_options: {
    #           enabled: false,
    #           log_group_name: "LogGroupName",
    #           log_stream_name: "LogStreamName",
    #         },
    #       },
    #       cloud_watch_logging_options: {
    #         enabled: false,
    #         log_group_name: "LogGroupName",
    #         log_stream_name: "LogStreamName",
    #       },
    #     },
    #     elasticsearch_destination_update: {
    #       role_arn: "RoleARN",
    #       domain_arn: "ElasticsearchDomainARN",
    #       index_name: "ElasticsearchIndexName",
    #       type_name: "ElasticsearchTypeName",
    #       index_rotation_period: "NoRotation", # accepts NoRotation, OneHour, OneDay, OneWeek, OneMonth
    #       buffering_hints: {
    #         interval_in_seconds: 1,
    #         size_in_m_bs: 1,
    #       },
    #       retry_options: {
    #         duration_in_seconds: 1,
    #       },
    #       s3_update: {
    #         role_arn: "RoleARN",
    #         bucket_arn: "BucketARN",
    #         prefix: "Prefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1,
    #         },
    #         compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy
    #         encryption_configuration: {
    #           no_encryption_config: "NoEncryption", # accepts NoEncryption
    #           kms_encryption_config: {
    #             awskms_key_arn: "AWSKMSKeyARN", # required
    #           },
    #         },
    #         cloud_watch_logging_options: {
    #           enabled: false,
    #           log_group_name: "LogGroupName",
    #           log_stream_name: "LogStreamName",
    #         },
    #       },
    #       processing_configuration: {
    #         enabled: false,
    #         processors: [
    #           {
    #             type: "Lambda", # required, accepts Lambda
    #             parameters: [
    #               {
    #                 parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds
    #                 parameter_value: "ProcessorParameterValue", # required
    #               },
    #             ],
    #           },
    #         ],
    #       },
    #       cloud_watch_logging_options: {
    #         enabled: false,
    #         log_group_name: "LogGroupName",
    #         log_stream_name: "LogStreamName",
    #       },
    #     },
    #     splunk_destination_update: {
    #       hec_endpoint: "HECEndpoint",
    #       hec_endpoint_type: "Raw", # accepts Raw, Event
    #       hec_token: "HECToken",
    #       hec_acknowledgment_timeout_in_seconds: 1,
    #       retry_options: {
    #         duration_in_seconds: 1,
    #       },
    #       s3_backup_mode: "FailedEventsOnly", # accepts FailedEventsOnly, AllEvents
    #       s3_update: {
    #         role_arn: "RoleARN",
    #         bucket_arn: "BucketARN",
    #         prefix: "Prefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1,
    #         },
    #         compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy
    #         encryption_configuration: {
    #           no_encryption_config: "NoEncryption", # accepts NoEncryption
    #           kms_encryption_config: {
    #             awskms_key_arn: "AWSKMSKeyARN", # required
    #           },
    #         },
    #         cloud_watch_logging_options: {
    #           enabled: false,
    #           log_group_name: "LogGroupName",
    #           log_stream_name: "LogStreamName",
    #         },
    #       },
    #       processing_configuration: {
    #         enabled: false,
    #         processors: [
    #           {
    #             type: "Lambda", # required, accepts Lambda
    #             parameters: [
    #               {
    #                 parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds
    #                 parameter_value: "ProcessorParameterValue", # required
    #               },
    #             ],
    #           },
    #         ],
    #       },
    #       cloud_watch_logging_options: {
    #         enabled: false,
    #         log_group_name: "LogGroupName",
    #         log_stream_name: "LogStreamName",
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/UpdateDestination AWS API Documentation
    #
    # @overload update_destination(params = {})
    # @param [Hash] params ({})
    def update_destination(params = {}, options = {})
      req = build_request(:update_destination, params)
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
      context[:gem_name] = 'aws-sdk-firehose'
      context[:gem_version] = '1.6.0'
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
