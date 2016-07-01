# WARNING ABOUT GENERATED CODE
#
# The AWS SDK for Ruby is largely generated from JSON service definitions. Edits
# made against this file will be lost the next time the SDK updates.  To resolve
# an issue with generated code, a change is likely needed in the generator or
# in one of the service JSON definitions.
#
# * https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-code-generator
# * https://github.com/aws/aws-sdk-ruby/tree/master/apis
#
# Open a GitHub issue if you have questions before making changes.  Pull
# requests against this file will be automatically closed.
#
# WARNING ABOUT GENERATED CODE
module Aws
  module Firehose
    # @api private
    module ClientApi

      include Seahorse::Model

      AWSKMSKeyARN = Shapes::StringShape.new(name: 'AWSKMSKeyARN')
      BooleanObject = Shapes::BooleanShape.new(name: 'BooleanObject')
      BucketARN = Shapes::StringShape.new(name: 'BucketARN')
      BufferingHints = Shapes::StructureShape.new(name: 'BufferingHints')
      CloudWatchLoggingOptions = Shapes::StructureShape.new(name: 'CloudWatchLoggingOptions')
      ClusterJDBCURL = Shapes::StringShape.new(name: 'ClusterJDBCURL')
      CompressionFormat = Shapes::StringShape.new(name: 'CompressionFormat')
      ConcurrentModificationException = Shapes::StructureShape.new(name: 'ConcurrentModificationException')
      CopyCommand = Shapes::StructureShape.new(name: 'CopyCommand')
      CopyOptions = Shapes::StringShape.new(name: 'CopyOptions')
      CreateDeliveryStreamInput = Shapes::StructureShape.new(name: 'CreateDeliveryStreamInput')
      CreateDeliveryStreamOutput = Shapes::StructureShape.new(name: 'CreateDeliveryStreamOutput')
      Data = Shapes::BlobShape.new(name: 'Data')
      DataTableColumns = Shapes::StringShape.new(name: 'DataTableColumns')
      DataTableName = Shapes::StringShape.new(name: 'DataTableName')
      DeleteDeliveryStreamInput = Shapes::StructureShape.new(name: 'DeleteDeliveryStreamInput')
      DeleteDeliveryStreamOutput = Shapes::StructureShape.new(name: 'DeleteDeliveryStreamOutput')
      DeliveryStreamARN = Shapes::StringShape.new(name: 'DeliveryStreamARN')
      DeliveryStreamDescription = Shapes::StructureShape.new(name: 'DeliveryStreamDescription')
      DeliveryStreamName = Shapes::StringShape.new(name: 'DeliveryStreamName')
      DeliveryStreamNameList = Shapes::ListShape.new(name: 'DeliveryStreamNameList')
      DeliveryStreamStatus = Shapes::StringShape.new(name: 'DeliveryStreamStatus')
      DeliveryStreamVersionId = Shapes::StringShape.new(name: 'DeliveryStreamVersionId')
      DescribeDeliveryStreamInput = Shapes::StructureShape.new(name: 'DescribeDeliveryStreamInput')
      DescribeDeliveryStreamInputLimit = Shapes::IntegerShape.new(name: 'DescribeDeliveryStreamInputLimit')
      DescribeDeliveryStreamOutput = Shapes::StructureShape.new(name: 'DescribeDeliveryStreamOutput')
      DestinationDescription = Shapes::StructureShape.new(name: 'DestinationDescription')
      DestinationDescriptionList = Shapes::ListShape.new(name: 'DestinationDescriptionList')
      DestinationId = Shapes::StringShape.new(name: 'DestinationId')
      ElasticsearchBufferingHints = Shapes::StructureShape.new(name: 'ElasticsearchBufferingHints')
      ElasticsearchBufferingIntervalInSeconds = Shapes::IntegerShape.new(name: 'ElasticsearchBufferingIntervalInSeconds')
      ElasticsearchBufferingSizeInMBs = Shapes::IntegerShape.new(name: 'ElasticsearchBufferingSizeInMBs')
      ElasticsearchDestinationConfiguration = Shapes::StructureShape.new(name: 'ElasticsearchDestinationConfiguration')
      ElasticsearchDestinationDescription = Shapes::StructureShape.new(name: 'ElasticsearchDestinationDescription')
      ElasticsearchDestinationUpdate = Shapes::StructureShape.new(name: 'ElasticsearchDestinationUpdate')
      ElasticsearchDomainARN = Shapes::StringShape.new(name: 'ElasticsearchDomainARN')
      ElasticsearchIndexName = Shapes::StringShape.new(name: 'ElasticsearchIndexName')
      ElasticsearchIndexRotationPeriod = Shapes::StringShape.new(name: 'ElasticsearchIndexRotationPeriod')
      ElasticsearchRetryDurationInSeconds = Shapes::IntegerShape.new(name: 'ElasticsearchRetryDurationInSeconds')
      ElasticsearchRetryOptions = Shapes::StructureShape.new(name: 'ElasticsearchRetryOptions')
      ElasticsearchS3BackupMode = Shapes::StringShape.new(name: 'ElasticsearchS3BackupMode')
      ElasticsearchTypeName = Shapes::StringShape.new(name: 'ElasticsearchTypeName')
      EncryptionConfiguration = Shapes::StructureShape.new(name: 'EncryptionConfiguration')
      ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
      ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
      IntervalInSeconds = Shapes::IntegerShape.new(name: 'IntervalInSeconds')
      InvalidArgumentException = Shapes::StructureShape.new(name: 'InvalidArgumentException')
      KMSEncryptionConfig = Shapes::StructureShape.new(name: 'KMSEncryptionConfig')
      LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
      ListDeliveryStreamsInput = Shapes::StructureShape.new(name: 'ListDeliveryStreamsInput')
      ListDeliveryStreamsInputLimit = Shapes::IntegerShape.new(name: 'ListDeliveryStreamsInputLimit')
      ListDeliveryStreamsOutput = Shapes::StructureShape.new(name: 'ListDeliveryStreamsOutput')
      LogGroupName = Shapes::StringShape.new(name: 'LogGroupName')
      LogStreamName = Shapes::StringShape.new(name: 'LogStreamName')
      NoEncryptionConfig = Shapes::StringShape.new(name: 'NoEncryptionConfig')
      NonNegativeIntegerObject = Shapes::IntegerShape.new(name: 'NonNegativeIntegerObject')
      Password = Shapes::StringShape.new(name: 'Password')
      Prefix = Shapes::StringShape.new(name: 'Prefix')
      PutRecordBatchInput = Shapes::StructureShape.new(name: 'PutRecordBatchInput')
      PutRecordBatchOutput = Shapes::StructureShape.new(name: 'PutRecordBatchOutput')
      PutRecordBatchRequestEntryList = Shapes::ListShape.new(name: 'PutRecordBatchRequestEntryList')
      PutRecordBatchResponseEntry = Shapes::StructureShape.new(name: 'PutRecordBatchResponseEntry')
      PutRecordBatchResponseEntryList = Shapes::ListShape.new(name: 'PutRecordBatchResponseEntryList')
      PutRecordInput = Shapes::StructureShape.new(name: 'PutRecordInput')
      PutRecordOutput = Shapes::StructureShape.new(name: 'PutRecordOutput')
      PutResponseRecordId = Shapes::StringShape.new(name: 'PutResponseRecordId')
      Record = Shapes::StructureShape.new(name: 'Record')
      RedshiftDestinationConfiguration = Shapes::StructureShape.new(name: 'RedshiftDestinationConfiguration')
      RedshiftDestinationDescription = Shapes::StructureShape.new(name: 'RedshiftDestinationDescription')
      RedshiftDestinationUpdate = Shapes::StructureShape.new(name: 'RedshiftDestinationUpdate')
      RedshiftRetryDurationInSeconds = Shapes::IntegerShape.new(name: 'RedshiftRetryDurationInSeconds')
      RedshiftRetryOptions = Shapes::StructureShape.new(name: 'RedshiftRetryOptions')
      ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
      ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
      RoleARN = Shapes::StringShape.new(name: 'RoleARN')
      S3DestinationConfiguration = Shapes::StructureShape.new(name: 'S3DestinationConfiguration')
      S3DestinationDescription = Shapes::StructureShape.new(name: 'S3DestinationDescription')
      S3DestinationUpdate = Shapes::StructureShape.new(name: 'S3DestinationUpdate')
      ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
      SizeInMBs = Shapes::IntegerShape.new(name: 'SizeInMBs')
      Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
      UpdateDestinationInput = Shapes::StructureShape.new(name: 'UpdateDestinationInput')
      UpdateDestinationOutput = Shapes::StructureShape.new(name: 'UpdateDestinationOutput')
      Username = Shapes::StringShape.new(name: 'Username')

      BufferingHints.add_member(:size_in_m_bs, Shapes::ShapeRef.new(shape: SizeInMBs, location_name: "SizeInMBs"))
      BufferingHints.add_member(:interval_in_seconds, Shapes::ShapeRef.new(shape: IntervalInSeconds, location_name: "IntervalInSeconds"))
      BufferingHints.struct_class = Types::BufferingHints

      CloudWatchLoggingOptions.add_member(:enabled, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "Enabled"))
      CloudWatchLoggingOptions.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, location_name: "LogGroupName"))
      CloudWatchLoggingOptions.add_member(:log_stream_name, Shapes::ShapeRef.new(shape: LogStreamName, location_name: "LogStreamName"))
      CloudWatchLoggingOptions.struct_class = Types::CloudWatchLoggingOptions

      CopyCommand.add_member(:data_table_name, Shapes::ShapeRef.new(shape: DataTableName, required: true, location_name: "DataTableName"))
      CopyCommand.add_member(:data_table_columns, Shapes::ShapeRef.new(shape: DataTableColumns, location_name: "DataTableColumns"))
      CopyCommand.add_member(:copy_options, Shapes::ShapeRef.new(shape: CopyOptions, location_name: "CopyOptions"))
      CopyCommand.struct_class = Types::CopyCommand

      CreateDeliveryStreamInput.add_member(:delivery_stream_name, Shapes::ShapeRef.new(shape: DeliveryStreamName, required: true, location_name: "DeliveryStreamName"))
      CreateDeliveryStreamInput.add_member(:s3_destination_configuration, Shapes::ShapeRef.new(shape: S3DestinationConfiguration, location_name: "S3DestinationConfiguration"))
      CreateDeliveryStreamInput.add_member(:redshift_destination_configuration, Shapes::ShapeRef.new(shape: RedshiftDestinationConfiguration, location_name: "RedshiftDestinationConfiguration"))
      CreateDeliveryStreamInput.add_member(:elasticsearch_destination_configuration, Shapes::ShapeRef.new(shape: ElasticsearchDestinationConfiguration, location_name: "ElasticsearchDestinationConfiguration"))
      CreateDeliveryStreamInput.struct_class = Types::CreateDeliveryStreamInput

      CreateDeliveryStreamOutput.add_member(:delivery_stream_arn, Shapes::ShapeRef.new(shape: DeliveryStreamARN, location_name: "DeliveryStreamARN"))
      CreateDeliveryStreamOutput.struct_class = Types::CreateDeliveryStreamOutput

      DeleteDeliveryStreamInput.add_member(:delivery_stream_name, Shapes::ShapeRef.new(shape: DeliveryStreamName, required: true, location_name: "DeliveryStreamName"))
      DeleteDeliveryStreamInput.struct_class = Types::DeleteDeliveryStreamInput

      DeleteDeliveryStreamOutput.struct_class = Types::DeleteDeliveryStreamOutput

      DeliveryStreamDescription.add_member(:delivery_stream_name, Shapes::ShapeRef.new(shape: DeliveryStreamName, required: true, location_name: "DeliveryStreamName"))
      DeliveryStreamDescription.add_member(:delivery_stream_arn, Shapes::ShapeRef.new(shape: DeliveryStreamARN, required: true, location_name: "DeliveryStreamARN"))
      DeliveryStreamDescription.add_member(:delivery_stream_status, Shapes::ShapeRef.new(shape: DeliveryStreamStatus, required: true, location_name: "DeliveryStreamStatus"))
      DeliveryStreamDescription.add_member(:version_id, Shapes::ShapeRef.new(shape: DeliveryStreamVersionId, required: true, location_name: "VersionId"))
      DeliveryStreamDescription.add_member(:create_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreateTimestamp"))
      DeliveryStreamDescription.add_member(:last_update_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdateTimestamp"))
      DeliveryStreamDescription.add_member(:destinations, Shapes::ShapeRef.new(shape: DestinationDescriptionList, required: true, location_name: "Destinations"))
      DeliveryStreamDescription.add_member(:has_more_destinations, Shapes::ShapeRef.new(shape: BooleanObject, required: true, location_name: "HasMoreDestinations"))
      DeliveryStreamDescription.struct_class = Types::DeliveryStreamDescription

      DeliveryStreamNameList.member = Shapes::ShapeRef.new(shape: DeliveryStreamName)

      DescribeDeliveryStreamInput.add_member(:delivery_stream_name, Shapes::ShapeRef.new(shape: DeliveryStreamName, required: true, location_name: "DeliveryStreamName"))
      DescribeDeliveryStreamInput.add_member(:limit, Shapes::ShapeRef.new(shape: DescribeDeliveryStreamInputLimit, location_name: "Limit"))
      DescribeDeliveryStreamInput.add_member(:exclusive_start_destination_id, Shapes::ShapeRef.new(shape: DestinationId, location_name: "ExclusiveStartDestinationId"))
      DescribeDeliveryStreamInput.struct_class = Types::DescribeDeliveryStreamInput

      DescribeDeliveryStreamOutput.add_member(:delivery_stream_description, Shapes::ShapeRef.new(shape: DeliveryStreamDescription, required: true, location_name: "DeliveryStreamDescription"))
      DescribeDeliveryStreamOutput.struct_class = Types::DescribeDeliveryStreamOutput

      DestinationDescription.add_member(:destination_id, Shapes::ShapeRef.new(shape: DestinationId, required: true, location_name: "DestinationId"))
      DestinationDescription.add_member(:s3_destination_description, Shapes::ShapeRef.new(shape: S3DestinationDescription, location_name: "S3DestinationDescription"))
      DestinationDescription.add_member(:redshift_destination_description, Shapes::ShapeRef.new(shape: RedshiftDestinationDescription, location_name: "RedshiftDestinationDescription"))
      DestinationDescription.add_member(:elasticsearch_destination_description, Shapes::ShapeRef.new(shape: ElasticsearchDestinationDescription, location_name: "ElasticsearchDestinationDescription"))
      DestinationDescription.struct_class = Types::DestinationDescription

      DestinationDescriptionList.member = Shapes::ShapeRef.new(shape: DestinationDescription)

      ElasticsearchBufferingHints.add_member(:interval_in_seconds, Shapes::ShapeRef.new(shape: ElasticsearchBufferingIntervalInSeconds, location_name: "IntervalInSeconds"))
      ElasticsearchBufferingHints.add_member(:size_in_m_bs, Shapes::ShapeRef.new(shape: ElasticsearchBufferingSizeInMBs, location_name: "SizeInMBs"))
      ElasticsearchBufferingHints.struct_class = Types::ElasticsearchBufferingHints

      ElasticsearchDestinationConfiguration.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, required: true, location_name: "RoleARN"))
      ElasticsearchDestinationConfiguration.add_member(:domain_arn, Shapes::ShapeRef.new(shape: ElasticsearchDomainARN, required: true, location_name: "DomainARN"))
      ElasticsearchDestinationConfiguration.add_member(:index_name, Shapes::ShapeRef.new(shape: ElasticsearchIndexName, required: true, location_name: "IndexName"))
      ElasticsearchDestinationConfiguration.add_member(:type_name, Shapes::ShapeRef.new(shape: ElasticsearchTypeName, required: true, location_name: "TypeName"))
      ElasticsearchDestinationConfiguration.add_member(:index_rotation_period, Shapes::ShapeRef.new(shape: ElasticsearchIndexRotationPeriod, location_name: "IndexRotationPeriod"))
      ElasticsearchDestinationConfiguration.add_member(:buffering_hints, Shapes::ShapeRef.new(shape: ElasticsearchBufferingHints, location_name: "BufferingHints"))
      ElasticsearchDestinationConfiguration.add_member(:retry_options, Shapes::ShapeRef.new(shape: ElasticsearchRetryOptions, location_name: "RetryOptions"))
      ElasticsearchDestinationConfiguration.add_member(:s3_backup_mode, Shapes::ShapeRef.new(shape: ElasticsearchS3BackupMode, location_name: "S3BackupMode"))
      ElasticsearchDestinationConfiguration.add_member(:s3_configuration, Shapes::ShapeRef.new(shape: S3DestinationConfiguration, required: true, location_name: "S3Configuration"))
      ElasticsearchDestinationConfiguration.add_member(:cloud_watch_logging_options, Shapes::ShapeRef.new(shape: CloudWatchLoggingOptions, location_name: "CloudWatchLoggingOptions"))
      ElasticsearchDestinationConfiguration.struct_class = Types::ElasticsearchDestinationConfiguration

      ElasticsearchDestinationDescription.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
      ElasticsearchDestinationDescription.add_member(:domain_arn, Shapes::ShapeRef.new(shape: ElasticsearchDomainARN, location_name: "DomainARN"))
      ElasticsearchDestinationDescription.add_member(:index_name, Shapes::ShapeRef.new(shape: ElasticsearchIndexName, location_name: "IndexName"))
      ElasticsearchDestinationDescription.add_member(:type_name, Shapes::ShapeRef.new(shape: ElasticsearchTypeName, location_name: "TypeName"))
      ElasticsearchDestinationDescription.add_member(:index_rotation_period, Shapes::ShapeRef.new(shape: ElasticsearchIndexRotationPeriod, location_name: "IndexRotationPeriod"))
      ElasticsearchDestinationDescription.add_member(:buffering_hints, Shapes::ShapeRef.new(shape: ElasticsearchBufferingHints, location_name: "BufferingHints"))
      ElasticsearchDestinationDescription.add_member(:retry_options, Shapes::ShapeRef.new(shape: ElasticsearchRetryOptions, location_name: "RetryOptions"))
      ElasticsearchDestinationDescription.add_member(:s3_backup_mode, Shapes::ShapeRef.new(shape: ElasticsearchS3BackupMode, location_name: "S3BackupMode"))
      ElasticsearchDestinationDescription.add_member(:s3_destination_description, Shapes::ShapeRef.new(shape: S3DestinationDescription, location_name: "S3DestinationDescription"))
      ElasticsearchDestinationDescription.add_member(:cloud_watch_logging_options, Shapes::ShapeRef.new(shape: CloudWatchLoggingOptions, location_name: "CloudWatchLoggingOptions"))
      ElasticsearchDestinationDescription.struct_class = Types::ElasticsearchDestinationDescription

      ElasticsearchDestinationUpdate.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
      ElasticsearchDestinationUpdate.add_member(:domain_arn, Shapes::ShapeRef.new(shape: ElasticsearchDomainARN, location_name: "DomainARN"))
      ElasticsearchDestinationUpdate.add_member(:index_name, Shapes::ShapeRef.new(shape: ElasticsearchIndexName, location_name: "IndexName"))
      ElasticsearchDestinationUpdate.add_member(:type_name, Shapes::ShapeRef.new(shape: ElasticsearchTypeName, location_name: "TypeName"))
      ElasticsearchDestinationUpdate.add_member(:index_rotation_period, Shapes::ShapeRef.new(shape: ElasticsearchIndexRotationPeriod, location_name: "IndexRotationPeriod"))
      ElasticsearchDestinationUpdate.add_member(:buffering_hints, Shapes::ShapeRef.new(shape: ElasticsearchBufferingHints, location_name: "BufferingHints"))
      ElasticsearchDestinationUpdate.add_member(:retry_options, Shapes::ShapeRef.new(shape: ElasticsearchRetryOptions, location_name: "RetryOptions"))
      ElasticsearchDestinationUpdate.add_member(:s3_update, Shapes::ShapeRef.new(shape: S3DestinationUpdate, location_name: "S3Update"))
      ElasticsearchDestinationUpdate.add_member(:cloud_watch_logging_options, Shapes::ShapeRef.new(shape: CloudWatchLoggingOptions, location_name: "CloudWatchLoggingOptions"))
      ElasticsearchDestinationUpdate.struct_class = Types::ElasticsearchDestinationUpdate

      ElasticsearchRetryOptions.add_member(:duration_in_seconds, Shapes::ShapeRef.new(shape: ElasticsearchRetryDurationInSeconds, location_name: "DurationInSeconds"))
      ElasticsearchRetryOptions.struct_class = Types::ElasticsearchRetryOptions

      EncryptionConfiguration.add_member(:no_encryption_config, Shapes::ShapeRef.new(shape: NoEncryptionConfig, location_name: "NoEncryptionConfig"))
      EncryptionConfiguration.add_member(:kms_encryption_config, Shapes::ShapeRef.new(shape: KMSEncryptionConfig, location_name: "KMSEncryptionConfig"))
      EncryptionConfiguration.struct_class = Types::EncryptionConfiguration

      KMSEncryptionConfig.add_member(:awskms_key_arn, Shapes::ShapeRef.new(shape: AWSKMSKeyARN, required: true, location_name: "AWSKMSKeyARN"))
      KMSEncryptionConfig.struct_class = Types::KMSEncryptionConfig

      ListDeliveryStreamsInput.add_member(:limit, Shapes::ShapeRef.new(shape: ListDeliveryStreamsInputLimit, location_name: "Limit"))
      ListDeliveryStreamsInput.add_member(:exclusive_start_delivery_stream_name, Shapes::ShapeRef.new(shape: DeliveryStreamName, location_name: "ExclusiveStartDeliveryStreamName"))
      ListDeliveryStreamsInput.struct_class = Types::ListDeliveryStreamsInput

      ListDeliveryStreamsOutput.add_member(:delivery_stream_names, Shapes::ShapeRef.new(shape: DeliveryStreamNameList, required: true, location_name: "DeliveryStreamNames"))
      ListDeliveryStreamsOutput.add_member(:has_more_delivery_streams, Shapes::ShapeRef.new(shape: BooleanObject, required: true, location_name: "HasMoreDeliveryStreams"))
      ListDeliveryStreamsOutput.struct_class = Types::ListDeliveryStreamsOutput

      PutRecordBatchInput.add_member(:delivery_stream_name, Shapes::ShapeRef.new(shape: DeliveryStreamName, required: true, location_name: "DeliveryStreamName"))
      PutRecordBatchInput.add_member(:records, Shapes::ShapeRef.new(shape: PutRecordBatchRequestEntryList, required: true, location_name: "Records"))
      PutRecordBatchInput.struct_class = Types::PutRecordBatchInput

      PutRecordBatchOutput.add_member(:failed_put_count, Shapes::ShapeRef.new(shape: NonNegativeIntegerObject, required: true, location_name: "FailedPutCount"))
      PutRecordBatchOutput.add_member(:request_responses, Shapes::ShapeRef.new(shape: PutRecordBatchResponseEntryList, required: true, location_name: "RequestResponses"))
      PutRecordBatchOutput.struct_class = Types::PutRecordBatchOutput

      PutRecordBatchRequestEntryList.member = Shapes::ShapeRef.new(shape: Record)

      PutRecordBatchResponseEntry.add_member(:record_id, Shapes::ShapeRef.new(shape: PutResponseRecordId, location_name: "RecordId"))
      PutRecordBatchResponseEntry.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "ErrorCode"))
      PutRecordBatchResponseEntry.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "ErrorMessage"))
      PutRecordBatchResponseEntry.struct_class = Types::PutRecordBatchResponseEntry

      PutRecordBatchResponseEntryList.member = Shapes::ShapeRef.new(shape: PutRecordBatchResponseEntry)

      PutRecordInput.add_member(:delivery_stream_name, Shapes::ShapeRef.new(shape: DeliveryStreamName, required: true, location_name: "DeliveryStreamName"))
      PutRecordInput.add_member(:record, Shapes::ShapeRef.new(shape: Record, required: true, location_name: "Record"))
      PutRecordInput.struct_class = Types::PutRecordInput

      PutRecordOutput.add_member(:record_id, Shapes::ShapeRef.new(shape: PutResponseRecordId, required: true, location_name: "RecordId"))
      PutRecordOutput.struct_class = Types::PutRecordOutput

      Record.add_member(:data, Shapes::ShapeRef.new(shape: Data, required: true, location_name: "Data"))
      Record.struct_class = Types::Record

      RedshiftDestinationConfiguration.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, required: true, location_name: "RoleARN"))
      RedshiftDestinationConfiguration.add_member(:cluster_jdbcurl, Shapes::ShapeRef.new(shape: ClusterJDBCURL, required: true, location_name: "ClusterJDBCURL"))
      RedshiftDestinationConfiguration.add_member(:copy_command, Shapes::ShapeRef.new(shape: CopyCommand, required: true, location_name: "CopyCommand"))
      RedshiftDestinationConfiguration.add_member(:username, Shapes::ShapeRef.new(shape: Username, required: true, location_name: "Username"))
      RedshiftDestinationConfiguration.add_member(:password, Shapes::ShapeRef.new(shape: Password, required: true, location_name: "Password"))
      RedshiftDestinationConfiguration.add_member(:retry_options, Shapes::ShapeRef.new(shape: RedshiftRetryOptions, location_name: "RetryOptions"))
      RedshiftDestinationConfiguration.add_member(:s3_configuration, Shapes::ShapeRef.new(shape: S3DestinationConfiguration, required: true, location_name: "S3Configuration"))
      RedshiftDestinationConfiguration.add_member(:cloud_watch_logging_options, Shapes::ShapeRef.new(shape: CloudWatchLoggingOptions, location_name: "CloudWatchLoggingOptions"))
      RedshiftDestinationConfiguration.struct_class = Types::RedshiftDestinationConfiguration

      RedshiftDestinationDescription.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, required: true, location_name: "RoleARN"))
      RedshiftDestinationDescription.add_member(:cluster_jdbcurl, Shapes::ShapeRef.new(shape: ClusterJDBCURL, required: true, location_name: "ClusterJDBCURL"))
      RedshiftDestinationDescription.add_member(:copy_command, Shapes::ShapeRef.new(shape: CopyCommand, required: true, location_name: "CopyCommand"))
      RedshiftDestinationDescription.add_member(:username, Shapes::ShapeRef.new(shape: Username, required: true, location_name: "Username"))
      RedshiftDestinationDescription.add_member(:retry_options, Shapes::ShapeRef.new(shape: RedshiftRetryOptions, location_name: "RetryOptions"))
      RedshiftDestinationDescription.add_member(:s3_destination_description, Shapes::ShapeRef.new(shape: S3DestinationDescription, required: true, location_name: "S3DestinationDescription"))
      RedshiftDestinationDescription.add_member(:cloud_watch_logging_options, Shapes::ShapeRef.new(shape: CloudWatchLoggingOptions, location_name: "CloudWatchLoggingOptions"))
      RedshiftDestinationDescription.struct_class = Types::RedshiftDestinationDescription

      RedshiftDestinationUpdate.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
      RedshiftDestinationUpdate.add_member(:cluster_jdbcurl, Shapes::ShapeRef.new(shape: ClusterJDBCURL, location_name: "ClusterJDBCURL"))
      RedshiftDestinationUpdate.add_member(:copy_command, Shapes::ShapeRef.new(shape: CopyCommand, location_name: "CopyCommand"))
      RedshiftDestinationUpdate.add_member(:username, Shapes::ShapeRef.new(shape: Username, location_name: "Username"))
      RedshiftDestinationUpdate.add_member(:password, Shapes::ShapeRef.new(shape: Password, location_name: "Password"))
      RedshiftDestinationUpdate.add_member(:retry_options, Shapes::ShapeRef.new(shape: RedshiftRetryOptions, location_name: "RetryOptions"))
      RedshiftDestinationUpdate.add_member(:s3_update, Shapes::ShapeRef.new(shape: S3DestinationUpdate, location_name: "S3Update"))
      RedshiftDestinationUpdate.add_member(:cloud_watch_logging_options, Shapes::ShapeRef.new(shape: CloudWatchLoggingOptions, location_name: "CloudWatchLoggingOptions"))
      RedshiftDestinationUpdate.struct_class = Types::RedshiftDestinationUpdate

      RedshiftRetryOptions.add_member(:duration_in_seconds, Shapes::ShapeRef.new(shape: RedshiftRetryDurationInSeconds, location_name: "DurationInSeconds"))
      RedshiftRetryOptions.struct_class = Types::RedshiftRetryOptions

      S3DestinationConfiguration.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, required: true, location_name: "RoleARN"))
      S3DestinationConfiguration.add_member(:bucket_arn, Shapes::ShapeRef.new(shape: BucketARN, required: true, location_name: "BucketARN"))
      S3DestinationConfiguration.add_member(:prefix, Shapes::ShapeRef.new(shape: Prefix, location_name: "Prefix"))
      S3DestinationConfiguration.add_member(:buffering_hints, Shapes::ShapeRef.new(shape: BufferingHints, location_name: "BufferingHints"))
      S3DestinationConfiguration.add_member(:compression_format, Shapes::ShapeRef.new(shape: CompressionFormat, location_name: "CompressionFormat"))
      S3DestinationConfiguration.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "EncryptionConfiguration"))
      S3DestinationConfiguration.add_member(:cloud_watch_logging_options, Shapes::ShapeRef.new(shape: CloudWatchLoggingOptions, location_name: "CloudWatchLoggingOptions"))
      S3DestinationConfiguration.struct_class = Types::S3DestinationConfiguration

      S3DestinationDescription.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, required: true, location_name: "RoleARN"))
      S3DestinationDescription.add_member(:bucket_arn, Shapes::ShapeRef.new(shape: BucketARN, required: true, location_name: "BucketARN"))
      S3DestinationDescription.add_member(:prefix, Shapes::ShapeRef.new(shape: Prefix, location_name: "Prefix"))
      S3DestinationDescription.add_member(:buffering_hints, Shapes::ShapeRef.new(shape: BufferingHints, required: true, location_name: "BufferingHints"))
      S3DestinationDescription.add_member(:compression_format, Shapes::ShapeRef.new(shape: CompressionFormat, required: true, location_name: "CompressionFormat"))
      S3DestinationDescription.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, required: true, location_name: "EncryptionConfiguration"))
      S3DestinationDescription.add_member(:cloud_watch_logging_options, Shapes::ShapeRef.new(shape: CloudWatchLoggingOptions, location_name: "CloudWatchLoggingOptions"))
      S3DestinationDescription.struct_class = Types::S3DestinationDescription

      S3DestinationUpdate.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
      S3DestinationUpdate.add_member(:bucket_arn, Shapes::ShapeRef.new(shape: BucketARN, location_name: "BucketARN"))
      S3DestinationUpdate.add_member(:prefix, Shapes::ShapeRef.new(shape: Prefix, location_name: "Prefix"))
      S3DestinationUpdate.add_member(:buffering_hints, Shapes::ShapeRef.new(shape: BufferingHints, location_name: "BufferingHints"))
      S3DestinationUpdate.add_member(:compression_format, Shapes::ShapeRef.new(shape: CompressionFormat, location_name: "CompressionFormat"))
      S3DestinationUpdate.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "EncryptionConfiguration"))
      S3DestinationUpdate.add_member(:cloud_watch_logging_options, Shapes::ShapeRef.new(shape: CloudWatchLoggingOptions, location_name: "CloudWatchLoggingOptions"))
      S3DestinationUpdate.struct_class = Types::S3DestinationUpdate

      UpdateDestinationInput.add_member(:delivery_stream_name, Shapes::ShapeRef.new(shape: DeliveryStreamName, required: true, location_name: "DeliveryStreamName"))
      UpdateDestinationInput.add_member(:current_delivery_stream_version_id, Shapes::ShapeRef.new(shape: DeliveryStreamVersionId, required: true, location_name: "CurrentDeliveryStreamVersionId"))
      UpdateDestinationInput.add_member(:destination_id, Shapes::ShapeRef.new(shape: DestinationId, required: true, location_name: "DestinationId"))
      UpdateDestinationInput.add_member(:s3_destination_update, Shapes::ShapeRef.new(shape: S3DestinationUpdate, location_name: "S3DestinationUpdate"))
      UpdateDestinationInput.add_member(:redshift_destination_update, Shapes::ShapeRef.new(shape: RedshiftDestinationUpdate, location_name: "RedshiftDestinationUpdate"))
      UpdateDestinationInput.add_member(:elasticsearch_destination_update, Shapes::ShapeRef.new(shape: ElasticsearchDestinationUpdate, location_name: "ElasticsearchDestinationUpdate"))
      UpdateDestinationInput.struct_class = Types::UpdateDestinationInput

      UpdateDestinationOutput.struct_class = Types::UpdateDestinationOutput


      # @api private
      API = Seahorse::Model::Api.new.tap do |api|

        api.version = "2015-08-04"

        api.metadata = {
          "endpointPrefix" => "firehose",
          "jsonVersion" => "1.1",
          "protocol" => "json",
          "serviceFullName" => "Amazon Kinesis Firehose",
          "signatureVersion" => "v4",
          "targetPrefix" => "Firehose_20150804",
        }

        api.add_operation(:create_delivery_stream, Seahorse::Model::Operation.new.tap do |o|
          o.name = "CreateDeliveryStream"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: CreateDeliveryStreamInput)
          o.output = Shapes::ShapeRef.new(shape: CreateDeliveryStreamOutput)
          o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
          o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
          o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        end)

        api.add_operation(:delete_delivery_stream, Seahorse::Model::Operation.new.tap do |o|
          o.name = "DeleteDeliveryStream"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: DeleteDeliveryStreamInput)
          o.output = Shapes::ShapeRef.new(shape: DeleteDeliveryStreamOutput)
          o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
          o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        end)

        api.add_operation(:describe_delivery_stream, Seahorse::Model::Operation.new.tap do |o|
          o.name = "DescribeDeliveryStream"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: DescribeDeliveryStreamInput)
          o.output = Shapes::ShapeRef.new(shape: DescribeDeliveryStreamOutput)
          o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        end)

        api.add_operation(:list_delivery_streams, Seahorse::Model::Operation.new.tap do |o|
          o.name = "ListDeliveryStreams"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: ListDeliveryStreamsInput)
          o.output = Shapes::ShapeRef.new(shape: ListDeliveryStreamsOutput)
        end)

        api.add_operation(:put_record, Seahorse::Model::Operation.new.tap do |o|
          o.name = "PutRecord"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: PutRecordInput)
          o.output = Shapes::ShapeRef.new(shape: PutRecordOutput)
          o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
          o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
          o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        end)

        api.add_operation(:put_record_batch, Seahorse::Model::Operation.new.tap do |o|
          o.name = "PutRecordBatch"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: PutRecordBatchInput)
          o.output = Shapes::ShapeRef.new(shape: PutRecordBatchOutput)
          o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
          o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
          o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        end)

        api.add_operation(:update_destination, Seahorse::Model::Operation.new.tap do |o|
          o.name = "UpdateDestination"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: UpdateDestinationInput)
          o.output = Shapes::ShapeRef.new(shape: UpdateDestinationOutput)
          o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
          o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
          o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
          o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        end)
      end

    end
  end
end
