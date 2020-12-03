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

Aws::Plugins::GlobalConfiguration.add_identifier(:firehose)

module Aws::Firehose
  # An API client for Firehose.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Firehose::Client.new(
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

    # Creates a Kinesis Data Firehose delivery stream.
    #
    # By default, you can create up to 50 delivery streams per AWS Region.
    #
    # This is an asynchronous operation that immediately returns. The
    # initial status of the delivery stream is `CREATING`. After the
    # delivery stream is created, its status is `ACTIVE` and it now accepts
    # data. If the delivery stream creation fails, the status transitions to
    # `CREATING_FAILED`. Attempts to send data to a delivery stream that is
    # not in the `ACTIVE` state cause an exception. To check the state of a
    # delivery stream, use DescribeDeliveryStream.
    #
    # If the status of a delivery stream is `CREATING_FAILED`, this status
    # doesn't change, and you can't invoke `CreateDeliveryStream` again on
    # it. However, you can invoke the DeleteDeliveryStream operation to
    # delete it.
    #
    # A Kinesis Data Firehose delivery stream can be configured to receive
    # records directly from providers using PutRecord or PutRecordBatch, or
    # it can be configured to use an existing Kinesis stream as its source.
    # To specify a Kinesis data stream as input, set the
    # `DeliveryStreamType` parameter to `KinesisStreamAsSource`, and provide
    # the Kinesis stream Amazon Resource Name (ARN) and role ARN in the
    # `KinesisStreamSourceConfiguration` parameter.
    #
    # To create a delivery stream with server-side encryption (SSE) enabled,
    # include DeliveryStreamEncryptionConfigurationInput in your request.
    # This is optional. You can also invoke StartDeliveryStreamEncryption to
    # turn on SSE for an existing delivery stream that doesn't have SSE
    # enabled.
    #
    # A delivery stream is configured with a single destination: Amazon S3,
    # Amazon ES, Amazon Redshift, or Splunk. You must specify only one of
    # the following destination configuration parameters:
    # `ExtendedS3DestinationConfiguration`, `S3DestinationConfiguration`,
    # `ElasticsearchDestinationConfiguration`,
    # `RedshiftDestinationConfiguration`, or
    # `SplunkDestinationConfiguration`.
    #
    # When you specify `S3DestinationConfiguration`, you can also provide
    # the following optional values: BufferingHints,
    # `EncryptionConfiguration`, and `CompressionFormat`. By default, if no
    # `BufferingHints` value is provided, Kinesis Data Firehose buffers data
    # up to 5 MB or for 5 minutes, whichever condition is satisfied first.
    # `BufferingHints` is a hint, so there are some cases where the service
    # cannot adhere to these conditions strictly. For example, record
    # boundaries might be such that the size is a little over or under the
    # configured buffering size. By default, no encryption is performed. We
    # strongly recommend that you enable encryption to ensure secure data
    # storage in Amazon S3.
    #
    # A few notes about Amazon Redshift as a destination:
    #
    # * An Amazon Redshift destination requires an S3 bucket as intermediate
    #   location. Kinesis Data Firehose first delivers data to Amazon S3 and
    #   then uses `COPY` syntax to load data into an Amazon Redshift table.
    #   This is specified in the
    #   `RedshiftDestinationConfiguration.S3Configuration` parameter.
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
    # [1]: https://docs.aws.amazon.com/firehose/latest/dev/controlling-access.html#using-iam-s3
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
    # @option params [Types::DeliveryStreamEncryptionConfigurationInput] :delivery_stream_encryption_configuration_input
    #   Used to specify the type and Amazon Resource Name (ARN) of the KMS key
    #   needed for Server-Side Encryption (SSE).
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
    # @option params [Types::HttpEndpointDestinationConfiguration] :http_endpoint_destination_configuration
    #   Enables configuring Kinesis Firehose to deliver data to any HTTP
    #   endpoint destination. You can specify only one destination.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A set of tags to assign to the delivery stream. A tag is a key-value
    #   pair that you can define and assign to AWS resources. Tags are
    #   metadata. For example, you can add friendly names and descriptions or
    #   other types of information that can help you distinguish the delivery
    #   stream. For more information about tags, see [Using Cost Allocation
    #   Tags][1] in the AWS Billing and Cost Management User Guide.
    #
    #   You can specify up to 50 tags when creating a delivery stream.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html
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
    #     delivery_stream_encryption_configuration_input: {
    #       key_arn: "AWSKMSKeyARN",
    #       key_type: "AWS_OWNED_CMK", # required, accepts AWS_OWNED_CMK, CUSTOMER_MANAGED_CMK
    #     },
    #     s3_destination_configuration: {
    #       role_arn: "RoleARN", # required
    #       bucket_arn: "BucketARN", # required
    #       prefix: "Prefix",
    #       error_output_prefix: "ErrorOutputPrefix",
    #       buffering_hints: {
    #         size_in_m_bs: 1,
    #         interval_in_seconds: 1,
    #       },
    #       compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
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
    #       error_output_prefix: "ErrorOutputPrefix",
    #       buffering_hints: {
    #         size_in_m_bs: 1,
    #         interval_in_seconds: 1,
    #       },
    #       compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
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
    #         error_output_prefix: "ErrorOutputPrefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1,
    #         },
    #         compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
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
    #         error_output_prefix: "ErrorOutputPrefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1,
    #         },
    #         compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
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
    #         error_output_prefix: "ErrorOutputPrefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1,
    #         },
    #         compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
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
    #       domain_arn: "ElasticsearchDomainARN",
    #       cluster_endpoint: "ElasticsearchClusterEndpoint",
    #       index_name: "ElasticsearchIndexName", # required
    #       type_name: "ElasticsearchTypeName",
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
    #         error_output_prefix: "ErrorOutputPrefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1,
    #         },
    #         compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
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
    #       vpc_configuration: {
    #         subnet_ids: ["NonEmptyStringWithoutWhitespace"], # required
    #         role_arn: "RoleARN", # required
    #         security_group_ids: ["NonEmptyStringWithoutWhitespace"], # required
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
    #         error_output_prefix: "ErrorOutputPrefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1,
    #         },
    #         compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
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
    #     http_endpoint_destination_configuration: {
    #       endpoint_configuration: { # required
    #         url: "HttpEndpointUrl", # required
    #         name: "HttpEndpointName",
    #         access_key: "HttpEndpointAccessKey",
    #       },
    #       buffering_hints: {
    #         size_in_m_bs: 1,
    #         interval_in_seconds: 1,
    #       },
    #       cloud_watch_logging_options: {
    #         enabled: false,
    #         log_group_name: "LogGroupName",
    #         log_stream_name: "LogStreamName",
    #       },
    #       request_configuration: {
    #         content_encoding: "NONE", # accepts NONE, GZIP
    #         common_attributes: [
    #           {
    #             attribute_name: "HttpEndpointAttributeName", # required
    #             attribute_value: "HttpEndpointAttributeValue", # required
    #           },
    #         ],
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
    #       role_arn: "RoleARN",
    #       retry_options: {
    #         duration_in_seconds: 1,
    #       },
    #       s3_backup_mode: "FailedDataOnly", # accepts FailedDataOnly, AllData
    #       s3_configuration: { # required
    #         role_arn: "RoleARN", # required
    #         bucket_arn: "BucketARN", # required
    #         prefix: "Prefix",
    #         error_output_prefix: "ErrorOutputPrefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1,
    #         },
    #         compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
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
    #     },
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
    # To check the state of a delivery stream, use DescribeDeliveryStream.
    # You can delete a delivery stream only if it is in one of the following
    # states: `ACTIVE`, `DELETING`, `CREATING_FAILED`, or `DELETING_FAILED`.
    # You can't delete a delivery stream that is in the `CREATING` state.
    # While the deletion request is in process, the delivery stream is in
    # the `DELETING` state.
    #
    # While the delivery stream is in the `DELETING` state, the service
    # might continue to accept records, but it doesn't make any guarantees
    # with respect to delivering the data. Therefore, as a best practice,
    # first stop any applications that are sending records before you delete
    # a delivery stream.
    #
    # @option params [required, String] :delivery_stream_name
    #   The name of the delivery stream.
    #
    # @option params [Boolean] :allow_force_delete
    #   Set this to true if you want to delete the delivery stream even if
    #   Kinesis Data Firehose is unable to retire the grant for the CMK.
    #   Kinesis Data Firehose might be unable to retire the grant due to a
    #   customer error, such as when the CMK or the grant are in an invalid
    #   state. If you force deletion, you can then use the [RevokeGrant][1]
    #   operation to revoke the grant you gave to Kinesis Data Firehose. If a
    #   failure to retire the grant happens due to an AWS KMS issue, Kinesis
    #   Data Firehose keeps retrying the delete operation.
    #
    #   The default value is false.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/APIReference/API_RevokeGrant.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_delivery_stream({
    #     delivery_stream_name: "DeliveryStreamName", # required
    #     allow_force_delete: false,
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

    # Describes the specified delivery stream and its status. For example,
    # after your delivery stream is created, call `DescribeDeliveryStream`
    # to see whether the delivery stream is `ACTIVE` and therefore ready for
    # data to be sent to it.
    #
    # If the status of a delivery stream is `CREATING_FAILED`, this status
    # doesn't change, and you can't invoke CreateDeliveryStream again on
    # it. However, you can invoke the DeleteDeliveryStream operation to
    # delete it. If the status is `DELETING_FAILED`, you can force deletion
    # by invoking DeleteDeliveryStream again but with
    # DeleteDeliveryStreamInput$AllowForceDelete set to true.
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
    #   resp.delivery_stream_description.delivery_stream_status #=> String, one of "CREATING", "CREATING_FAILED", "DELETING", "DELETING_FAILED", "ACTIVE"
    #   resp.delivery_stream_description.failure_description.type #=> String, one of "RETIRE_KMS_GRANT_FAILED", "CREATE_KMS_GRANT_FAILED", "KMS_ACCESS_DENIED", "DISABLED_KMS_KEY", "INVALID_KMS_KEY", "KMS_KEY_NOT_FOUND", "KMS_OPT_IN_REQUIRED", "CREATE_ENI_FAILED", "DELETE_ENI_FAILED", "SUBNET_NOT_FOUND", "SECURITY_GROUP_NOT_FOUND", "ENI_ACCESS_DENIED", "SUBNET_ACCESS_DENIED", "SECURITY_GROUP_ACCESS_DENIED", "UNKNOWN_ERROR"
    #   resp.delivery_stream_description.failure_description.details #=> String
    #   resp.delivery_stream_description.delivery_stream_encryption_configuration.key_arn #=> String
    #   resp.delivery_stream_description.delivery_stream_encryption_configuration.key_type #=> String, one of "AWS_OWNED_CMK", "CUSTOMER_MANAGED_CMK"
    #   resp.delivery_stream_description.delivery_stream_encryption_configuration.status #=> String, one of "ENABLED", "ENABLING", "ENABLING_FAILED", "DISABLED", "DISABLING", "DISABLING_FAILED"
    #   resp.delivery_stream_description.delivery_stream_encryption_configuration.failure_description.type #=> String, one of "RETIRE_KMS_GRANT_FAILED", "CREATE_KMS_GRANT_FAILED", "KMS_ACCESS_DENIED", "DISABLED_KMS_KEY", "INVALID_KMS_KEY", "KMS_KEY_NOT_FOUND", "KMS_OPT_IN_REQUIRED", "CREATE_ENI_FAILED", "DELETE_ENI_FAILED", "SUBNET_NOT_FOUND", "SECURITY_GROUP_NOT_FOUND", "ENI_ACCESS_DENIED", "SUBNET_ACCESS_DENIED", "SECURITY_GROUP_ACCESS_DENIED", "UNKNOWN_ERROR"
    #   resp.delivery_stream_description.delivery_stream_encryption_configuration.failure_description.details #=> String
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
    #   resp.delivery_stream_description.destinations[0].s3_destination_description.error_output_prefix #=> String
    #   resp.delivery_stream_description.destinations[0].s3_destination_description.buffering_hints.size_in_m_bs #=> Integer
    #   resp.delivery_stream_description.destinations[0].s3_destination_description.buffering_hints.interval_in_seconds #=> Integer
    #   resp.delivery_stream_description.destinations[0].s3_destination_description.compression_format #=> String, one of "UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"
    #   resp.delivery_stream_description.destinations[0].s3_destination_description.encryption_configuration.no_encryption_config #=> String, one of "NoEncryption"
    #   resp.delivery_stream_description.destinations[0].s3_destination_description.encryption_configuration.kms_encryption_config.awskms_key_arn #=> String
    #   resp.delivery_stream_description.destinations[0].s3_destination_description.cloud_watch_logging_options.enabled #=> Boolean
    #   resp.delivery_stream_description.destinations[0].s3_destination_description.cloud_watch_logging_options.log_group_name #=> String
    #   resp.delivery_stream_description.destinations[0].s3_destination_description.cloud_watch_logging_options.log_stream_name #=> String
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.role_arn #=> String
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.bucket_arn #=> String
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.prefix #=> String
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.error_output_prefix #=> String
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.buffering_hints.size_in_m_bs #=> Integer
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.buffering_hints.interval_in_seconds #=> Integer
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.compression_format #=> String, one of "UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"
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
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.s3_backup_description.error_output_prefix #=> String
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.s3_backup_description.buffering_hints.size_in_m_bs #=> Integer
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.s3_backup_description.buffering_hints.interval_in_seconds #=> Integer
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.s3_backup_description.compression_format #=> String, one of "UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"
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
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.s3_destination_description.error_output_prefix #=> String
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.s3_destination_description.buffering_hints.size_in_m_bs #=> Integer
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.s3_destination_description.buffering_hints.interval_in_seconds #=> Integer
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.s3_destination_description.compression_format #=> String, one of "UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"
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
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.s3_backup_description.error_output_prefix #=> String
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.s3_backup_description.buffering_hints.size_in_m_bs #=> Integer
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.s3_backup_description.buffering_hints.interval_in_seconds #=> Integer
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.s3_backup_description.compression_format #=> String, one of "UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"
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
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.cluster_endpoint #=> String
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
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.s3_destination_description.error_output_prefix #=> String
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.s3_destination_description.buffering_hints.size_in_m_bs #=> Integer
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.s3_destination_description.buffering_hints.interval_in_seconds #=> Integer
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.s3_destination_description.compression_format #=> String, one of "UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"
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
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.vpc_configuration_description.subnet_ids #=> Array
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.vpc_configuration_description.subnet_ids[0] #=> String
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.vpc_configuration_description.role_arn #=> String
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.vpc_configuration_description.security_group_ids #=> Array
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.vpc_configuration_description.security_group_ids[0] #=> String
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.vpc_configuration_description.vpc_id #=> String
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.hec_endpoint #=> String
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.hec_endpoint_type #=> String, one of "Raw", "Event"
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.hec_token #=> String
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.hec_acknowledgment_timeout_in_seconds #=> Integer
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.retry_options.duration_in_seconds #=> Integer
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.s3_backup_mode #=> String, one of "FailedEventsOnly", "AllEvents"
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.s3_destination_description.role_arn #=> String
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.s3_destination_description.bucket_arn #=> String
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.s3_destination_description.prefix #=> String
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.s3_destination_description.error_output_prefix #=> String
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.s3_destination_description.buffering_hints.size_in_m_bs #=> Integer
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.s3_destination_description.buffering_hints.interval_in_seconds #=> Integer
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.s3_destination_description.compression_format #=> String, one of "UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"
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
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.endpoint_configuration.url #=> String
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.endpoint_configuration.name #=> String
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.buffering_hints.size_in_m_bs #=> Integer
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.buffering_hints.interval_in_seconds #=> Integer
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.cloud_watch_logging_options.enabled #=> Boolean
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.cloud_watch_logging_options.log_group_name #=> String
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.cloud_watch_logging_options.log_stream_name #=> String
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.request_configuration.content_encoding #=> String, one of "NONE", "GZIP"
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.request_configuration.common_attributes #=> Array
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.request_configuration.common_attributes[0].attribute_name #=> String
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.request_configuration.common_attributes[0].attribute_value #=> String
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.processing_configuration.enabled #=> Boolean
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.processing_configuration.processors #=> Array
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.processing_configuration.processors[0].type #=> String, one of "Lambda"
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.processing_configuration.processors[0].parameters #=> Array
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.processing_configuration.processors[0].parameters[0].parameter_name #=> String, one of "LambdaArn", "NumberOfRetries", "RoleArn", "BufferSizeInMBs", "BufferIntervalInSeconds"
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.processing_configuration.processors[0].parameters[0].parameter_value #=> String
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.role_arn #=> String
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.retry_options.duration_in_seconds #=> Integer
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.s3_backup_mode #=> String, one of "FailedDataOnly", "AllData"
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.s3_destination_description.role_arn #=> String
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.s3_destination_description.bucket_arn #=> String
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.s3_destination_description.prefix #=> String
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.s3_destination_description.error_output_prefix #=> String
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.s3_destination_description.buffering_hints.size_in_m_bs #=> Integer
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.s3_destination_description.buffering_hints.interval_in_seconds #=> Integer
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.s3_destination_description.compression_format #=> String, one of "UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.s3_destination_description.encryption_configuration.no_encryption_config #=> String, one of "NoEncryption"
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.s3_destination_description.encryption_configuration.kms_encryption_config.awskms_key_arn #=> String
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.s3_destination_description.cloud_watch_logging_options.enabled #=> Boolean
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.s3_destination_description.cloud_watch_logging_options.log_group_name #=> String
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.s3_destination_description.cloud_watch_logging_options.log_stream_name #=> String
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

    # Lists your delivery streams in alphabetical order of their names.
    #
    # The number of delivery streams might be too large to return using a
    # single call to `ListDeliveryStreams`. You can limit the number of
    # delivery streams returned, using the `Limit` parameter. To determine
    # whether there are more delivery streams to list, check the value of
    # `HasMoreDeliveryStreams` in the output. If there are more delivery
    # streams to list, you can request them by calling this operation again
    # and setting the `ExclusiveStartDeliveryStreamName` parameter to the
    # name of the last delivery stream returned in the last call.
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
    #   The list of delivery streams returned by this call to
    #   `ListDeliveryStreams` will start with the delivery stream whose name
    #   comes alphabetically immediately after the name you specify in
    #   `ExclusiveStartDeliveryStreamName`.
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
    # Don't concatenate two or more base64 strings to form the data fields
    # of your records. Instead, concatenate the raw data, then perform
    # base64 encoding.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/firehose/latest/dev/limits.html
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
    #   * {Types::PutRecordOutput#encrypted #encrypted} => Boolean
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
    #   resp.encrypted #=> Boolean
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
    # For information about service quota, see [Amazon Kinesis Data Firehose
    # Quota][1].
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
    # `FailedPutCount`, and an array of responses, `RequestResponses`. Even
    # if the PutRecordBatch call succeeds, the value of `FailedPutCount` may
    # be greater than 0, indicating that there are records for which the
    # operation didn't succeed. Each entry in the `RequestResponses` array
    # provides additional information about the processed record. It
    # directly correlates with a record in the request array using the same
    # ordering, from the top to the bottom. The response array always
    # includes the same number of records as the request array.
    # `RequestResponses` includes both successfully and unsuccessfully
    # processed records. Kinesis Data Firehose tries to process all records
    # in each PutRecordBatch request. A single record failure does not stop
    # the processing of subsequent records.
    #
    # A successfully processed record includes a `RecordId` value, which is
    # unique for the record. An unsuccessfully processed record includes
    # `ErrorCode` and `ErrorMessage` values. `ErrorCode` reflects the type
    # of error, and is one of the following values:
    # `ServiceUnavailableException` or `InternalFailure`. `ErrorMessage`
    # provides more detailed information about the error.
    #
    # If there is an internal server error or a timeout, the write might
    # have completed or it might have failed. If `FailedPutCount` is greater
    # than 0, retry the request, resending only those records that might
    # have failed processing. This minimizes the possible duplicate records
    # and also reduces the total bytes sent (and corresponding charges). We
    # recommend that you handle any duplicates at the destination.
    #
    # If PutRecordBatch throws `ServiceUnavailableException`, back off and
    # retry. If the exception persists, it is possible that the throughput
    # limits have been exceeded for the delivery stream.
    #
    # Data records sent to Kinesis Data Firehose are stored for 24 hours
    # from the time they are added to a delivery stream as it attempts to
    # send the records to the destination. If the destination is unreachable
    # for more than 24 hours, the data is no longer available.
    #
    # Don't concatenate two or more base64 strings to form the data fields
    # of your records. Instead, concatenate the raw data, then perform
    # base64 encoding.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/firehose/latest/dev/limits.html
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
    #   * {Types::PutRecordBatchOutput#encrypted #encrypted} => Boolean
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
    #   resp.encrypted #=> Boolean
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

    # Enables server-side encryption (SSE) for the delivery stream.
    #
    # This operation is asynchronous. It returns immediately. When you
    # invoke it, Kinesis Data Firehose first sets the encryption status of
    # the stream to `ENABLING`, and then to `ENABLED`. The encryption status
    # of a delivery stream is the `Status` property in
    # DeliveryStreamEncryptionConfiguration. If the operation fails, the
    # encryption status changes to `ENABLING_FAILED`. You can continue to
    # read and write data to your delivery stream while the encryption
    # status is `ENABLING`, but the data is not encrypted. It can take up to
    # 5 seconds after the encryption status changes to `ENABLED` before all
    # records written to the delivery stream are encrypted. To find out
    # whether a record or a batch of records was encrypted, check the
    # response elements PutRecordOutput$Encrypted and
    # PutRecordBatchOutput$Encrypted, respectively.
    #
    # To check the encryption status of a delivery stream, use
    # DescribeDeliveryStream.
    #
    # Even if encryption is currently enabled for a delivery stream, you can
    # still invoke this operation on it to change the ARN of the CMK or both
    # its type and ARN. If you invoke this method to change the CMK, and the
    # old CMK is of type `CUSTOMER_MANAGED_CMK`, Kinesis Data Firehose
    # schedules the grant it had on the old CMK for retirement. If the new
    # CMK is of type `CUSTOMER_MANAGED_CMK`, Kinesis Data Firehose creates a
    # grant that enables it to use the new CMK to encrypt and decrypt data
    # and to manage the grant.
    #
    # If a delivery stream already has encryption enabled and then you
    # invoke this operation to change the ARN of the CMK or both its type
    # and ARN and you get `ENABLING_FAILED`, this only means that the
    # attempt to change the CMK failed. In this case, encryption remains
    # enabled with the old CMK.
    #
    # If the encryption status of your delivery stream is `ENABLING_FAILED`,
    # you can invoke this operation again with a valid CMK. The CMK must be
    # enabled and the key policy mustn't explicitly deny the permission for
    # Kinesis Data Firehose to invoke KMS encrypt and decrypt operations.
    #
    # You can enable SSE for a delivery stream only if it's a delivery
    # stream that uses `DirectPut` as its source.
    #
    # The `StartDeliveryStreamEncryption` and `StopDeliveryStreamEncryption`
    # operations have a combined limit of 25 calls per delivery stream per
    # 24 hours. For example, you reach the limit if you call
    # `StartDeliveryStreamEncryption` 13 times and
    # `StopDeliveryStreamEncryption` 12 times for the same delivery stream
    # in a 24-hour period.
    #
    # @option params [required, String] :delivery_stream_name
    #   The name of the delivery stream for which you want to enable
    #   server-side encryption (SSE).
    #
    # @option params [Types::DeliveryStreamEncryptionConfigurationInput] :delivery_stream_encryption_configuration_input
    #   Used to specify the type and Amazon Resource Name (ARN) of the KMS key
    #   needed for Server-Side Encryption (SSE).
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_delivery_stream_encryption({
    #     delivery_stream_name: "DeliveryStreamName", # required
    #     delivery_stream_encryption_configuration_input: {
    #       key_arn: "AWSKMSKeyARN",
    #       key_type: "AWS_OWNED_CMK", # required, accepts AWS_OWNED_CMK, CUSTOMER_MANAGED_CMK
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/StartDeliveryStreamEncryption AWS API Documentation
    #
    # @overload start_delivery_stream_encryption(params = {})
    # @param [Hash] params ({})
    def start_delivery_stream_encryption(params = {}, options = {})
      req = build_request(:start_delivery_stream_encryption, params)
      req.send_request(options)
    end

    # Disables server-side encryption (SSE) for the delivery stream.
    #
    # This operation is asynchronous. It returns immediately. When you
    # invoke it, Kinesis Data Firehose first sets the encryption status of
    # the stream to `DISABLING`, and then to `DISABLED`. You can continue to
    # read and write data to your stream while its status is `DISABLING`. It
    # can take up to 5 seconds after the encryption status changes to
    # `DISABLED` before all records written to the delivery stream are no
    # longer subject to encryption. To find out whether a record or a batch
    # of records was encrypted, check the response elements
    # PutRecordOutput$Encrypted and PutRecordBatchOutput$Encrypted,
    # respectively.
    #
    # To check the encryption state of a delivery stream, use
    # DescribeDeliveryStream.
    #
    # If SSE is enabled using a customer managed CMK and then you invoke
    # `StopDeliveryStreamEncryption`, Kinesis Data Firehose schedules the
    # related KMS grant for retirement and then retires it after it ensures
    # that it is finished delivering records to the destination.
    #
    # The `StartDeliveryStreamEncryption` and `StopDeliveryStreamEncryption`
    # operations have a combined limit of 25 calls per delivery stream per
    # 24 hours. For example, you reach the limit if you call
    # `StartDeliveryStreamEncryption` 13 times and
    # `StopDeliveryStreamEncryption` 12 times for the same delivery stream
    # in a 24-hour period.
    #
    # @option params [required, String] :delivery_stream_name
    #   The name of the delivery stream for which you want to disable
    #   server-side encryption (SSE).
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_delivery_stream_encryption({
    #     delivery_stream_name: "DeliveryStreamName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/StopDeliveryStreamEncryption AWS API Documentation
    #
    # @overload stop_delivery_stream_encryption(params = {})
    # @param [Hash] params ({})
    def stop_delivery_stream_encryption(params = {}, options = {})
      req = build_request(:stop_delivery_stream_encryption, params)
      req.send_request(options)
    end

    # Adds or updates tags for the specified delivery stream. A tag is a
    # key-value pair that you can define and assign to AWS resources. If you
    # specify a tag that already exists, the tag value is replaced with the
    # value that you specify in the request. Tags are metadata. For example,
    # you can add friendly names and descriptions or other types of
    # information that can help you distinguish the delivery stream. For
    # more information about tags, see [Using Cost Allocation Tags][1] in
    # the *AWS Billing and Cost Management User Guide*.
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
    # Kinesis Data Firehose uses `CurrentDeliveryStreamVersionId` to avoid
    # race conditions and conflicting merges. This is a required field, and
    # the service updates the configuration only if the existing
    # configuration has a version ID that matches. After the update is
    # applied successfully, the version ID is updated, and can be retrieved
    # using DescribeDeliveryStream. Use the new version ID to set
    # `CurrentDeliveryStreamVersionId` in the next call.
    #
    # @option params [required, String] :delivery_stream_name
    #   The name of the delivery stream.
    #
    # @option params [required, String] :current_delivery_stream_version_id
    #   Obtain this value from the `VersionId` result of
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
    # @option params [Types::HttpEndpointDestinationUpdate] :http_endpoint_destination_update
    #   Describes an update to the specified HTTP endpoint destination.
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
    #       error_output_prefix: "ErrorOutputPrefix",
    #       buffering_hints: {
    #         size_in_m_bs: 1,
    #         interval_in_seconds: 1,
    #       },
    #       compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
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
    #       error_output_prefix: "ErrorOutputPrefix",
    #       buffering_hints: {
    #         size_in_m_bs: 1,
    #         interval_in_seconds: 1,
    #       },
    #       compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
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
    #         error_output_prefix: "ErrorOutputPrefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1,
    #         },
    #         compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
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
    #         error_output_prefix: "ErrorOutputPrefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1,
    #         },
    #         compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
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
    #         error_output_prefix: "ErrorOutputPrefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1,
    #         },
    #         compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
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
    #       cluster_endpoint: "ElasticsearchClusterEndpoint",
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
    #         error_output_prefix: "ErrorOutputPrefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1,
    #         },
    #         compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
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
    #         error_output_prefix: "ErrorOutputPrefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1,
    #         },
    #         compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
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
    #     http_endpoint_destination_update: {
    #       endpoint_configuration: {
    #         url: "HttpEndpointUrl", # required
    #         name: "HttpEndpointName",
    #         access_key: "HttpEndpointAccessKey",
    #       },
    #       buffering_hints: {
    #         size_in_m_bs: 1,
    #         interval_in_seconds: 1,
    #       },
    #       cloud_watch_logging_options: {
    #         enabled: false,
    #         log_group_name: "LogGroupName",
    #         log_stream_name: "LogStreamName",
    #       },
    #       request_configuration: {
    #         content_encoding: "NONE", # accepts NONE, GZIP
    #         common_attributes: [
    #           {
    #             attribute_name: "HttpEndpointAttributeName", # required
    #             attribute_value: "HttpEndpointAttributeValue", # required
    #           },
    #         ],
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
    #       role_arn: "RoleARN",
    #       retry_options: {
    #         duration_in_seconds: 1,
    #       },
    #       s3_backup_mode: "FailedDataOnly", # accepts FailedDataOnly, AllData
    #       s3_update: {
    #         role_arn: "RoleARN",
    #         bucket_arn: "BucketARN",
    #         prefix: "Prefix",
    #         error_output_prefix: "ErrorOutputPrefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1,
    #         },
    #         compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
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
      context[:gem_version] = '1.35.0'
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
