# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Firehose
  module Types

    # Describes hints for the buffering to perform before delivering data to
    # the destination. Please note that these options are treated as hints,
    # and therefore Kinesis Firehose may choose to use different values when
    # it is optimal.
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
    #   before delivering it to the destination. The default value is 300.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/BufferingHints AWS API Documentation
    #
    class BufferingHints < Struct.new(
      :size_in_m_bs,
      :interval_in_seconds)
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
    #   apply to Kinesis Firehose are as follows:
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
    #   [1]: http://docs.aws.amazon.com/redshift/latest/dg/r_COPY.html
    #   [2]: http://docs.aws.amazon.com/redshift/latest/dg/r_COPY_command_examples.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/CopyCommand AWS API Documentation
    #
    class CopyCommand < Struct.new(
      :data_table_name,
      :data_table_columns,
      :copy_options)
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
    #         s3_destination_configuration: {
    #           role_arn: "RoleARN", # required
    #           bucket_arn: "BucketARN", # required
    #           prefix: "Prefix",
    #           buffering_hints: {
    #             size_in_m_bs: 1,
    #             interval_in_seconds: 1,
    #           },
    #           compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy
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
    #           buffering_hints: {
    #             size_in_m_bs: 1,
    #             interval_in_seconds: 1,
    #           },
    #           compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy
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
    #                     parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries
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
    #             buffering_hints: {
    #               size_in_m_bs: 1,
    #               interval_in_seconds: 1,
    #             },
    #             compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy
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
    #             buffering_hints: {
    #               size_in_m_bs: 1,
    #               interval_in_seconds: 1,
    #             },
    #             compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy
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
    #                     parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries
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
    #             buffering_hints: {
    #               size_in_m_bs: 1,
    #               interval_in_seconds: 1,
    #             },
    #             compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy
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
    #           domain_arn: "ElasticsearchDomainARN", # required
    #           index_name: "ElasticsearchIndexName", # required
    #           type_name: "ElasticsearchTypeName", # required
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
    #             buffering_hints: {
    #               size_in_m_bs: 1,
    #               interval_in_seconds: 1,
    #             },
    #             compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy
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
    #                     parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries
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
    #       }
    #
    # @!attribute [rw] delivery_stream_name
    #   The name of the delivery stream. This name must be unique per AWS
    #   account in the same region. If the delivery streams are in different
    #   accounts or different regions, you can have multiple delivery
    #   streams with the same name.
    #   @return [String]
    #
    # @!attribute [rw] delivery_stream_type
    #   The delivery stream type. This parameter can be one of the following
    #   values:
    #
    #   * `DirectPut`\: Provider applications access the delivery stream
    #     directly.
    #
    #   * `KinesisStreamAsSource`\: The delivery stream uses a Kinesis
    #     stream as a source.
    #   @return [String]
    #
    # @!attribute [rw] kinesis_stream_source_configuration
    #   When a Kinesis stream is used as the source for the delivery stream,
    #   a KinesisStreamSourceConfiguration containing the Kinesis stream ARN
    #   and the role ARN for the source stream.
    #   @return [Types::KinesisStreamSourceConfiguration]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/CreateDeliveryStreamInput AWS API Documentation
    #
    class CreateDeliveryStreamInput < Struct.new(
      :delivery_stream_name,
      :delivery_stream_type,
      :kinesis_stream_source_configuration,
      :s3_destination_configuration,
      :extended_s3_destination_configuration,
      :redshift_destination_configuration,
      :elasticsearch_destination_configuration)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteDeliveryStreamInput
    #   data as a hash:
    #
    #       {
    #         delivery_stream_name: "DeliveryStreamName", # required
    #       }
    #
    # @!attribute [rw] delivery_stream_name
    #   The name of the delivery stream.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/DeleteDeliveryStreamInput AWS API Documentation
    #
    class DeleteDeliveryStreamInput < Struct.new(
      :delivery_stream_name)
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
    #   The Amazon Resource Name (ARN) of the delivery stream.
    #   @return [String]
    #
    # @!attribute [rw] delivery_stream_status
    #   The status of the delivery stream.
    #   @return [String]
    #
    # @!attribute [rw] delivery_stream_type
    #   The delivery stream type. This can be one of the following values:
    #
    #   * `DirectPut`\: Provider applications access the delivery stream
    #     directly.
    #
    #   * `KinesisStreamAsSource`\: The delivery stream uses a Kinesis
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
    #   SourceDescription object describing the source Kinesis stream.
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
      :delivery_stream_type,
      :version_id,
      :create_timestamp,
      :last_update_timestamp,
      :source,
      :destinations,
      :has_more_destinations)
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
    #   The limit on the number of destinations to return. Currently, you
    #   can have one destination per delivery stream.
    #   @return [Integer]
    #
    # @!attribute [rw] exclusive_start_destination_id
    #   The ID of the destination to start returning the destination
    #   information. Currently, Kinesis Firehose supports one destination
    #   per delivery stream.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/DescribeDeliveryStreamInput AWS API Documentation
    #
    class DescribeDeliveryStreamInput < Struct.new(
      :delivery_stream_name,
      :limit,
      :exclusive_start_destination_id)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/DestinationDescription AWS API Documentation
    #
    class DestinationDescription < Struct.new(
      :destination_id,
      :s3_destination_description,
      :extended_s3_destination_description,
      :redshift_destination_description,
      :elasticsearch_destination_description)
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
      include Aws::Structure
    end

    # Describes the configuration of a destination in Amazon ES.
    #
    # @note When making an API call, you may pass ElasticsearchDestinationConfiguration
    #   data as a hash:
    #
    #       {
    #         role_arn: "RoleARN", # required
    #         domain_arn: "ElasticsearchDomainARN", # required
    #         index_name: "ElasticsearchIndexName", # required
    #         type_name: "ElasticsearchTypeName", # required
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
    #           buffering_hints: {
    #             size_in_m_bs: 1,
    #             interval_in_seconds: 1,
    #           },
    #           compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy
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
    #                   parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries
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
    #   The ARN of the IAM role to be assumed by Kinesis Firehose for
    #   calling the Amazon ES Configuration API and for indexing documents.
    #   For more information, see [Amazon S3 Bucket Access][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/firehose/latest/dev/controlling-access.html#using-iam-s3
    #   @return [String]
    #
    # @!attribute [rw] domain_arn
    #   The ARN of the Amazon ES domain. The IAM role must have permissions
    #   for `DescribeElasticsearchDomain`, `DescribeElasticsearchDomains`,
    #   and `DescribeElasticsearchDomainConfig` after assuming the role
    #   specified in **RoleARN**.
    #   @return [String]
    #
    # @!attribute [rw] index_name
    #   The Elasticsearch index name.
    #   @return [String]
    #
    # @!attribute [rw] type_name
    #   The Elasticsearch type name.
    #   @return [String]
    #
    # @!attribute [rw] index_rotation_period
    #   The Elasticsearch index rotation period. Index rotation appends a
    #   time stamp to the IndexName to facilitate the expiration of old
    #   data. For more information, see [Index Rotation for Amazon
    #   Elasticsearch Service Destination][1]. The default value
    #   is `OneDay`.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html#es-index-rotation
    #   @return [String]
    #
    # @!attribute [rw] buffering_hints
    #   The buffering options. If no value is specified, the default values
    #   for **ElasticsearchBufferingHints** are used.
    #   @return [Types::ElasticsearchBufferingHints]
    #
    # @!attribute [rw] retry_options
    #   The retry behavior in case Kinesis Firehose is unable to deliver
    #   documents to Amazon ES. The default value is 300 (5 minutes).
    #   @return [Types::ElasticsearchRetryOptions]
    #
    # @!attribute [rw] s3_backup_mode
    #   Defines how documents should be delivered to Amazon S3. When set to
    #   FailedDocumentsOnly, Kinesis Firehose writes any documents that
    #   could not be indexed to the configured Amazon S3 destination, with
    #   elasticsearch-failed/ appended to the key prefix. When set to
    #   AllDocuments, Kinesis Firehose delivers all incoming records to
    #   Amazon S3, and also writes failed documents with
    #   elasticsearch-failed/ appended to the prefix. For more information,
    #   see [Amazon S3 Backup for Amazon Elasticsearch Service
    #   Destination][1]. Default value is FailedDocumentsOnly.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html#es-s3-backup
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
    #   The CloudWatch logging options for your delivery stream.
    #   @return [Types::CloudWatchLoggingOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/ElasticsearchDestinationConfiguration AWS API Documentation
    #
    class ElasticsearchDestinationConfiguration < Struct.new(
      :role_arn,
      :domain_arn,
      :index_name,
      :type_name,
      :index_rotation_period,
      :buffering_hints,
      :retry_options,
      :s3_backup_mode,
      :s3_configuration,
      :processing_configuration,
      :cloud_watch_logging_options)
      include Aws::Structure
    end

    # The destination description in Amazon ES.
    #
    # @!attribute [rw] role_arn
    #   The ARN of the AWS credentials.
    #   @return [String]
    #
    # @!attribute [rw] domain_arn
    #   The ARN of the Amazon ES domain.
    #   @return [String]
    #
    # @!attribute [rw] index_name
    #   The Elasticsearch index name.
    #   @return [String]
    #
    # @!attribute [rw] type_name
    #   The Elasticsearch type name.
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
    #   The CloudWatch logging options.
    #   @return [Types::CloudWatchLoggingOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/ElasticsearchDestinationDescription AWS API Documentation
    #
    class ElasticsearchDestinationDescription < Struct.new(
      :role_arn,
      :domain_arn,
      :index_name,
      :type_name,
      :index_rotation_period,
      :buffering_hints,
      :retry_options,
      :s3_backup_mode,
      :s3_destination_description,
      :processing_configuration,
      :cloud_watch_logging_options)
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
    #           buffering_hints: {
    #             size_in_m_bs: 1,
    #             interval_in_seconds: 1,
    #           },
    #           compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy
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
    #                   parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries
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
    #   The ARN of the IAM role to be assumed by Kinesis Firehose for
    #   calling the Amazon ES Configuration API and for indexing documents.
    #   For more information, see [Amazon S3 Bucket Access][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/firehose/latest/dev/controlling-access.html#using-iam-s3
    #   @return [String]
    #
    # @!attribute [rw] domain_arn
    #   The ARN of the Amazon ES domain. The IAM role must have permissions
    #   for `DescribeElasticsearchDomain`, `DescribeElasticsearchDomains`,
    #   and `DescribeElasticsearchDomainConfig` after assuming the IAM role
    #   specified in **RoleARN**.
    #   @return [String]
    #
    # @!attribute [rw] index_name
    #   The Elasticsearch index name.
    #   @return [String]
    #
    # @!attribute [rw] type_name
    #   The Elasticsearch type name.
    #   @return [String]
    #
    # @!attribute [rw] index_rotation_period
    #   The Elasticsearch index rotation period. Index rotation appends a
    #   time stamp to IndexName to facilitate the expiration of old data.
    #   For more information, see [Index Rotation for Amazon Elasticsearch
    #   Service Destination][1]. Default value is `OneDay`.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html#es-index-rotation
    #   @return [String]
    #
    # @!attribute [rw] buffering_hints
    #   The buffering options. If no value is specified,
    #   **ElasticsearchBufferingHints** object default values are used.
    #   @return [Types::ElasticsearchBufferingHints]
    #
    # @!attribute [rw] retry_options
    #   The retry behavior in case Kinesis Firehose is unable to deliver
    #   documents to Amazon ES. The default value is 300 (5 minutes).
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
      :index_name,
      :type_name,
      :index_rotation_period,
      :buffering_hints,
      :retry_options,
      :s3_update,
      :processing_configuration,
      :cloud_watch_logging_options)
      include Aws::Structure
    end

    # Configures retry behavior in case Kinesis Firehose is unable to
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
    #   of time during which Kinesis Firehose re-attempts delivery
    #   (including the first attempt). After this time has elapsed, the
    #   failed documents are written to Amazon S3. Default value is 300
    #   seconds (5 minutes). A value of 0 (zero) results in no retries.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/ElasticsearchRetryOptions AWS API Documentation
    #
    class ElasticsearchRetryOptions < Struct.new(
      :duration_in_seconds)
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
    #         processing_configuration: {
    #           enabled: false,
    #           processors: [
    #             {
    #               type: "Lambda", # required, accepts Lambda
    #               parameters: [
    #                 {
    #                   parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries
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
    #           buffering_hints: {
    #             size_in_m_bs: 1,
    #             interval_in_seconds: 1,
    #           },
    #           compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy
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
    # @!attribute [rw] role_arn
    #   The ARN of the AWS credentials.
    #   @return [String]
    #
    # @!attribute [rw] bucket_arn
    #   The ARN of the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   The "YYYY/MM/DD/HH" time format prefix is automatically used for
    #   delivered S3 files. You can specify an extra prefix to be added in
    #   front of the time format prefix. If the prefix ends with a slash, it
    #   appears as a folder in the S3 bucket. For more information, see
    #   [Amazon S3 Object Name Format][1] in the *Amazon Kinesis Firehose
    #   Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html
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
    #   The CloudWatch logging options for your delivery stream.
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
    # @!attribute [rw] s3_backup_configuration
    #   The configuration for backup in Amazon S3.
    #   @return [Types::S3DestinationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/ExtendedS3DestinationConfiguration AWS API Documentation
    #
    class ExtendedS3DestinationConfiguration < Struct.new(
      :role_arn,
      :bucket_arn,
      :prefix,
      :buffering_hints,
      :compression_format,
      :encryption_configuration,
      :cloud_watch_logging_options,
      :processing_configuration,
      :s3_backup_mode,
      :s3_backup_configuration)
      include Aws::Structure
    end

    # Describes a destination in Amazon S3.
    #
    # @!attribute [rw] role_arn
    #   The ARN of the AWS credentials.
    #   @return [String]
    #
    # @!attribute [rw] bucket_arn
    #   The ARN of the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   The "YYYY/MM/DD/HH" time format prefix is automatically used for
    #   delivered S3 files. You can specify an extra prefix to be added in
    #   front of the time format prefix. If the prefix ends with a slash, it
    #   appears as a folder in the S3 bucket. For more information, see
    #   [Amazon S3 Object Name Format][1] in the *Amazon Kinesis Firehose
    #   Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html
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
    #   The CloudWatch logging options for your delivery stream.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/ExtendedS3DestinationDescription AWS API Documentation
    #
    class ExtendedS3DestinationDescription < Struct.new(
      :role_arn,
      :bucket_arn,
      :prefix,
      :buffering_hints,
      :compression_format,
      :encryption_configuration,
      :cloud_watch_logging_options,
      :processing_configuration,
      :s3_backup_mode,
      :s3_backup_description)
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
    #         processing_configuration: {
    #           enabled: false,
    #           processors: [
    #             {
    #               type: "Lambda", # required, accepts Lambda
    #               parameters: [
    #                 {
    #                   parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries
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
    #           buffering_hints: {
    #             size_in_m_bs: 1,
    #             interval_in_seconds: 1,
    #           },
    #           compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy
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
    # @!attribute [rw] role_arn
    #   The ARN of the AWS credentials.
    #   @return [String]
    #
    # @!attribute [rw] bucket_arn
    #   The ARN of the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   The "YYYY/MM/DD/HH" time format prefix is automatically used for
    #   delivered S3 files. You can specify an extra prefix to be added in
    #   front of the time format prefix. If the prefix ends with a slash, it
    #   appears as a folder in the S3 bucket. For more information, see
    #   [Amazon S3 Object Name Format][1] in the *Amazon Kinesis Firehose
    #   Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html
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
    #   The CloudWatch logging options for your delivery stream.
    #   @return [Types::CloudWatchLoggingOptions]
    #
    # @!attribute [rw] processing_configuration
    #   The data processing configuration.
    #   @return [Types::ProcessingConfiguration]
    #
    # @!attribute [rw] s3_backup_mode
    #   Enables or disables Amazon S3 backup mode.
    #   @return [String]
    #
    # @!attribute [rw] s3_backup_update
    #   The Amazon S3 destination for backup.
    #   @return [Types::S3DestinationUpdate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/ExtendedS3DestinationUpdate AWS API Documentation
    #
    class ExtendedS3DestinationUpdate < Struct.new(
      :role_arn,
      :bucket_arn,
      :prefix,
      :buffering_hints,
      :compression_format,
      :encryption_configuration,
      :cloud_watch_logging_options,
      :processing_configuration,
      :s3_backup_mode,
      :s3_backup_update)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetKinesisStreamInput
    #   data as a hash:
    #
    #       {
    #         delivery_stream_arn: "DeliveryStreamARN", # required
    #       }
    #
    # @!attribute [rw] delivery_stream_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/GetKinesisStreamInput AWS API Documentation
    #
    class GetKinesisStreamInput < Struct.new(
      :delivery_stream_arn)
      include Aws::Structure
    end

    # @!attribute [rw] kinesis_stream_arn
    #   @return [String]
    #
    # @!attribute [rw] credentials_for_reading_kinesis_stream
    #   @return [Types::SessionCredentials]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/GetKinesisStreamOutput AWS API Documentation
    #
    class GetKinesisStreamOutput < Struct.new(
      :kinesis_stream_arn,
      :credentials_for_reading_kinesis_stream)
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
    #   The ARN of the encryption key. Must belong to the same region as the
    #   destination Amazon S3 bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/KMSEncryptionConfig AWS API Documentation
    #
    class KMSEncryptionConfig < Struct.new(
      :awskms_key_arn)
      include Aws::Structure
    end

    # The stream and role ARNs for a Kinesis stream used as the source for a
    # delivery stream.
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
    #   The ARN of the source Kinesis stream.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the role that provides access to the source Kinesis
    #   stream.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/KinesisStreamSourceConfiguration AWS API Documentation
    #
    class KinesisStreamSourceConfiguration < Struct.new(
      :kinesis_stream_arn,
      :role_arn)
      include Aws::Structure
    end

    # Details about a Kinesis stream used as the source for a Kinesis
    # Firehose delivery stream.
    #
    # @!attribute [rw] kinesis_stream_arn
    #   The ARN of the source Kinesis stream.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the role used by the source Kinesis stream.
    #   @return [String]
    #
    # @!attribute [rw] delivery_start_timestamp
    #   Kinesis Firehose starts retrieving records from the Kinesis stream
    #   starting with this time stamp.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/KinesisStreamSourceDescription AWS API Documentation
    #
    class KinesisStreamSourceDescription < Struct.new(
      :kinesis_stream_arn,
      :role_arn,
      :delivery_start_timestamp)
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
    #   The maximum number of delivery streams to list.
    #   @return [Integer]
    #
    # @!attribute [rw] delivery_stream_type
    #   The delivery stream type. This can be one of the following values:
    #
    #   * `DirectPut`\: Provider applications access the delivery stream
    #     directly.
    #
    #   * `KinesisStreamAsSource`\: The delivery stream uses a Kinesis
    #     stream as a source.
    #
    #   This parameter is optional. If this parameter is omitted, delivery
    #   streams of all types are returned.
    #   @return [String]
    #
    # @!attribute [rw] exclusive_start_delivery_stream_name
    #   The name of the delivery stream to start the list with.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/ListDeliveryStreamsInput AWS API Documentation
    #
    class ListDeliveryStreamsInput < Struct.new(
      :limit,
      :delivery_stream_type,
      :exclusive_start_delivery_stream_name)
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
    #                 parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries
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
    #             parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries
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
      include Aws::Structure
    end

    # Describes the processor parameter.
    #
    # @note When making an API call, you may pass ProcessorParameter
    #   data as a hash:
    #
    #       {
    #         parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries
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
      include Aws::Structure
    end

    # @!attribute [rw] failed_put_count
    #   The number of records that might have failed processing.
    #   @return [Integer]
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
      :request_responses)
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
      include Aws::Structure
    end

    # @!attribute [rw] record_id
    #   The ID of the record.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/PutRecordOutput AWS API Documentation
    #
    class PutRecordOutput < Struct.new(
      :record_id)
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
    #   KB.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/Record AWS API Documentation
    #
    class Record < Struct.new(
      :data)
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
    #           buffering_hints: {
    #             size_in_m_bs: 1,
    #             interval_in_seconds: 1,
    #           },
    #           compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy
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
    #                   parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries
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
    #           buffering_hints: {
    #             size_in_m_bs: 1,
    #             interval_in_seconds: 1,
    #           },
    #           compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy
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
    #   The ARN of the AWS credentials.
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
    #   The retry behavior in case Kinesis Firehose is unable to deliver
    #   documents to Amazon Redshift. Default value is 3600 (60 minutes).
    #   @return [Types::RedshiftRetryOptions]
    #
    # @!attribute [rw] s3_configuration
    #   The configuration for the intermediate Amazon S3 location from which
    #   Amazon Redshift obtains data. Restrictions are described in the
    #   topic for CreateDeliveryStream.
    #
    #   The compression formats `SNAPPY` or `ZIP` cannot be specified in
    #   **RedshiftDestinationConfiguration.S3Configuration** because the
    #   Amazon Redshift `COPY` operation that reads from the S3 bucket
    #   doesn't support these compression formats.
    #   @return [Types::S3DestinationConfiguration]
    #
    # @!attribute [rw] processing_configuration
    #   The data processing configuration.
    #   @return [Types::ProcessingConfiguration]
    #
    # @!attribute [rw] s3_backup_mode
    #   The Amazon S3 backup mode.
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
      include Aws::Structure
    end

    # Describes a destination in Amazon Redshift.
    #
    # @!attribute [rw] role_arn
    #   The ARN of the AWS credentials.
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
    #   The retry behavior in case Kinesis Firehose is unable to deliver
    #   documents to Amazon Redshift. Default value is 3600 (60 minutes).
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
    #   The CloudWatch logging options for your delivery stream.
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
    #           buffering_hints: {
    #             size_in_m_bs: 1,
    #             interval_in_seconds: 1,
    #           },
    #           compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy
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
    #                   parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries
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
    #           buffering_hints: {
    #             size_in_m_bs: 1,
    #             interval_in_seconds: 1,
    #           },
    #           compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy
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
    #   The ARN of the AWS credentials.
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
    #   The retry behavior in case Kinesis Firehose is unable to deliver
    #   documents to Amazon Redshift. Default value is 3600 (60 minutes).
    #   @return [Types::RedshiftRetryOptions]
    #
    # @!attribute [rw] s3_update
    #   The Amazon S3 destination.
    #
    #   The compression formats `SNAPPY` or `ZIP` cannot be specified in
    #   **RedshiftDestinationUpdate.S3Update** because the Amazon Redshift
    #   `COPY` operation that reads from the S3 bucket doesn't support
    #   these compression formats.
    #   @return [Types::S3DestinationUpdate]
    #
    # @!attribute [rw] processing_configuration
    #   The data processing configuration.
    #   @return [Types::ProcessingConfiguration]
    #
    # @!attribute [rw] s3_backup_mode
    #   The Amazon S3 backup mode.
    #   @return [String]
    #
    # @!attribute [rw] s3_backup_update
    #   The Amazon S3 destination for backup.
    #   @return [Types::S3DestinationUpdate]
    #
    # @!attribute [rw] cloud_watch_logging_options
    #   The CloudWatch logging options for your delivery stream.
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
      include Aws::Structure
    end

    # Configures retry behavior in case Kinesis Firehose is unable to
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
    #   The length of time during which Kinesis Firehose retries delivery
    #   after a failure, starting from the initial request and including the
    #   first attempt. The default value is 3600 seconds (60 minutes).
    #   Kinesis Firehose does not retry if the value of `DurationInSeconds`
    #   is 0 (zero) or if the first delivery attempt takes longer than the
    #   current value.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/RedshiftRetryOptions AWS API Documentation
    #
    class RedshiftRetryOptions < Struct.new(
      :duration_in_seconds)
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
    #       }
    #
    # @!attribute [rw] role_arn
    #   The ARN of the AWS credentials.
    #   @return [String]
    #
    # @!attribute [rw] bucket_arn
    #   The ARN of the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   The "YYYY/MM/DD/HH" time format prefix is automatically used for
    #   delivered S3 files. You can specify an extra prefix to be added in
    #   front of the time format prefix. If the prefix ends with a slash, it
    #   appears as a folder in the S3 bucket. For more information, see
    #   [Amazon S3 Object Name Format][1] in the *Amazon Kinesis Firehose
    #   Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html
    #   @return [String]
    #
    # @!attribute [rw] buffering_hints
    #   The buffering option. If no value is specified, **BufferingHints**
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
      :buffering_hints,
      :compression_format,
      :encryption_configuration,
      :cloud_watch_logging_options)
      include Aws::Structure
    end

    # Describes a destination in Amazon S3.
    #
    # @!attribute [rw] role_arn
    #   The ARN of the AWS credentials.
    #   @return [String]
    #
    # @!attribute [rw] bucket_arn
    #   The ARN of the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   The "YYYY/MM/DD/HH" time format prefix is automatically used for
    #   delivered S3 files. You can specify an extra prefix to be added in
    #   front of the time format prefix. If the prefix ends with a slash, it
    #   appears as a folder in the S3 bucket. For more information, see
    #   [Amazon S3 Object Name Format][1] in the *Amazon Kinesis Firehose
    #   Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html
    #   @return [String]
    #
    # @!attribute [rw] buffering_hints
    #   The buffering option. If no value is specified, **BufferingHints**
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
    #   The CloudWatch logging options for your delivery stream.
    #   @return [Types::CloudWatchLoggingOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/S3DestinationDescription AWS API Documentation
    #
    class S3DestinationDescription < Struct.new(
      :role_arn,
      :bucket_arn,
      :prefix,
      :buffering_hints,
      :compression_format,
      :encryption_configuration,
      :cloud_watch_logging_options)
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
    #       }
    #
    # @!attribute [rw] role_arn
    #   The ARN of the AWS credentials.
    #   @return [String]
    #
    # @!attribute [rw] bucket_arn
    #   The ARN of the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   The "YYYY/MM/DD/HH" time format prefix is automatically used for
    #   delivered S3 files. You can specify an extra prefix to be added in
    #   front of the time format prefix. If the prefix ends with a slash, it
    #   appears as a folder in the S3 bucket. For more information, see
    #   [Amazon S3 Object Name Format][1] in the *Amazon Kinesis Firehose
    #   Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html
    #   @return [String]
    #
    # @!attribute [rw] buffering_hints
    #   The buffering option. If no value is specified, **BufferingHints**
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
      :buffering_hints,
      :compression_format,
      :encryption_configuration,
      :cloud_watch_logging_options)
      include Aws::Structure
    end

    # @!attribute [rw] access_key_id
    #   @return [String]
    #
    # @!attribute [rw] secret_access_key
    #   @return [String]
    #
    # @!attribute [rw] session_token
    #   @return [String]
    #
    # @!attribute [rw] expiration
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/SessionCredentials AWS API Documentation
    #
    class SessionCredentials < Struct.new(
      :access_key_id,
      :secret_access_key,
      :session_token,
      :expiration)
      include Aws::Structure
    end

    # Details about a Kinesis stream used as the source for a Kinesis
    # Firehose delivery stream.
    #
    # @!attribute [rw] kinesis_stream_source_description
    #   The KinesisStreamSourceDescription value for the source Kinesis
    #   stream.
    #   @return [Types::KinesisStreamSourceDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/SourceDescription AWS API Documentation
    #
    class SourceDescription < Struct.new(
      :kinesis_stream_source_description)
      include Aws::Structure
    end

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
    #           buffering_hints: {
    #             size_in_m_bs: 1,
    #             interval_in_seconds: 1,
    #           },
    #           compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy
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
    #           buffering_hints: {
    #             size_in_m_bs: 1,
    #             interval_in_seconds: 1,
    #           },
    #           compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy
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
    #                     parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries
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
    #             buffering_hints: {
    #               size_in_m_bs: 1,
    #               interval_in_seconds: 1,
    #             },
    #             compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy
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
    #             buffering_hints: {
    #               size_in_m_bs: 1,
    #               interval_in_seconds: 1,
    #             },
    #             compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy
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
    #                     parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries
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
    #             buffering_hints: {
    #               size_in_m_bs: 1,
    #               interval_in_seconds: 1,
    #             },
    #             compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy
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
    #             buffering_hints: {
    #               size_in_m_bs: 1,
    #               interval_in_seconds: 1,
    #             },
    #             compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy
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
    #                     parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries
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
    #       }
    #
    # @!attribute [rw] delivery_stream_name
    #   The name of the delivery stream.
    #   @return [String]
    #
    # @!attribute [rw] current_delivery_stream_version_id
    #   Obtain this value from the **VersionId** result of
    #   DeliveryStreamDescription. This value is required, and helps the
    #   service to perform conditional operations. For example, if there is
    #   an interleaving update and this value is null, then the update
    #   destination fails. After the update is successful, the **VersionId**
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/UpdateDestinationInput AWS API Documentation
    #
    class UpdateDestinationInput < Struct.new(
      :delivery_stream_name,
      :current_delivery_stream_version_id,
      :destination_id,
      :s3_destination_update,
      :extended_s3_destination_update,
      :redshift_destination_update,
      :elasticsearch_destination_update)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/UpdateDestinationOutput AWS API Documentation
    #
    class UpdateDestinationOutput < Aws::EmptyStructure; end

  end
end
