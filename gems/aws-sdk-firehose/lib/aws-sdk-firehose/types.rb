# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws
  module Firehose
    module Types

      # Describes hints for the buffering to perform before delivering data to
      # the destination. Please note that these options are treated as hints,
      # and therefore Firehose may choose to use different values when it is
      # optimal.
      # @note When making an API call, pass BufferingHints
      #   data as a hash:
      #
      #       {
      #         size_in_m_bs: 1,
      #         interval_in_seconds: 1,
      #       }
      class BufferingHints < Struct.new(
        :size_in_m_bs,
        :interval_in_seconds)

        include Aws::Structure

        # @!attribute [rw] size_in_m_bs
        #   Buffer incoming data to the specified size, in MBs, before
        #   delivering it to the destination. The default value is 5.
        #
        #   We recommend setting SizeInMBs to a value greater than the amount of
        #   data you typically ingest into the delivery stream in 10 seconds.
        #   For example, if you typically ingest data at 1 MB/sec set SizeInMBs
        #   to be 10 MB or higher.
        #   @return [Integer]

        # @!attribute [rw] interval_in_seconds
        #   Buffer incoming data for the specified period of time, in seconds,
        #   before delivering it to the destination. The default value is 300.
        #   @return [Integer]

      end

      # Describes CloudWatch logging options for your delivery stream.
      # @note When making an API call, pass CloudWatchLoggingOptions
      #   data as a hash:
      #
      #       {
      #         enabled: false,
      #         log_group_name: "LogGroupName",
      #         log_stream_name: "LogStreamName",
      #       }
      class CloudWatchLoggingOptions < Struct.new(
        :enabled,
        :log_group_name,
        :log_stream_name)

        include Aws::Structure

        # @!attribute [rw] enabled
        #   Enables or disables CloudWatch logging.
        #   @return [Boolean]

        # @!attribute [rw] log_group_name
        #   The CloudWatch group name for logging. This value is required if
        #   Enabled is true.
        #   @return [String]

        # @!attribute [rw] log_stream_name
        #   The CloudWatch log stream name for logging. This value is required
        #   if Enabled is true.
        #   @return [String]

      end

      # Describes a `COPY` command for Amazon Redshift.
      # @note When making an API call, pass CopyCommand
      #   data as a hash:
      #
      #       {
      #         data_table_name: "DataTableName", # required
      #         data_table_columns: "DataTableColumns",
      #         copy_options: "CopyOptions",
      #       }
      class CopyCommand < Struct.new(
        :data_table_name,
        :data_table_columns,
        :copy_options)

        include Aws::Structure

        # @!attribute [rw] data_table_name
        #   The name of the target table. The table must already exist in the
        #   database.
        #   @return [String]

        # @!attribute [rw] data_table_columns
        #   A comma-separated list of column names.
        #   @return [String]

        # @!attribute [rw] copy_options
        #   Optional parameters to use with the Amazon Redshift `COPY` command.
        #   For more information, see the \"Optional Parameters\" section of
        #   [Amazon Redshift COPY command][1]. Some possible examples that would
        #   apply to Firehose are as follows.
        #
        #   `delimiter '\t' lzop;` - fields are delimited with \"\\t\" (TAB
        #   character) and compressed using lzop.
        #
        #   `delimiter '|` - fields are delimited with \"\|\" (this is the
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

      end

      # Contains the parameters for CreateDeliveryStream.
      # @note When making an API call, pass CreateDeliveryStreamInput
      #   data as a hash:
      #
      #       {
      #         delivery_stream_name: "DeliveryStreamName", # required
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
      #         redshift_destination_configuration: {
      #           role_arn: "RoleARN", # required
      #           cluster_jdbcurl: "ClusterJDBCURL", # required
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
      #           cloud_watch_logging_options: {
      #             enabled: false,
      #             log_group_name: "LogGroupName",
      #             log_stream_name: "LogStreamName",
      #           },
      #         },
      #       }
      class CreateDeliveryStreamInput < Struct.new(
        :delivery_stream_name,
        :s3_destination_configuration,
        :redshift_destination_configuration,
        :elasticsearch_destination_configuration)

        include Aws::Structure

        # @!attribute [rw] delivery_stream_name
        #   The name of the delivery stream.
        #   @return [String]

        # @!attribute [rw] s3_destination_configuration
        #   The destination in Amazon S3. This value must be specified if
        #   **ElasticsearchDestinationConfiguration** or
        #   **RedshiftDestinationConfiguration** is specified (see restrictions
        #   listed above).
        #   @return [Types::S3DestinationConfiguration]

        # @!attribute [rw] redshift_destination_configuration
        #   The destination in Amazon Redshift. This value cannot be specified
        #   if Amazon S3 or Amazon Elasticsearch is the desired destination (see
        #   restrictions listed above).
        #   @return [Types::RedshiftDestinationConfiguration]

        # @!attribute [rw] elasticsearch_destination_configuration
        #   The destination in Amazon ES. This value cannot be specified if
        #   Amazon S3 or Amazon Redshift is the desired destination (see
        #   restrictions listed above).
        #   @return [Types::ElasticsearchDestinationConfiguration]

      end

      # Contains the output of CreateDeliveryStream.
      class CreateDeliveryStreamOutput < Struct.new(
        :delivery_stream_arn)

        include Aws::Structure

        # @!attribute [rw] delivery_stream_arn
        #   The ARN of the delivery stream.
        #   @return [String]

      end

      # Contains the parameters for DeleteDeliveryStream.
      # @note When making an API call, pass DeleteDeliveryStreamInput
      #   data as a hash:
      #
      #       {
      #         delivery_stream_name: "DeliveryStreamName", # required
      #       }
      class DeleteDeliveryStreamInput < Struct.new(
        :delivery_stream_name)

        include Aws::Structure

        # @!attribute [rw] delivery_stream_name
        #   The name of the delivery stream.
        #   @return [String]

      end

      # Contains the output of DeleteDeliveryStream.
      class DeleteDeliveryStreamOutput < Aws::EmptyStructure; end

      # Contains information about a delivery stream.
      class DeliveryStreamDescription < Struct.new(
        :delivery_stream_name,
        :delivery_stream_arn,
        :delivery_stream_status,
        :version_id,
        :create_timestamp,
        :last_update_timestamp,
        :destinations,
        :has_more_destinations)

        include Aws::Structure

        # @!attribute [rw] delivery_stream_name
        #   The name of the delivery stream.
        #   @return [String]

        # @!attribute [rw] delivery_stream_arn
        #   The Amazon Resource Name (ARN) of the delivery stream.
        #   @return [String]

        # @!attribute [rw] delivery_stream_status
        #   The status of the delivery stream.
        #   @return [String]

        # @!attribute [rw] version_id
        #   Used when calling the UpdateDestination operation. Each time the
        #   destination is updated for the delivery stream, the VersionId is
        #   changed, and the current VersionId is required when updating the
        #   destination. This is so that the service knows it is applying the
        #   changes to the correct version of the delivery stream.
        #   @return [String]

        # @!attribute [rw] create_timestamp
        #   The date and time that the delivery stream was created.
        #   @return [Time]

        # @!attribute [rw] last_update_timestamp
        #   The date and time that the delivery stream was last updated.
        #   @return [Time]

        # @!attribute [rw] destinations
        #   The destinations.
        #   @return [Array<Types::DestinationDescription>]

        # @!attribute [rw] has_more_destinations
        #   Indicates whether there are more destinations available to list.
        #   @return [Boolean]

      end

      # Contains the parameters for DescribeDeliveryStream.
      # @note When making an API call, pass DescribeDeliveryStreamInput
      #   data as a hash:
      #
      #       {
      #         delivery_stream_name: "DeliveryStreamName", # required
      #         limit: 1,
      #         exclusive_start_destination_id: "DestinationId",
      #       }
      class DescribeDeliveryStreamInput < Struct.new(
        :delivery_stream_name,
        :limit,
        :exclusive_start_destination_id)

        include Aws::Structure

        # @!attribute [rw] delivery_stream_name
        #   The name of the delivery stream.
        #   @return [String]

        # @!attribute [rw] limit
        #   The limit on the number of destinations to return. Currently, you
        #   can have one destination per delivery stream.
        #   @return [Integer]

        # @!attribute [rw] exclusive_start_destination_id
        #   Specifies the destination ID to start returning the destination
        #   information. Currently Firehose supports one destination per
        #   delivery stream.
        #   @return [String]

      end

      # Contains the output of DescribeDeliveryStream.
      class DescribeDeliveryStreamOutput < Struct.new(
        :delivery_stream_description)

        include Aws::Structure

        # @!attribute [rw] delivery_stream_description
        #   Information about the delivery stream.
        #   @return [Types::DeliveryStreamDescription]

      end

      # Describes the destination for a delivery stream.
      class DestinationDescription < Struct.new(
        :destination_id,
        :s3_destination_description,
        :redshift_destination_description,
        :elasticsearch_destination_description)

        include Aws::Structure

        # @!attribute [rw] destination_id
        #   The ID of the destination.
        #   @return [String]

        # @!attribute [rw] s3_destination_description
        #   The Amazon S3 destination.
        #   @return [Types::S3DestinationDescription]

        # @!attribute [rw] redshift_destination_description
        #   The destination in Amazon Redshift.
        #   @return [Types::RedshiftDestinationDescription]

        # @!attribute [rw] elasticsearch_destination_description
        #   The destination in Amazon ES.
        #   @return [Types::ElasticsearchDestinationDescription]

      end

      # Describes the buffering to perform before delivering data to the
      # Amazon ES destination.
      # @note When making an API call, pass ElasticsearchBufferingHints
      #   data as a hash:
      #
      #       {
      #         interval_in_seconds: 1,
      #         size_in_m_bs: 1,
      #       }
      class ElasticsearchBufferingHints < Struct.new(
        :interval_in_seconds,
        :size_in_m_bs)

        include Aws::Structure

        # @!attribute [rw] interval_in_seconds
        #   Buffer incoming data for the specified period of time, in seconds,
        #   before delivering it to the destination. The default value is 300 (5
        #   minutes).
        #   @return [Integer]

        # @!attribute [rw] size_in_m_bs
        #   Buffer incoming data to the specified size, in MBs, before
        #   delivering it to the destination. The default value is 5.
        #
        #   We recommend setting **SizeInMBs** to a value greater than the
        #   amount of data you typically ingest into the delivery stream in 10
        #   seconds. For example, if you typically ingest data at 1 MB/sec, set
        #   **SizeInMBs** to be 10 MB or higher.
        #   @return [Integer]

      end

      # Describes the configuration of a destination in Amazon ES.
      # @note When making an API call, pass ElasticsearchDestinationConfiguration
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
      #         cloud_watch_logging_options: {
      #           enabled: false,
      #           log_group_name: "LogGroupName",
      #           log_stream_name: "LogStreamName",
      #         },
      #       }
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
        :cloud_watch_logging_options)

        include Aws::Structure

        # @!attribute [rw] role_arn
        #   The ARN of the IAM role to be assumed by Firehose for calling the
        #   Amazon ES Configuration API and for indexing documents. For more
        #   information, see [Amazon S3 Bucket Access][1].
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/firehose/latest/dev/controlling-access.html#using-iam-s3
        #   @return [String]

        # @!attribute [rw] domain_arn
        #   The ARN of the Amazon ES domain. The IAM role must have permission
        #   for `DescribeElasticsearchDomain`, `DescribeElasticsearchDomains` ,
        #   and `DescribeElasticsearchDomainConfig` after assuming **RoleARN**.
        #   @return [String]

        # @!attribute [rw] index_name
        #   The Elasticsearch index name.
        #   @return [String]

        # @!attribute [rw] type_name
        #   The Elasticsearch type name.
        #   @return [String]

        # @!attribute [rw] index_rotation_period
        #   The Elasticsearch index rotation period. Index rotation appends a
        #   timestamp to the IndexName to facilitate expiration of old data. For
        #   more information, see [Index Rotation for Amazon Elasticsearch
        #   Service Destination][1]. Default value is `OneDay`.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html#es-index-rotation
        #   @return [String]

        # @!attribute [rw] buffering_hints
        #   Buffering options. If no value is specified,
        #   **ElasticsearchBufferingHints** object default values are used.
        #   @return [Types::ElasticsearchBufferingHints]

        # @!attribute [rw] retry_options
        #   Configures retry behavior in the event that Firehose is unable to
        #   deliver documents to Amazon ES. Default value is 300 (5 minutes).
        #   @return [Types::ElasticsearchRetryOptions]

        # @!attribute [rw] s3_backup_mode
        #   Defines how documents should be delivered to Amazon S3. When set to
        #   FailedDocumentsOnly, Firehose writes any documents that could not be
        #   indexed to the configured Amazon S3 destination, with
        #   elasticsearch-failed/ appended to the key prefix. When set to
        #   AllDocuments, Firehose delivers all incoming records to Amazon S3,
        #   and also writes failed documents with elasticsearch-failed/ appended
        #   to the prefix. For more information, see [Amazon S3 Backup for
        #   Amazon Elasticsearch Service Destination][1]. Default value is
        #   FailedDocumentsOnly.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html#es-s3-backup
        #   @return [String]

        # @!attribute [rw] s3_configuration
        #   Describes the configuration of a destination in Amazon S3.
        #   @return [Types::S3DestinationConfiguration]

        # @!attribute [rw] cloud_watch_logging_options
        #   Describes CloudWatch logging options for your delivery stream.
        #   @return [Types::CloudWatchLoggingOptions]

      end

      # The destination description in Amazon ES.
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
        :cloud_watch_logging_options)

        include Aws::Structure

        # @!attribute [rw] role_arn
        #   The ARN of the AWS credentials.
        #   @return [String]

        # @!attribute [rw] domain_arn
        #   The ARN of the Amazon ES domain.
        #   @return [String]

        # @!attribute [rw] index_name
        #   The Elasticsearch index name.
        #   @return [String]

        # @!attribute [rw] type_name
        #   The Elasticsearch type name.
        #   @return [String]

        # @!attribute [rw] index_rotation_period
        #   The Elasticsearch index rotation period
        #   @return [String]

        # @!attribute [rw] buffering_hints
        #   Buffering options.
        #   @return [Types::ElasticsearchBufferingHints]

        # @!attribute [rw] retry_options
        #   Elasticsearch retry options.
        #   @return [Types::ElasticsearchRetryOptions]

        # @!attribute [rw] s3_backup_mode
        #   Amazon S3 backup mode.
        #   @return [String]

        # @!attribute [rw] s3_destination_description
        #   Describes a destination in Amazon S3.
        #   @return [Types::S3DestinationDescription]

        # @!attribute [rw] cloud_watch_logging_options
        #   CloudWatch logging options.
        #   @return [Types::CloudWatchLoggingOptions]

      end

      # Describes an update for a destination in Amazon ES.
      # @note When making an API call, pass ElasticsearchDestinationUpdate
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
      #         cloud_watch_logging_options: {
      #           enabled: false,
      #           log_group_name: "LogGroupName",
      #           log_stream_name: "LogStreamName",
      #         },
      #       }
      class ElasticsearchDestinationUpdate < Struct.new(
        :role_arn,
        :domain_arn,
        :index_name,
        :type_name,
        :index_rotation_period,
        :buffering_hints,
        :retry_options,
        :s3_update,
        :cloud_watch_logging_options)

        include Aws::Structure

        # @!attribute [rw] role_arn
        #   The ARN of the IAM role to be assumed by Firehose for calling the
        #   Amazon ES Configuration API and for indexing documents. For more
        #   information, see [Amazon S3 Bucket Access][1].
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/firehose/latest/dev/controlling-access.html#using-iam-s3
        #   @return [String]

        # @!attribute [rw] domain_arn
        #   The ARN of the Amazon ES domain. The IAM role must have permission
        #   for DescribeElasticsearchDomain, DescribeElasticsearchDomains , and
        #   DescribeElasticsearchDomainConfig after assuming **RoleARN**.
        #   @return [String]

        # @!attribute [rw] index_name
        #   The Elasticsearch index name.
        #   @return [String]

        # @!attribute [rw] type_name
        #   The Elasticsearch type name.
        #   @return [String]

        # @!attribute [rw] index_rotation_period
        #   The Elasticsearch index rotation period. Index rotation appends a
        #   timestamp to the IndexName to facilitate the expiration of old data.
        #   For more information, see [Index Rotation for Amazon Elasticsearch
        #   Service Destination][1]. Default value is `OneDay`.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html#es-index-rotation
        #   @return [String]

        # @!attribute [rw] buffering_hints
        #   Buffering options. If no value is specified,
        #   **ElasticsearchBufferingHints** object default values are used.
        #   @return [Types::ElasticsearchBufferingHints]

        # @!attribute [rw] retry_options
        #   Configures retry behavior in the event that Firehose is unable to
        #   deliver documents to Amazon ES. Default value is 300 (5 minutes).
        #   @return [Types::ElasticsearchRetryOptions]

        # @!attribute [rw] s3_update
        #   Describes an update for a destination in Amazon S3.
        #   @return [Types::S3DestinationUpdate]

        # @!attribute [rw] cloud_watch_logging_options
        #   Describes CloudWatch logging options for your delivery stream.
        #   @return [Types::CloudWatchLoggingOptions]

      end

      # Configures retry behavior in the event that Firehose is unable to
      # deliver documents to Amazon ES.
      # @note When making an API call, pass ElasticsearchRetryOptions
      #   data as a hash:
      #
      #       {
      #         duration_in_seconds: 1,
      #       }
      class ElasticsearchRetryOptions < Struct.new(
        :duration_in_seconds)

        include Aws::Structure

        # @!attribute [rw] duration_in_seconds
        #   After an initial failure to deliver to Amazon ES, the total amount
        #   of time during which Firehose re-attempts delivery (including the
        #   first attempt). After this time has elapsed, the failed documents
        #   are written to Amazon S3. Default value is 300 seconds (5 minutes).
        #   A value of 0 (zero) results in no retries.
        #   @return [Integer]

      end

      # Describes the encryption for a destination in Amazon S3.
      # @note When making an API call, pass EncryptionConfiguration
      #   data as a hash:
      #
      #       {
      #         no_encryption_config: "NoEncryption", # accepts NoEncryption
      #         kms_encryption_config: {
      #           awskms_key_arn: "AWSKMSKeyARN", # required
      #         },
      #       }
      class EncryptionConfiguration < Struct.new(
        :no_encryption_config,
        :kms_encryption_config)

        include Aws::Structure

        # @!attribute [rw] no_encryption_config
        #   Specifically override existing encryption information to ensure no
        #   encryption is used.
        #   @return [String]

        # @!attribute [rw] kms_encryption_config
        #   The encryption key.
        #   @return [Types::KMSEncryptionConfig]

      end

      # Describes an encryption key for a destination in Amazon S3.
      # @note When making an API call, pass KMSEncryptionConfig
      #   data as a hash:
      #
      #       {
      #         awskms_key_arn: "AWSKMSKeyARN", # required
      #       }
      class KMSEncryptionConfig < Struct.new(
        :awskms_key_arn)

        include Aws::Structure

        # @!attribute [rw] awskms_key_arn
        #   The ARN of the encryption key. Must belong to the same region as the
        #   destination Amazon S3 bucket.
        #   @return [String]

      end

      # Contains the parameters for ListDeliveryStreams.
      # @note When making an API call, pass ListDeliveryStreamsInput
      #   data as a hash:
      #
      #       {
      #         limit: 1,
      #         exclusive_start_delivery_stream_name: "DeliveryStreamName",
      #       }
      class ListDeliveryStreamsInput < Struct.new(
        :limit,
        :exclusive_start_delivery_stream_name)

        include Aws::Structure

        # @!attribute [rw] limit
        #   The maximum number of delivery streams to list.
        #   @return [Integer]

        # @!attribute [rw] exclusive_start_delivery_stream_name
        #   The name of the delivery stream to start the list with.
        #   @return [String]

      end

      # Contains the output of ListDeliveryStreams.
      class ListDeliveryStreamsOutput < Struct.new(
        :delivery_stream_names,
        :has_more_delivery_streams)

        include Aws::Structure

        # @!attribute [rw] delivery_stream_names
        #   The names of the delivery streams.
        #   @return [Array<String>]

        # @!attribute [rw] has_more_delivery_streams
        #   Indicates whether there are more delivery streams available to list.
        #   @return [Boolean]

      end

      # Contains the parameters for PutRecordBatch.
      # @note When making an API call, pass PutRecordBatchInput
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
      class PutRecordBatchInput < Struct.new(
        :delivery_stream_name,
        :records)

        include Aws::Structure

        # @!attribute [rw] delivery_stream_name
        #   The name of the delivery stream.
        #   @return [String]

        # @!attribute [rw] records
        #   One or more records.
        #   @return [Array<Types::Record>]

      end

      # Contains the output of PutRecordBatch.
      class PutRecordBatchOutput < Struct.new(
        :failed_put_count,
        :request_responses)

        include Aws::Structure

        # @!attribute [rw] failed_put_count
        #   The number of unsuccessfully written records.
        #   @return [Integer]

        # @!attribute [rw] request_responses
        #   The results for the individual records. The index of each element
        #   matches the same index in which records were sent.
        #   @return [Array<Types::PutRecordBatchResponseEntry>]

      end

      # Contains the result for an individual record from a PutRecordBatch
      # request. If the record is successfully added to your delivery stream,
      # it receives a record ID. If the record fails to be added to your
      # delivery stream, the result includes an error code and an error
      # message.
      class PutRecordBatchResponseEntry < Struct.new(
        :record_id,
        :error_code,
        :error_message)

        include Aws::Structure

        # @!attribute [rw] record_id
        #   The ID of the record.
        #   @return [String]

        # @!attribute [rw] error_code
        #   The error code for an individual record result.
        #   @return [String]

        # @!attribute [rw] error_message
        #   The error message for an individual record result.
        #   @return [String]

      end

      # Contains the parameters for PutRecord.
      # @note When making an API call, pass PutRecordInput
      #   data as a hash:
      #
      #       {
      #         delivery_stream_name: "DeliveryStreamName", # required
      #         record: { # required
      #           data: "data", # required
      #         },
      #       }
      class PutRecordInput < Struct.new(
        :delivery_stream_name,
        :record)

        include Aws::Structure

        # @!attribute [rw] delivery_stream_name
        #   The name of the delivery stream.
        #   @return [String]

        # @!attribute [rw] record
        #   The record.
        #   @return [Types::Record]

      end

      # Contains the output of PutRecord.
      class PutRecordOutput < Struct.new(
        :record_id)

        include Aws::Structure

        # @!attribute [rw] record_id
        #   The ID of the record.
        #   @return [String]

      end

      # The unit of data in a delivery stream.
      # @note When making an API call, pass Record
      #   data as a hash:
      #
      #       {
      #         data: "data", # required
      #       }
      class Record < Struct.new(
        :data)

        include Aws::Structure

        # @!attribute [rw] data
        #   The data blob, which is base64-encoded when the blob is serialized.
        #   The maximum size of the data blob, before base64-encoding, is 1,000
        #   KB.
        #   @return [String]

      end

      # Describes the configuration of a destination in Amazon Redshift.
      # @note When making an API call, pass RedshiftDestinationConfiguration
      #   data as a hash:
      #
      #       {
      #         role_arn: "RoleARN", # required
      #         cluster_jdbcurl: "ClusterJDBCURL", # required
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
      #         cloud_watch_logging_options: {
      #           enabled: false,
      #           log_group_name: "LogGroupName",
      #           log_stream_name: "LogStreamName",
      #         },
      #       }
      class RedshiftDestinationConfiguration < Struct.new(
        :role_arn,
        :cluster_jdbcurl,
        :copy_command,
        :username,
        :password,
        :retry_options,
        :s3_configuration,
        :cloud_watch_logging_options)

        include Aws::Structure

        # @!attribute [rw] role_arn
        #   The ARN of the AWS credentials.
        #   @return [String]

        # @!attribute [rw] cluster_jdbcurl
        #   The database connection string.
        #   @return [String]

        # @!attribute [rw] copy_command
        #   The `COPY` command.
        #   @return [Types::CopyCommand]

        # @!attribute [rw] username
        #   The name of the user.
        #   @return [String]

        # @!attribute [rw] password
        #   The user password.
        #   @return [String]

        # @!attribute [rw] retry_options
        #   Configures retry behavior in the event that Firehose is unable to
        #   deliver documents to Amazon Redshift. Default value is 3600 (60
        #   minutes).
        #   @return [Types::RedshiftRetryOptions]

        # @!attribute [rw] s3_configuration
        #   The S3 configuration for the intermediate location from which Amazon
        #   Redshift obtains data. Restrictions are described in the topic for
        #   CreateDeliveryStream.
        #
        #   The compression formats `SNAPPY` or `ZIP` cannot be specified in
        #   **RedshiftDestinationConfiguration.S3Configuration** because the
        #   Amazon Redshift `COPY` operation that reads from the S3 bucket
        #   doesn\'t support these compression formats.
        #   @return [Types::S3DestinationConfiguration]

        # @!attribute [rw] cloud_watch_logging_options
        #   Describes CloudWatch logging options for your delivery stream.
        #   @return [Types::CloudWatchLoggingOptions]

      end

      # Describes a destination in Amazon Redshift.
      class RedshiftDestinationDescription < Struct.new(
        :role_arn,
        :cluster_jdbcurl,
        :copy_command,
        :username,
        :retry_options,
        :s3_destination_description,
        :cloud_watch_logging_options)

        include Aws::Structure

        # @!attribute [rw] role_arn
        #   The ARN of the AWS credentials.
        #   @return [String]

        # @!attribute [rw] cluster_jdbcurl
        #   The database connection string.
        #   @return [String]

        # @!attribute [rw] copy_command
        #   The `COPY` command.
        #   @return [Types::CopyCommand]

        # @!attribute [rw] username
        #   The name of the user.
        #   @return [String]

        # @!attribute [rw] retry_options
        #   Configures retry behavior in the event that Firehose is unable to
        #   deliver documents to Amazon Redshift. Default value is 3600 (60
        #   minutes).
        #   @return [Types::RedshiftRetryOptions]

        # @!attribute [rw] s3_destination_description
        #   The Amazon S3 destination.
        #   @return [Types::S3DestinationDescription]

        # @!attribute [rw] cloud_watch_logging_options
        #   Describes CloudWatch logging options for your delivery stream.
        #   @return [Types::CloudWatchLoggingOptions]

      end

      # Describes an update for a destination in Amazon Redshift.
      # @note When making an API call, pass RedshiftDestinationUpdate
      #   data as a hash:
      #
      #       {
      #         role_arn: "RoleARN",
      #         cluster_jdbcurl: "ClusterJDBCURL",
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
      #         cloud_watch_logging_options: {
      #           enabled: false,
      #           log_group_name: "LogGroupName",
      #           log_stream_name: "LogStreamName",
      #         },
      #       }
      class RedshiftDestinationUpdate < Struct.new(
        :role_arn,
        :cluster_jdbcurl,
        :copy_command,
        :username,
        :password,
        :retry_options,
        :s3_update,
        :cloud_watch_logging_options)

        include Aws::Structure

        # @!attribute [rw] role_arn
        #   The ARN of the AWS credentials.
        #   @return [String]

        # @!attribute [rw] cluster_jdbcurl
        #   The database connection string.
        #   @return [String]

        # @!attribute [rw] copy_command
        #   The `COPY` command.
        #   @return [Types::CopyCommand]

        # @!attribute [rw] username
        #   The name of the user.
        #   @return [String]

        # @!attribute [rw] password
        #   The user password.
        #   @return [String]

        # @!attribute [rw] retry_options
        #   Configures retry behavior in the event that Firehose is unable to
        #   deliver documents to Amazon Redshift. Default value is 3600 (60
        #   minutes).
        #   @return [Types::RedshiftRetryOptions]

        # @!attribute [rw] s3_update
        #   The Amazon S3 destination.
        #
        #   The compression formats `SNAPPY` or `ZIP` cannot be specified in
        #   **RedshiftDestinationUpdate.S3Update** because the Amazon Redshift
        #   `COPY` operation that reads from the S3 bucket doesn\'t support
        #   these compression formats.
        #   @return [Types::S3DestinationUpdate]

        # @!attribute [rw] cloud_watch_logging_options
        #   Describes CloudWatch logging options for your delivery stream.
        #   @return [Types::CloudWatchLoggingOptions]

      end

      # Configures retry behavior in the event that Firehose is unable to
      # deliver documents to Amazon Redshift.
      # @note When making an API call, pass RedshiftRetryOptions
      #   data as a hash:
      #
      #       {
      #         duration_in_seconds: 1,
      #       }
      class RedshiftRetryOptions < Struct.new(
        :duration_in_seconds)

        include Aws::Structure

        # @!attribute [rw] duration_in_seconds
        #   The length of time during which Firehose retries delivery after a
        #   failure, starting from the initial request and including the first
        #   attempt. The default value is 3600 seconds (60 minutes). Firehose
        #   does not retry if the value of `DurationInSeconds` is 0 (zero) or if
        #   the first delivery attempt takes longer than the current value.
        #   @return [Integer]

      end

      # Describes the configuration of a destination in Amazon S3.
      # @note When making an API call, pass S3DestinationConfiguration
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
      class S3DestinationConfiguration < Struct.new(
        :role_arn,
        :bucket_arn,
        :prefix,
        :buffering_hints,
        :compression_format,
        :encryption_configuration,
        :cloud_watch_logging_options)

        include Aws::Structure

        # @!attribute [rw] role_arn
        #   The ARN of the AWS credentials.
        #   @return [String]

        # @!attribute [rw] bucket_arn
        #   The ARN of the S3 bucket.
        #   @return [String]

        # @!attribute [rw] prefix
        #   The \"YYYY/MM/DD/HH\" time format prefix is automatically used for
        #   delivered S3 files. You can specify an extra prefix to be added in
        #   front of the time format prefix. Note that if the prefix ends with a
        #   slash, it appears as a folder in the S3 bucket. For more
        #   information, see [Amazon S3 Object Name Format][1] in the [Amazon
        #   Kinesis Firehose Developer Guide][2].
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html
        #   [2]: http://docs.aws.amazon.com/firehose/latest/dev/
        #   @return [String]

        # @!attribute [rw] buffering_hints
        #   The buffering option. If no value is specified, **BufferingHints**
        #   object default values are used.
        #   @return [Types::BufferingHints]

        # @!attribute [rw] compression_format
        #   The compression format. If no value is specified, the default is
        #   `UNCOMPRESSED`.
        #
        #   The compression formats `SNAPPY` or `ZIP` cannot be specified for
        #   Amazon Redshift destinations because they are not supported by the
        #   Amazon Redshift `COPY` operation that reads from the S3 bucket.
        #   @return [String]

        # @!attribute [rw] encryption_configuration
        #   The encryption configuration. If no value is specified, the default
        #   is no encryption.
        #   @return [Types::EncryptionConfiguration]

        # @!attribute [rw] cloud_watch_logging_options
        #   Describes CloudWatch logging options for your delivery stream.
        #   @return [Types::CloudWatchLoggingOptions]

      end

      # Describes a destination in Amazon S3.
      class S3DestinationDescription < Struct.new(
        :role_arn,
        :bucket_arn,
        :prefix,
        :buffering_hints,
        :compression_format,
        :encryption_configuration,
        :cloud_watch_logging_options)

        include Aws::Structure

        # @!attribute [rw] role_arn
        #   The ARN of the AWS credentials.
        #   @return [String]

        # @!attribute [rw] bucket_arn
        #   The ARN of the S3 bucket.
        #   @return [String]

        # @!attribute [rw] prefix
        #   The \"YYYY/MM/DD/HH\" time format prefix is automatically used for
        #   delivered S3 files. You can specify an extra prefix to be added in
        #   front of the time format prefix. Note that if the prefix ends with a
        #   slash, it appears as a folder in the S3 bucket. For more
        #   information, see [Amazon S3 Object Name Format][1] in the [Amazon
        #   Kinesis Firehose Developer Guide][2].
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html
        #   [2]: http://docs.aws.amazon.com/firehose/latest/dev/
        #   @return [String]

        # @!attribute [rw] buffering_hints
        #   The buffering option. If no value is specified, **BufferingHints**
        #   object default values are used.
        #   @return [Types::BufferingHints]

        # @!attribute [rw] compression_format
        #   The compression format. If no value is specified, the default is
        #   `NOCOMPRESSION`.
        #   @return [String]

        # @!attribute [rw] encryption_configuration
        #   The encryption configuration. If no value is specified, the default
        #   is no encryption.
        #   @return [Types::EncryptionConfiguration]

        # @!attribute [rw] cloud_watch_logging_options
        #   Describes CloudWatch logging options for your delivery stream.
        #   @return [Types::CloudWatchLoggingOptions]

      end

      # Describes an update for a destination in Amazon S3.
      # @note When making an API call, pass S3DestinationUpdate
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
      class S3DestinationUpdate < Struct.new(
        :role_arn,
        :bucket_arn,
        :prefix,
        :buffering_hints,
        :compression_format,
        :encryption_configuration,
        :cloud_watch_logging_options)

        include Aws::Structure

        # @!attribute [rw] role_arn
        #   The ARN of the AWS credentials.
        #   @return [String]

        # @!attribute [rw] bucket_arn
        #   The ARN of the S3 bucket.
        #   @return [String]

        # @!attribute [rw] prefix
        #   The \"YYYY/MM/DD/HH\" time format prefix is automatically used for
        #   delivered S3 files. You can specify an extra prefix to be added in
        #   front of the time format prefix. Note that if the prefix ends with a
        #   slash, it appears as a folder in the S3 bucket. For more
        #   information, see [Amazon S3 Object Name Format][1] in the [Amazon
        #   Kinesis Firehose Developer Guide][2].
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/firehose/latest/dev/basic-deliver.html
        #   [2]: http://docs.aws.amazon.com/firehose/latest/dev/
        #   @return [String]

        # @!attribute [rw] buffering_hints
        #   The buffering option. If no value is specified, **BufferingHints**
        #   object default values are used.
        #   @return [Types::BufferingHints]

        # @!attribute [rw] compression_format
        #   The compression format. If no value is specified, the default is
        #   `NOCOMPRESSION`.
        #
        #   The compression formats `SNAPPY` or `ZIP` cannot be specified for
        #   Amazon Redshift destinations because they are not supported by the
        #   Amazon Redshift `COPY` operation that reads from the S3 bucket.
        #   @return [String]

        # @!attribute [rw] encryption_configuration
        #   The encryption configuration. If no value is specified, the default
        #   is no encryption.
        #   @return [Types::EncryptionConfiguration]

        # @!attribute [rw] cloud_watch_logging_options
        #   Describes CloudWatch logging options for your delivery stream.
        #   @return [Types::CloudWatchLoggingOptions]

      end

      # Contains the parameters for UpdateDestination.
      # @note When making an API call, pass UpdateDestinationInput
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
      #         redshift_destination_update: {
      #           role_arn: "RoleARN",
      #           cluster_jdbcurl: "ClusterJDBCURL",
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
      #           cloud_watch_logging_options: {
      #             enabled: false,
      #             log_group_name: "LogGroupName",
      #             log_stream_name: "LogStreamName",
      #           },
      #         },
      #       }
      class UpdateDestinationInput < Struct.new(
        :delivery_stream_name,
        :current_delivery_stream_version_id,
        :destination_id,
        :s3_destination_update,
        :redshift_destination_update,
        :elasticsearch_destination_update)

        include Aws::Structure

        # @!attribute [rw] delivery_stream_name
        #   The name of the delivery stream.
        #   @return [String]

        # @!attribute [rw] current_delivery_stream_version_id
        #   Obtain this value from the **VersionId** result of the
        #   DeliveryStreamDescription operation. This value is required, and
        #   helps the service to perform conditional operations. For example, if
        #   there is a interleaving update and this value is null, then the
        #   update destination fails. After the update is successful, the
        #   **VersionId** value is updated. The service then performs a merge of
        #   the old configuration with the new configuration.
        #   @return [String]

        # @!attribute [rw] destination_id
        #   The ID of the destination.
        #   @return [String]

        # @!attribute [rw] s3_destination_update
        #   Describes an update for a destination in Amazon S3.
        #   @return [Types::S3DestinationUpdate]

        # @!attribute [rw] redshift_destination_update
        #   Describes an update for a destination in Amazon Redshift.
        #   @return [Types::RedshiftDestinationUpdate]

        # @!attribute [rw] elasticsearch_destination_update
        #   Describes an update for a destination in Amazon ES.
        #   @return [Types::ElasticsearchDestinationUpdate]

      end

      # Contains the output of UpdateDestination.
      class UpdateDestinationOutput < Aws::EmptyStructure; end

    end
  end
end
