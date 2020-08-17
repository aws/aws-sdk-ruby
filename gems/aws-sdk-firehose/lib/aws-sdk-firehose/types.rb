# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Firehose
  module Types

    # Describes hints for the buffering to perform before delivering data to
    # the destination. These options are treated as hints, and therefore
    # Kinesis Data Firehose might choose to use different values when it is
    # optimal. The `SizeInMBs` and `IntervalInSeconds` parameters are
    # optional. However, if specify a value for one of them, you must also
    # provide a value for the other.
    #
    # @note When making an API call, you may pass BufferingHints
    #   data as a hash:
    #
    #       {
    #         size_in_m_bs: 1,
    #         interval_in_seconds: 1,
    #       }
    #
    # @!attribute [rw] size_in_m_bs
    #   Buffer incoming data to the specified size, in MiBs, before
    #   delivering it to the destination. The default value is 5. This
    #   parameter is optional but if you specify a value for it, you must
    #   also specify a value for `IntervalInSeconds`, and vice versa.
    #
    #   We recommend setting this parameter to a value greater than the
    #   amount of data you typically ingest into the delivery stream in 10
    #   seconds. For example, if you typically ingest data at 1 MiB/sec, the
    #   value should be 10 MiB or higher.
    #   @return [Integer]
    #
    # @!attribute [rw] interval_in_seconds
    #   Buffer incoming data for the specified period of time, in seconds,
    #   before delivering it to the destination. The default value is 300.
    #   This parameter is optional but if you specify a value for it, you
    #   must also specify a value for `SizeInMBs`, and vice versa.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/BufferingHints AWS API Documentation
    #
    class BufferingHints < Struct.new(
      :size_in_m_bs,
      :interval_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the Amazon CloudWatch logging options for your delivery
    # stream.
    #
    # @note When making an API call, you may pass CloudWatchLoggingOptions
    #   data as a hash:
    #
    #       {
    #         enabled: false,
    #         log_group_name: "LogGroupName",
    #         log_stream_name: "LogStreamName",
    #       }
    #
    # @!attribute [rw] enabled
    #   Enables or disables CloudWatch logging.
    #   @return [Boolean]
    #
    # @!attribute [rw] log_group_name
    #   The CloudWatch group name for logging. This value is required if
    #   CloudWatch logging is enabled.
    #   @return [String]
    #
    # @!attribute [rw] log_stream_name
    #   The CloudWatch log stream name for logging. This value is required
    #   if CloudWatch logging is enabled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/CloudWatchLoggingOptions AWS API Documentation
    #
    class CloudWatchLoggingOptions < Struct.new(
      :enabled,
      :log_group_name,
      :log_stream_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Another modification has already happened. Fetch `VersionId` again and
    # use it to update the destination.
    #
    # @!attribute [rw] message
    #   A message that provides information about the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/ConcurrentModificationException AWS API Documentation
    #
    class ConcurrentModificationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a `COPY` command for Amazon Redshift.
    #
    # @note When making an API call, you may pass CopyCommand
    #   data as a hash:
    #
    #       {
    #         data_table_name: "DataTableName", # required
    #         data_table_columns: "DataTableColumns",
    #         copy_options: "CopyOptions",
    #       }
    #
    # @!attribute [rw] data_table_name
    #   The name of the target table. The table must already exist in the
    #   database.
    #   @return [String]
    #
    # @!attribute [rw] data_table_columns
    #   A comma-separated list of column names.
    #   @return [String]
    #
    # @!attribute [rw] copy_options
    #   Optional parameters to use with the Amazon Redshift `COPY` command.
    #   For more information, see the "Optional Parameters" section of
    #   [Amazon Redshift COPY command][1]. Some possible examples that would
    #   apply to Kinesis Data Firehose are as follows:
    #
    #   `delimiter '\t' lzop;` - fields are delimited with "\\t" (TAB
    #   character) and compressed using lzop.
    #
    #   `delimiter '|'` - fields are delimited with "\|" (this is the
    #   default delimiter).
    #
    #   `delimiter '|' escape` - the delimiter should be escaped.
    #
    #   `fixedwidth
    #   'venueid:3,venuename:25,venuecity:12,venuestate:2,venueseats:6'` -
    #   fields are fixed width in the source, with each width specified
    #   after every column in the table.
    #
    #   `JSON 's3://mybucket/jsonpaths.txt'` - data is in JSON format, and
    #   the path specified is the format of the data.
    #
    #   For more examples, see [Amazon Redshift COPY command examples][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/redshift/latest/dg/r_COPY.html
    #   [2]: https://docs.aws.amazon.com/redshift/latest/dg/r_COPY_command_examples.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/CopyCommand AWS API Documentation
    #
    class CopyCommand < Struct.new(
      :data_table_name,
      :data_table_columns,
      :copy_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDeliveryStreamInput
    #   data as a hash:
    #
    #       {
    #         delivery_stream_name: "DeliveryStreamName", # required
    #         delivery_stream_type: "DirectPut", # accepts DirectPut, KinesisStreamAsSource
    #         kinesis_stream_source_configuration: {
    #           kinesis_stream_arn: "KinesisStreamARN", # required
    #           role_arn: "RoleARN", # required
    #         },
    #         delivery_stream_encryption_configuration_input: {
    #           key_arn: "AWSKMSKeyARN",
    #           key_type: "AWS_OWNED_CMK", # required, accepts AWS_OWNED_CMK, CUSTOMER_MANAGED_CMK
    #         },
    #         s3_destination_configuration: {
    #           role_arn: "RoleARN", # required
    #           bucket_arn: "BucketARN", # required
    #           prefix: "Prefix",
    #           error_output_prefix: "ErrorOutputPrefix",
    #           buffering_hints: {
    #             size_in_m_bs: 1,
    #             interval_in_seconds: 1,
    #           },
    #           compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
    #           encryption_configuration: {
    #             no_encryption_config: "NoEncryption", # accepts NoEncryption
    #             kms_encryption_config: {
    #               awskms_key_arn: "AWSKMSKeyARN", # required
    #             },
    #           },
    #           cloud_watch_logging_options: {
    #             enabled: false,
    #             log_group_name: "LogGroupName",
    #             log_stream_name: "LogStreamName",
    #           },
    #         },
    #         extended_s3_destination_configuration: {
    #           role_arn: "RoleARN", # required
    #           bucket_arn: "BucketARN", # required
    #           prefix: "Prefix",
    #           error_output_prefix: "ErrorOutputPrefix",
    #           buffering_hints: {
    #             size_in_m_bs: 1,
    #             interval_in_seconds: 1,
    #           },
    #           compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
    #           encryption_configuration: {
    #             no_encryption_config: "NoEncryption", # accepts NoEncryption
    #             kms_encryption_config: {
    #               awskms_key_arn: "AWSKMSKeyARN", # required
    #             },
    #           },
    #           cloud_watch_logging_options: {
    #             enabled: false,
    #             log_group_name: "LogGroupName",
    #             log_stream_name: "LogStreamName",
    #           },
    #           processing_configuration: {
    #             enabled: false,
    #             processors: [
    #               {
    #                 type: "Lambda", # required, accepts Lambda
    #                 parameters: [
    #                   {
    #                     parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds
    #                     parameter_value: "ProcessorParameterValue", # required
    #                   },
    #                 ],
    #               },
    #             ],
    #           },
    #           s3_backup_mode: "Disabled", # accepts Disabled, Enabled
    #           s3_backup_configuration: {
    #             role_arn: "RoleARN", # required
    #             bucket_arn: "BucketARN", # required
    #             prefix: "Prefix",
    #             error_output_prefix: "ErrorOutputPrefix",
    #             buffering_hints: {
    #               size_in_m_bs: 1,
    #               interval_in_seconds: 1,
    #             },
    #             compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
    #             encryption_configuration: {
    #               no_encryption_config: "NoEncryption", # accepts NoEncryption
    #               kms_encryption_config: {
    #                 awskms_key_arn: "AWSKMSKeyARN", # required
    #               },
    #             },
    #             cloud_watch_logging_options: {
    #               enabled: false,
    #               log_group_name: "LogGroupName",
    #               log_stream_name: "LogStreamName",
    #             },
    #           },
    #           data_format_conversion_configuration: {
    #             schema_configuration: {
    #               role_arn: "NonEmptyStringWithoutWhitespace",
    #               catalog_id: "NonEmptyStringWithoutWhitespace",
    #               database_name: "NonEmptyStringWithoutWhitespace",
    #               table_name: "NonEmptyStringWithoutWhitespace",
    #               region: "NonEmptyStringWithoutWhitespace",
    #               version_id: "NonEmptyStringWithoutWhitespace",
    #             },
    #             input_format_configuration: {
    #               deserializer: {
    #                 open_x_json_ser_de: {
    #                   convert_dots_in_json_keys_to_underscores: false,
    #                   case_insensitive: false,
    #                   column_to_json_key_mappings: {
    #                     "NonEmptyStringWithoutWhitespace" => "NonEmptyString",
    #                   },
    #                 },
    #                 hive_json_ser_de: {
    #                   timestamp_formats: ["NonEmptyString"],
    #                 },
    #               },
    #             },
    #             output_format_configuration: {
    #               serializer: {
    #                 parquet_ser_de: {
    #                   block_size_bytes: 1,
    #                   page_size_bytes: 1,
    #                   compression: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, SNAPPY
    #                   enable_dictionary_compression: false,
    #                   max_padding_bytes: 1,
    #                   writer_version: "V1", # accepts V1, V2
    #                 },
    #                 orc_ser_de: {
    #                   stripe_size_bytes: 1,
    #                   block_size_bytes: 1,
    #                   row_index_stride: 1,
    #                   enable_padding: false,
    #                   padding_tolerance: 1.0,
    #                   compression: "NONE", # accepts NONE, ZLIB, SNAPPY
    #                   bloom_filter_columns: ["NonEmptyStringWithoutWhitespace"],
    #                   bloom_filter_false_positive_probability: 1.0,
    #                   dictionary_key_threshold: 1.0,
    #                   format_version: "V0_11", # accepts V0_11, V0_12
    #                 },
    #               },
    #             },
    #             enabled: false,
    #           },
    #         },
    #         redshift_destination_configuration: {
    #           role_arn: "RoleARN", # required
    #           cluster_jdbc_url: "ClusterJDBCURL", # required
    #           copy_command: { # required
    #             data_table_name: "DataTableName", # required
    #             data_table_columns: "DataTableColumns",
    #             copy_options: "CopyOptions",
    #           },
    #           username: "Username", # required
    #           password: "Password", # required
    #           retry_options: {
    #             duration_in_seconds: 1,
    #           },
    #           s3_configuration: { # required
    #             role_arn: "RoleARN", # required
    #             bucket_arn: "BucketARN", # required
    #             prefix: "Prefix",
    #             error_output_prefix: "ErrorOutputPrefix",
    #             buffering_hints: {
    #               size_in_m_bs: 1,
    #               interval_in_seconds: 1,
    #             },
    #             compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
    #             encryption_configuration: {
    #               no_encryption_config: "NoEncryption", # accepts NoEncryption
    #               kms_encryption_config: {
    #                 awskms_key_arn: "AWSKMSKeyARN", # required
    #               },
    #             },
    #             cloud_watch_logging_options: {
    #               enabled: false,
    #               log_group_name: "LogGroupName",
    #               log_stream_name: "LogStreamName",
    #             },
    #           },
    #           processing_configuration: {
    #             enabled: false,
    #             processors: [
    #               {
    #                 type: "Lambda", # required, accepts Lambda
    #                 parameters: [
    #                   {
    #                     parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds
    #                     parameter_value: "ProcessorParameterValue", # required
    #                   },
    #                 ],
    #               },
    #             ],
    #           },
    #           s3_backup_mode: "Disabled", # accepts Disabled, Enabled
    #           s3_backup_configuration: {
    #             role_arn: "RoleARN", # required
    #             bucket_arn: "BucketARN", # required
    #             prefix: "Prefix",
    #             error_output_prefix: "ErrorOutputPrefix",
    #             buffering_hints: {
    #               size_in_m_bs: 1,
    #               interval_in_seconds: 1,
    #             },
    #             compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
    #             encryption_configuration: {
    #               no_encryption_config: "NoEncryption", # accepts NoEncryption
    #               kms_encryption_config: {
    #                 awskms_key_arn: "AWSKMSKeyARN", # required
    #               },
    #             },
    #             cloud_watch_logging_options: {
    #               enabled: false,
    #               log_group_name: "LogGroupName",
    #               log_stream_name: "LogStreamName",
    #             },
    #           },
    #           cloud_watch_logging_options: {
    #             enabled: false,
    #             log_group_name: "LogGroupName",
    #             log_stream_name: "LogStreamName",
    #           },
    #         },
    #         elasticsearch_destination_configuration: {
    #           role_arn: "RoleARN", # required
    #           domain_arn: "ElasticsearchDomainARN",
    #           cluster_endpoint: "ElasticsearchClusterEndpoint",
    #           index_name: "ElasticsearchIndexName", # required
    #           type_name: "ElasticsearchTypeName",
    #           index_rotation_period: "NoRotation", # accepts NoRotation, OneHour, OneDay, OneWeek, OneMonth
    #           buffering_hints: {
    #             interval_in_seconds: 1,
    #             size_in_m_bs: 1,
    #           },
    #           retry_options: {
    #             duration_in_seconds: 1,
    #           },
    #           s3_backup_mode: "FailedDocumentsOnly", # accepts FailedDocumentsOnly, AllDocuments
    #           s3_configuration: { # required
    #             role_arn: "RoleARN", # required
    #             bucket_arn: "BucketARN", # required
    #             prefix: "Prefix",
    #             error_output_prefix: "ErrorOutputPrefix",
    #             buffering_hints: {
    #               size_in_m_bs: 1,
    #               interval_in_seconds: 1,
    #             },
    #             compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
    #             encryption_configuration: {
    #               no_encryption_config: "NoEncryption", # accepts NoEncryption
    #               kms_encryption_config: {
    #                 awskms_key_arn: "AWSKMSKeyARN", # required
    #               },
    #             },
    #             cloud_watch_logging_options: {
    #               enabled: false,
    #               log_group_name: "LogGroupName",
    #               log_stream_name: "LogStreamName",
    #             },
    #           },
    #           processing_configuration: {
    #             enabled: false,
    #             processors: [
    #               {
    #                 type: "Lambda", # required, accepts Lambda
    #                 parameters: [
    #                   {
    #                     parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds
    #                     parameter_value: "ProcessorParameterValue", # required
    #                   },
    #                 ],
    #               },
    #             ],
    #           },
    #           cloud_watch_logging_options: {
    #             enabled: false,
    #             log_group_name: "LogGroupName",
    #             log_stream_name: "LogStreamName",
    #           },
    #           vpc_configuration: {
    #             subnet_ids: ["NonEmptyStringWithoutWhitespace"], # required
    #             role_arn: "RoleARN", # required
    #             security_group_ids: ["NonEmptyStringWithoutWhitespace"], # required
    #           },
    #         },
    #         splunk_destination_configuration: {
    #           hec_endpoint: "HECEndpoint", # required
    #           hec_endpoint_type: "Raw", # required, accepts Raw, Event
    #           hec_token: "HECToken", # required
    #           hec_acknowledgment_timeout_in_seconds: 1,
    #           retry_options: {
    #             duration_in_seconds: 1,
    #           },
    #           s3_backup_mode: "FailedEventsOnly", # accepts FailedEventsOnly, AllEvents
    #           s3_configuration: { # required
    #             role_arn: "RoleARN", # required
    #             bucket_arn: "BucketARN", # required
    #             prefix: "Prefix",
    #             error_output_prefix: "ErrorOutputPrefix",
    #             buffering_hints: {
    #               size_in_m_bs: 1,
    #               interval_in_seconds: 1,
    #             },
    #             compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
    #             encryption_configuration: {
    #               no_encryption_config: "NoEncryption", # accepts NoEncryption
    #               kms_encryption_config: {
    #                 awskms_key_arn: "AWSKMSKeyARN", # required
    #               },
    #             },
    #             cloud_watch_logging_options: {
    #               enabled: false,
    #               log_group_name: "LogGroupName",
    #               log_stream_name: "LogStreamName",
    #             },
    #           },
    #           processing_configuration: {
    #             enabled: false,
    #             processors: [
    #               {
    #                 type: "Lambda", # required, accepts Lambda
    #                 parameters: [
    #                   {
    #                     parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds
    #                     parameter_value: "ProcessorParameterValue", # required
    #                   },
    #                 ],
    #               },
    #             ],
    #           },
    #           cloud_watch_logging_options: {
    #             enabled: false,
    #             log_group_name: "LogGroupName",
    #             log_stream_name: "LogStreamName",
    #           },
    #         },
    #         http_endpoint_destination_configuration: {
    #           endpoint_configuration: { # required
    #             url: "HttpEndpointUrl", # required
    #             name: "HttpEndpointName",
    #             access_key: "HttpEndpointAccessKey",
    #           },
    #           buffering_hints: {
    #             size_in_m_bs: 1,
    #             interval_in_seconds: 1,
    #           },
    #           cloud_watch_logging_options: {
    #             enabled: false,
    #             log_group_name: "LogGroupName",
    #             log_stream_name: "LogStreamName",
    #           },
    #           request_configuration: {
    #             content_encoding: "NONE", # accepts NONE, GZIP
    #             common_attributes: [
    #               {
    #                 attribute_name: "HttpEndpointAttributeName", # required
    #                 attribute_value: "HttpEndpointAttributeValue", # required
    #               },
    #             ],
    #           },
    #           processing_configuration: {
    #             enabled: false,
    #             processors: [
    #               {
    #                 type: "Lambda", # required, accepts Lambda
    #                 parameters: [
    #                   {
    #                     parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds
    #                     parameter_value: "ProcessorParameterValue", # required
    #                   },
    #                 ],
    #               },
    #             ],
    #           },
    #           role_arn: "RoleARN",
    #           retry_options: {
    #             duration_in_seconds: 1,
    #           },
    #           s3_backup_mode: "FailedDataOnly", # accepts FailedDataOnly, AllData
    #           s3_configuration: { # required
    #             role_arn: "RoleARN", # required
    #             bucket_arn: "BucketARN", # required
    #             prefix: "Prefix",
    #             error_output_prefix: "ErrorOutputPrefix",
    #             buffering_hints: {
    #               size_in_m_bs: 1,
    #               interval_in_seconds: 1,
    #             },
    #             compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
    #             encryption_configuration: {
    #               no_encryption_config: "NoEncryption", # accepts NoEncryption
    #               kms_encryption_config: {
    #                 awskms_key_arn: "AWSKMSKeyARN", # required
    #               },
    #             },
    #             cloud_watch_logging_options: {
    #               enabled: false,
    #               log_group_name: "LogGroupName",
    #               log_stream_name: "LogStreamName",
    #             },
    #           },
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] delivery_stream_name
    #   The name of the delivery stream. This name must be unique per AWS
    #   account in the same AWS Region. If the delivery streams are in
    #   different accounts or different Regions, you can have multiple
    #   delivery streams with the same name.
    #   @return [String]
    #
    # @!attribute [rw] delivery_stream_type
    #   The delivery stream type. This parameter can be one of the following
    #   values:
    #
    #   * `DirectPut`\: Provider applications access the delivery stream
    #     directly.
    #
    #   * `KinesisStreamAsSource`\: The delivery stream uses a Kinesis data
    #     stream as a source.
    #   @return [String]
    #
    # @!attribute [rw] kinesis_stream_source_configuration
    #   When a Kinesis data stream is used as the source for the delivery
    #   stream, a KinesisStreamSourceConfiguration containing the Kinesis
    #   data stream Amazon Resource Name (ARN) and the role ARN for the
    #   source stream.
    #   @return [Types::KinesisStreamSourceConfiguration]
    #
    # @!attribute [rw] delivery_stream_encryption_configuration_input
    #   Used to specify the type and Amazon Resource Name (ARN) of the KMS
    #   key needed for Server-Side Encryption (SSE).
    #   @return [Types::DeliveryStreamEncryptionConfigurationInput]
    #
    # @!attribute [rw] s3_destination_configuration
    #   \[Deprecated\] The destination in Amazon S3. You can specify only
    #   one destination.
    #   @return [Types::S3DestinationConfiguration]
    #
    # @!attribute [rw] extended_s3_destination_configuration
    #   The destination in Amazon S3. You can specify only one destination.
    #   @return [Types::ExtendedS3DestinationConfiguration]
    #
    # @!attribute [rw] redshift_destination_configuration
    #   The destination in Amazon Redshift. You can specify only one
    #   destination.
    #   @return [Types::RedshiftDestinationConfiguration]
    #
    # @!attribute [rw] elasticsearch_destination_configuration
    #   The destination in Amazon ES. You can specify only one destination.
    #   @return [Types::ElasticsearchDestinationConfiguration]
    #
    # @!attribute [rw] splunk_destination_configuration
    #   The destination in Splunk. You can specify only one destination.
    #   @return [Types::SplunkDestinationConfiguration]
    #
    # @!attribute [rw] http_endpoint_destination_configuration
    #   Enables configuring Kinesis Firehose to deliver data to any HTTP
    #   endpoint destination. You can specify only one destination.
    #   @return [Types::HttpEndpointDestinationConfiguration]
    #
    # @!attribute [rw] tags
    #   A set of tags to assign to the delivery stream. A tag is a key-value
    #   pair that you can define and assign to AWS resources. Tags are
    #   metadata. For example, you can add friendly names and descriptions
    #   or other types of information that can help you distinguish the
    #   delivery stream. For more information about tags, see [Using Cost
    #   Allocation Tags][1] in the AWS Billing and Cost Management User
    #   Guide.
    #
    #   You can specify up to 50 tags when creating a delivery stream.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/CreateDeliveryStreamInput AWS API Documentation
    #
    class CreateDeliveryStreamInput < Struct.new(
      :delivery_stream_name,
      :delivery_stream_type,
      :kinesis_stream_source_configuration,
      :delivery_stream_encryption_configuration_input,
      :s3_destination_configuration,
      :extended_s3_destination_configuration,
      :redshift_destination_configuration,
      :elasticsearch_destination_configuration,
      :splunk_destination_configuration,
      :http_endpoint_destination_configuration,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] delivery_stream_arn
    #   The ARN of the delivery stream.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/CreateDeliveryStreamOutput AWS API Documentation
    #
    class CreateDeliveryStreamOutput < Struct.new(
      :delivery_stream_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies that you want Kinesis Data Firehose to convert data from the
    # JSON format to the Parquet or ORC format before writing it to Amazon
    # S3. Kinesis Data Firehose uses the serializer and deserializer that
    # you specify, in addition to the column information from the AWS Glue
    # table, to deserialize your input data from JSON and then serialize it
    # to the Parquet or ORC format. For more information, see [Kinesis Data
    # Firehose Record Format Conversion][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/firehose/latest/dev/record-format-conversion.html
    #
    # @note When making an API call, you may pass DataFormatConversionConfiguration
    #   data as a hash:
    #
    #       {
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
    #       }
    #
    # @!attribute [rw] schema_configuration
    #   Specifies the AWS Glue Data Catalog table that contains the column
    #   information. This parameter is required if `Enabled` is set to true.
    #   @return [Types::SchemaConfiguration]
    #
    # @!attribute [rw] input_format_configuration
    #   Specifies the deserializer that you want Kinesis Data Firehose to
    #   use to convert the format of your data from JSON. This parameter is
    #   required if `Enabled` is set to true.
    #   @return [Types::InputFormatConfiguration]
    #
    # @!attribute [rw] output_format_configuration
    #   Specifies the serializer that you want Kinesis Data Firehose to use
    #   to convert the format of your data to the Parquet or ORC format.
    #   This parameter is required if `Enabled` is set to true.
    #   @return [Types::OutputFormatConfiguration]
    #
    # @!attribute [rw] enabled
    #   Defaults to `true`. Set it to `false` if you want to disable format
    #   conversion while preserving the configuration details.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/DataFormatConversionConfiguration AWS API Documentation
    #
    class DataFormatConversionConfiguration < Struct.new(
      :schema_configuration,
      :input_format_configuration,
      :output_format_configuration,
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteDeliveryStreamInput
    #   data as a hash:
    #
    #       {
    #         delivery_stream_name: "DeliveryStreamName", # required
    #         allow_force_delete: false,
    #       }
    #
    # @!attribute [rw] delivery_stream_name
    #   The name of the delivery stream.
    #   @return [String]
    #
    # @!attribute [rw] allow_force_delete
    #   Set this to true if you want to delete the delivery stream even if
    #   Kinesis Data Firehose is unable to retire the grant for the CMK.
    #   Kinesis Data Firehose might be unable to retire the grant due to a
    #   customer error, such as when the CMK or the grant are in an invalid
    #   state. If you force deletion, you can then use the [RevokeGrant][1]
    #   operation to revoke the grant you gave to Kinesis Data Firehose. If
    #   a failure to retire the grant happens due to an AWS KMS issue,
    #   Kinesis Data Firehose keeps retrying the delete operation.
    #
    #   The default value is false.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/APIReference/API_RevokeGrant.html
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/DeleteDeliveryStreamInput AWS API Documentation
    #
    class DeleteDeliveryStreamInput < Struct.new(
      :delivery_stream_name,
      :allow_force_delete)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/DeleteDeliveryStreamOutput AWS API Documentation
    #
    class DeleteDeliveryStreamOutput < Aws::EmptyStructure; end

    # Contains information about a delivery stream.
    #
    # @!attribute [rw] delivery_stream_name
    #   The name of the delivery stream.
    #   @return [String]
    #
    # @!attribute [rw] delivery_stream_arn
    #   The Amazon Resource Name (ARN) of the delivery stream. For more
    #   information, see [Amazon Resource Names (ARNs) and AWS Service
    #   Namespaces][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] delivery_stream_status
    #   The status of the delivery stream. If the status of a delivery
    #   stream is `CREATING_FAILED`, this status doesn't change, and you
    #   can't invoke `CreateDeliveryStream` again on it. However, you can
    #   invoke the DeleteDeliveryStream operation to delete it.
    #   @return [String]
    #
    # @!attribute [rw] failure_description
    #   Provides details in case one of the following operations fails due
    #   to an error related to KMS: CreateDeliveryStream,
    #   DeleteDeliveryStream, StartDeliveryStreamEncryption,
    #   StopDeliveryStreamEncryption.
    #   @return [Types::FailureDescription]
    #
    # @!attribute [rw] delivery_stream_encryption_configuration
    #   Indicates the server-side encryption (SSE) status for the delivery
    #   stream.
    #   @return [Types::DeliveryStreamEncryptionConfiguration]
    #
    # @!attribute [rw] delivery_stream_type
    #   The delivery stream type. This can be one of the following values:
    #
    #   * `DirectPut`\: Provider applications access the delivery stream
    #     directly.
    #
    #   * `KinesisStreamAsSource`\: The delivery stream uses a Kinesis data
    #     stream as a source.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   Each time the destination is updated for a delivery stream, the
    #   version ID is changed, and the current version ID is required when
    #   updating the destination. This is so that the service knows it is
    #   applying the changes to the correct version of the delivery stream.
    #   @return [String]
    #
    # @!attribute [rw] create_timestamp
    #   The date and time that the delivery stream was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_timestamp
    #   The date and time that the delivery stream was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] source
    #   If the `DeliveryStreamType` parameter is `KinesisStreamAsSource`, a
    #   SourceDescription object describing the source Kinesis data stream.
    #   @return [Types::SourceDescription]
    #
    # @!attribute [rw] destinations
    #   The destinations.
    #   @return [Array<Types::DestinationDescription>]
    #
    # @!attribute [rw] has_more_destinations
    #   Indicates whether there are more destinations available to list.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/DeliveryStreamDescription AWS API Documentation
    #
    class DeliveryStreamDescription < Struct.new(
      :delivery_stream_name,
      :delivery_stream_arn,
      :delivery_stream_status,
      :failure_description,
      :delivery_stream_encryption_configuration,
      :delivery_stream_type,
      :version_id,
      :create_timestamp,
      :last_update_timestamp,
      :source,
      :destinations,
      :has_more_destinations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the server-side encryption (SSE) status for
    # the delivery stream, the type customer master key (CMK) in use, if
    # any, and the ARN of the CMK. You can get
    # `DeliveryStreamEncryptionConfiguration` by invoking the
    # DescribeDeliveryStream operation.
    #
    # @!attribute [rw] key_arn
    #   If `KeyType` is `CUSTOMER_MANAGED_CMK`, this field contains the ARN
    #   of the customer managed CMK. If `KeyType` is `AWS_OWNED_CMK`,
    #   `DeliveryStreamEncryptionConfiguration` doesn't contain a value for
    #   `KeyARN`.
    #   @return [String]
    #
    # @!attribute [rw] key_type
    #   Indicates the type of customer master key (CMK) that is used for
    #   encryption. The default setting is `AWS_OWNED_CMK`. For more
    #   information about CMKs, see [Customer Master Keys (CMKs)][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#master_keys
    #   @return [String]
    #
    # @!attribute [rw] status
    #   This is the server-side encryption (SSE) status for the delivery
    #   stream. For a full description of the different values of this
    #   status, see StartDeliveryStreamEncryption and
    #   StopDeliveryStreamEncryption. If this status is `ENABLING_FAILED` or
    #   `DISABLING_FAILED`, it is the status of the most recent attempt to
    #   enable or disable SSE, respectively.
    #   @return [String]
    #
    # @!attribute [rw] failure_description
    #   Provides details in case one of the following operations fails due
    #   to an error related to KMS: CreateDeliveryStream,
    #   DeleteDeliveryStream, StartDeliveryStreamEncryption,
    #   StopDeliveryStreamEncryption.
    #   @return [Types::FailureDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/DeliveryStreamEncryptionConfiguration AWS API Documentation
    #
    class DeliveryStreamEncryptionConfiguration < Struct.new(
      :key_arn,
      :key_type,
      :status,
      :failure_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the type and Amazon Resource Name (ARN) of the CMK to use
    # for Server-Side Encryption (SSE).
    #
    # @note When making an API call, you may pass DeliveryStreamEncryptionConfigurationInput
    #   data as a hash:
    #
    #       {
    #         key_arn: "AWSKMSKeyARN",
    #         key_type: "AWS_OWNED_CMK", # required, accepts AWS_OWNED_CMK, CUSTOMER_MANAGED_CMK
    #       }
    #
    # @!attribute [rw] key_arn
    #   If you set `KeyType` to `CUSTOMER_MANAGED_CMK`, you must specify the
    #   Amazon Resource Name (ARN) of the CMK. If you set `KeyType` to
    #   `AWS_OWNED_CMK`, Kinesis Data Firehose uses a service-account CMK.
    #   @return [String]
    #
    # @!attribute [rw] key_type
    #   Indicates the type of customer master key (CMK) to use for
    #   encryption. The default setting is `AWS_OWNED_CMK`. For more
    #   information about CMKs, see [Customer Master Keys (CMKs)][1]. When
    #   you invoke CreateDeliveryStream or StartDeliveryStreamEncryption
    #   with `KeyType` set to CUSTOMER\_MANAGED\_CMK, Kinesis Data Firehose
    #   invokes the Amazon KMS operation [CreateGrant][2] to create a grant
    #   that allows the Kinesis Data Firehose service to use the customer
    #   managed CMK to perform encryption and decryption. Kinesis Data
    #   Firehose manages that grant.
    #
    #   When you invoke StartDeliveryStreamEncryption to change the CMK for
    #   a delivery stream that is encrypted with a customer managed CMK,
    #   Kinesis Data Firehose schedules the grant it had on the old CMK for
    #   retirement.
    #
    #   You can use a CMK of type CUSTOMER\_MANAGED\_CMK to encrypt up to
    #   500 delivery streams. If a CreateDeliveryStream or
    #   StartDeliveryStreamEncryption operation exceeds this limit, Kinesis
    #   Data Firehose throws a `LimitExceededException`.
    #
    #   To encrypt your delivery stream, use symmetric CMKs. Kinesis Data
    #   Firehose doesn't support asymmetric CMKs. For information about
    #   symmetric and asymmetric CMKs, see [About Symmetric and Asymmetric
    #   CMKs][3] in the AWS Key Management Service developer guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#master_keys
    #   [2]: https://docs.aws.amazon.com/kms/latest/APIReference/API_CreateGrant.html
    #   [3]: https://docs.aws.amazon.com/kms/latest/developerguide/symm-asymm-concepts.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/DeliveryStreamEncryptionConfigurationInput AWS API Documentation
    #
    class DeliveryStreamEncryptionConfigurationInput < Struct.new(
      :key_arn,
      :key_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDeliveryStreamInput
    #   data as a hash:
    #
    #       {
    #         delivery_stream_name: "DeliveryStreamName", # required
    #         limit: 1,
    #         exclusive_start_destination_id: "DestinationId",
    #       }
    #
    # @!attribute [rw] delivery_stream_name
    #   The name of the delivery stream.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The limit on the number of destinations to return. You can have one
    #   destination per delivery stream.
    #   @return [Integer]
    #
    # @!attribute [rw] exclusive_start_destination_id
    #   The ID of the destination to start returning the destination
    #   information. Kinesis Data Firehose supports one destination per
    #   delivery stream.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/DescribeDeliveryStreamInput AWS API Documentation
    #
    class DescribeDeliveryStreamInput < Struct.new(
      :delivery_stream_name,
      :limit,
      :exclusive_start_destination_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] delivery_stream_description
    #   Information about the delivery stream.
    #   @return [Types::DeliveryStreamDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/DescribeDeliveryStreamOutput AWS API Documentation
    #
    class DescribeDeliveryStreamOutput < Struct.new(
      :delivery_stream_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # The deserializer you want Kinesis Data Firehose to use for converting
    # the input data from JSON. Kinesis Data Firehose then serializes the
    # data to its final format using the Serializer. Kinesis Data Firehose
    # supports two types of deserializers: the [Apache Hive JSON SerDe][1]
    # and the [OpenX JSON SerDe][2].
    #
    #
    #
    # [1]: https://cwiki.apache.org/confluence/display/Hive/LanguageManual+DDL#LanguageManualDDL-JSON
    # [2]: https://github.com/rcongiu/Hive-JSON-Serde
    #
    # @note When making an API call, you may pass Deserializer
    #   data as a hash:
    #
    #       {
    #         open_x_json_ser_de: {
    #           convert_dots_in_json_keys_to_underscores: false,
    #           case_insensitive: false,
    #           column_to_json_key_mappings: {
    #             "NonEmptyStringWithoutWhitespace" => "NonEmptyString",
    #           },
    #         },
    #         hive_json_ser_de: {
    #           timestamp_formats: ["NonEmptyString"],
    #         },
    #       }
    #
    # @!attribute [rw] open_x_json_ser_de
    #   The OpenX SerDe. Used by Kinesis Data Firehose for deserializing
    #   data, which means converting it from the JSON format in preparation
    #   for serializing it to the Parquet or ORC format. This is one of two
    #   deserializers you can choose, depending on which one offers the
    #   functionality you need. The other option is the native Hive /
    #   HCatalog JsonSerDe.
    #   @return [Types::OpenXJsonSerDe]
    #
    # @!attribute [rw] hive_json_ser_de
    #   The native Hive / HCatalog JsonSerDe. Used by Kinesis Data Firehose
    #   for deserializing data, which means converting it from the JSON
    #   format in preparation for serializing it to the Parquet or ORC
    #   format. This is one of two deserializers you can choose, depending
    #   on which one offers the functionality you need. The other option is
    #   the OpenX SerDe.
    #   @return [Types::HiveJsonSerDe]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/Deserializer AWS API Documentation
    #
    class Deserializer < Struct.new(
      :open_x_json_ser_de,
      :hive_json_ser_de)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the destination for a delivery stream.
    #
    # @!attribute [rw] destination_id
    #   The ID of the destination.
    #   @return [String]
    #
    # @!attribute [rw] s3_destination_description
    #   \[Deprecated\] The destination in Amazon S3.
    #   @return [Types::S3DestinationDescription]
    #
    # @!attribute [rw] extended_s3_destination_description
    #   The destination in Amazon S3.
    #   @return [Types::ExtendedS3DestinationDescription]
    #
    # @!attribute [rw] redshift_destination_description
    #   The destination in Amazon Redshift.
    #   @return [Types::RedshiftDestinationDescription]
    #
    # @!attribute [rw] elasticsearch_destination_description
    #   The destination in Amazon ES.
    #   @return [Types::ElasticsearchDestinationDescription]
    #
    # @!attribute [rw] splunk_destination_description
    #   The destination in Splunk.
    #   @return [Types::SplunkDestinationDescription]
    #
    # @!attribute [rw] http_endpoint_destination_description
    #   Describes the specified HTTP endpoint destination.
    #   @return [Types::HttpEndpointDestinationDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/DestinationDescription AWS API Documentation
    #
    class DestinationDescription < Struct.new(
      :destination_id,
      :s3_destination_description,
      :extended_s3_destination_description,
      :redshift_destination_description,
      :elasticsearch_destination_description,
      :splunk_destination_description,
      :http_endpoint_destination_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the buffering to perform before delivering data to the
    # Amazon ES destination.
    #
    # @note When making an API call, you may pass ElasticsearchBufferingHints
    #   data as a hash:
    #
    #       {
    #         interval_in_seconds: 1,
    #         size_in_m_bs: 1,
    #       }
    #
    # @!attribute [rw] interval_in_seconds
    #   Buffer incoming data for the specified period of time, in seconds,
    #   before delivering it to the destination. The default value is 300 (5
    #   minutes).
    #   @return [Integer]
    #
    # @!attribute [rw] size_in_m_bs
    #   Buffer incoming data to the specified size, in MBs, before
    #   delivering it to the destination. The default value is 5.
    #
    #   We recommend setting this parameter to a value greater than the
    #   amount of data you typically ingest into the delivery stream in 10
    #   seconds. For example, if you typically ingest data at 1 MB/sec, the
    #   value should be 10 MB or higher.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/ElasticsearchBufferingHints AWS API Documentation
    #
    class ElasticsearchBufferingHints < Struct.new(
      :interval_in_seconds,
      :size_in_m_bs)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the configuration of a destination in Amazon ES.
    #
    # @note When making an API call, you may pass ElasticsearchDestinationConfiguration
    #   data as a hash:
    #
    #       {
    #         role_arn: "RoleARN", # required
    #         domain_arn: "ElasticsearchDomainARN",
    #         cluster_endpoint: "ElasticsearchClusterEndpoint",
    #         index_name: "ElasticsearchIndexName", # required
    #         type_name: "ElasticsearchTypeName",
    #         index_rotation_period: "NoRotation", # accepts NoRotation, OneHour, OneDay, OneWeek, OneMonth
    #         buffering_hints: {
    #           interval_in_seconds: 1,
    #           size_in_m_bs: 1,
    #         },
    #         retry_options: {
    #           duration_in_seconds: 1,
    #         },
    #         s3_backup_mode: "FailedDocumentsOnly", # accepts FailedDocumentsOnly, AllDocuments
    #         s3_configuration: { # required
    #           role_arn: "RoleARN", # required
    #           bucket_arn: "BucketARN", # required
    #           prefix: "Prefix",
    #           error_output_prefix: "ErrorOutputPrefix",
    #           buffering_hints: {
    #             size_in_m_bs: 1,
    #             interval_in_seconds: 1,
    #           },
    #           compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
    #           encryption_configuration: {
    #             no_encryption_config: "NoEncryption", # accepts NoEncryption
    #             kms_encryption_config: {
    #               awskms_key_arn: "AWSKMSKeyARN", # required
    #             },
    #           },
    #           cloud_watch_logging_options: {
    #             enabled: false,
    #             log_group_name: "LogGroupName",
    #             log_stream_name: "LogStreamName",
    #           },
    #         },
    #         processing_configuration: {
    #           enabled: false,
    #           processors: [
    #             {
    #               type: "Lambda", # required, accepts Lambda
    #               parameters: [
    #                 {
    #                   parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds
    #                   parameter_value: "ProcessorParameterValue", # required
    #                 },
    #               ],
    #             },
    #           ],
    #         },
    #         cloud_watch_logging_options: {
    #           enabled: false,
    #           log_group_name: "LogGroupName",
    #           log_stream_name: "LogStreamName",
    #         },
    #         vpc_configuration: {
    #           subnet_ids: ["NonEmptyStringWithoutWhitespace"], # required
    #           role_arn: "RoleARN", # required
    #           security_group_ids: ["NonEmptyStringWithoutWhitespace"], # required
    #         },
    #       }
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to be assumed by
    #   Kinesis Data Firehose for calling the Amazon ES Configuration API
    #   and for indexing documents. For more information, see [Grant Kinesis
    #   Data Firehose Access to an Amazon S3 Destination][1] and [Amazon
    #   Resource Names (ARNs) and AWS Service Namespaces][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/firehose/latest/dev/controlling-access.html#using-iam-s3
    #   [2]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] domain_arn
    #   The ARN of the Amazon ES domain. The IAM role must have permissions
    #   for `DescribeElasticsearchDomain`, `DescribeElasticsearchDomains`,
    #   and `DescribeElasticsearchDomainConfig` after assuming the role
    #   specified in **RoleARN**. For more information, see [Amazon Resource
    #   Names (ARNs) and AWS Service Namespaces][1].
    #
    #   Specify either `ClusterEndpoint` or `DomainARN`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] cluster_endpoint
    #   The endpoint to use when communicating with the cluster. Specify
    #   either this `ClusterEndpoint` or the `DomainARN` field.
    #   @return [String]
    #
    # @!attribute [rw] index_name
    #   The Elasticsearch index name.
    #   @return [String]
    #
    # @!attribute [rw] type_name
    #   The Elasticsearch type name. For Elasticsearch 6.x, there can be
    #   only one type per index. If you try to specify a new type for an
    #   existing index that already has another type, Kinesis Data Firehose
    #   returns an error during run time.
    #
    #   For Elasticsearch 7.x, don't specify a `TypeName`.
    #   @return [String]
    #
    # @!attribute [rw] index_rotation_period
    #   The Elasticsearch index rotation period. Index rotation appends a
    #   timestamp to the `IndexName` to facilitate the expiration of old
    #   data. For more information, see [Index Rotation for the Amazon ES
    #   Destination][1]. The default value is `OneDay`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html#es-index-rotation
    #   @return [String]
    #
    # @!attribute [rw] buffering_hints
    #   The buffering options. If no value is specified, the default values
    #   for `ElasticsearchBufferingHints` are used.
    #   @return [Types::ElasticsearchBufferingHints]
    #
    # @!attribute [rw] retry_options
    #   The retry behavior in case Kinesis Data Firehose is unable to
    #   deliver documents to Amazon ES. The default value is 300 (5
    #   minutes).
    #   @return [Types::ElasticsearchRetryOptions]
    #
    # @!attribute [rw] s3_backup_mode
    #   Defines how documents should be delivered to Amazon S3. When it is
    #   set to `FailedDocumentsOnly`, Kinesis Data Firehose writes any
    #   documents that could not be indexed to the configured Amazon S3
    #   destination, with `elasticsearch-failed/` appended to the key
    #   prefix. When set to `AllDocuments`, Kinesis Data Firehose delivers
    #   all incoming records to Amazon S3, and also writes failed documents
    #   with `elasticsearch-failed/` appended to the prefix. For more
    #   information, see [Amazon S3 Backup for the Amazon ES
    #   Destination][1]. Default value is `FailedDocumentsOnly`.
    #
    #   You can't change this backup mode after you create the delivery
    #   stream.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html#es-s3-backup
    #   @return [String]
    #
    # @!attribute [rw] s3_configuration
    #   The configuration for the backup Amazon S3 location.
    #   @return [Types::S3DestinationConfiguration]
    #
    # @!attribute [rw] processing_configuration
    #   The data processing configuration.
    #   @return [Types::ProcessingConfiguration]
    #
    # @!attribute [rw] cloud_watch_logging_options
    #   The Amazon CloudWatch logging options for your delivery stream.
    #   @return [Types::CloudWatchLoggingOptions]
    #
    # @!attribute [rw] vpc_configuration
    #   The details of the VPC of the Amazon ES destination.
    #   @return [Types::VpcConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/ElasticsearchDestinationConfiguration AWS API Documentation
    #
    class ElasticsearchDestinationConfiguration < Struct.new(
      :role_arn,
      :domain_arn,
      :cluster_endpoint,
      :index_name,
      :type_name,
      :index_rotation_period,
      :buffering_hints,
      :retry_options,
      :s3_backup_mode,
      :s3_configuration,
      :processing_configuration,
      :cloud_watch_logging_options,
      :vpc_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The destination description in Amazon ES.
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the AWS credentials. For more
    #   information, see [Amazon Resource Names (ARNs) and AWS Service
    #   Namespaces][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] domain_arn
    #   The ARN of the Amazon ES domain. For more information, see [Amazon
    #   Resource Names (ARNs) and AWS Service Namespaces][1].
    #
    #   Kinesis Data Firehose uses either `ClusterEndpoint` or `DomainARN`
    #   to send data to Amazon ES.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] cluster_endpoint
    #   The endpoint to use when communicating with the cluster. Kinesis
    #   Data Firehose uses either this `ClusterEndpoint` or the `DomainARN`
    #   field to send data to Amazon ES.
    #   @return [String]
    #
    # @!attribute [rw] index_name
    #   The Elasticsearch index name.
    #   @return [String]
    #
    # @!attribute [rw] type_name
    #   The Elasticsearch type name. This applies to Elasticsearch 6.x and
    #   lower versions. For Elasticsearch 7.x, there's no value for
    #   `TypeName`.
    #   @return [String]
    #
    # @!attribute [rw] index_rotation_period
    #   The Elasticsearch index rotation period
    #   @return [String]
    #
    # @!attribute [rw] buffering_hints
    #   The buffering options.
    #   @return [Types::ElasticsearchBufferingHints]
    #
    # @!attribute [rw] retry_options
    #   The Amazon ES retry options.
    #   @return [Types::ElasticsearchRetryOptions]
    #
    # @!attribute [rw] s3_backup_mode
    #   The Amazon S3 backup mode.
    #   @return [String]
    #
    # @!attribute [rw] s3_destination_description
    #   The Amazon S3 destination.
    #   @return [Types::S3DestinationDescription]
    #
    # @!attribute [rw] processing_configuration
    #   The data processing configuration.
    #   @return [Types::ProcessingConfiguration]
    #
    # @!attribute [rw] cloud_watch_logging_options
    #   The Amazon CloudWatch logging options.
    #   @return [Types::CloudWatchLoggingOptions]
    #
    # @!attribute [rw] vpc_configuration_description
    #   The details of the VPC of the Amazon ES destination.
    #   @return [Types::VpcConfigurationDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/ElasticsearchDestinationDescription AWS API Documentation
    #
    class ElasticsearchDestinationDescription < Struct.new(
      :role_arn,
      :domain_arn,
      :cluster_endpoint,
      :index_name,
      :type_name,
      :index_rotation_period,
      :buffering_hints,
      :retry_options,
      :s3_backup_mode,
      :s3_destination_description,
      :processing_configuration,
      :cloud_watch_logging_options,
      :vpc_configuration_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an update for a destination in Amazon ES.
    #
    # @note When making an API call, you may pass ElasticsearchDestinationUpdate
    #   data as a hash:
    #
    #       {
    #         role_arn: "RoleARN",
    #         domain_arn: "ElasticsearchDomainARN",
    #         cluster_endpoint: "ElasticsearchClusterEndpoint",
    #         index_name: "ElasticsearchIndexName",
    #         type_name: "ElasticsearchTypeName",
    #         index_rotation_period: "NoRotation", # accepts NoRotation, OneHour, OneDay, OneWeek, OneMonth
    #         buffering_hints: {
    #           interval_in_seconds: 1,
    #           size_in_m_bs: 1,
    #         },
    #         retry_options: {
    #           duration_in_seconds: 1,
    #         },
    #         s3_update: {
    #           role_arn: "RoleARN",
    #           bucket_arn: "BucketARN",
    #           prefix: "Prefix",
    #           error_output_prefix: "ErrorOutputPrefix",
    #           buffering_hints: {
    #             size_in_m_bs: 1,
    #             interval_in_seconds: 1,
    #           },
    #           compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
    #           encryption_configuration: {
    #             no_encryption_config: "NoEncryption", # accepts NoEncryption
    #             kms_encryption_config: {
    #               awskms_key_arn: "AWSKMSKeyARN", # required
    #             },
    #           },
    #           cloud_watch_logging_options: {
    #             enabled: false,
    #             log_group_name: "LogGroupName",
    #             log_stream_name: "LogStreamName",
    #           },
    #         },
    #         processing_configuration: {
    #           enabled: false,
    #           processors: [
    #             {
    #               type: "Lambda", # required, accepts Lambda
    #               parameters: [
    #                 {
    #                   parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds
    #                   parameter_value: "ProcessorParameterValue", # required
    #                 },
    #               ],
    #             },
    #           ],
    #         },
    #         cloud_watch_logging_options: {
    #           enabled: false,
    #           log_group_name: "LogGroupName",
    #           log_stream_name: "LogStreamName",
    #         },
    #       }
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to be assumed by
    #   Kinesis Data Firehose for calling the Amazon ES Configuration API
    #   and for indexing documents. For more information, see [Grant Kinesis
    #   Data Firehose Access to an Amazon S3 Destination][1] and [Amazon
    #   Resource Names (ARNs) and AWS Service Namespaces][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/firehose/latest/dev/controlling-access.html#using-iam-s3
    #   [2]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] domain_arn
    #   The ARN of the Amazon ES domain. The IAM role must have permissions
    #   for `DescribeElasticsearchDomain`, `DescribeElasticsearchDomains`,
    #   and `DescribeElasticsearchDomainConfig` after assuming the IAM role
    #   specified in `RoleARN`. For more information, see [Amazon Resource
    #   Names (ARNs) and AWS Service Namespaces][1].
    #
    #   Specify either `ClusterEndpoint` or `DomainARN`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] cluster_endpoint
    #   The endpoint to use when communicating with the cluster. Specify
    #   either this `ClusterEndpoint` or the `DomainARN` field.
    #   @return [String]
    #
    # @!attribute [rw] index_name
    #   The Elasticsearch index name.
    #   @return [String]
    #
    # @!attribute [rw] type_name
    #   The Elasticsearch type name. For Elasticsearch 6.x, there can be
    #   only one type per index. If you try to specify a new type for an
    #   existing index that already has another type, Kinesis Data Firehose
    #   returns an error during runtime.
    #
    #   If you upgrade Elasticsearch from 6.x to 7.x and don’t update your
    #   delivery stream, Kinesis Data Firehose still delivers data to
    #   Elasticsearch with the old index name and type name. If you want to
    #   update your delivery stream with a new index name, provide an empty
    #   string for `TypeName`.
    #   @return [String]
    #
    # @!attribute [rw] index_rotation_period
    #   The Elasticsearch index rotation period. Index rotation appends a
    #   timestamp to `IndexName` to facilitate the expiration of old data.
    #   For more information, see [Index Rotation for the Amazon ES
    #   Destination][1]. Default value is `OneDay`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html#es-index-rotation
    #   @return [String]
    #
    # @!attribute [rw] buffering_hints
    #   The buffering options. If no value is specified,
    #   `ElasticsearchBufferingHints` object default values are used.
    #   @return [Types::ElasticsearchBufferingHints]
    #
    # @!attribute [rw] retry_options
    #   The retry behavior in case Kinesis Data Firehose is unable to
    #   deliver documents to Amazon ES. The default value is 300 (5
    #   minutes).
    #   @return [Types::ElasticsearchRetryOptions]
    #
    # @!attribute [rw] s3_update
    #   The Amazon S3 destination.
    #   @return [Types::S3DestinationUpdate]
    #
    # @!attribute [rw] processing_configuration
    #   The data processing configuration.
    #   @return [Types::ProcessingConfiguration]
    #
    # @!attribute [rw] cloud_watch_logging_options
    #   The CloudWatch logging options for your delivery stream.
    #   @return [Types::CloudWatchLoggingOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/ElasticsearchDestinationUpdate AWS API Documentation
    #
    class ElasticsearchDestinationUpdate < Struct.new(
      :role_arn,
      :domain_arn,
      :cluster_endpoint,
      :index_name,
      :type_name,
      :index_rotation_period,
      :buffering_hints,
      :retry_options,
      :s3_update,
      :processing_configuration,
      :cloud_watch_logging_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configures retry behavior in case Kinesis Data Firehose is unable to
    # deliver documents to Amazon ES.
    #
    # @note When making an API call, you may pass ElasticsearchRetryOptions
    #   data as a hash:
    #
    #       {
    #         duration_in_seconds: 1,
    #       }
    #
    # @!attribute [rw] duration_in_seconds
    #   After an initial failure to deliver to Amazon ES, the total amount
    #   of time during which Kinesis Data Firehose retries delivery
    #   (including the first attempt). After this time has elapsed, the
    #   failed documents are written to Amazon S3. Default value is 300
    #   seconds (5 minutes). A value of 0 (zero) results in no retries.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/ElasticsearchRetryOptions AWS API Documentation
    #
    class ElasticsearchRetryOptions < Struct.new(
      :duration_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the encryption for a destination in Amazon S3.
    #
    # @note When making an API call, you may pass EncryptionConfiguration
    #   data as a hash:
    #
    #       {
    #         no_encryption_config: "NoEncryption", # accepts NoEncryption
    #         kms_encryption_config: {
    #           awskms_key_arn: "AWSKMSKeyARN", # required
    #         },
    #       }
    #
    # @!attribute [rw] no_encryption_config
    #   Specifically override existing encryption information to ensure that
    #   no encryption is used.
    #   @return [String]
    #
    # @!attribute [rw] kms_encryption_config
    #   The encryption key.
    #   @return [Types::KMSEncryptionConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/EncryptionConfiguration AWS API Documentation
    #
    class EncryptionConfiguration < Struct.new(
      :no_encryption_config,
      :kms_encryption_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the configuration of a destination in Amazon S3.
    #
    # @note When making an API call, you may pass ExtendedS3DestinationConfiguration
    #   data as a hash:
    #
    #       {
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
    #         processing_configuration: {
    #           enabled: false,
    #           processors: [
    #             {
    #               type: "Lambda", # required, accepts Lambda
    #               parameters: [
    #                 {
    #                   parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds
    #                   parameter_value: "ProcessorParameterValue", # required
    #                 },
    #               ],
    #             },
    #           ],
    #         },
    #         s3_backup_mode: "Disabled", # accepts Disabled, Enabled
    #         s3_backup_configuration: {
    #           role_arn: "RoleARN", # required
    #           bucket_arn: "BucketARN", # required
    #           prefix: "Prefix",
    #           error_output_prefix: "ErrorOutputPrefix",
    #           buffering_hints: {
    #             size_in_m_bs: 1,
    #             interval_in_seconds: 1,
    #           },
    #           compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
    #           encryption_configuration: {
    #             no_encryption_config: "NoEncryption", # accepts NoEncryption
    #             kms_encryption_config: {
    #               awskms_key_arn: "AWSKMSKeyARN", # required
    #             },
    #           },
    #           cloud_watch_logging_options: {
    #             enabled: false,
    #             log_group_name: "LogGroupName",
    #             log_stream_name: "LogStreamName",
    #           },
    #         },
    #         data_format_conversion_configuration: {
    #           schema_configuration: {
    #             role_arn: "NonEmptyStringWithoutWhitespace",
    #             catalog_id: "NonEmptyStringWithoutWhitespace",
    #             database_name: "NonEmptyStringWithoutWhitespace",
    #             table_name: "NonEmptyStringWithoutWhitespace",
    #             region: "NonEmptyStringWithoutWhitespace",
    #             version_id: "NonEmptyStringWithoutWhitespace",
    #           },
    #           input_format_configuration: {
    #             deserializer: {
    #               open_x_json_ser_de: {
    #                 convert_dots_in_json_keys_to_underscores: false,
    #                 case_insensitive: false,
    #                 column_to_json_key_mappings: {
    #                   "NonEmptyStringWithoutWhitespace" => "NonEmptyString",
    #                 },
    #               },
    #               hive_json_ser_de: {
    #                 timestamp_formats: ["NonEmptyString"],
    #               },
    #             },
    #           },
    #           output_format_configuration: {
    #             serializer: {
    #               parquet_ser_de: {
    #                 block_size_bytes: 1,
    #                 page_size_bytes: 1,
    #                 compression: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, SNAPPY
    #                 enable_dictionary_compression: false,
    #                 max_padding_bytes: 1,
    #                 writer_version: "V1", # accepts V1, V2
    #               },
    #               orc_ser_de: {
    #                 stripe_size_bytes: 1,
    #                 block_size_bytes: 1,
    #                 row_index_stride: 1,
    #                 enable_padding: false,
    #                 padding_tolerance: 1.0,
    #                 compression: "NONE", # accepts NONE, ZLIB, SNAPPY
    #                 bloom_filter_columns: ["NonEmptyStringWithoutWhitespace"],
    #                 bloom_filter_false_positive_probability: 1.0,
    #                 dictionary_key_threshold: 1.0,
    #                 format_version: "V0_11", # accepts V0_11, V0_12
    #               },
    #             },
    #           },
    #           enabled: false,
    #         },
    #       }
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the AWS credentials. For more
    #   information, see [Amazon Resource Names (ARNs) and AWS Service
    #   Namespaces][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] bucket_arn
    #   The ARN of the S3 bucket. For more information, see [Amazon Resource
    #   Names (ARNs) and AWS Service Namespaces][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   The "YYYY/MM/DD/HH" time format prefix is automatically used for
    #   delivered Amazon S3 files. You can also specify a custom prefix, as
    #   described in [Custom Prefixes for Amazon S3 Objects][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html
    #   @return [String]
    #
    # @!attribute [rw] error_output_prefix
    #   A prefix that Kinesis Data Firehose evaluates and adds to failed
    #   records before writing them to S3. This prefix appears immediately
    #   following the bucket name. For information about how to specify this
    #   prefix, see [Custom Prefixes for Amazon S3 Objects][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html
    #   @return [String]
    #
    # @!attribute [rw] buffering_hints
    #   The buffering option.
    #   @return [Types::BufferingHints]
    #
    # @!attribute [rw] compression_format
    #   The compression format. If no value is specified, the default is
    #   UNCOMPRESSED.
    #   @return [String]
    #
    # @!attribute [rw] encryption_configuration
    #   The encryption configuration. If no value is specified, the default
    #   is no encryption.
    #   @return [Types::EncryptionConfiguration]
    #
    # @!attribute [rw] cloud_watch_logging_options
    #   The Amazon CloudWatch logging options for your delivery stream.
    #   @return [Types::CloudWatchLoggingOptions]
    #
    # @!attribute [rw] processing_configuration
    #   The data processing configuration.
    #   @return [Types::ProcessingConfiguration]
    #
    # @!attribute [rw] s3_backup_mode
    #   The Amazon S3 backup mode. After you create a delivery stream, you
    #   can update it to enable Amazon S3 backup if it is disabled. If
    #   backup is enabled, you can't update the delivery stream to disable
    #   it.
    #   @return [String]
    #
    # @!attribute [rw] s3_backup_configuration
    #   The configuration for backup in Amazon S3.
    #   @return [Types::S3DestinationConfiguration]
    #
    # @!attribute [rw] data_format_conversion_configuration
    #   The serializer, deserializer, and schema for converting data from
    #   the JSON format to the Parquet or ORC format before writing it to
    #   Amazon S3.
    #   @return [Types::DataFormatConversionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/ExtendedS3DestinationConfiguration AWS API Documentation
    #
    class ExtendedS3DestinationConfiguration < Struct.new(
      :role_arn,
      :bucket_arn,
      :prefix,
      :error_output_prefix,
      :buffering_hints,
      :compression_format,
      :encryption_configuration,
      :cloud_watch_logging_options,
      :processing_configuration,
      :s3_backup_mode,
      :s3_backup_configuration,
      :data_format_conversion_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a destination in Amazon S3.
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the AWS credentials. For more
    #   information, see [Amazon Resource Names (ARNs) and AWS Service
    #   Namespaces][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] bucket_arn
    #   The ARN of the S3 bucket. For more information, see [Amazon Resource
    #   Names (ARNs) and AWS Service Namespaces][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   The "YYYY/MM/DD/HH" time format prefix is automatically used for
    #   delivered Amazon S3 files. You can also specify a custom prefix, as
    #   described in [Custom Prefixes for Amazon S3 Objects][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html
    #   @return [String]
    #
    # @!attribute [rw] error_output_prefix
    #   A prefix that Kinesis Data Firehose evaluates and adds to failed
    #   records before writing them to S3. This prefix appears immediately
    #   following the bucket name. For information about how to specify this
    #   prefix, see [Custom Prefixes for Amazon S3 Objects][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html
    #   @return [String]
    #
    # @!attribute [rw] buffering_hints
    #   The buffering option.
    #   @return [Types::BufferingHints]
    #
    # @!attribute [rw] compression_format
    #   The compression format. If no value is specified, the default is
    #   `UNCOMPRESSED`.
    #   @return [String]
    #
    # @!attribute [rw] encryption_configuration
    #   The encryption configuration. If no value is specified, the default
    #   is no encryption.
    #   @return [Types::EncryptionConfiguration]
    #
    # @!attribute [rw] cloud_watch_logging_options
    #   The Amazon CloudWatch logging options for your delivery stream.
    #   @return [Types::CloudWatchLoggingOptions]
    #
    # @!attribute [rw] processing_configuration
    #   The data processing configuration.
    #   @return [Types::ProcessingConfiguration]
    #
    # @!attribute [rw] s3_backup_mode
    #   The Amazon S3 backup mode.
    #   @return [String]
    #
    # @!attribute [rw] s3_backup_description
    #   The configuration for backup in Amazon S3.
    #   @return [Types::S3DestinationDescription]
    #
    # @!attribute [rw] data_format_conversion_configuration
    #   The serializer, deserializer, and schema for converting data from
    #   the JSON format to the Parquet or ORC format before writing it to
    #   Amazon S3.
    #   @return [Types::DataFormatConversionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/ExtendedS3DestinationDescription AWS API Documentation
    #
    class ExtendedS3DestinationDescription < Struct.new(
      :role_arn,
      :bucket_arn,
      :prefix,
      :error_output_prefix,
      :buffering_hints,
      :compression_format,
      :encryption_configuration,
      :cloud_watch_logging_options,
      :processing_configuration,
      :s3_backup_mode,
      :s3_backup_description,
      :data_format_conversion_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an update for a destination in Amazon S3.
    #
    # @note When making an API call, you may pass ExtendedS3DestinationUpdate
    #   data as a hash:
    #
    #       {
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
    #         processing_configuration: {
    #           enabled: false,
    #           processors: [
    #             {
    #               type: "Lambda", # required, accepts Lambda
    #               parameters: [
    #                 {
    #                   parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds
    #                   parameter_value: "ProcessorParameterValue", # required
    #                 },
    #               ],
    #             },
    #           ],
    #         },
    #         s3_backup_mode: "Disabled", # accepts Disabled, Enabled
    #         s3_backup_update: {
    #           role_arn: "RoleARN",
    #           bucket_arn: "BucketARN",
    #           prefix: "Prefix",
    #           error_output_prefix: "ErrorOutputPrefix",
    #           buffering_hints: {
    #             size_in_m_bs: 1,
    #             interval_in_seconds: 1,
    #           },
    #           compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
    #           encryption_configuration: {
    #             no_encryption_config: "NoEncryption", # accepts NoEncryption
    #             kms_encryption_config: {
    #               awskms_key_arn: "AWSKMSKeyARN", # required
    #             },
    #           },
    #           cloud_watch_logging_options: {
    #             enabled: false,
    #             log_group_name: "LogGroupName",
    #             log_stream_name: "LogStreamName",
    #           },
    #         },
    #         data_format_conversion_configuration: {
    #           schema_configuration: {
    #             role_arn: "NonEmptyStringWithoutWhitespace",
    #             catalog_id: "NonEmptyStringWithoutWhitespace",
    #             database_name: "NonEmptyStringWithoutWhitespace",
    #             table_name: "NonEmptyStringWithoutWhitespace",
    #             region: "NonEmptyStringWithoutWhitespace",
    #             version_id: "NonEmptyStringWithoutWhitespace",
    #           },
    #           input_format_configuration: {
    #             deserializer: {
    #               open_x_json_ser_de: {
    #                 convert_dots_in_json_keys_to_underscores: false,
    #                 case_insensitive: false,
    #                 column_to_json_key_mappings: {
    #                   "NonEmptyStringWithoutWhitespace" => "NonEmptyString",
    #                 },
    #               },
    #               hive_json_ser_de: {
    #                 timestamp_formats: ["NonEmptyString"],
    #               },
    #             },
    #           },
    #           output_format_configuration: {
    #             serializer: {
    #               parquet_ser_de: {
    #                 block_size_bytes: 1,
    #                 page_size_bytes: 1,
    #                 compression: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, SNAPPY
    #                 enable_dictionary_compression: false,
    #                 max_padding_bytes: 1,
    #                 writer_version: "V1", # accepts V1, V2
    #               },
    #               orc_ser_de: {
    #                 stripe_size_bytes: 1,
    #                 block_size_bytes: 1,
    #                 row_index_stride: 1,
    #                 enable_padding: false,
    #                 padding_tolerance: 1.0,
    #                 compression: "NONE", # accepts NONE, ZLIB, SNAPPY
    #                 bloom_filter_columns: ["NonEmptyStringWithoutWhitespace"],
    #                 bloom_filter_false_positive_probability: 1.0,
    #                 dictionary_key_threshold: 1.0,
    #                 format_version: "V0_11", # accepts V0_11, V0_12
    #               },
    #             },
    #           },
    #           enabled: false,
    #         },
    #       }
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the AWS credentials. For more
    #   information, see [Amazon Resource Names (ARNs) and AWS Service
    #   Namespaces][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] bucket_arn
    #   The ARN of the S3 bucket. For more information, see [Amazon Resource
    #   Names (ARNs) and AWS Service Namespaces][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   The "YYYY/MM/DD/HH" time format prefix is automatically used for
    #   delivered Amazon S3 files. You can also specify a custom prefix, as
    #   described in [Custom Prefixes for Amazon S3 Objects][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html
    #   @return [String]
    #
    # @!attribute [rw] error_output_prefix
    #   A prefix that Kinesis Data Firehose evaluates and adds to failed
    #   records before writing them to S3. This prefix appears immediately
    #   following the bucket name. For information about how to specify this
    #   prefix, see [Custom Prefixes for Amazon S3 Objects][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html
    #   @return [String]
    #
    # @!attribute [rw] buffering_hints
    #   The buffering option.
    #   @return [Types::BufferingHints]
    #
    # @!attribute [rw] compression_format
    #   The compression format. If no value is specified, the default is
    #   `UNCOMPRESSED`.
    #   @return [String]
    #
    # @!attribute [rw] encryption_configuration
    #   The encryption configuration. If no value is specified, the default
    #   is no encryption.
    #   @return [Types::EncryptionConfiguration]
    #
    # @!attribute [rw] cloud_watch_logging_options
    #   The Amazon CloudWatch logging options for your delivery stream.
    #   @return [Types::CloudWatchLoggingOptions]
    #
    # @!attribute [rw] processing_configuration
    #   The data processing configuration.
    #   @return [Types::ProcessingConfiguration]
    #
    # @!attribute [rw] s3_backup_mode
    #   You can update a delivery stream to enable Amazon S3 backup if it is
    #   disabled. If backup is enabled, you can't update the delivery
    #   stream to disable it.
    #   @return [String]
    #
    # @!attribute [rw] s3_backup_update
    #   The Amazon S3 destination for backup.
    #   @return [Types::S3DestinationUpdate]
    #
    # @!attribute [rw] data_format_conversion_configuration
    #   The serializer, deserializer, and schema for converting data from
    #   the JSON format to the Parquet or ORC format before writing it to
    #   Amazon S3.
    #   @return [Types::DataFormatConversionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/ExtendedS3DestinationUpdate AWS API Documentation
    #
    class ExtendedS3DestinationUpdate < Struct.new(
      :role_arn,
      :bucket_arn,
      :prefix,
      :error_output_prefix,
      :buffering_hints,
      :compression_format,
      :encryption_configuration,
      :cloud_watch_logging_options,
      :processing_configuration,
      :s3_backup_mode,
      :s3_backup_update,
      :data_format_conversion_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details in case one of the following operations fails due to
    # an error related to KMS: CreateDeliveryStream, DeleteDeliveryStream,
    # StartDeliveryStreamEncryption, StopDeliveryStreamEncryption.
    #
    # @!attribute [rw] type
    #   The type of error that caused the failure.
    #   @return [String]
    #
    # @!attribute [rw] details
    #   A message providing details about the error that caused the failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/FailureDescription AWS API Documentation
    #
    class FailureDescription < Struct.new(
      :type,
      :details)
      SENSITIVE = []
      include Aws::Structure
    end

    # The native Hive / HCatalog JsonSerDe. Used by Kinesis Data Firehose
    # for deserializing data, which means converting it from the JSON format
    # in preparation for serializing it to the Parquet or ORC format. This
    # is one of two deserializers you can choose, depending on which one
    # offers the functionality you need. The other option is the OpenX
    # SerDe.
    #
    # @note When making an API call, you may pass HiveJsonSerDe
    #   data as a hash:
    #
    #       {
    #         timestamp_formats: ["NonEmptyString"],
    #       }
    #
    # @!attribute [rw] timestamp_formats
    #   Indicates how you want Kinesis Data Firehose to parse the date and
    #   timestamps that may be present in your input data JSON. To specify
    #   these format strings, follow the pattern syntax of JodaTime's
    #   DateTimeFormat format strings. For more information, see [Class
    #   DateTimeFormat][1]. You can also use the special value `millis` to
    #   parse timestamps in epoch milliseconds. If you don't specify a
    #   format, Kinesis Data Firehose uses `java.sql.Timestamp::valueOf` by
    #   default.
    #
    #
    #
    #   [1]: https://www.joda.org/joda-time/apidocs/org/joda/time/format/DateTimeFormat.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/HiveJsonSerDe AWS API Documentation
    #
    class HiveJsonSerDe < Struct.new(
      :timestamp_formats)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the buffering options that can be applied before data is
    # delivered to the HTTP endpoint destination. Kinesis Data Firehose
    # treats these options as hints, and it might choose to use more optimal
    # values. The `SizeInMBs` and `IntervalInSeconds` parameters are
    # optional. However, if specify a value for one of them, you must also
    # provide a value for the other.
    #
    # @note When making an API call, you may pass HttpEndpointBufferingHints
    #   data as a hash:
    #
    #       {
    #         size_in_m_bs: 1,
    #         interval_in_seconds: 1,
    #       }
    #
    # @!attribute [rw] size_in_m_bs
    #   Buffer incoming data to the specified size, in MBs, before
    #   delivering it to the destination. The default value is 5.
    #
    #   We recommend setting this parameter to a value greater than the
    #   amount of data you typically ingest into the delivery stream in 10
    #   seconds. For example, if you typically ingest data at 1 MB/sec, the
    #   value should be 10 MB or higher.
    #   @return [Integer]
    #
    # @!attribute [rw] interval_in_seconds
    #   Buffer incoming data for the specified period of time, in seconds,
    #   before delivering it to the destination. The default value is 300 (5
    #   minutes).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/HttpEndpointBufferingHints AWS API Documentation
    #
    class HttpEndpointBufferingHints < Struct.new(
      :size_in_m_bs,
      :interval_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the metadata that's delivered to the specified HTTP
    # endpoint destination.
    #
    # @note When making an API call, you may pass HttpEndpointCommonAttribute
    #   data as a hash:
    #
    #       {
    #         attribute_name: "HttpEndpointAttributeName", # required
    #         attribute_value: "HttpEndpointAttributeValue", # required
    #       }
    #
    # @!attribute [rw] attribute_name
    #   The name of the HTTP endpoint common attribute.
    #   @return [String]
    #
    # @!attribute [rw] attribute_value
    #   The value of the HTTP endpoint common attribute.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/HttpEndpointCommonAttribute AWS API Documentation
    #
    class HttpEndpointCommonAttribute < Struct.new(
      :attribute_name,
      :attribute_value)
      SENSITIVE = [:attribute_name, :attribute_value]
      include Aws::Structure
    end

    # Describes the configuration of the HTTP endpoint to which Kinesis
    # Firehose delivers data.
    #
    # @note When making an API call, you may pass HttpEndpointConfiguration
    #   data as a hash:
    #
    #       {
    #         url: "HttpEndpointUrl", # required
    #         name: "HttpEndpointName",
    #         access_key: "HttpEndpointAccessKey",
    #       }
    #
    # @!attribute [rw] url
    #   The URL of the HTTP endpoint selected as the destination.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the HTTP endpoint selected as the destination.
    #   @return [String]
    #
    # @!attribute [rw] access_key
    #   The access key required for Kinesis Firehose to authenticate with
    #   the HTTP endpoint selected as the destination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/HttpEndpointConfiguration AWS API Documentation
    #
    class HttpEndpointConfiguration < Struct.new(
      :url,
      :name,
      :access_key)
      SENSITIVE = [:url, :access_key]
      include Aws::Structure
    end

    # Describes the HTTP endpoint selected as the destination.
    #
    # @!attribute [rw] url
    #   The URL of the HTTP endpoint selected as the destination.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the HTTP endpoint selected as the destination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/HttpEndpointDescription AWS API Documentation
    #
    class HttpEndpointDescription < Struct.new(
      :url,
      :name)
      SENSITIVE = [:url]
      include Aws::Structure
    end

    # Describes the configuration of the HTTP endpoint destination.
    #
    # @note When making an API call, you may pass HttpEndpointDestinationConfiguration
    #   data as a hash:
    #
    #       {
    #         endpoint_configuration: { # required
    #           url: "HttpEndpointUrl", # required
    #           name: "HttpEndpointName",
    #           access_key: "HttpEndpointAccessKey",
    #         },
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1,
    #         },
    #         cloud_watch_logging_options: {
    #           enabled: false,
    #           log_group_name: "LogGroupName",
    #           log_stream_name: "LogStreamName",
    #         },
    #         request_configuration: {
    #           content_encoding: "NONE", # accepts NONE, GZIP
    #           common_attributes: [
    #             {
    #               attribute_name: "HttpEndpointAttributeName", # required
    #               attribute_value: "HttpEndpointAttributeValue", # required
    #             },
    #           ],
    #         },
    #         processing_configuration: {
    #           enabled: false,
    #           processors: [
    #             {
    #               type: "Lambda", # required, accepts Lambda
    #               parameters: [
    #                 {
    #                   parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds
    #                   parameter_value: "ProcessorParameterValue", # required
    #                 },
    #               ],
    #             },
    #           ],
    #         },
    #         role_arn: "RoleARN",
    #         retry_options: {
    #           duration_in_seconds: 1,
    #         },
    #         s3_backup_mode: "FailedDataOnly", # accepts FailedDataOnly, AllData
    #         s3_configuration: { # required
    #           role_arn: "RoleARN", # required
    #           bucket_arn: "BucketARN", # required
    #           prefix: "Prefix",
    #           error_output_prefix: "ErrorOutputPrefix",
    #           buffering_hints: {
    #             size_in_m_bs: 1,
    #             interval_in_seconds: 1,
    #           },
    #           compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
    #           encryption_configuration: {
    #             no_encryption_config: "NoEncryption", # accepts NoEncryption
    #             kms_encryption_config: {
    #               awskms_key_arn: "AWSKMSKeyARN", # required
    #             },
    #           },
    #           cloud_watch_logging_options: {
    #             enabled: false,
    #             log_group_name: "LogGroupName",
    #             log_stream_name: "LogStreamName",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] endpoint_configuration
    #   The configuration of the HTTP endpoint selected as the destination.
    #   @return [Types::HttpEndpointConfiguration]
    #
    # @!attribute [rw] buffering_hints
    #   The buffering options that can be used before data is delivered to
    #   the specified destination. Kinesis Data Firehose treats these
    #   options as hints, and it might choose to use more optimal values.
    #   The `SizeInMBs` and `IntervalInSeconds` parameters are optional.
    #   However, if you specify a value for one of them, you must also
    #   provide a value for the other.
    #   @return [Types::HttpEndpointBufferingHints]
    #
    # @!attribute [rw] cloud_watch_logging_options
    #   Describes the Amazon CloudWatch logging options for your delivery
    #   stream.
    #   @return [Types::CloudWatchLoggingOptions]
    #
    # @!attribute [rw] request_configuration
    #   The configuration of the requeste sent to the HTTP endpoint
    #   specified as the destination.
    #   @return [Types::HttpEndpointRequestConfiguration]
    #
    # @!attribute [rw] processing_configuration
    #   Describes a data processing configuration.
    #   @return [Types::ProcessingConfiguration]
    #
    # @!attribute [rw] role_arn
    #   Kinesis Data Firehose uses this IAM role for all the permissions
    #   that the delivery stream needs.
    #   @return [String]
    #
    # @!attribute [rw] retry_options
    #   Describes the retry behavior in case Kinesis Data Firehose is unable
    #   to deliver data to the specified HTTP endpoint destination, or if it
    #   doesn't receive a valid acknowledgment of receipt from the
    #   specified HTTP endpoint destination.
    #   @return [Types::HttpEndpointRetryOptions]
    #
    # @!attribute [rw] s3_backup_mode
    #   Describes the S3 bucket backup options for the data that Kinesis
    #   Data Firehose delivers to the HTTP endpoint destination. You can
    #   back up all documents (`AllData`) or only the documents that Kinesis
    #   Data Firehose could not deliver to the specified HTTP endpoint
    #   destination (`FailedDataOnly`).
    #   @return [String]
    #
    # @!attribute [rw] s3_configuration
    #   Describes the configuration of a destination in Amazon S3.
    #   @return [Types::S3DestinationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/HttpEndpointDestinationConfiguration AWS API Documentation
    #
    class HttpEndpointDestinationConfiguration < Struct.new(
      :endpoint_configuration,
      :buffering_hints,
      :cloud_watch_logging_options,
      :request_configuration,
      :processing_configuration,
      :role_arn,
      :retry_options,
      :s3_backup_mode,
      :s3_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the HTTP endpoint destination.
    #
    # @!attribute [rw] endpoint_configuration
    #   The configuration of the specified HTTP endpoint destination.
    #   @return [Types::HttpEndpointDescription]
    #
    # @!attribute [rw] buffering_hints
    #   Describes buffering options that can be applied to the data before
    #   it is delivered to the HTTPS endpoint destination. Kinesis Data
    #   Firehose teats these options as hints, and it might choose to use
    #   more optimal values. The `SizeInMBs` and `IntervalInSeconds`
    #   parameters are optional. However, if specify a value for one of
    #   them, you must also provide a value for the other.
    #   @return [Types::HttpEndpointBufferingHints]
    #
    # @!attribute [rw] cloud_watch_logging_options
    #   Describes the Amazon CloudWatch logging options for your delivery
    #   stream.
    #   @return [Types::CloudWatchLoggingOptions]
    #
    # @!attribute [rw] request_configuration
    #   The configuration of request sent to the HTTP endpoint specified as
    #   the destination.
    #   @return [Types::HttpEndpointRequestConfiguration]
    #
    # @!attribute [rw] processing_configuration
    #   Describes a data processing configuration.
    #   @return [Types::ProcessingConfiguration]
    #
    # @!attribute [rw] role_arn
    #   Kinesis Data Firehose uses this IAM role for all the permissions
    #   that the delivery stream needs.
    #   @return [String]
    #
    # @!attribute [rw] retry_options
    #   Describes the retry behavior in case Kinesis Data Firehose is unable
    #   to deliver data to the specified HTTP endpoint destination, or if it
    #   doesn't receive a valid acknowledgment of receipt from the
    #   specified HTTP endpoint destination.
    #   @return [Types::HttpEndpointRetryOptions]
    #
    # @!attribute [rw] s3_backup_mode
    #   Describes the S3 bucket backup options for the data that Kinesis
    #   Firehose delivers to the HTTP endpoint destination. You can back up
    #   all documents (`AllData`) or only the documents that Kinesis Data
    #   Firehose could not deliver to the specified HTTP endpoint
    #   destination (`FailedDataOnly`).
    #   @return [String]
    #
    # @!attribute [rw] s3_destination_description
    #   Describes a destination in Amazon S3.
    #   @return [Types::S3DestinationDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/HttpEndpointDestinationDescription AWS API Documentation
    #
    class HttpEndpointDestinationDescription < Struct.new(
      :endpoint_configuration,
      :buffering_hints,
      :cloud_watch_logging_options,
      :request_configuration,
      :processing_configuration,
      :role_arn,
      :retry_options,
      :s3_backup_mode,
      :s3_destination_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Updates the specified HTTP endpoint destination.
    #
    # @note When making an API call, you may pass HttpEndpointDestinationUpdate
    #   data as a hash:
    #
    #       {
    #         endpoint_configuration: {
    #           url: "HttpEndpointUrl", # required
    #           name: "HttpEndpointName",
    #           access_key: "HttpEndpointAccessKey",
    #         },
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1,
    #         },
    #         cloud_watch_logging_options: {
    #           enabled: false,
    #           log_group_name: "LogGroupName",
    #           log_stream_name: "LogStreamName",
    #         },
    #         request_configuration: {
    #           content_encoding: "NONE", # accepts NONE, GZIP
    #           common_attributes: [
    #             {
    #               attribute_name: "HttpEndpointAttributeName", # required
    #               attribute_value: "HttpEndpointAttributeValue", # required
    #             },
    #           ],
    #         },
    #         processing_configuration: {
    #           enabled: false,
    #           processors: [
    #             {
    #               type: "Lambda", # required, accepts Lambda
    #               parameters: [
    #                 {
    #                   parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds
    #                   parameter_value: "ProcessorParameterValue", # required
    #                 },
    #               ],
    #             },
    #           ],
    #         },
    #         role_arn: "RoleARN",
    #         retry_options: {
    #           duration_in_seconds: 1,
    #         },
    #         s3_backup_mode: "FailedDataOnly", # accepts FailedDataOnly, AllData
    #         s3_update: {
    #           role_arn: "RoleARN",
    #           bucket_arn: "BucketARN",
    #           prefix: "Prefix",
    #           error_output_prefix: "ErrorOutputPrefix",
    #           buffering_hints: {
    #             size_in_m_bs: 1,
    #             interval_in_seconds: 1,
    #           },
    #           compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
    #           encryption_configuration: {
    #             no_encryption_config: "NoEncryption", # accepts NoEncryption
    #             kms_encryption_config: {
    #               awskms_key_arn: "AWSKMSKeyARN", # required
    #             },
    #           },
    #           cloud_watch_logging_options: {
    #             enabled: false,
    #             log_group_name: "LogGroupName",
    #             log_stream_name: "LogStreamName",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] endpoint_configuration
    #   Describes the configuration of the HTTP endpoint destination.
    #   @return [Types::HttpEndpointConfiguration]
    #
    # @!attribute [rw] buffering_hints
    #   Describes buffering options that can be applied to the data before
    #   it is delivered to the HTTPS endpoint destination. Kinesis Data
    #   Firehose teats these options as hints, and it might choose to use
    #   more optimal values. The `SizeInMBs` and `IntervalInSeconds`
    #   parameters are optional. However, if specify a value for one of
    #   them, you must also provide a value for the other.
    #   @return [Types::HttpEndpointBufferingHints]
    #
    # @!attribute [rw] cloud_watch_logging_options
    #   Describes the Amazon CloudWatch logging options for your delivery
    #   stream.
    #   @return [Types::CloudWatchLoggingOptions]
    #
    # @!attribute [rw] request_configuration
    #   The configuration of the request sent to the HTTP endpoint specified
    #   as the destination.
    #   @return [Types::HttpEndpointRequestConfiguration]
    #
    # @!attribute [rw] processing_configuration
    #   Describes a data processing configuration.
    #   @return [Types::ProcessingConfiguration]
    #
    # @!attribute [rw] role_arn
    #   Kinesis Data Firehose uses this IAM role for all the permissions
    #   that the delivery stream needs.
    #   @return [String]
    #
    # @!attribute [rw] retry_options
    #   Describes the retry behavior in case Kinesis Data Firehose is unable
    #   to deliver data to the specified HTTP endpoint destination, or if it
    #   doesn't receive a valid acknowledgment of receipt from the
    #   specified HTTP endpoint destination.
    #   @return [Types::HttpEndpointRetryOptions]
    #
    # @!attribute [rw] s3_backup_mode
    #   Describes the S3 bucket backup options for the data that Kinesis
    #   Firehose delivers to the HTTP endpoint destination. You can back up
    #   all documents (`AllData`) or only the documents that Kinesis Data
    #   Firehose could not deliver to the specified HTTP endpoint
    #   destination (`FailedDataOnly`).
    #   @return [String]
    #
    # @!attribute [rw] s3_update
    #   Describes an update for a destination in Amazon S3.
    #   @return [Types::S3DestinationUpdate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/HttpEndpointDestinationUpdate AWS API Documentation
    #
    class HttpEndpointDestinationUpdate < Struct.new(
      :endpoint_configuration,
      :buffering_hints,
      :cloud_watch_logging_options,
      :request_configuration,
      :processing_configuration,
      :role_arn,
      :retry_options,
      :s3_backup_mode,
      :s3_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of the HTTP endpoint request.
    #
    # @note When making an API call, you may pass HttpEndpointRequestConfiguration
    #   data as a hash:
    #
    #       {
    #         content_encoding: "NONE", # accepts NONE, GZIP
    #         common_attributes: [
    #           {
    #             attribute_name: "HttpEndpointAttributeName", # required
    #             attribute_value: "HttpEndpointAttributeValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] content_encoding
    #   Kinesis Data Firehose uses the content encoding to compress the body
    #   of a request before sending the request to the destination. For more
    #   information, see [Content-Encoding][1] in MDN Web Docs, the official
    #   Mozilla documentation.
    #
    #
    #
    #   [1]: https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Encoding
    #   @return [String]
    #
    # @!attribute [rw] common_attributes
    #   Describes the metadata sent to the HTTP endpoint destination.
    #   @return [Array<Types::HttpEndpointCommonAttribute>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/HttpEndpointRequestConfiguration AWS API Documentation
    #
    class HttpEndpointRequestConfiguration < Struct.new(
      :content_encoding,
      :common_attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the retry behavior in case Kinesis Data Firehose is unable
    # to deliver data to the specified HTTP endpoint destination, or if it
    # doesn't receive a valid acknowledgment of receipt from the specified
    # HTTP endpoint destination.
    #
    # @note When making an API call, you may pass HttpEndpointRetryOptions
    #   data as a hash:
    #
    #       {
    #         duration_in_seconds: 1,
    #       }
    #
    # @!attribute [rw] duration_in_seconds
    #   The total amount of time that Kinesis Data Firehose spends on
    #   retries. This duration starts after the initial attempt to send data
    #   to the custom destination via HTTPS endpoint fails. It doesn't
    #   include the periods during which Kinesis Data Firehose waits for
    #   acknowledgment from the specified destination after each attempt.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/HttpEndpointRetryOptions AWS API Documentation
    #
    class HttpEndpointRetryOptions < Struct.new(
      :duration_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the deserializer you want to use to convert the format of
    # the input data. This parameter is required if `Enabled` is set to
    # true.
    #
    # @note When making an API call, you may pass InputFormatConfiguration
    #   data as a hash:
    #
    #       {
    #         deserializer: {
    #           open_x_json_ser_de: {
    #             convert_dots_in_json_keys_to_underscores: false,
    #             case_insensitive: false,
    #             column_to_json_key_mappings: {
    #               "NonEmptyStringWithoutWhitespace" => "NonEmptyString",
    #             },
    #           },
    #           hive_json_ser_de: {
    #             timestamp_formats: ["NonEmptyString"],
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] deserializer
    #   Specifies which deserializer to use. You can choose either the
    #   Apache Hive JSON SerDe or the OpenX JSON SerDe. If both are
    #   non-null, the server rejects the request.
    #   @return [Types::Deserializer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/InputFormatConfiguration AWS API Documentation
    #
    class InputFormatConfiguration < Struct.new(
      :deserializer)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified input parameter has a value that is not valid.
    #
    # @!attribute [rw] message
    #   A message that provides information about the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/InvalidArgumentException AWS API Documentation
    #
    class InvalidArgumentException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Kinesis Data Firehose throws this exception when an attempt to put
    # records or to start or stop delivery stream encryption fails. This
    # happens when the KMS service throws one of the following exception
    # types: `AccessDeniedException`, `InvalidStateException`,
    # `DisabledException`, or `NotFoundException`.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/InvalidKMSResourceException AWS API Documentation
    #
    class InvalidKMSResourceException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an encryption key for a destination in Amazon S3.
    #
    # @note When making an API call, you may pass KMSEncryptionConfig
    #   data as a hash:
    #
    #       {
    #         awskms_key_arn: "AWSKMSKeyARN", # required
    #       }
    #
    # @!attribute [rw] awskms_key_arn
    #   The Amazon Resource Name (ARN) of the encryption key. Must belong to
    #   the same AWS Region as the destination Amazon S3 bucket. For more
    #   information, see [Amazon Resource Names (ARNs) and AWS Service
    #   Namespaces][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/KMSEncryptionConfig AWS API Documentation
    #
    class KMSEncryptionConfig < Struct.new(
      :awskms_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The stream and role Amazon Resource Names (ARNs) for a Kinesis data
    # stream used as the source for a delivery stream.
    #
    # @note When making an API call, you may pass KinesisStreamSourceConfiguration
    #   data as a hash:
    #
    #       {
    #         kinesis_stream_arn: "KinesisStreamARN", # required
    #         role_arn: "RoleARN", # required
    #       }
    #
    # @!attribute [rw] kinesis_stream_arn
    #   The ARN of the source Kinesis data stream. For more information, see
    #   [Amazon Kinesis Data Streams ARN Format][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kinesis-streams
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the role that provides access to the source Kinesis data
    #   stream. For more information, see [AWS Identity and Access
    #   Management (IAM) ARN Format][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-iam
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/KinesisStreamSourceConfiguration AWS API Documentation
    #
    class KinesisStreamSourceConfiguration < Struct.new(
      :kinesis_stream_arn,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a Kinesis data stream used as the source for a Kinesis
    # Data Firehose delivery stream.
    #
    # @!attribute [rw] kinesis_stream_arn
    #   The Amazon Resource Name (ARN) of the source Kinesis data stream.
    #   For more information, see [Amazon Kinesis Data Streams ARN
    #   Format][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kinesis-streams
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the role used by the source Kinesis data stream. For more
    #   information, see [AWS Identity and Access Management (IAM) ARN
    #   Format][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-iam
    #   @return [String]
    #
    # @!attribute [rw] delivery_start_timestamp
    #   Kinesis Data Firehose starts retrieving records from the Kinesis
    #   data stream starting with this timestamp.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/KinesisStreamSourceDescription AWS API Documentation
    #
    class KinesisStreamSourceDescription < Struct.new(
      :kinesis_stream_arn,
      :role_arn,
      :delivery_start_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have already reached the limit for a requested resource.
    #
    # @!attribute [rw] message
    #   A message that provides information about the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDeliveryStreamsInput
    #   data as a hash:
    #
    #       {
    #         limit: 1,
    #         delivery_stream_type: "DirectPut", # accepts DirectPut, KinesisStreamAsSource
    #         exclusive_start_delivery_stream_name: "DeliveryStreamName",
    #       }
    #
    # @!attribute [rw] limit
    #   The maximum number of delivery streams to list. The default value is
    #   10.
    #   @return [Integer]
    #
    # @!attribute [rw] delivery_stream_type
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
    #   @return [String]
    #
    # @!attribute [rw] exclusive_start_delivery_stream_name
    #   The list of delivery streams returned by this call to
    #   `ListDeliveryStreams` will start with the delivery stream whose name
    #   comes alphabetically immediately after the name you specify in
    #   `ExclusiveStartDeliveryStreamName`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/ListDeliveryStreamsInput AWS API Documentation
    #
    class ListDeliveryStreamsInput < Struct.new(
      :limit,
      :delivery_stream_type,
      :exclusive_start_delivery_stream_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] delivery_stream_names
    #   The names of the delivery streams.
    #   @return [Array<String>]
    #
    # @!attribute [rw] has_more_delivery_streams
    #   Indicates whether there are more delivery streams available to list.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/ListDeliveryStreamsOutput AWS API Documentation
    #
    class ListDeliveryStreamsOutput < Struct.new(
      :delivery_stream_names,
      :has_more_delivery_streams)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForDeliveryStreamInput
    #   data as a hash:
    #
    #       {
    #         delivery_stream_name: "DeliveryStreamName", # required
    #         exclusive_start_tag_key: "TagKey",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] delivery_stream_name
    #   The name of the delivery stream whose tags you want to list.
    #   @return [String]
    #
    # @!attribute [rw] exclusive_start_tag_key
    #   The key to use as the starting point for the list of tags. If you
    #   set this parameter, `ListTagsForDeliveryStream` gets all tags that
    #   occur after `ExclusiveStartTagKey`.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The number of tags to return. If this number is less than the total
    #   number of tags associated with the delivery stream, `HasMoreTags` is
    #   set to `true` in the response. To list additional tags, set
    #   `ExclusiveStartTagKey` to the last key in the response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/ListTagsForDeliveryStreamInput AWS API Documentation
    #
    class ListTagsForDeliveryStreamInput < Struct.new(
      :delivery_stream_name,
      :exclusive_start_tag_key,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A list of tags associated with `DeliveryStreamName`, starting with
    #   the first tag after `ExclusiveStartTagKey` and up to the specified
    #   `Limit`.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] has_more_tags
    #   If this is `true` in the response, more tags are available. To list
    #   the remaining tags, set `ExclusiveStartTagKey` to the key of the
    #   last tag returned and call `ListTagsForDeliveryStream` again.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/ListTagsForDeliveryStreamOutput AWS API Documentation
    #
    class ListTagsForDeliveryStreamOutput < Struct.new(
      :tags,
      :has_more_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The OpenX SerDe. Used by Kinesis Data Firehose for deserializing data,
    # which means converting it from the JSON format in preparation for
    # serializing it to the Parquet or ORC format. This is one of two
    # deserializers you can choose, depending on which one offers the
    # functionality you need. The other option is the native Hive / HCatalog
    # JsonSerDe.
    #
    # @note When making an API call, you may pass OpenXJsonSerDe
    #   data as a hash:
    #
    #       {
    #         convert_dots_in_json_keys_to_underscores: false,
    #         case_insensitive: false,
    #         column_to_json_key_mappings: {
    #           "NonEmptyStringWithoutWhitespace" => "NonEmptyString",
    #         },
    #       }
    #
    # @!attribute [rw] convert_dots_in_json_keys_to_underscores
    #   When set to `true`, specifies that the names of the keys include
    #   dots and that you want Kinesis Data Firehose to replace them with
    #   underscores. This is useful because Apache Hive does not allow dots
    #   in column names. For example, if the JSON contains a key whose name
    #   is "a.b", you can define the column name to be "a\_b" when using
    #   this option.
    #
    #   The default is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] case_insensitive
    #   When set to `true`, which is the default, Kinesis Data Firehose
    #   converts JSON keys to lowercase before deserializing them.
    #   @return [Boolean]
    #
    # @!attribute [rw] column_to_json_key_mappings
    #   Maps column names to JSON keys that aren't identical to the column
    #   names. This is useful when the JSON contains keys that are Hive
    #   keywords. For example, `timestamp` is a Hive keyword. If you have a
    #   JSON key named `timestamp`, set this parameter to `\{"ts":
    #   "timestamp"\}` to map this key to a column named `ts`.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/OpenXJsonSerDe AWS API Documentation
    #
    class OpenXJsonSerDe < Struct.new(
      :convert_dots_in_json_keys_to_underscores,
      :case_insensitive,
      :column_to_json_key_mappings)
      SENSITIVE = []
      include Aws::Structure
    end

    # A serializer to use for converting data to the ORC format before
    # storing it in Amazon S3. For more information, see [Apache ORC][1].
    #
    #
    #
    # [1]: https://orc.apache.org/docs/
    #
    # @note When making an API call, you may pass OrcSerDe
    #   data as a hash:
    #
    #       {
    #         stripe_size_bytes: 1,
    #         block_size_bytes: 1,
    #         row_index_stride: 1,
    #         enable_padding: false,
    #         padding_tolerance: 1.0,
    #         compression: "NONE", # accepts NONE, ZLIB, SNAPPY
    #         bloom_filter_columns: ["NonEmptyStringWithoutWhitespace"],
    #         bloom_filter_false_positive_probability: 1.0,
    #         dictionary_key_threshold: 1.0,
    #         format_version: "V0_11", # accepts V0_11, V0_12
    #       }
    #
    # @!attribute [rw] stripe_size_bytes
    #   The number of bytes in each stripe. The default is 64 MiB and the
    #   minimum is 8 MiB.
    #   @return [Integer]
    #
    # @!attribute [rw] block_size_bytes
    #   The Hadoop Distributed File System (HDFS) block size. This is useful
    #   if you intend to copy the data from Amazon S3 to HDFS before
    #   querying. The default is 256 MiB and the minimum is 64 MiB. Kinesis
    #   Data Firehose uses this value for padding calculations.
    #   @return [Integer]
    #
    # @!attribute [rw] row_index_stride
    #   The number of rows between index entries. The default is 10,000 and
    #   the minimum is 1,000.
    #   @return [Integer]
    #
    # @!attribute [rw] enable_padding
    #   Set this to `true` to indicate that you want stripes to be padded to
    #   the HDFS block boundaries. This is useful if you intend to copy the
    #   data from Amazon S3 to HDFS before querying. The default is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] padding_tolerance
    #   A number between 0 and 1 that defines the tolerance for block
    #   padding as a decimal fraction of stripe size. The default value is
    #   0.05, which means 5 percent of stripe size.
    #
    #   For the default values of 64 MiB ORC stripes and 256 MiB HDFS
    #   blocks, the default block padding tolerance of 5 percent reserves a
    #   maximum of 3.2 MiB for padding within the 256 MiB block. In such a
    #   case, if the available size within the block is more than 3.2 MiB, a
    #   new, smaller stripe is inserted to fit within that space. This
    #   ensures that no stripe crosses block boundaries and causes remote
    #   reads within a node-local task.
    #
    #   Kinesis Data Firehose ignores this parameter when
    #   OrcSerDe$EnablePadding is `false`.
    #   @return [Float]
    #
    # @!attribute [rw] compression
    #   The compression code to use over data blocks. The default is
    #   `SNAPPY`.
    #   @return [String]
    #
    # @!attribute [rw] bloom_filter_columns
    #   The column names for which you want Kinesis Data Firehose to create
    #   bloom filters. The default is `null`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] bloom_filter_false_positive_probability
    #   The Bloom filter false positive probability (FPP). The lower the
    #   FPP, the bigger the Bloom filter. The default value is 0.05, the
    #   minimum is 0, and the maximum is 1.
    #   @return [Float]
    #
    # @!attribute [rw] dictionary_key_threshold
    #   Represents the fraction of the total number of non-null rows. To
    #   turn off dictionary encoding, set this fraction to a number that is
    #   less than the number of distinct keys in a dictionary. To always use
    #   dictionary encoding, set this threshold to 1.
    #   @return [Float]
    #
    # @!attribute [rw] format_version
    #   The version of the file to write. The possible values are `V0_11`
    #   and `V0_12`. The default is `V0_12`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/OrcSerDe AWS API Documentation
    #
    class OrcSerDe < Struct.new(
      :stripe_size_bytes,
      :block_size_bytes,
      :row_index_stride,
      :enable_padding,
      :padding_tolerance,
      :compression,
      :bloom_filter_columns,
      :bloom_filter_false_positive_probability,
      :dictionary_key_threshold,
      :format_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the serializer that you want Kinesis Data Firehose to use to
    # convert the format of your data before it writes it to Amazon S3. This
    # parameter is required if `Enabled` is set to true.
    #
    # @note When making an API call, you may pass OutputFormatConfiguration
    #   data as a hash:
    #
    #       {
    #         serializer: {
    #           parquet_ser_de: {
    #             block_size_bytes: 1,
    #             page_size_bytes: 1,
    #             compression: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, SNAPPY
    #             enable_dictionary_compression: false,
    #             max_padding_bytes: 1,
    #             writer_version: "V1", # accepts V1, V2
    #           },
    #           orc_ser_de: {
    #             stripe_size_bytes: 1,
    #             block_size_bytes: 1,
    #             row_index_stride: 1,
    #             enable_padding: false,
    #             padding_tolerance: 1.0,
    #             compression: "NONE", # accepts NONE, ZLIB, SNAPPY
    #             bloom_filter_columns: ["NonEmptyStringWithoutWhitespace"],
    #             bloom_filter_false_positive_probability: 1.0,
    #             dictionary_key_threshold: 1.0,
    #             format_version: "V0_11", # accepts V0_11, V0_12
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] serializer
    #   Specifies which serializer to use. You can choose either the ORC
    #   SerDe or the Parquet SerDe. If both are non-null, the server rejects
    #   the request.
    #   @return [Types::Serializer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/OutputFormatConfiguration AWS API Documentation
    #
    class OutputFormatConfiguration < Struct.new(
      :serializer)
      SENSITIVE = []
      include Aws::Structure
    end

    # A serializer to use for converting data to the Parquet format before
    # storing it in Amazon S3. For more information, see [Apache
    # Parquet][1].
    #
    #
    #
    # [1]: https://parquet.apache.org/documentation/latest/
    #
    # @note When making an API call, you may pass ParquetSerDe
    #   data as a hash:
    #
    #       {
    #         block_size_bytes: 1,
    #         page_size_bytes: 1,
    #         compression: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, SNAPPY
    #         enable_dictionary_compression: false,
    #         max_padding_bytes: 1,
    #         writer_version: "V1", # accepts V1, V2
    #       }
    #
    # @!attribute [rw] block_size_bytes
    #   The Hadoop Distributed File System (HDFS) block size. This is useful
    #   if you intend to copy the data from Amazon S3 to HDFS before
    #   querying. The default is 256 MiB and the minimum is 64 MiB. Kinesis
    #   Data Firehose uses this value for padding calculations.
    #   @return [Integer]
    #
    # @!attribute [rw] page_size_bytes
    #   The Parquet page size. Column chunks are divided into pages. A page
    #   is conceptually an indivisible unit (in terms of compression and
    #   encoding). The minimum value is 64 KiB and the default is 1 MiB.
    #   @return [Integer]
    #
    # @!attribute [rw] compression
    #   The compression code to use over data blocks. The possible values
    #   are `UNCOMPRESSED`, `SNAPPY`, and `GZIP`, with the default being
    #   `SNAPPY`. Use `SNAPPY` for higher decompression speed. Use `GZIP` if
    #   the compression ratio is more important than speed.
    #   @return [String]
    #
    # @!attribute [rw] enable_dictionary_compression
    #   Indicates whether to enable dictionary compression.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_padding_bytes
    #   The maximum amount of padding to apply. This is useful if you intend
    #   to copy the data from Amazon S3 to HDFS before querying. The default
    #   is 0.
    #   @return [Integer]
    #
    # @!attribute [rw] writer_version
    #   Indicates the version of row format to output. The possible values
    #   are `V1` and `V2`. The default is `V1`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/ParquetSerDe AWS API Documentation
    #
    class ParquetSerDe < Struct.new(
      :block_size_bytes,
      :page_size_bytes,
      :compression,
      :enable_dictionary_compression,
      :max_padding_bytes,
      :writer_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a data processing configuration.
    #
    # @note When making an API call, you may pass ProcessingConfiguration
    #   data as a hash:
    #
    #       {
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
    #       }
    #
    # @!attribute [rw] enabled
    #   Enables or disables data processing.
    #   @return [Boolean]
    #
    # @!attribute [rw] processors
    #   The data processors.
    #   @return [Array<Types::Processor>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/ProcessingConfiguration AWS API Documentation
    #
    class ProcessingConfiguration < Struct.new(
      :enabled,
      :processors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a data processor.
    #
    # @note When making an API call, you may pass Processor
    #   data as a hash:
    #
    #       {
    #         type: "Lambda", # required, accepts Lambda
    #         parameters: [
    #           {
    #             parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds
    #             parameter_value: "ProcessorParameterValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] type
    #   The type of processor.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The processor parameters.
    #   @return [Array<Types::ProcessorParameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/Processor AWS API Documentation
    #
    class Processor < Struct.new(
      :type,
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the processor parameter.
    #
    # @note When making an API call, you may pass ProcessorParameter
    #   data as a hash:
    #
    #       {
    #         parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds
    #         parameter_value: "ProcessorParameterValue", # required
    #       }
    #
    # @!attribute [rw] parameter_name
    #   The name of the parameter.
    #   @return [String]
    #
    # @!attribute [rw] parameter_value
    #   The parameter value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/ProcessorParameter AWS API Documentation
    #
    class ProcessorParameter < Struct.new(
      :parameter_name,
      :parameter_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutRecordBatchInput
    #   data as a hash:
    #
    #       {
    #         delivery_stream_name: "DeliveryStreamName", # required
    #         records: [ # required
    #           {
    #             data: "data", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] delivery_stream_name
    #   The name of the delivery stream.
    #   @return [String]
    #
    # @!attribute [rw] records
    #   One or more records.
    #   @return [Array<Types::Record>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/PutRecordBatchInput AWS API Documentation
    #
    class PutRecordBatchInput < Struct.new(
      :delivery_stream_name,
      :records)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failed_put_count
    #   The number of records that might have failed processing. This number
    #   might be greater than 0 even if the PutRecordBatch call succeeds.
    #   Check `FailedPutCount` to determine whether there are records that
    #   you need to resend.
    #   @return [Integer]
    #
    # @!attribute [rw] encrypted
    #   Indicates whether server-side encryption (SSE) was enabled during
    #   this operation.
    #   @return [Boolean]
    #
    # @!attribute [rw] request_responses
    #   The results array. For each record, the index of the response
    #   element is the same as the index used in the request array.
    #   @return [Array<Types::PutRecordBatchResponseEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/PutRecordBatchOutput AWS API Documentation
    #
    class PutRecordBatchOutput < Struct.new(
      :failed_put_count,
      :encrypted,
      :request_responses)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the result for an individual record from a PutRecordBatch
    # request. If the record is successfully added to your delivery stream,
    # it receives a record ID. If the record fails to be added to your
    # delivery stream, the result includes an error code and an error
    # message.
    #
    # @!attribute [rw] record_id
    #   The ID of the record.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code for an individual record result.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message for an individual record result.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/PutRecordBatchResponseEntry AWS API Documentation
    #
    class PutRecordBatchResponseEntry < Struct.new(
      :record_id,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutRecordInput
    #   data as a hash:
    #
    #       {
    #         delivery_stream_name: "DeliveryStreamName", # required
    #         record: { # required
    #           data: "data", # required
    #         },
    #       }
    #
    # @!attribute [rw] delivery_stream_name
    #   The name of the delivery stream.
    #   @return [String]
    #
    # @!attribute [rw] record
    #   The record.
    #   @return [Types::Record]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/PutRecordInput AWS API Documentation
    #
    class PutRecordInput < Struct.new(
      :delivery_stream_name,
      :record)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] record_id
    #   The ID of the record.
    #   @return [String]
    #
    # @!attribute [rw] encrypted
    #   Indicates whether server-side encryption (SSE) was enabled during
    #   this operation.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/PutRecordOutput AWS API Documentation
    #
    class PutRecordOutput < Struct.new(
      :record_id,
      :encrypted)
      SENSITIVE = []
      include Aws::Structure
    end

    # The unit of data in a delivery stream.
    #
    # @note When making an API call, you may pass Record
    #   data as a hash:
    #
    #       {
    #         data: "data", # required
    #       }
    #
    # @!attribute [rw] data
    #   The data blob, which is base64-encoded when the blob is serialized.
    #   The maximum size of the data blob, before base64-encoding, is 1,000
    #   KiB.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/Record AWS API Documentation
    #
    class Record < Struct.new(
      :data)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the configuration of a destination in Amazon Redshift.
    #
    # @note When making an API call, you may pass RedshiftDestinationConfiguration
    #   data as a hash:
    #
    #       {
    #         role_arn: "RoleARN", # required
    #         cluster_jdbc_url: "ClusterJDBCURL", # required
    #         copy_command: { # required
    #           data_table_name: "DataTableName", # required
    #           data_table_columns: "DataTableColumns",
    #           copy_options: "CopyOptions",
    #         },
    #         username: "Username", # required
    #         password: "Password", # required
    #         retry_options: {
    #           duration_in_seconds: 1,
    #         },
    #         s3_configuration: { # required
    #           role_arn: "RoleARN", # required
    #           bucket_arn: "BucketARN", # required
    #           prefix: "Prefix",
    #           error_output_prefix: "ErrorOutputPrefix",
    #           buffering_hints: {
    #             size_in_m_bs: 1,
    #             interval_in_seconds: 1,
    #           },
    #           compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
    #           encryption_configuration: {
    #             no_encryption_config: "NoEncryption", # accepts NoEncryption
    #             kms_encryption_config: {
    #               awskms_key_arn: "AWSKMSKeyARN", # required
    #             },
    #           },
    #           cloud_watch_logging_options: {
    #             enabled: false,
    #             log_group_name: "LogGroupName",
    #             log_stream_name: "LogStreamName",
    #           },
    #         },
    #         processing_configuration: {
    #           enabled: false,
    #           processors: [
    #             {
    #               type: "Lambda", # required, accepts Lambda
    #               parameters: [
    #                 {
    #                   parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds
    #                   parameter_value: "ProcessorParameterValue", # required
    #                 },
    #               ],
    #             },
    #           ],
    #         },
    #         s3_backup_mode: "Disabled", # accepts Disabled, Enabled
    #         s3_backup_configuration: {
    #           role_arn: "RoleARN", # required
    #           bucket_arn: "BucketARN", # required
    #           prefix: "Prefix",
    #           error_output_prefix: "ErrorOutputPrefix",
    #           buffering_hints: {
    #             size_in_m_bs: 1,
    #             interval_in_seconds: 1,
    #           },
    #           compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
    #           encryption_configuration: {
    #             no_encryption_config: "NoEncryption", # accepts NoEncryption
    #             kms_encryption_config: {
    #               awskms_key_arn: "AWSKMSKeyARN", # required
    #             },
    #           },
    #           cloud_watch_logging_options: {
    #             enabled: false,
    #             log_group_name: "LogGroupName",
    #             log_stream_name: "LogStreamName",
    #           },
    #         },
    #         cloud_watch_logging_options: {
    #           enabled: false,
    #           log_group_name: "LogGroupName",
    #           log_stream_name: "LogStreamName",
    #         },
    #       }
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the AWS credentials. For more
    #   information, see [Amazon Resource Names (ARNs) and AWS Service
    #   Namespaces][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] cluster_jdbc_url
    #   The database connection string.
    #   @return [String]
    #
    # @!attribute [rw] copy_command
    #   The `COPY` command.
    #   @return [Types::CopyCommand]
    #
    # @!attribute [rw] username
    #   The name of the user.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The user password.
    #   @return [String]
    #
    # @!attribute [rw] retry_options
    #   The retry behavior in case Kinesis Data Firehose is unable to
    #   deliver documents to Amazon Redshift. Default value is 3600 (60
    #   minutes).
    #   @return [Types::RedshiftRetryOptions]
    #
    # @!attribute [rw] s3_configuration
    #   The configuration for the intermediate Amazon S3 location from which
    #   Amazon Redshift obtains data. Restrictions are described in the
    #   topic for CreateDeliveryStream.
    #
    #   The compression formats `SNAPPY` or `ZIP` cannot be specified in
    #   `RedshiftDestinationConfiguration.S3Configuration` because the
    #   Amazon Redshift `COPY` operation that reads from the S3 bucket
    #   doesn't support these compression formats.
    #   @return [Types::S3DestinationConfiguration]
    #
    # @!attribute [rw] processing_configuration
    #   The data processing configuration.
    #   @return [Types::ProcessingConfiguration]
    #
    # @!attribute [rw] s3_backup_mode
    #   The Amazon S3 backup mode. After you create a delivery stream, you
    #   can update it to enable Amazon S3 backup if it is disabled. If
    #   backup is enabled, you can't update the delivery stream to disable
    #   it.
    #   @return [String]
    #
    # @!attribute [rw] s3_backup_configuration
    #   The configuration for backup in Amazon S3.
    #   @return [Types::S3DestinationConfiguration]
    #
    # @!attribute [rw] cloud_watch_logging_options
    #   The CloudWatch logging options for your delivery stream.
    #   @return [Types::CloudWatchLoggingOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/RedshiftDestinationConfiguration AWS API Documentation
    #
    class RedshiftDestinationConfiguration < Struct.new(
      :role_arn,
      :cluster_jdbc_url,
      :copy_command,
      :username,
      :password,
      :retry_options,
      :s3_configuration,
      :processing_configuration,
      :s3_backup_mode,
      :s3_backup_configuration,
      :cloud_watch_logging_options)
      SENSITIVE = [:username, :password]
      include Aws::Structure
    end

    # Describes a destination in Amazon Redshift.
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the AWS credentials. For more
    #   information, see [Amazon Resource Names (ARNs) and AWS Service
    #   Namespaces][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] cluster_jdbc_url
    #   The database connection string.
    #   @return [String]
    #
    # @!attribute [rw] copy_command
    #   The `COPY` command.
    #   @return [Types::CopyCommand]
    #
    # @!attribute [rw] username
    #   The name of the user.
    #   @return [String]
    #
    # @!attribute [rw] retry_options
    #   The retry behavior in case Kinesis Data Firehose is unable to
    #   deliver documents to Amazon Redshift. Default value is 3600 (60
    #   minutes).
    #   @return [Types::RedshiftRetryOptions]
    #
    # @!attribute [rw] s3_destination_description
    #   The Amazon S3 destination.
    #   @return [Types::S3DestinationDescription]
    #
    # @!attribute [rw] processing_configuration
    #   The data processing configuration.
    #   @return [Types::ProcessingConfiguration]
    #
    # @!attribute [rw] s3_backup_mode
    #   The Amazon S3 backup mode.
    #   @return [String]
    #
    # @!attribute [rw] s3_backup_description
    #   The configuration for backup in Amazon S3.
    #   @return [Types::S3DestinationDescription]
    #
    # @!attribute [rw] cloud_watch_logging_options
    #   The Amazon CloudWatch logging options for your delivery stream.
    #   @return [Types::CloudWatchLoggingOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/RedshiftDestinationDescription AWS API Documentation
    #
    class RedshiftDestinationDescription < Struct.new(
      :role_arn,
      :cluster_jdbc_url,
      :copy_command,
      :username,
      :retry_options,
      :s3_destination_description,
      :processing_configuration,
      :s3_backup_mode,
      :s3_backup_description,
      :cloud_watch_logging_options)
      SENSITIVE = [:username]
      include Aws::Structure
    end

    # Describes an update for a destination in Amazon Redshift.
    #
    # @note When making an API call, you may pass RedshiftDestinationUpdate
    #   data as a hash:
    #
    #       {
    #         role_arn: "RoleARN",
    #         cluster_jdbc_url: "ClusterJDBCURL",
    #         copy_command: {
    #           data_table_name: "DataTableName", # required
    #           data_table_columns: "DataTableColumns",
    #           copy_options: "CopyOptions",
    #         },
    #         username: "Username",
    #         password: "Password",
    #         retry_options: {
    #           duration_in_seconds: 1,
    #         },
    #         s3_update: {
    #           role_arn: "RoleARN",
    #           bucket_arn: "BucketARN",
    #           prefix: "Prefix",
    #           error_output_prefix: "ErrorOutputPrefix",
    #           buffering_hints: {
    #             size_in_m_bs: 1,
    #             interval_in_seconds: 1,
    #           },
    #           compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
    #           encryption_configuration: {
    #             no_encryption_config: "NoEncryption", # accepts NoEncryption
    #             kms_encryption_config: {
    #               awskms_key_arn: "AWSKMSKeyARN", # required
    #             },
    #           },
    #           cloud_watch_logging_options: {
    #             enabled: false,
    #             log_group_name: "LogGroupName",
    #             log_stream_name: "LogStreamName",
    #           },
    #         },
    #         processing_configuration: {
    #           enabled: false,
    #           processors: [
    #             {
    #               type: "Lambda", # required, accepts Lambda
    #               parameters: [
    #                 {
    #                   parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds
    #                   parameter_value: "ProcessorParameterValue", # required
    #                 },
    #               ],
    #             },
    #           ],
    #         },
    #         s3_backup_mode: "Disabled", # accepts Disabled, Enabled
    #         s3_backup_update: {
    #           role_arn: "RoleARN",
    #           bucket_arn: "BucketARN",
    #           prefix: "Prefix",
    #           error_output_prefix: "ErrorOutputPrefix",
    #           buffering_hints: {
    #             size_in_m_bs: 1,
    #             interval_in_seconds: 1,
    #           },
    #           compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
    #           encryption_configuration: {
    #             no_encryption_config: "NoEncryption", # accepts NoEncryption
    #             kms_encryption_config: {
    #               awskms_key_arn: "AWSKMSKeyARN", # required
    #             },
    #           },
    #           cloud_watch_logging_options: {
    #             enabled: false,
    #             log_group_name: "LogGroupName",
    #             log_stream_name: "LogStreamName",
    #           },
    #         },
    #         cloud_watch_logging_options: {
    #           enabled: false,
    #           log_group_name: "LogGroupName",
    #           log_stream_name: "LogStreamName",
    #         },
    #       }
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the AWS credentials. For more
    #   information, see [Amazon Resource Names (ARNs) and AWS Service
    #   Namespaces][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] cluster_jdbc_url
    #   The database connection string.
    #   @return [String]
    #
    # @!attribute [rw] copy_command
    #   The `COPY` command.
    #   @return [Types::CopyCommand]
    #
    # @!attribute [rw] username
    #   The name of the user.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The user password.
    #   @return [String]
    #
    # @!attribute [rw] retry_options
    #   The retry behavior in case Kinesis Data Firehose is unable to
    #   deliver documents to Amazon Redshift. Default value is 3600 (60
    #   minutes).
    #   @return [Types::RedshiftRetryOptions]
    #
    # @!attribute [rw] s3_update
    #   The Amazon S3 destination.
    #
    #   The compression formats `SNAPPY` or `ZIP` cannot be specified in
    #   `RedshiftDestinationUpdate.S3Update` because the Amazon Redshift
    #   `COPY` operation that reads from the S3 bucket doesn't support
    #   these compression formats.
    #   @return [Types::S3DestinationUpdate]
    #
    # @!attribute [rw] processing_configuration
    #   The data processing configuration.
    #   @return [Types::ProcessingConfiguration]
    #
    # @!attribute [rw] s3_backup_mode
    #   You can update a delivery stream to enable Amazon S3 backup if it is
    #   disabled. If backup is enabled, you can't update the delivery
    #   stream to disable it.
    #   @return [String]
    #
    # @!attribute [rw] s3_backup_update
    #   The Amazon S3 destination for backup.
    #   @return [Types::S3DestinationUpdate]
    #
    # @!attribute [rw] cloud_watch_logging_options
    #   The Amazon CloudWatch logging options for your delivery stream.
    #   @return [Types::CloudWatchLoggingOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/RedshiftDestinationUpdate AWS API Documentation
    #
    class RedshiftDestinationUpdate < Struct.new(
      :role_arn,
      :cluster_jdbc_url,
      :copy_command,
      :username,
      :password,
      :retry_options,
      :s3_update,
      :processing_configuration,
      :s3_backup_mode,
      :s3_backup_update,
      :cloud_watch_logging_options)
      SENSITIVE = [:username, :password]
      include Aws::Structure
    end

    # Configures retry behavior in case Kinesis Data Firehose is unable to
    # deliver documents to Amazon Redshift.
    #
    # @note When making an API call, you may pass RedshiftRetryOptions
    #   data as a hash:
    #
    #       {
    #         duration_in_seconds: 1,
    #       }
    #
    # @!attribute [rw] duration_in_seconds
    #   The length of time during which Kinesis Data Firehose retries
    #   delivery after a failure, starting from the initial request and
    #   including the first attempt. The default value is 3600 seconds (60
    #   minutes). Kinesis Data Firehose does not retry if the value of
    #   `DurationInSeconds` is 0 (zero) or if the first delivery attempt
    #   takes longer than the current value.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/RedshiftRetryOptions AWS API Documentation
    #
    class RedshiftRetryOptions < Struct.new(
      :duration_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource is already in use and not available for this operation.
    #
    # @!attribute [rw] message
    #   A message that provides information about the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/ResourceInUseException AWS API Documentation
    #
    class ResourceInUseException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource could not be found.
    #
    # @!attribute [rw] message
    #   A message that provides information about the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the configuration of a destination in Amazon S3.
    #
    # @note When making an API call, you may pass S3DestinationConfiguration
    #   data as a hash:
    #
    #       {
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
    #       }
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the AWS credentials. For more
    #   information, see [Amazon Resource Names (ARNs) and AWS Service
    #   Namespaces][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] bucket_arn
    #   The ARN of the S3 bucket. For more information, see [Amazon Resource
    #   Names (ARNs) and AWS Service Namespaces][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   The "YYYY/MM/DD/HH" time format prefix is automatically used for
    #   delivered Amazon S3 files. You can also specify a custom prefix, as
    #   described in [Custom Prefixes for Amazon S3 Objects][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html
    #   @return [String]
    #
    # @!attribute [rw] error_output_prefix
    #   A prefix that Kinesis Data Firehose evaluates and adds to failed
    #   records before writing them to S3. This prefix appears immediately
    #   following the bucket name. For information about how to specify this
    #   prefix, see [Custom Prefixes for Amazon S3 Objects][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html
    #   @return [String]
    #
    # @!attribute [rw] buffering_hints
    #   The buffering option. If no value is specified, `BufferingHints`
    #   object default values are used.
    #   @return [Types::BufferingHints]
    #
    # @!attribute [rw] compression_format
    #   The compression format. If no value is specified, the default is
    #   `UNCOMPRESSED`.
    #
    #   The compression formats `SNAPPY` or `ZIP` cannot be specified for
    #   Amazon Redshift destinations because they are not supported by the
    #   Amazon Redshift `COPY` operation that reads from the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] encryption_configuration
    #   The encryption configuration. If no value is specified, the default
    #   is no encryption.
    #   @return [Types::EncryptionConfiguration]
    #
    # @!attribute [rw] cloud_watch_logging_options
    #   The CloudWatch logging options for your delivery stream.
    #   @return [Types::CloudWatchLoggingOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/S3DestinationConfiguration AWS API Documentation
    #
    class S3DestinationConfiguration < Struct.new(
      :role_arn,
      :bucket_arn,
      :prefix,
      :error_output_prefix,
      :buffering_hints,
      :compression_format,
      :encryption_configuration,
      :cloud_watch_logging_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a destination in Amazon S3.
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the AWS credentials. For more
    #   information, see [Amazon Resource Names (ARNs) and AWS Service
    #   Namespaces][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] bucket_arn
    #   The ARN of the S3 bucket. For more information, see [Amazon Resource
    #   Names (ARNs) and AWS Service Namespaces][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   The "YYYY/MM/DD/HH" time format prefix is automatically used for
    #   delivered Amazon S3 files. You can also specify a custom prefix, as
    #   described in [Custom Prefixes for Amazon S3 Objects][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html
    #   @return [String]
    #
    # @!attribute [rw] error_output_prefix
    #   A prefix that Kinesis Data Firehose evaluates and adds to failed
    #   records before writing them to S3. This prefix appears immediately
    #   following the bucket name. For information about how to specify this
    #   prefix, see [Custom Prefixes for Amazon S3 Objects][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html
    #   @return [String]
    #
    # @!attribute [rw] buffering_hints
    #   The buffering option. If no value is specified, `BufferingHints`
    #   object default values are used.
    #   @return [Types::BufferingHints]
    #
    # @!attribute [rw] compression_format
    #   The compression format. If no value is specified, the default is
    #   `UNCOMPRESSED`.
    #   @return [String]
    #
    # @!attribute [rw] encryption_configuration
    #   The encryption configuration. If no value is specified, the default
    #   is no encryption.
    #   @return [Types::EncryptionConfiguration]
    #
    # @!attribute [rw] cloud_watch_logging_options
    #   The Amazon CloudWatch logging options for your delivery stream.
    #   @return [Types::CloudWatchLoggingOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/S3DestinationDescription AWS API Documentation
    #
    class S3DestinationDescription < Struct.new(
      :role_arn,
      :bucket_arn,
      :prefix,
      :error_output_prefix,
      :buffering_hints,
      :compression_format,
      :encryption_configuration,
      :cloud_watch_logging_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an update for a destination in Amazon S3.
    #
    # @note When making an API call, you may pass S3DestinationUpdate
    #   data as a hash:
    #
    #       {
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
    #       }
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the AWS credentials. For more
    #   information, see [Amazon Resource Names (ARNs) and AWS Service
    #   Namespaces][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] bucket_arn
    #   The ARN of the S3 bucket. For more information, see [Amazon Resource
    #   Names (ARNs) and AWS Service Namespaces][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   The "YYYY/MM/DD/HH" time format prefix is automatically used for
    #   delivered Amazon S3 files. You can also specify a custom prefix, as
    #   described in [Custom Prefixes for Amazon S3 Objects][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html
    #   @return [String]
    #
    # @!attribute [rw] error_output_prefix
    #   A prefix that Kinesis Data Firehose evaluates and adds to failed
    #   records before writing them to S3. This prefix appears immediately
    #   following the bucket name. For information about how to specify this
    #   prefix, see [Custom Prefixes for Amazon S3 Objects][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html
    #   @return [String]
    #
    # @!attribute [rw] buffering_hints
    #   The buffering option. If no value is specified, `BufferingHints`
    #   object default values are used.
    #   @return [Types::BufferingHints]
    #
    # @!attribute [rw] compression_format
    #   The compression format. If no value is specified, the default is
    #   `UNCOMPRESSED`.
    #
    #   The compression formats `SNAPPY` or `ZIP` cannot be specified for
    #   Amazon Redshift destinations because they are not supported by the
    #   Amazon Redshift `COPY` operation that reads from the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] encryption_configuration
    #   The encryption configuration. If no value is specified, the default
    #   is no encryption.
    #   @return [Types::EncryptionConfiguration]
    #
    # @!attribute [rw] cloud_watch_logging_options
    #   The CloudWatch logging options for your delivery stream.
    #   @return [Types::CloudWatchLoggingOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/S3DestinationUpdate AWS API Documentation
    #
    class S3DestinationUpdate < Struct.new(
      :role_arn,
      :bucket_arn,
      :prefix,
      :error_output_prefix,
      :buffering_hints,
      :compression_format,
      :encryption_configuration,
      :cloud_watch_logging_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the schema to which you want Kinesis Data Firehose to
    # configure your data before it writes it to Amazon S3. This parameter
    # is required if `Enabled` is set to true.
    #
    # @note When making an API call, you may pass SchemaConfiguration
    #   data as a hash:
    #
    #       {
    #         role_arn: "NonEmptyStringWithoutWhitespace",
    #         catalog_id: "NonEmptyStringWithoutWhitespace",
    #         database_name: "NonEmptyStringWithoutWhitespace",
    #         table_name: "NonEmptyStringWithoutWhitespace",
    #         region: "NonEmptyStringWithoutWhitespace",
    #         version_id: "NonEmptyStringWithoutWhitespace",
    #       }
    #
    # @!attribute [rw] role_arn
    #   The role that Kinesis Data Firehose can use to access AWS Glue. This
    #   role must be in the same account you use for Kinesis Data Firehose.
    #   Cross-account roles aren't allowed.
    #   @return [String]
    #
    # @!attribute [rw] catalog_id
    #   The ID of the AWS Glue Data Catalog. If you don't supply this, the
    #   AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   Specifies the name of the AWS Glue database that contains the schema
    #   for the output data.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   Specifies the AWS Glue table that contains the column information
    #   that constitutes your data schema.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   If you don't specify an AWS Region, the default is the current
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   Specifies the table version for the output data schema. If you
    #   don't specify this version ID, or if you set it to `LATEST`,
    #   Kinesis Data Firehose uses the most recent version. This means that
    #   any updates to the table are automatically picked up.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/SchemaConfiguration AWS API Documentation
    #
    class SchemaConfiguration < Struct.new(
      :role_arn,
      :catalog_id,
      :database_name,
      :table_name,
      :region,
      :version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The serializer that you want Kinesis Data Firehose to use to convert
    # data to the target format before writing it to Amazon S3. Kinesis Data
    # Firehose supports two types of serializers: the [ORC SerDe][1] and the
    # [Parquet SerDe][2].
    #
    #
    #
    # [1]: https://hive.apache.org/javadocs/r1.2.2/api/org/apache/hadoop/hive/ql/io/orc/OrcSerde.html
    # [2]: https://hive.apache.org/javadocs/r1.2.2/api/org/apache/hadoop/hive/ql/io/parquet/serde/ParquetHiveSerDe.html
    #
    # @note When making an API call, you may pass Serializer
    #   data as a hash:
    #
    #       {
    #         parquet_ser_de: {
    #           block_size_bytes: 1,
    #           page_size_bytes: 1,
    #           compression: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, SNAPPY
    #           enable_dictionary_compression: false,
    #           max_padding_bytes: 1,
    #           writer_version: "V1", # accepts V1, V2
    #         },
    #         orc_ser_de: {
    #           stripe_size_bytes: 1,
    #           block_size_bytes: 1,
    #           row_index_stride: 1,
    #           enable_padding: false,
    #           padding_tolerance: 1.0,
    #           compression: "NONE", # accepts NONE, ZLIB, SNAPPY
    #           bloom_filter_columns: ["NonEmptyStringWithoutWhitespace"],
    #           bloom_filter_false_positive_probability: 1.0,
    #           dictionary_key_threshold: 1.0,
    #           format_version: "V0_11", # accepts V0_11, V0_12
    #         },
    #       }
    #
    # @!attribute [rw] parquet_ser_de
    #   A serializer to use for converting data to the Parquet format before
    #   storing it in Amazon S3. For more information, see [Apache
    #   Parquet][1].
    #
    #
    #
    #   [1]: https://parquet.apache.org/documentation/latest/
    #   @return [Types::ParquetSerDe]
    #
    # @!attribute [rw] orc_ser_de
    #   A serializer to use for converting data to the ORC format before
    #   storing it in Amazon S3. For more information, see [Apache ORC][1].
    #
    #
    #
    #   [1]: https://orc.apache.org/docs/
    #   @return [Types::OrcSerDe]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/Serializer AWS API Documentation
    #
    class Serializer < Struct.new(
      :parquet_ser_de,
      :orc_ser_de)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service is unavailable. Back off and retry the operation. If you
    # continue to see the exception, throughput limits for the delivery
    # stream may have been exceeded. For more information about limits and
    # how to request an increase, see [Amazon Kinesis Data Firehose
    # Limits][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/firehose/latest/dev/limits.html
    #
    # @!attribute [rw] message
    #   A message that provides information about the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/ServiceUnavailableException AWS API Documentation
    #
    class ServiceUnavailableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a Kinesis data stream used as the source for a Kinesis
    # Data Firehose delivery stream.
    #
    # @!attribute [rw] kinesis_stream_source_description
    #   The KinesisStreamSourceDescription value for the source Kinesis data
    #   stream.
    #   @return [Types::KinesisStreamSourceDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/SourceDescription AWS API Documentation
    #
    class SourceDescription < Struct.new(
      :kinesis_stream_source_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the configuration of a destination in Splunk.
    #
    # @note When making an API call, you may pass SplunkDestinationConfiguration
    #   data as a hash:
    #
    #       {
    #         hec_endpoint: "HECEndpoint", # required
    #         hec_endpoint_type: "Raw", # required, accepts Raw, Event
    #         hec_token: "HECToken", # required
    #         hec_acknowledgment_timeout_in_seconds: 1,
    #         retry_options: {
    #           duration_in_seconds: 1,
    #         },
    #         s3_backup_mode: "FailedEventsOnly", # accepts FailedEventsOnly, AllEvents
    #         s3_configuration: { # required
    #           role_arn: "RoleARN", # required
    #           bucket_arn: "BucketARN", # required
    #           prefix: "Prefix",
    #           error_output_prefix: "ErrorOutputPrefix",
    #           buffering_hints: {
    #             size_in_m_bs: 1,
    #             interval_in_seconds: 1,
    #           },
    #           compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
    #           encryption_configuration: {
    #             no_encryption_config: "NoEncryption", # accepts NoEncryption
    #             kms_encryption_config: {
    #               awskms_key_arn: "AWSKMSKeyARN", # required
    #             },
    #           },
    #           cloud_watch_logging_options: {
    #             enabled: false,
    #             log_group_name: "LogGroupName",
    #             log_stream_name: "LogStreamName",
    #           },
    #         },
    #         processing_configuration: {
    #           enabled: false,
    #           processors: [
    #             {
    #               type: "Lambda", # required, accepts Lambda
    #               parameters: [
    #                 {
    #                   parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds
    #                   parameter_value: "ProcessorParameterValue", # required
    #                 },
    #               ],
    #             },
    #           ],
    #         },
    #         cloud_watch_logging_options: {
    #           enabled: false,
    #           log_group_name: "LogGroupName",
    #           log_stream_name: "LogStreamName",
    #         },
    #       }
    #
    # @!attribute [rw] hec_endpoint
    #   The HTTP Event Collector (HEC) endpoint to which Kinesis Data
    #   Firehose sends your data.
    #   @return [String]
    #
    # @!attribute [rw] hec_endpoint_type
    #   This type can be either "Raw" or "Event."
    #   @return [String]
    #
    # @!attribute [rw] hec_token
    #   This is a GUID that you obtain from your Splunk cluster when you
    #   create a new HEC endpoint.
    #   @return [String]
    #
    # @!attribute [rw] hec_acknowledgment_timeout_in_seconds
    #   The amount of time that Kinesis Data Firehose waits to receive an
    #   acknowledgment from Splunk after it sends it data. At the end of the
    #   timeout period, Kinesis Data Firehose either tries to send the data
    #   again or considers it an error, based on your retry settings.
    #   @return [Integer]
    #
    # @!attribute [rw] retry_options
    #   The retry behavior in case Kinesis Data Firehose is unable to
    #   deliver data to Splunk, or if it doesn't receive an acknowledgment
    #   of receipt from Splunk.
    #   @return [Types::SplunkRetryOptions]
    #
    # @!attribute [rw] s3_backup_mode
    #   Defines how documents should be delivered to Amazon S3. When set to
    #   `FailedEventsOnly`, Kinesis Data Firehose writes any data that could
    #   not be indexed to the configured Amazon S3 destination. When set to
    #   `AllEvents`, Kinesis Data Firehose delivers all incoming records to
    #   Amazon S3, and also writes failed documents to Amazon S3. The
    #   default value is `FailedEventsOnly`.
    #
    #   You can update this backup mode from `FailedEventsOnly` to
    #   `AllEvents`. You can't update it from `AllEvents` to
    #   `FailedEventsOnly`.
    #   @return [String]
    #
    # @!attribute [rw] s3_configuration
    #   The configuration for the backup Amazon S3 location.
    #   @return [Types::S3DestinationConfiguration]
    #
    # @!attribute [rw] processing_configuration
    #   The data processing configuration.
    #   @return [Types::ProcessingConfiguration]
    #
    # @!attribute [rw] cloud_watch_logging_options
    #   The Amazon CloudWatch logging options for your delivery stream.
    #   @return [Types::CloudWatchLoggingOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/SplunkDestinationConfiguration AWS API Documentation
    #
    class SplunkDestinationConfiguration < Struct.new(
      :hec_endpoint,
      :hec_endpoint_type,
      :hec_token,
      :hec_acknowledgment_timeout_in_seconds,
      :retry_options,
      :s3_backup_mode,
      :s3_configuration,
      :processing_configuration,
      :cloud_watch_logging_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a destination in Splunk.
    #
    # @!attribute [rw] hec_endpoint
    #   The HTTP Event Collector (HEC) endpoint to which Kinesis Data
    #   Firehose sends your data.
    #   @return [String]
    #
    # @!attribute [rw] hec_endpoint_type
    #   This type can be either "Raw" or "Event."
    #   @return [String]
    #
    # @!attribute [rw] hec_token
    #   A GUID you obtain from your Splunk cluster when you create a new HEC
    #   endpoint.
    #   @return [String]
    #
    # @!attribute [rw] hec_acknowledgment_timeout_in_seconds
    #   The amount of time that Kinesis Data Firehose waits to receive an
    #   acknowledgment from Splunk after it sends it data. At the end of the
    #   timeout period, Kinesis Data Firehose either tries to send the data
    #   again or considers it an error, based on your retry settings.
    #   @return [Integer]
    #
    # @!attribute [rw] retry_options
    #   The retry behavior in case Kinesis Data Firehose is unable to
    #   deliver data to Splunk or if it doesn't receive an acknowledgment
    #   of receipt from Splunk.
    #   @return [Types::SplunkRetryOptions]
    #
    # @!attribute [rw] s3_backup_mode
    #   Defines how documents should be delivered to Amazon S3. When set to
    #   `FailedDocumentsOnly`, Kinesis Data Firehose writes any data that
    #   could not be indexed to the configured Amazon S3 destination. When
    #   set to `AllDocuments`, Kinesis Data Firehose delivers all incoming
    #   records to Amazon S3, and also writes failed documents to Amazon S3.
    #   Default value is `FailedDocumentsOnly`.
    #   @return [String]
    #
    # @!attribute [rw] s3_destination_description
    #   The Amazon S3 destination.&gt;
    #   @return [Types::S3DestinationDescription]
    #
    # @!attribute [rw] processing_configuration
    #   The data processing configuration.
    #   @return [Types::ProcessingConfiguration]
    #
    # @!attribute [rw] cloud_watch_logging_options
    #   The Amazon CloudWatch logging options for your delivery stream.
    #   @return [Types::CloudWatchLoggingOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/SplunkDestinationDescription AWS API Documentation
    #
    class SplunkDestinationDescription < Struct.new(
      :hec_endpoint,
      :hec_endpoint_type,
      :hec_token,
      :hec_acknowledgment_timeout_in_seconds,
      :retry_options,
      :s3_backup_mode,
      :s3_destination_description,
      :processing_configuration,
      :cloud_watch_logging_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an update for a destination in Splunk.
    #
    # @note When making an API call, you may pass SplunkDestinationUpdate
    #   data as a hash:
    #
    #       {
    #         hec_endpoint: "HECEndpoint",
    #         hec_endpoint_type: "Raw", # accepts Raw, Event
    #         hec_token: "HECToken",
    #         hec_acknowledgment_timeout_in_seconds: 1,
    #         retry_options: {
    #           duration_in_seconds: 1,
    #         },
    #         s3_backup_mode: "FailedEventsOnly", # accepts FailedEventsOnly, AllEvents
    #         s3_update: {
    #           role_arn: "RoleARN",
    #           bucket_arn: "BucketARN",
    #           prefix: "Prefix",
    #           error_output_prefix: "ErrorOutputPrefix",
    #           buffering_hints: {
    #             size_in_m_bs: 1,
    #             interval_in_seconds: 1,
    #           },
    #           compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
    #           encryption_configuration: {
    #             no_encryption_config: "NoEncryption", # accepts NoEncryption
    #             kms_encryption_config: {
    #               awskms_key_arn: "AWSKMSKeyARN", # required
    #             },
    #           },
    #           cloud_watch_logging_options: {
    #             enabled: false,
    #             log_group_name: "LogGroupName",
    #             log_stream_name: "LogStreamName",
    #           },
    #         },
    #         processing_configuration: {
    #           enabled: false,
    #           processors: [
    #             {
    #               type: "Lambda", # required, accepts Lambda
    #               parameters: [
    #                 {
    #                   parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds
    #                   parameter_value: "ProcessorParameterValue", # required
    #                 },
    #               ],
    #             },
    #           ],
    #         },
    #         cloud_watch_logging_options: {
    #           enabled: false,
    #           log_group_name: "LogGroupName",
    #           log_stream_name: "LogStreamName",
    #         },
    #       }
    #
    # @!attribute [rw] hec_endpoint
    #   The HTTP Event Collector (HEC) endpoint to which Kinesis Data
    #   Firehose sends your data.
    #   @return [String]
    #
    # @!attribute [rw] hec_endpoint_type
    #   This type can be either "Raw" or "Event."
    #   @return [String]
    #
    # @!attribute [rw] hec_token
    #   A GUID that you obtain from your Splunk cluster when you create a
    #   new HEC endpoint.
    #   @return [String]
    #
    # @!attribute [rw] hec_acknowledgment_timeout_in_seconds
    #   The amount of time that Kinesis Data Firehose waits to receive an
    #   acknowledgment from Splunk after it sends data. At the end of the
    #   timeout period, Kinesis Data Firehose either tries to send the data
    #   again or considers it an error, based on your retry settings.
    #   @return [Integer]
    #
    # @!attribute [rw] retry_options
    #   The retry behavior in case Kinesis Data Firehose is unable to
    #   deliver data to Splunk or if it doesn't receive an acknowledgment
    #   of receipt from Splunk.
    #   @return [Types::SplunkRetryOptions]
    #
    # @!attribute [rw] s3_backup_mode
    #   Specifies how you want Kinesis Data Firehose to back up documents to
    #   Amazon S3. When set to `FailedDocumentsOnly`, Kinesis Data Firehose
    #   writes any data that could not be indexed to the configured Amazon
    #   S3 destination. When set to `AllEvents`, Kinesis Data Firehose
    #   delivers all incoming records to Amazon S3, and also writes failed
    #   documents to Amazon S3. The default value is `FailedEventsOnly`.
    #
    #   You can update this backup mode from `FailedEventsOnly` to
    #   `AllEvents`. You can't update it from `AllEvents` to
    #   `FailedEventsOnly`.
    #   @return [String]
    #
    # @!attribute [rw] s3_update
    #   Your update to the configuration of the backup Amazon S3 location.
    #   @return [Types::S3DestinationUpdate]
    #
    # @!attribute [rw] processing_configuration
    #   The data processing configuration.
    #   @return [Types::ProcessingConfiguration]
    #
    # @!attribute [rw] cloud_watch_logging_options
    #   The Amazon CloudWatch logging options for your delivery stream.
    #   @return [Types::CloudWatchLoggingOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/SplunkDestinationUpdate AWS API Documentation
    #
    class SplunkDestinationUpdate < Struct.new(
      :hec_endpoint,
      :hec_endpoint_type,
      :hec_token,
      :hec_acknowledgment_timeout_in_seconds,
      :retry_options,
      :s3_backup_mode,
      :s3_update,
      :processing_configuration,
      :cloud_watch_logging_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configures retry behavior in case Kinesis Data Firehose is unable to
    # deliver documents to Splunk, or if it doesn't receive an
    # acknowledgment from Splunk.
    #
    # @note When making an API call, you may pass SplunkRetryOptions
    #   data as a hash:
    #
    #       {
    #         duration_in_seconds: 1,
    #       }
    #
    # @!attribute [rw] duration_in_seconds
    #   The total amount of time that Kinesis Data Firehose spends on
    #   retries. This duration starts after the initial attempt to send data
    #   to Splunk fails. It doesn't include the periods during which
    #   Kinesis Data Firehose waits for acknowledgment from Splunk after
    #   each attempt.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/SplunkRetryOptions AWS API Documentation
    #
    class SplunkRetryOptions < Struct.new(
      :duration_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartDeliveryStreamEncryptionInput
    #   data as a hash:
    #
    #       {
    #         delivery_stream_name: "DeliveryStreamName", # required
    #         delivery_stream_encryption_configuration_input: {
    #           key_arn: "AWSKMSKeyARN",
    #           key_type: "AWS_OWNED_CMK", # required, accepts AWS_OWNED_CMK, CUSTOMER_MANAGED_CMK
    #         },
    #       }
    #
    # @!attribute [rw] delivery_stream_name
    #   The name of the delivery stream for which you want to enable
    #   server-side encryption (SSE).
    #   @return [String]
    #
    # @!attribute [rw] delivery_stream_encryption_configuration_input
    #   Used to specify the type and Amazon Resource Name (ARN) of the KMS
    #   key needed for Server-Side Encryption (SSE).
    #   @return [Types::DeliveryStreamEncryptionConfigurationInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/StartDeliveryStreamEncryptionInput AWS API Documentation
    #
    class StartDeliveryStreamEncryptionInput < Struct.new(
      :delivery_stream_name,
      :delivery_stream_encryption_configuration_input)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/StartDeliveryStreamEncryptionOutput AWS API Documentation
    #
    class StartDeliveryStreamEncryptionOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass StopDeliveryStreamEncryptionInput
    #   data as a hash:
    #
    #       {
    #         delivery_stream_name: "DeliveryStreamName", # required
    #       }
    #
    # @!attribute [rw] delivery_stream_name
    #   The name of the delivery stream for which you want to disable
    #   server-side encryption (SSE).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/StopDeliveryStreamEncryptionInput AWS API Documentation
    #
    class StopDeliveryStreamEncryptionInput < Struct.new(
      :delivery_stream_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/StopDeliveryStreamEncryptionOutput AWS API Documentation
    #
    class StopDeliveryStreamEncryptionOutput < Aws::EmptyStructure; end

    # Metadata that you can assign to a delivery stream, consisting of a
    # key-value pair.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       }
    #
    # @!attribute [rw] key
    #   A unique identifier for the tag. Maximum length: 128 characters.
    #   Valid characters: Unicode letters, digits, white space, \_ . / = + -
    #   % @
    #   @return [String]
    #
    # @!attribute [rw] value
    #   An optional string, which you can use to describe or define the tag.
    #   Maximum length: 256 characters. Valid characters: Unicode letters,
    #   digits, white space, \_ . / = + - % @
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagDeliveryStreamInput
    #   data as a hash:
    #
    #       {
    #         delivery_stream_name: "DeliveryStreamName", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] delivery_stream_name
    #   The name of the delivery stream to which you want to add the tags.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A set of key-value pairs to use to create the tags.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/TagDeliveryStreamInput AWS API Documentation
    #
    class TagDeliveryStreamInput < Struct.new(
      :delivery_stream_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/TagDeliveryStreamOutput AWS API Documentation
    #
    class TagDeliveryStreamOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UntagDeliveryStreamInput
    #   data as a hash:
    #
    #       {
    #         delivery_stream_name: "DeliveryStreamName", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] delivery_stream_name
    #   The name of the delivery stream.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of tag keys. Each corresponding tag is removed from the
    #   delivery stream.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/UntagDeliveryStreamInput AWS API Documentation
    #
    class UntagDeliveryStreamInput < Struct.new(
      :delivery_stream_name,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/UntagDeliveryStreamOutput AWS API Documentation
    #
    class UntagDeliveryStreamOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateDestinationInput
    #   data as a hash:
    #
    #       {
    #         delivery_stream_name: "DeliveryStreamName", # required
    #         current_delivery_stream_version_id: "DeliveryStreamVersionId", # required
    #         destination_id: "DestinationId", # required
    #         s3_destination_update: {
    #           role_arn: "RoleARN",
    #           bucket_arn: "BucketARN",
    #           prefix: "Prefix",
    #           error_output_prefix: "ErrorOutputPrefix",
    #           buffering_hints: {
    #             size_in_m_bs: 1,
    #             interval_in_seconds: 1,
    #           },
    #           compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
    #           encryption_configuration: {
    #             no_encryption_config: "NoEncryption", # accepts NoEncryption
    #             kms_encryption_config: {
    #               awskms_key_arn: "AWSKMSKeyARN", # required
    #             },
    #           },
    #           cloud_watch_logging_options: {
    #             enabled: false,
    #             log_group_name: "LogGroupName",
    #             log_stream_name: "LogStreamName",
    #           },
    #         },
    #         extended_s3_destination_update: {
    #           role_arn: "RoleARN",
    #           bucket_arn: "BucketARN",
    #           prefix: "Prefix",
    #           error_output_prefix: "ErrorOutputPrefix",
    #           buffering_hints: {
    #             size_in_m_bs: 1,
    #             interval_in_seconds: 1,
    #           },
    #           compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
    #           encryption_configuration: {
    #             no_encryption_config: "NoEncryption", # accepts NoEncryption
    #             kms_encryption_config: {
    #               awskms_key_arn: "AWSKMSKeyARN", # required
    #             },
    #           },
    #           cloud_watch_logging_options: {
    #             enabled: false,
    #             log_group_name: "LogGroupName",
    #             log_stream_name: "LogStreamName",
    #           },
    #           processing_configuration: {
    #             enabled: false,
    #             processors: [
    #               {
    #                 type: "Lambda", # required, accepts Lambda
    #                 parameters: [
    #                   {
    #                     parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds
    #                     parameter_value: "ProcessorParameterValue", # required
    #                   },
    #                 ],
    #               },
    #             ],
    #           },
    #           s3_backup_mode: "Disabled", # accepts Disabled, Enabled
    #           s3_backup_update: {
    #             role_arn: "RoleARN",
    #             bucket_arn: "BucketARN",
    #             prefix: "Prefix",
    #             error_output_prefix: "ErrorOutputPrefix",
    #             buffering_hints: {
    #               size_in_m_bs: 1,
    #               interval_in_seconds: 1,
    #             },
    #             compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
    #             encryption_configuration: {
    #               no_encryption_config: "NoEncryption", # accepts NoEncryption
    #               kms_encryption_config: {
    #                 awskms_key_arn: "AWSKMSKeyARN", # required
    #               },
    #             },
    #             cloud_watch_logging_options: {
    #               enabled: false,
    #               log_group_name: "LogGroupName",
    #               log_stream_name: "LogStreamName",
    #             },
    #           },
    #           data_format_conversion_configuration: {
    #             schema_configuration: {
    #               role_arn: "NonEmptyStringWithoutWhitespace",
    #               catalog_id: "NonEmptyStringWithoutWhitespace",
    #               database_name: "NonEmptyStringWithoutWhitespace",
    #               table_name: "NonEmptyStringWithoutWhitespace",
    #               region: "NonEmptyStringWithoutWhitespace",
    #               version_id: "NonEmptyStringWithoutWhitespace",
    #             },
    #             input_format_configuration: {
    #               deserializer: {
    #                 open_x_json_ser_de: {
    #                   convert_dots_in_json_keys_to_underscores: false,
    #                   case_insensitive: false,
    #                   column_to_json_key_mappings: {
    #                     "NonEmptyStringWithoutWhitespace" => "NonEmptyString",
    #                   },
    #                 },
    #                 hive_json_ser_de: {
    #                   timestamp_formats: ["NonEmptyString"],
    #                 },
    #               },
    #             },
    #             output_format_configuration: {
    #               serializer: {
    #                 parquet_ser_de: {
    #                   block_size_bytes: 1,
    #                   page_size_bytes: 1,
    #                   compression: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, SNAPPY
    #                   enable_dictionary_compression: false,
    #                   max_padding_bytes: 1,
    #                   writer_version: "V1", # accepts V1, V2
    #                 },
    #                 orc_ser_de: {
    #                   stripe_size_bytes: 1,
    #                   block_size_bytes: 1,
    #                   row_index_stride: 1,
    #                   enable_padding: false,
    #                   padding_tolerance: 1.0,
    #                   compression: "NONE", # accepts NONE, ZLIB, SNAPPY
    #                   bloom_filter_columns: ["NonEmptyStringWithoutWhitespace"],
    #                   bloom_filter_false_positive_probability: 1.0,
    #                   dictionary_key_threshold: 1.0,
    #                   format_version: "V0_11", # accepts V0_11, V0_12
    #                 },
    #               },
    #             },
    #             enabled: false,
    #           },
    #         },
    #         redshift_destination_update: {
    #           role_arn: "RoleARN",
    #           cluster_jdbc_url: "ClusterJDBCURL",
    #           copy_command: {
    #             data_table_name: "DataTableName", # required
    #             data_table_columns: "DataTableColumns",
    #             copy_options: "CopyOptions",
    #           },
    #           username: "Username",
    #           password: "Password",
    #           retry_options: {
    #             duration_in_seconds: 1,
    #           },
    #           s3_update: {
    #             role_arn: "RoleARN",
    #             bucket_arn: "BucketARN",
    #             prefix: "Prefix",
    #             error_output_prefix: "ErrorOutputPrefix",
    #             buffering_hints: {
    #               size_in_m_bs: 1,
    #               interval_in_seconds: 1,
    #             },
    #             compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
    #             encryption_configuration: {
    #               no_encryption_config: "NoEncryption", # accepts NoEncryption
    #               kms_encryption_config: {
    #                 awskms_key_arn: "AWSKMSKeyARN", # required
    #               },
    #             },
    #             cloud_watch_logging_options: {
    #               enabled: false,
    #               log_group_name: "LogGroupName",
    #               log_stream_name: "LogStreamName",
    #             },
    #           },
    #           processing_configuration: {
    #             enabled: false,
    #             processors: [
    #               {
    #                 type: "Lambda", # required, accepts Lambda
    #                 parameters: [
    #                   {
    #                     parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds
    #                     parameter_value: "ProcessorParameterValue", # required
    #                   },
    #                 ],
    #               },
    #             ],
    #           },
    #           s3_backup_mode: "Disabled", # accepts Disabled, Enabled
    #           s3_backup_update: {
    #             role_arn: "RoleARN",
    #             bucket_arn: "BucketARN",
    #             prefix: "Prefix",
    #             error_output_prefix: "ErrorOutputPrefix",
    #             buffering_hints: {
    #               size_in_m_bs: 1,
    #               interval_in_seconds: 1,
    #             },
    #             compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
    #             encryption_configuration: {
    #               no_encryption_config: "NoEncryption", # accepts NoEncryption
    #               kms_encryption_config: {
    #                 awskms_key_arn: "AWSKMSKeyARN", # required
    #               },
    #             },
    #             cloud_watch_logging_options: {
    #               enabled: false,
    #               log_group_name: "LogGroupName",
    #               log_stream_name: "LogStreamName",
    #             },
    #           },
    #           cloud_watch_logging_options: {
    #             enabled: false,
    #             log_group_name: "LogGroupName",
    #             log_stream_name: "LogStreamName",
    #           },
    #         },
    #         elasticsearch_destination_update: {
    #           role_arn: "RoleARN",
    #           domain_arn: "ElasticsearchDomainARN",
    #           cluster_endpoint: "ElasticsearchClusterEndpoint",
    #           index_name: "ElasticsearchIndexName",
    #           type_name: "ElasticsearchTypeName",
    #           index_rotation_period: "NoRotation", # accepts NoRotation, OneHour, OneDay, OneWeek, OneMonth
    #           buffering_hints: {
    #             interval_in_seconds: 1,
    #             size_in_m_bs: 1,
    #           },
    #           retry_options: {
    #             duration_in_seconds: 1,
    #           },
    #           s3_update: {
    #             role_arn: "RoleARN",
    #             bucket_arn: "BucketARN",
    #             prefix: "Prefix",
    #             error_output_prefix: "ErrorOutputPrefix",
    #             buffering_hints: {
    #               size_in_m_bs: 1,
    #               interval_in_seconds: 1,
    #             },
    #             compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
    #             encryption_configuration: {
    #               no_encryption_config: "NoEncryption", # accepts NoEncryption
    #               kms_encryption_config: {
    #                 awskms_key_arn: "AWSKMSKeyARN", # required
    #               },
    #             },
    #             cloud_watch_logging_options: {
    #               enabled: false,
    #               log_group_name: "LogGroupName",
    #               log_stream_name: "LogStreamName",
    #             },
    #           },
    #           processing_configuration: {
    #             enabled: false,
    #             processors: [
    #               {
    #                 type: "Lambda", # required, accepts Lambda
    #                 parameters: [
    #                   {
    #                     parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds
    #                     parameter_value: "ProcessorParameterValue", # required
    #                   },
    #                 ],
    #               },
    #             ],
    #           },
    #           cloud_watch_logging_options: {
    #             enabled: false,
    #             log_group_name: "LogGroupName",
    #             log_stream_name: "LogStreamName",
    #           },
    #         },
    #         splunk_destination_update: {
    #           hec_endpoint: "HECEndpoint",
    #           hec_endpoint_type: "Raw", # accepts Raw, Event
    #           hec_token: "HECToken",
    #           hec_acknowledgment_timeout_in_seconds: 1,
    #           retry_options: {
    #             duration_in_seconds: 1,
    #           },
    #           s3_backup_mode: "FailedEventsOnly", # accepts FailedEventsOnly, AllEvents
    #           s3_update: {
    #             role_arn: "RoleARN",
    #             bucket_arn: "BucketARN",
    #             prefix: "Prefix",
    #             error_output_prefix: "ErrorOutputPrefix",
    #             buffering_hints: {
    #               size_in_m_bs: 1,
    #               interval_in_seconds: 1,
    #             },
    #             compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
    #             encryption_configuration: {
    #               no_encryption_config: "NoEncryption", # accepts NoEncryption
    #               kms_encryption_config: {
    #                 awskms_key_arn: "AWSKMSKeyARN", # required
    #               },
    #             },
    #             cloud_watch_logging_options: {
    #               enabled: false,
    #               log_group_name: "LogGroupName",
    #               log_stream_name: "LogStreamName",
    #             },
    #           },
    #           processing_configuration: {
    #             enabled: false,
    #             processors: [
    #               {
    #                 type: "Lambda", # required, accepts Lambda
    #                 parameters: [
    #                   {
    #                     parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds
    #                     parameter_value: "ProcessorParameterValue", # required
    #                   },
    #                 ],
    #               },
    #             ],
    #           },
    #           cloud_watch_logging_options: {
    #             enabled: false,
    #             log_group_name: "LogGroupName",
    #             log_stream_name: "LogStreamName",
    #           },
    #         },
    #         http_endpoint_destination_update: {
    #           endpoint_configuration: {
    #             url: "HttpEndpointUrl", # required
    #             name: "HttpEndpointName",
    #             access_key: "HttpEndpointAccessKey",
    #           },
    #           buffering_hints: {
    #             size_in_m_bs: 1,
    #             interval_in_seconds: 1,
    #           },
    #           cloud_watch_logging_options: {
    #             enabled: false,
    #             log_group_name: "LogGroupName",
    #             log_stream_name: "LogStreamName",
    #           },
    #           request_configuration: {
    #             content_encoding: "NONE", # accepts NONE, GZIP
    #             common_attributes: [
    #               {
    #                 attribute_name: "HttpEndpointAttributeName", # required
    #                 attribute_value: "HttpEndpointAttributeValue", # required
    #               },
    #             ],
    #           },
    #           processing_configuration: {
    #             enabled: false,
    #             processors: [
    #               {
    #                 type: "Lambda", # required, accepts Lambda
    #                 parameters: [
    #                   {
    #                     parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds
    #                     parameter_value: "ProcessorParameterValue", # required
    #                   },
    #                 ],
    #               },
    #             ],
    #           },
    #           role_arn: "RoleARN",
    #           retry_options: {
    #             duration_in_seconds: 1,
    #           },
    #           s3_backup_mode: "FailedDataOnly", # accepts FailedDataOnly, AllData
    #           s3_update: {
    #             role_arn: "RoleARN",
    #             bucket_arn: "BucketARN",
    #             prefix: "Prefix",
    #             error_output_prefix: "ErrorOutputPrefix",
    #             buffering_hints: {
    #               size_in_m_bs: 1,
    #               interval_in_seconds: 1,
    #             },
    #             compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
    #             encryption_configuration: {
    #               no_encryption_config: "NoEncryption", # accepts NoEncryption
    #               kms_encryption_config: {
    #                 awskms_key_arn: "AWSKMSKeyARN", # required
    #               },
    #             },
    #             cloud_watch_logging_options: {
    #               enabled: false,
    #               log_group_name: "LogGroupName",
    #               log_stream_name: "LogStreamName",
    #             },
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] delivery_stream_name
    #   The name of the delivery stream.
    #   @return [String]
    #
    # @!attribute [rw] current_delivery_stream_version_id
    #   Obtain this value from the `VersionId` result of
    #   DeliveryStreamDescription. This value is required, and helps the
    #   service perform conditional operations. For example, if there is an
    #   interleaving update and this value is null, then the update
    #   destination fails. After the update is successful, the `VersionId`
    #   value is updated. The service then performs a merge of the old
    #   configuration with the new configuration.
    #   @return [String]
    #
    # @!attribute [rw] destination_id
    #   The ID of the destination.
    #   @return [String]
    #
    # @!attribute [rw] s3_destination_update
    #   \[Deprecated\] Describes an update for a destination in Amazon S3.
    #   @return [Types::S3DestinationUpdate]
    #
    # @!attribute [rw] extended_s3_destination_update
    #   Describes an update for a destination in Amazon S3.
    #   @return [Types::ExtendedS3DestinationUpdate]
    #
    # @!attribute [rw] redshift_destination_update
    #   Describes an update for a destination in Amazon Redshift.
    #   @return [Types::RedshiftDestinationUpdate]
    #
    # @!attribute [rw] elasticsearch_destination_update
    #   Describes an update for a destination in Amazon ES.
    #   @return [Types::ElasticsearchDestinationUpdate]
    #
    # @!attribute [rw] splunk_destination_update
    #   Describes an update for a destination in Splunk.
    #   @return [Types::SplunkDestinationUpdate]
    #
    # @!attribute [rw] http_endpoint_destination_update
    #   Describes an update to the specified HTTP endpoint destination.
    #   @return [Types::HttpEndpointDestinationUpdate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/UpdateDestinationInput AWS API Documentation
    #
    class UpdateDestinationInput < Struct.new(
      :delivery_stream_name,
      :current_delivery_stream_version_id,
      :destination_id,
      :s3_destination_update,
      :extended_s3_destination_update,
      :redshift_destination_update,
      :elasticsearch_destination_update,
      :splunk_destination_update,
      :http_endpoint_destination_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/UpdateDestinationOutput AWS API Documentation
    #
    class UpdateDestinationOutput < Aws::EmptyStructure; end

    # The details of the VPC of the Amazon ES destination.
    #
    # @note When making an API call, you may pass VpcConfiguration
    #   data as a hash:
    #
    #       {
    #         subnet_ids: ["NonEmptyStringWithoutWhitespace"], # required
    #         role_arn: "RoleARN", # required
    #         security_group_ids: ["NonEmptyStringWithoutWhitespace"], # required
    #       }
    #
    # @!attribute [rw] subnet_ids
    #   The IDs of the subnets that you want Kinesis Data Firehose to use to
    #   create ENIs in the VPC of the Amazon ES destination. Make sure that
    #   the routing tables and inbound and outbound rules allow traffic to
    #   flow from the subnets whose IDs are specified here to the subnets
    #   that have the destination Amazon ES endpoints. Kinesis Data Firehose
    #   creates at least one ENI in each of the subnets that are specified
    #   here. Do not delete or modify these ENIs.
    #
    #   The number of ENIs that Kinesis Data Firehose creates in the subnets
    #   specified here scales up and down automatically based on throughput.
    #   To enable Kinesis Data Firehose to scale up the number of ENIs to
    #   match throughput, ensure that you have sufficient quota. To help you
    #   calculate the quota you need, assume that Kinesis Data Firehose can
    #   create up to three ENIs for this delivery stream for each of the
    #   subnets specified here. For more information about ENI quota, see
    #   [Network Interfaces ][1] in the Amazon VPC Quotas topic.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/amazon-vpc-limits.html#vpc-limits-enis
    #   @return [Array<String>]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that you want the delivery stream to use to
    #   create endpoints in the destination VPC. You can use your existing
    #   Kinesis Data Firehose delivery role or you can specify a new role.
    #   In either case, make sure that the role trusts the Kinesis Data
    #   Firehose service principal and that it grants the following
    #   permissions:
    #
    #   * `ec2:DescribeVpcs`
    #
    #   * `ec2:DescribeVpcAttribute`
    #
    #   * `ec2:DescribeSubnets`
    #
    #   * `ec2:DescribeSecurityGroups`
    #
    #   * `ec2:DescribeNetworkInterfaces`
    #
    #   * `ec2:CreateNetworkInterface`
    #
    #   * `ec2:CreateNetworkInterfacePermission`
    #
    #   * `ec2:DeleteNetworkInterface`
    #
    #   If you revoke these permissions after you create the delivery
    #   stream, Kinesis Data Firehose can't scale out by creating more ENIs
    #   when necessary. You might therefore see a degradation in
    #   performance.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   The IDs of the security groups that you want Kinesis Data Firehose
    #   to use when it creates ENIs in the VPC of the Amazon ES destination.
    #   You can use the same security group that the Amazon ES domain uses
    #   or different ones. If you specify different security groups here,
    #   ensure that they allow outbound HTTPS traffic to the Amazon ES
    #   domain's security group. Also ensure that the Amazon ES domain's
    #   security group allows HTTPS traffic from the security groups
    #   specified here. If you use the same security group for both your
    #   delivery stream and the Amazon ES domain, make sure the security
    #   group inbound rule allows HTTPS traffic. For more information about
    #   security group rules, see [Security group rules][1] in the Amazon
    #   VPC documentation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html#SecurityGroupRules
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/VpcConfiguration AWS API Documentation
    #
    class VpcConfiguration < Struct.new(
      :subnet_ids,
      :role_arn,
      :security_group_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the VPC of the Amazon ES destination.
    #
    # @!attribute [rw] subnet_ids
    #   The IDs of the subnets that Kinesis Data Firehose uses to create
    #   ENIs in the VPC of the Amazon ES destination. Make sure that the
    #   routing tables and inbound and outbound rules allow traffic to flow
    #   from the subnets whose IDs are specified here to the subnets that
    #   have the destination Amazon ES endpoints. Kinesis Data Firehose
    #   creates at least one ENI in each of the subnets that are specified
    #   here. Do not delete or modify these ENIs.
    #
    #   The number of ENIs that Kinesis Data Firehose creates in the subnets
    #   specified here scales up and down automatically based on throughput.
    #   To enable Kinesis Data Firehose to scale up the number of ENIs to
    #   match throughput, ensure that you have sufficient quota. To help you
    #   calculate the quota you need, assume that Kinesis Data Firehose can
    #   create up to three ENIs for this delivery stream for each of the
    #   subnets specified here. For more information about ENI quota, see
    #   [Network Interfaces ][1] in the Amazon VPC Quotas topic.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/amazon-vpc-limits.html#vpc-limits-enis
    #   @return [Array<String>]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that the delivery stream uses to create
    #   endpoints in the destination VPC. You can use your existing Kinesis
    #   Data Firehose delivery role or you can specify a new role. In either
    #   case, make sure that the role trusts the Kinesis Data Firehose
    #   service principal and that it grants the following permissions:
    #
    #   * `ec2:DescribeVpcs`
    #
    #   * `ec2:DescribeVpcAttribute`
    #
    #   * `ec2:DescribeSubnets`
    #
    #   * `ec2:DescribeSecurityGroups`
    #
    #   * `ec2:DescribeNetworkInterfaces`
    #
    #   * `ec2:CreateNetworkInterface`
    #
    #   * `ec2:CreateNetworkInterfacePermission`
    #
    #   * `ec2:DeleteNetworkInterface`
    #
    #   If you revoke these permissions after you create the delivery
    #   stream, Kinesis Data Firehose can't scale out by creating more ENIs
    #   when necessary. You might therefore see a degradation in
    #   performance.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   The IDs of the security groups that Kinesis Data Firehose uses when
    #   it creates ENIs in the VPC of the Amazon ES destination. You can use
    #   the same security group that the Amazon ES domain uses or different
    #   ones. If you specify different security groups, ensure that they
    #   allow outbound HTTPS traffic to the Amazon ES domain's security
    #   group. Also ensure that the Amazon ES domain's security group
    #   allows HTTPS traffic from the security groups specified here. If you
    #   use the same security group for both your delivery stream and the
    #   Amazon ES domain, make sure the security group inbound rule allows
    #   HTTPS traffic. For more information about security group rules, see
    #   [Security group rules][1] in the Amazon VPC documentation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html#SecurityGroupRules
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the Amazon ES destination's VPC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/VpcConfigurationDescription AWS API Documentation
    #
    class VpcConfigurationDescription < Struct.new(
      :subnet_ids,
      :role_arn,
      :security_group_ids,
      :vpc_id)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
