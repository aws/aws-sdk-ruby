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
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration::IDENTIFIERS << :firehose

module Aws
  module Firehose
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

      # Creates a delivery stream.
      #
      # CreateDeliveryStream is an asynchronous operation that immediately
      # returns. The initial status of the delivery stream is `CREATING`.
      # After the delivery stream is created, its status is `ACTIVE` and it
      # now accepts data. Attempts to send data to a delivery stream that is
      # not in the `ACTIVE` state cause an exception. To check the state of a
      # delivery stream, use DescribeDeliveryStream.
      #
      # The name of a delivery stream identifies it. You can't have two
      # delivery streams with the same name in the same region. Two delivery
      # streams in different AWS accounts or different regions in the same AWS
      # account can have the same name.
      #
      # By default, you can create up to 20 delivery streams per region.
      #
      # A delivery stream can only be configured with a single destination,
      # Amazon S3, Amazon Elasticsearch Service, or Amazon Redshift. For
      # correct CreateDeliveryStream request syntax, specify only one
      # destination configuration parameter: either
      # **S3DestinationConfiguration**,
      # **ElasticsearchDestinationConfiguration**, or
      # **RedshiftDestinationConfiguration**.
      #
      # As part of **S3DestinationConfiguration**, optional values
      # **BufferingHints**, **EncryptionConfiguration**, and
      # **CompressionFormat** can be provided. By default, if no
      # **BufferingHints** value is provided, Firehose buffers data up to 5 MB
      # or for 5 minutes, whichever condition is satisfied first. Note that
      # **BufferingHints** is a hint, so there are some cases where the
      # service cannot adhere to these conditions strictly; for example,
      # record boundaries are such that the size is a little over or under the
      # configured buffering size. By default, no encryption is performed. We
      # strongly recommend that you enable encryption to ensure secure data
      # storage in Amazon S3.
      #
      # A few notes about **RedshiftDestinationConfiguration**\:
      #
      # * An Amazon Redshift destination requires an S3 bucket as intermediate
      #   location, as Firehose first delivers data to S3 and then uses `COPY`
      #   syntax to load data into an Amazon Redshift table. This is specified
      #   in the **RedshiftDestinationConfiguration.S3Configuration**
      #   parameter element.
      #
      # * The compression formats `SNAPPY` or `ZIP` cannot be specified in
      #   **RedshiftDestinationConfiguration.S3Configuration** because the
      #   Amazon Redshift `COPY` operation that reads from the S3 bucket
      #   doesn't support these compression formats.
      #
      # * We strongly recommend that the username and password provided is
      #   used exclusively for Firehose purposes, and that the permissions for
      #   the account are restricted for Amazon Redshift `INSERT` permissions.
      #
      # Firehose assumes the IAM role that is configured as part of
      # destinations. The IAM role should allow the Firehose principal to
      # assume the role, and the role should have permissions that allows the
      # service to deliver the data. For more information, see [Amazon S3
      # Bucket Access][1] in the *Amazon Kinesis Firehose Developer Guide*.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/firehose/latest/dev/controlling-access.html#using-iam-s3
      # @option params [required, String] :delivery_stream_name
      #   The name of the delivery stream.
      # @option params [Types::S3DestinationConfiguration] :s3_destination_configuration
      #   The destination in Amazon S3. This value must be specified if
      #   **ElasticsearchDestinationConfiguration** or
      #   **RedshiftDestinationConfiguration** is specified (see restrictions
      #   listed above).
      # @option params [Types::RedshiftDestinationConfiguration] :redshift_destination_configuration
      #   The destination in Amazon Redshift. This value cannot be specified if
      #   Amazon S3 or Amazon Elasticsearch is the desired destination (see
      #   restrictions listed above).
      # @option params [Types::ElasticsearchDestinationConfiguration] :elasticsearch_destination_configuration
      #   The destination in Amazon ES. This value cannot be specified if Amazon
      #   S3 or Amazon Redshift is the desired destination (see restrictions
      #   listed above).
      # @return [Types::CreateDeliveryStreamOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateDeliveryStreamOutput#delivery_stream_arn #DeliveryStreamARN} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_delivery_stream({
      #     delivery_stream_name: "DeliveryStreamName", # required
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
      #     redshift_destination_configuration: {
      #       role_arn: "RoleARN", # required
      #       cluster_jdbcurl: "ClusterJDBCURL", # required
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
      #       cloud_watch_logging_options: {
      #         enabled: false,
      #         log_group_name: "LogGroupName",
      #         log_stream_name: "LogStreamName",
      #       },
      #     },
      #   })
      #
      # @example Response structure
      #   resp.delivery_stream_arn #=> String
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
      # While the delivery stream is `DELETING` state, the service may
      # continue to accept the records, but the service doesn't make any
      # guarantees with respect to delivering the data. Therefore, as a best
      # practice, you should first stop any applications that are sending
      # records before deleting a delivery stream.
      # @option params [required, String] :delivery_stream_name
      #   The name of the delivery stream.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_delivery_stream({
      #     delivery_stream_name: "DeliveryStreamName", # required
      #   })
      # @overload delete_delivery_stream(params = {})
      # @param [Hash] params ({})
      def delete_delivery_stream(params = {}, options = {})
        req = build_request(:delete_delivery_stream, params)
        req.send_request(options)
      end

      # Describes the specified delivery stream and gets the status. For
      # example, after your delivery stream is created, call
      # DescribeDeliveryStream to see if the delivery stream is `ACTIVE` and
      # therefore ready for data to be sent to it.
      # @option params [required, String] :delivery_stream_name
      #   The name of the delivery stream.
      # @option params [Integer] :limit
      #   The limit on the number of destinations to return. Currently, you can
      #   have one destination per delivery stream.
      # @option params [String] :exclusive_start_destination_id
      #   Specifies the destination ID to start returning the destination
      #   information. Currently Firehose supports one destination per delivery
      #   stream.
      # @return [Types::DescribeDeliveryStreamOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeDeliveryStreamOutput#delivery_stream_description #DeliveryStreamDescription} => Types::DeliveryStreamDescription
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_delivery_stream({
      #     delivery_stream_name: "DeliveryStreamName", # required
      #     limit: 1,
      #     exclusive_start_destination_id: "DestinationId",
      #   })
      #
      # @example Response structure
      #   resp.delivery_stream_description.delivery_stream_name #=> String
      #   resp.delivery_stream_description.delivery_stream_arn #=> String
      #   resp.delivery_stream_description.delivery_stream_status #=> String, one of "CREATING", "DELETING", "ACTIVE"
      #   resp.delivery_stream_description.version_id #=> String
      #   resp.delivery_stream_description.create_timestamp #=> Time
      #   resp.delivery_stream_description.last_update_timestamp #=> Time
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
      #   resp.delivery_stream_description.destinations[0].redshift_destination_description.role_arn #=> String
      #   resp.delivery_stream_description.destinations[0].redshift_destination_description.cluster_jdbcurl #=> String
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
      #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.cloud_watch_logging_options.enabled #=> Boolean
      #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.cloud_watch_logging_options.log_group_name #=> String
      #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.cloud_watch_logging_options.log_stream_name #=> String
      #   resp.delivery_stream_description.has_more_destinations #=> Boolean
      # @overload describe_delivery_stream(params = {})
      # @param [Hash] params ({})
      def describe_delivery_stream(params = {}, options = {})
        req = build_request(:describe_delivery_stream, params)
        req.send_request(options)
      end

      # Lists your delivery streams.
      #
      # The number of delivery streams might be too large to return using a
      # single call to ListDeliveryStreams. You can limit the number of
      # delivery streams returned, using the **Limit** parameter. To determine
      # whether there are more delivery streams to list, check the value of
      # **HasMoreDeliveryStreams** in the output. If there are more delivery
      # streams to list, you can request them by specifying the name of the
      # last delivery stream returned in the call in the
      # **ExclusiveStartDeliveryStreamName** parameter of a subsequent call.
      # @option params [Integer] :limit
      #   The maximum number of delivery streams to list.
      # @option params [String] :exclusive_start_delivery_stream_name
      #   The name of the delivery stream to start the list with.
      # @return [Types::ListDeliveryStreamsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListDeliveryStreamsOutput#delivery_stream_names #DeliveryStreamNames} => Array&lt;String&gt;
      #   * {Types::ListDeliveryStreamsOutput#has_more_delivery_streams #HasMoreDeliveryStreams} => Boolean
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_delivery_streams({
      #     limit: 1,
      #     exclusive_start_delivery_stream_name: "DeliveryStreamName",
      #   })
      #
      # @example Response structure
      #   resp.delivery_stream_names #=> Array
      #   resp.delivery_stream_names[0] #=> String
      #   resp.has_more_delivery_streams #=> Boolean
      # @overload list_delivery_streams(params = {})
      # @param [Hash] params ({})
      def list_delivery_streams(params = {}, options = {})
        req = build_request(:list_delivery_streams, params)
        req.send_request(options)
      end

      # Writes a single data record into an Amazon Kinesis Firehose delivery
      # stream. To write multiple data records into a delivery stream, use
      # PutRecordBatch. Applications using these operations are referred to as
      # producers.
      #
      # By default, each delivery stream can take in up to 2,000 transactions
      # per second, 5,000 records per second, or 5 MB per second. Note that if
      # you use PutRecord and PutRecordBatch, the limits are an aggregate
      # across these two operations for each delivery stream. For more
      # information about limits and how to request an increase, see [Amazon
      # Kinesis Firehose Limits][1].
      #
      # You must specify the name of the delivery stream and the data record
      # when using PutRecord. The data record consists of a data blob that can
      # be up to 1,000 KB in size, and any kind of data, for example, a
      # segment from a log file, geographic location data, web site
      # clickstream data, etc.
      #
      # Firehose buffers records before delivering them to the destination. To
      # disambiguate the data blobs at the destination, a common solution is
      # to use delimiters in the data, such as a newline (`\n`) or some other
      # character unique within the data. This allows the consumer
      # application(s) to parse individual data items when reading the data
      # from the destination.
      #
      # The PutRecord operation returns a **RecordId**, which is a unique
      # string assigned to each record. Producer applications can use this ID
      # for purposes such as auditability and investigation.
      #
      # If the PutRecord operation throws a **ServiceUnavailableException**,
      # back off and retry. If the exception persists, it is possible that the
      # throughput limits have been exceeded for the delivery stream.
      #
      # Data records sent to Firehose are stored for 24 hours from the time
      # they are added to a delivery stream as it attempts to send the records
      # to the destination. If the destination is unreachable for more than 24
      # hours, the data is no longer available.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/firehose/latest/dev/limits.html
      # @option params [required, String] :delivery_stream_name
      #   The name of the delivery stream.
      # @option params [required, Types::Record] :record
      #   The record.
      # @return [Types::PutRecordOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::PutRecordOutput#record_id #RecordId} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.put_record({
      #     delivery_stream_name: "DeliveryStreamName", # required
      #     record: { # required
      #       data: "data", # required
      #     },
      #   })
      #
      # @example Response structure
      #   resp.record_id #=> String
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
      # Each PutRecordBatch request supports up to 500 records. Each record in
      # the request can be as large as 1,000 KB (before 64-bit encoding), up
      # to a limit of 4 MB for the entire request. By default, each delivery
      # stream can take in up to 2,000 transactions per second, 5,000 records
      # per second, or 5 MB per second. Note that if you use PutRecord and
      # PutRecordBatch, the limits are an aggregate across these two
      # operations for each delivery stream. For more information about limits
      # and how to request an increase, see [Amazon Kinesis Firehose
      # Limits][1].
      #
      # You must specify the name of the delivery stream and the data record
      # when using PutRecord. The data record consists of a data blob that can
      # be up to 1,000 KB in size, and any kind of data, for example, a
      # segment from a log file, geographic location data, web site
      # clickstream data, and so on.
      #
      # Firehose buffers records before delivering them to the destination. To
      # disambiguate the data blobs at the destination, a common solution is
      # to use delimiters in the data, such as a newline (`\n`) or some other
      # character unique within the data. This allows the consumer
      # application(s) to parse individual data items when reading the data
      # from the destination.
      #
      # The PutRecordBatch response includes a count of any failed records,
      # **FailedPutCount**, and an array of responses, **RequestResponses**.
      # The **FailedPutCount** value is a count of records that failed. Each
      # entry in the **RequestResponses** array gives additional information
      # of the processed record. Each entry in **RequestResponses** directly
      # correlates with a record in the request array using the same ordering,
      # from the top to the bottom of the request and response.
      # **RequestResponses** always includes the same number of records as the
      # request array. **RequestResponses** both successfully and
      # unsuccessfully processed records. Firehose attempts to process all
      # records in each PutRecordBatch request. A single record failure does
      # not stop the processing of subsequent records.
      #
      # A successfully processed record includes a **RecordId** value, which
      # is a unique value identified for the record. An unsuccessfully
      # processed record includes **ErrorCode** and **ErrorMessage** values.
      # **ErrorCode** reflects the type of error and is one of the following
      # values: `ServiceUnavailable` or `InternalFailure`. `ErrorMessage`
      # provides more detailed information about the error.
      #
      # If **FailedPutCount** is greater than 0 (zero), retry the request. A
      # retry of the entire batch of records is possible; however, we strongly
      # recommend that you inspect the entire response and resend only those
      # records that failed processing. This minimizes duplicate records and
      # also reduces the total bytes sent (and corresponding charges).
      #
      # If the PutRecordBatch operation throws a
      # **ServiceUnavailableException**, back off and retry. If the exception
      # persists, it is possible that the throughput limits have been exceeded
      # for the delivery stream.
      #
      # Data records sent to Firehose are stored for 24 hours from the time
      # they are added to a delivery stream as it attempts to send the records
      # to the destination. If the destination is unreachable for more than 24
      # hours, the data is no longer available.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/firehose/latest/dev/limits.html
      # @option params [required, String] :delivery_stream_name
      #   The name of the delivery stream.
      # @option params [required, Array<Types::Record>] :records
      #   One or more records.
      # @return [Types::PutRecordBatchOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::PutRecordBatchOutput#failed_put_count #FailedPutCount} => Integer
      #   * {Types::PutRecordBatchOutput#request_responses #RequestResponses} => Array&lt;Types::PutRecordBatchResponseEntry&gt;
      #
      # @example Request syntax with placeholder values
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
      #   resp.failed_put_count #=> Integer
      #   resp.request_responses #=> Array
      #   resp.request_responses[0].record_id #=> String
      #   resp.request_responses[0].error_code #=> String
      #   resp.request_responses[0].error_message #=> String
      # @overload put_record_batch(params = {})
      # @param [Hash] params ({})
      def put_record_batch(params = {}, options = {})
        req = build_request(:put_record_batch, params)
        req.send_request(options)
      end

      # Updates the specified destination of the specified delivery stream.
      # Note: Switching between Elasticsearch and other services is not
      # supported. For Elasticsearch destination, you can only update an
      # existing Elasticsearch destination with this operation.
      #
      # This operation can be used to change the destination type (for
      # example, to replace the Amazon S3 destination with Amazon Redshift) or
      # change the parameters associated with a given destination (for
      # example, to change the bucket name of the Amazon S3 destination). The
      # update may not occur immediately. The target delivery stream remains
      # active while the configurations are updated, so data writes to the
      # delivery stream can continue during this process. The updated
      # configurations are normally effective within a few minutes.
      #
      # If the destination type is the same, Firehose merges the configuration
      # parameters specified in the UpdateDestination request with the
      # destination configuration that already exists on the delivery stream.
      # If any of the parameters are not specified in the update request, then
      # the existing configuration parameters are retained. For example, in
      # the Amazon S3 destination, if EncryptionConfiguration is not specified
      # then the existing EncryptionConfiguration is maintained on the
      # destination.
      #
      # If the destination type is not the same, for example, changing the
      # destination from Amazon S3 to Amazon Redshift, Firehose does not merge
      # any parameters. In this case, all parameters must be specified.
      #
      # Firehose uses the **CurrentDeliveryStreamVersionId** to avoid race
      # conditions and conflicting merges. This is a required field in every
      # request and the service only updates the configuration if the existing
      # configuration matches the **VersionId**. After the update is applied
      # successfully, the **VersionId** is updated, which can be retrieved
      # with the DescribeDeliveryStream operation. The new **VersionId**
      # should be uses to set **CurrentDeliveryStreamVersionId** in the next
      # UpdateDestination operation.
      # @option params [required, String] :delivery_stream_name
      #   The name of the delivery stream.
      # @option params [required, String] :current_delivery_stream_version_id
      #   Obtain this value from the **VersionId** result of the
      #   DeliveryStreamDescription operation. This value is required, and helps
      #   the service to perform conditional operations. For example, if there
      #   is a interleaving update and this value is null, then the update
      #   destination fails. After the update is successful, the **VersionId**
      #   value is updated. The service then performs a merge of the old
      #   configuration with the new configuration.
      # @option params [required, String] :destination_id
      #   The ID of the destination.
      # @option params [Types::S3DestinationUpdate] :s3_destination_update
      #   Describes an update for a destination in Amazon S3.
      # @option params [Types::RedshiftDestinationUpdate] :redshift_destination_update
      #   Describes an update for a destination in Amazon Redshift.
      # @option params [Types::ElasticsearchDestinationUpdate] :elasticsearch_destination_update
      #   Describes an update for a destination in Amazon ES.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
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
      #     redshift_destination_update: {
      #       role_arn: "RoleARN",
      #       cluster_jdbcurl: "ClusterJDBCURL",
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
      #       cloud_watch_logging_options: {
      #         enabled: false,
      #         log_group_name: "LogGroupName",
      #         log_stream_name: "LogStreamName",
      #       },
      #     },
      #   })
      # @overload update_destination(params = {})
      # @param [Hash] params ({})
      def update_destination(params = {}, options = {})
        req = build_request(:update_destination, params)
        req.send_request(options)
      end

      # @!endgroup

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
end
