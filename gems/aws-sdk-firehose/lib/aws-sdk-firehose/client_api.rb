# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Firehose
  # @api private
  module ClientApi

    include Seahorse::Model

    AWSKMSKeyARN = Shapes::StringShape.new(name: 'AWSKMSKeyARN')
    BlockSizeBytes = Shapes::IntegerShape.new(name: 'BlockSizeBytes')
    BooleanObject = Shapes::BooleanShape.new(name: 'BooleanObject')
    BucketARN = Shapes::StringShape.new(name: 'BucketARN')
    BufferingHints = Shapes::StructureShape.new(name: 'BufferingHints')
    CloudWatchLoggingOptions = Shapes::StructureShape.new(name: 'CloudWatchLoggingOptions')
    ClusterJDBCURL = Shapes::StringShape.new(name: 'ClusterJDBCURL')
    ColumnToJsonKeyMappings = Shapes::MapShape.new(name: 'ColumnToJsonKeyMappings')
    CompressionFormat = Shapes::StringShape.new(name: 'CompressionFormat')
    ConcurrentModificationException = Shapes::StructureShape.new(name: 'ConcurrentModificationException')
    CopyCommand = Shapes::StructureShape.new(name: 'CopyCommand')
    CopyOptions = Shapes::StringShape.new(name: 'CopyOptions')
    CreateDeliveryStreamInput = Shapes::StructureShape.new(name: 'CreateDeliveryStreamInput')
    CreateDeliveryStreamOutput = Shapes::StructureShape.new(name: 'CreateDeliveryStreamOutput')
    Data = Shapes::BlobShape.new(name: 'Data')
    DataFormatConversionConfiguration = Shapes::StructureShape.new(name: 'DataFormatConversionConfiguration')
    DataTableColumns = Shapes::StringShape.new(name: 'DataTableColumns')
    DataTableName = Shapes::StringShape.new(name: 'DataTableName')
    DeleteDeliveryStreamInput = Shapes::StructureShape.new(name: 'DeleteDeliveryStreamInput')
    DeleteDeliveryStreamOutput = Shapes::StructureShape.new(name: 'DeleteDeliveryStreamOutput')
    DeliveryStartTimestamp = Shapes::TimestampShape.new(name: 'DeliveryStartTimestamp')
    DeliveryStreamARN = Shapes::StringShape.new(name: 'DeliveryStreamARN')
    DeliveryStreamDescription = Shapes::StructureShape.new(name: 'DeliveryStreamDescription')
    DeliveryStreamName = Shapes::StringShape.new(name: 'DeliveryStreamName')
    DeliveryStreamNameList = Shapes::ListShape.new(name: 'DeliveryStreamNameList')
    DeliveryStreamStatus = Shapes::StringShape.new(name: 'DeliveryStreamStatus')
    DeliveryStreamType = Shapes::StringShape.new(name: 'DeliveryStreamType')
    DeliveryStreamVersionId = Shapes::StringShape.new(name: 'DeliveryStreamVersionId')
    DescribeDeliveryStreamInput = Shapes::StructureShape.new(name: 'DescribeDeliveryStreamInput')
    DescribeDeliveryStreamInputLimit = Shapes::IntegerShape.new(name: 'DescribeDeliveryStreamInputLimit')
    DescribeDeliveryStreamOutput = Shapes::StructureShape.new(name: 'DescribeDeliveryStreamOutput')
    Deserializer = Shapes::StructureShape.new(name: 'Deserializer')
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
    ExtendedS3DestinationConfiguration = Shapes::StructureShape.new(name: 'ExtendedS3DestinationConfiguration')
    ExtendedS3DestinationDescription = Shapes::StructureShape.new(name: 'ExtendedS3DestinationDescription')
    ExtendedS3DestinationUpdate = Shapes::StructureShape.new(name: 'ExtendedS3DestinationUpdate')
    HECAcknowledgmentTimeoutInSeconds = Shapes::IntegerShape.new(name: 'HECAcknowledgmentTimeoutInSeconds')
    HECEndpoint = Shapes::StringShape.new(name: 'HECEndpoint')
    HECEndpointType = Shapes::StringShape.new(name: 'HECEndpointType')
    HECToken = Shapes::StringShape.new(name: 'HECToken')
    HiveJsonSerDe = Shapes::StructureShape.new(name: 'HiveJsonSerDe')
    InputFormatConfiguration = Shapes::StructureShape.new(name: 'InputFormatConfiguration')
    IntervalInSeconds = Shapes::IntegerShape.new(name: 'IntervalInSeconds')
    InvalidArgumentException = Shapes::StructureShape.new(name: 'InvalidArgumentException')
    KMSEncryptionConfig = Shapes::StructureShape.new(name: 'KMSEncryptionConfig')
    KinesisStreamARN = Shapes::StringShape.new(name: 'KinesisStreamARN')
    KinesisStreamSourceConfiguration = Shapes::StructureShape.new(name: 'KinesisStreamSourceConfiguration')
    KinesisStreamSourceDescription = Shapes::StructureShape.new(name: 'KinesisStreamSourceDescription')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListDeliveryStreamsInput = Shapes::StructureShape.new(name: 'ListDeliveryStreamsInput')
    ListDeliveryStreamsInputLimit = Shapes::IntegerShape.new(name: 'ListDeliveryStreamsInputLimit')
    ListDeliveryStreamsOutput = Shapes::StructureShape.new(name: 'ListDeliveryStreamsOutput')
    ListOfNonEmptyStrings = Shapes::ListShape.new(name: 'ListOfNonEmptyStrings')
    ListOfNonEmptyStringsWithoutWhitespace = Shapes::ListShape.new(name: 'ListOfNonEmptyStringsWithoutWhitespace')
    ListTagsForDeliveryStreamInput = Shapes::StructureShape.new(name: 'ListTagsForDeliveryStreamInput')
    ListTagsForDeliveryStreamInputLimit = Shapes::IntegerShape.new(name: 'ListTagsForDeliveryStreamInputLimit')
    ListTagsForDeliveryStreamOutput = Shapes::StructureShape.new(name: 'ListTagsForDeliveryStreamOutput')
    ListTagsForDeliveryStreamOutputTagList = Shapes::ListShape.new(name: 'ListTagsForDeliveryStreamOutputTagList')
    LogGroupName = Shapes::StringShape.new(name: 'LogGroupName')
    LogStreamName = Shapes::StringShape.new(name: 'LogStreamName')
    NoEncryptionConfig = Shapes::StringShape.new(name: 'NoEncryptionConfig')
    NonEmptyString = Shapes::StringShape.new(name: 'NonEmptyString')
    NonEmptyStringWithoutWhitespace = Shapes::StringShape.new(name: 'NonEmptyStringWithoutWhitespace')
    NonNegativeIntegerObject = Shapes::IntegerShape.new(name: 'NonNegativeIntegerObject')
    OpenXJsonSerDe = Shapes::StructureShape.new(name: 'OpenXJsonSerDe')
    OrcCompression = Shapes::StringShape.new(name: 'OrcCompression')
    OrcFormatVersion = Shapes::StringShape.new(name: 'OrcFormatVersion')
    OrcRowIndexStride = Shapes::IntegerShape.new(name: 'OrcRowIndexStride')
    OrcSerDe = Shapes::StructureShape.new(name: 'OrcSerDe')
    OrcStripeSizeBytes = Shapes::IntegerShape.new(name: 'OrcStripeSizeBytes')
    OutputFormatConfiguration = Shapes::StructureShape.new(name: 'OutputFormatConfiguration')
    ParquetCompression = Shapes::StringShape.new(name: 'ParquetCompression')
    ParquetPageSizeBytes = Shapes::IntegerShape.new(name: 'ParquetPageSizeBytes')
    ParquetSerDe = Shapes::StructureShape.new(name: 'ParquetSerDe')
    ParquetWriterVersion = Shapes::StringShape.new(name: 'ParquetWriterVersion')
    Password = Shapes::StringShape.new(name: 'Password')
    Prefix = Shapes::StringShape.new(name: 'Prefix')
    ProcessingConfiguration = Shapes::StructureShape.new(name: 'ProcessingConfiguration')
    Processor = Shapes::StructureShape.new(name: 'Processor')
    ProcessorList = Shapes::ListShape.new(name: 'ProcessorList')
    ProcessorParameter = Shapes::StructureShape.new(name: 'ProcessorParameter')
    ProcessorParameterList = Shapes::ListShape.new(name: 'ProcessorParameterList')
    ProcessorParameterName = Shapes::StringShape.new(name: 'ProcessorParameterName')
    ProcessorParameterValue = Shapes::StringShape.new(name: 'ProcessorParameterValue')
    ProcessorType = Shapes::StringShape.new(name: 'ProcessorType')
    Proportion = Shapes::FloatShape.new(name: 'Proportion')
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
    RedshiftS3BackupMode = Shapes::StringShape.new(name: 'RedshiftS3BackupMode')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RoleARN = Shapes::StringShape.new(name: 'RoleARN')
    S3BackupMode = Shapes::StringShape.new(name: 'S3BackupMode')
    S3DestinationConfiguration = Shapes::StructureShape.new(name: 'S3DestinationConfiguration')
    S3DestinationDescription = Shapes::StructureShape.new(name: 'S3DestinationDescription')
    S3DestinationUpdate = Shapes::StructureShape.new(name: 'S3DestinationUpdate')
    SchemaConfiguration = Shapes::StructureShape.new(name: 'SchemaConfiguration')
    Serializer = Shapes::StructureShape.new(name: 'Serializer')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    SizeInMBs = Shapes::IntegerShape.new(name: 'SizeInMBs')
    SourceDescription = Shapes::StructureShape.new(name: 'SourceDescription')
    SplunkDestinationConfiguration = Shapes::StructureShape.new(name: 'SplunkDestinationConfiguration')
    SplunkDestinationDescription = Shapes::StructureShape.new(name: 'SplunkDestinationDescription')
    SplunkDestinationUpdate = Shapes::StructureShape.new(name: 'SplunkDestinationUpdate')
    SplunkRetryDurationInSeconds = Shapes::IntegerShape.new(name: 'SplunkRetryDurationInSeconds')
    SplunkRetryOptions = Shapes::StructureShape.new(name: 'SplunkRetryOptions')
    SplunkS3BackupMode = Shapes::StringShape.new(name: 'SplunkS3BackupMode')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagDeliveryStreamInput = Shapes::StructureShape.new(name: 'TagDeliveryStreamInput')
    TagDeliveryStreamInputTagList = Shapes::ListShape.new(name: 'TagDeliveryStreamInputTagList')
    TagDeliveryStreamOutput = Shapes::StructureShape.new(name: 'TagDeliveryStreamOutput')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UntagDeliveryStreamInput = Shapes::StructureShape.new(name: 'UntagDeliveryStreamInput')
    UntagDeliveryStreamOutput = Shapes::StructureShape.new(name: 'UntagDeliveryStreamOutput')
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

    ColumnToJsonKeyMappings.key = Shapes::ShapeRef.new(shape: NonEmptyStringWithoutWhitespace)
    ColumnToJsonKeyMappings.value = Shapes::ShapeRef.new(shape: NonEmptyString)

    CopyCommand.add_member(:data_table_name, Shapes::ShapeRef.new(shape: DataTableName, required: true, location_name: "DataTableName"))
    CopyCommand.add_member(:data_table_columns, Shapes::ShapeRef.new(shape: DataTableColumns, location_name: "DataTableColumns"))
    CopyCommand.add_member(:copy_options, Shapes::ShapeRef.new(shape: CopyOptions, location_name: "CopyOptions"))
    CopyCommand.struct_class = Types::CopyCommand

    CreateDeliveryStreamInput.add_member(:delivery_stream_name, Shapes::ShapeRef.new(shape: DeliveryStreamName, required: true, location_name: "DeliveryStreamName"))
    CreateDeliveryStreamInput.add_member(:delivery_stream_type, Shapes::ShapeRef.new(shape: DeliveryStreamType, location_name: "DeliveryStreamType"))
    CreateDeliveryStreamInput.add_member(:kinesis_stream_source_configuration, Shapes::ShapeRef.new(shape: KinesisStreamSourceConfiguration, location_name: "KinesisStreamSourceConfiguration"))
    CreateDeliveryStreamInput.add_member(:s3_destination_configuration, Shapes::ShapeRef.new(shape: S3DestinationConfiguration, deprecated: true, location_name: "S3DestinationConfiguration"))
    CreateDeliveryStreamInput.add_member(:extended_s3_destination_configuration, Shapes::ShapeRef.new(shape: ExtendedS3DestinationConfiguration, location_name: "ExtendedS3DestinationConfiguration"))
    CreateDeliveryStreamInput.add_member(:redshift_destination_configuration, Shapes::ShapeRef.new(shape: RedshiftDestinationConfiguration, location_name: "RedshiftDestinationConfiguration"))
    CreateDeliveryStreamInput.add_member(:elasticsearch_destination_configuration, Shapes::ShapeRef.new(shape: ElasticsearchDestinationConfiguration, location_name: "ElasticsearchDestinationConfiguration"))
    CreateDeliveryStreamInput.add_member(:splunk_destination_configuration, Shapes::ShapeRef.new(shape: SplunkDestinationConfiguration, location_name: "SplunkDestinationConfiguration"))
    CreateDeliveryStreamInput.struct_class = Types::CreateDeliveryStreamInput

    CreateDeliveryStreamOutput.add_member(:delivery_stream_arn, Shapes::ShapeRef.new(shape: DeliveryStreamARN, location_name: "DeliveryStreamARN"))
    CreateDeliveryStreamOutput.struct_class = Types::CreateDeliveryStreamOutput

    DataFormatConversionConfiguration.add_member(:schema_configuration, Shapes::ShapeRef.new(shape: SchemaConfiguration, location_name: "SchemaConfiguration"))
    DataFormatConversionConfiguration.add_member(:input_format_configuration, Shapes::ShapeRef.new(shape: InputFormatConfiguration, location_name: "InputFormatConfiguration"))
    DataFormatConversionConfiguration.add_member(:output_format_configuration, Shapes::ShapeRef.new(shape: OutputFormatConfiguration, location_name: "OutputFormatConfiguration"))
    DataFormatConversionConfiguration.add_member(:enabled, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "Enabled"))
    DataFormatConversionConfiguration.struct_class = Types::DataFormatConversionConfiguration

    DeleteDeliveryStreamInput.add_member(:delivery_stream_name, Shapes::ShapeRef.new(shape: DeliveryStreamName, required: true, location_name: "DeliveryStreamName"))
    DeleteDeliveryStreamInput.struct_class = Types::DeleteDeliveryStreamInput

    DeleteDeliveryStreamOutput.struct_class = Types::DeleteDeliveryStreamOutput

    DeliveryStreamDescription.add_member(:delivery_stream_name, Shapes::ShapeRef.new(shape: DeliveryStreamName, required: true, location_name: "DeliveryStreamName"))
    DeliveryStreamDescription.add_member(:delivery_stream_arn, Shapes::ShapeRef.new(shape: DeliveryStreamARN, required: true, location_name: "DeliveryStreamARN"))
    DeliveryStreamDescription.add_member(:delivery_stream_status, Shapes::ShapeRef.new(shape: DeliveryStreamStatus, required: true, location_name: "DeliveryStreamStatus"))
    DeliveryStreamDescription.add_member(:delivery_stream_type, Shapes::ShapeRef.new(shape: DeliveryStreamType, required: true, location_name: "DeliveryStreamType"))
    DeliveryStreamDescription.add_member(:version_id, Shapes::ShapeRef.new(shape: DeliveryStreamVersionId, required: true, location_name: "VersionId"))
    DeliveryStreamDescription.add_member(:create_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreateTimestamp"))
    DeliveryStreamDescription.add_member(:last_update_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdateTimestamp"))
    DeliveryStreamDescription.add_member(:source, Shapes::ShapeRef.new(shape: SourceDescription, location_name: "Source"))
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

    Deserializer.add_member(:open_x_json_ser_de, Shapes::ShapeRef.new(shape: OpenXJsonSerDe, location_name: "OpenXJsonSerDe"))
    Deserializer.add_member(:hive_json_ser_de, Shapes::ShapeRef.new(shape: HiveJsonSerDe, location_name: "HiveJsonSerDe"))
    Deserializer.struct_class = Types::Deserializer

    DestinationDescription.add_member(:destination_id, Shapes::ShapeRef.new(shape: DestinationId, required: true, location_name: "DestinationId"))
    DestinationDescription.add_member(:s3_destination_description, Shapes::ShapeRef.new(shape: S3DestinationDescription, location_name: "S3DestinationDescription"))
    DestinationDescription.add_member(:extended_s3_destination_description, Shapes::ShapeRef.new(shape: ExtendedS3DestinationDescription, location_name: "ExtendedS3DestinationDescription"))
    DestinationDescription.add_member(:redshift_destination_description, Shapes::ShapeRef.new(shape: RedshiftDestinationDescription, location_name: "RedshiftDestinationDescription"))
    DestinationDescription.add_member(:elasticsearch_destination_description, Shapes::ShapeRef.new(shape: ElasticsearchDestinationDescription, location_name: "ElasticsearchDestinationDescription"))
    DestinationDescription.add_member(:splunk_destination_description, Shapes::ShapeRef.new(shape: SplunkDestinationDescription, location_name: "SplunkDestinationDescription"))
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
    ElasticsearchDestinationConfiguration.add_member(:processing_configuration, Shapes::ShapeRef.new(shape: ProcessingConfiguration, location_name: "ProcessingConfiguration"))
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
    ElasticsearchDestinationDescription.add_member(:processing_configuration, Shapes::ShapeRef.new(shape: ProcessingConfiguration, location_name: "ProcessingConfiguration"))
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
    ElasticsearchDestinationUpdate.add_member(:processing_configuration, Shapes::ShapeRef.new(shape: ProcessingConfiguration, location_name: "ProcessingConfiguration"))
    ElasticsearchDestinationUpdate.add_member(:cloud_watch_logging_options, Shapes::ShapeRef.new(shape: CloudWatchLoggingOptions, location_name: "CloudWatchLoggingOptions"))
    ElasticsearchDestinationUpdate.struct_class = Types::ElasticsearchDestinationUpdate

    ElasticsearchRetryOptions.add_member(:duration_in_seconds, Shapes::ShapeRef.new(shape: ElasticsearchRetryDurationInSeconds, location_name: "DurationInSeconds"))
    ElasticsearchRetryOptions.struct_class = Types::ElasticsearchRetryOptions

    EncryptionConfiguration.add_member(:no_encryption_config, Shapes::ShapeRef.new(shape: NoEncryptionConfig, location_name: "NoEncryptionConfig"))
    EncryptionConfiguration.add_member(:kms_encryption_config, Shapes::ShapeRef.new(shape: KMSEncryptionConfig, location_name: "KMSEncryptionConfig"))
    EncryptionConfiguration.struct_class = Types::EncryptionConfiguration

    ExtendedS3DestinationConfiguration.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, required: true, location_name: "RoleARN"))
    ExtendedS3DestinationConfiguration.add_member(:bucket_arn, Shapes::ShapeRef.new(shape: BucketARN, required: true, location_name: "BucketARN"))
    ExtendedS3DestinationConfiguration.add_member(:prefix, Shapes::ShapeRef.new(shape: Prefix, location_name: "Prefix"))
    ExtendedS3DestinationConfiguration.add_member(:buffering_hints, Shapes::ShapeRef.new(shape: BufferingHints, location_name: "BufferingHints"))
    ExtendedS3DestinationConfiguration.add_member(:compression_format, Shapes::ShapeRef.new(shape: CompressionFormat, location_name: "CompressionFormat"))
    ExtendedS3DestinationConfiguration.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "EncryptionConfiguration"))
    ExtendedS3DestinationConfiguration.add_member(:cloud_watch_logging_options, Shapes::ShapeRef.new(shape: CloudWatchLoggingOptions, location_name: "CloudWatchLoggingOptions"))
    ExtendedS3DestinationConfiguration.add_member(:processing_configuration, Shapes::ShapeRef.new(shape: ProcessingConfiguration, location_name: "ProcessingConfiguration"))
    ExtendedS3DestinationConfiguration.add_member(:s3_backup_mode, Shapes::ShapeRef.new(shape: S3BackupMode, location_name: "S3BackupMode"))
    ExtendedS3DestinationConfiguration.add_member(:s3_backup_configuration, Shapes::ShapeRef.new(shape: S3DestinationConfiguration, location_name: "S3BackupConfiguration"))
    ExtendedS3DestinationConfiguration.add_member(:data_format_conversion_configuration, Shapes::ShapeRef.new(shape: DataFormatConversionConfiguration, location_name: "DataFormatConversionConfiguration"))
    ExtendedS3DestinationConfiguration.struct_class = Types::ExtendedS3DestinationConfiguration

    ExtendedS3DestinationDescription.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, required: true, location_name: "RoleARN"))
    ExtendedS3DestinationDescription.add_member(:bucket_arn, Shapes::ShapeRef.new(shape: BucketARN, required: true, location_name: "BucketARN"))
    ExtendedS3DestinationDescription.add_member(:prefix, Shapes::ShapeRef.new(shape: Prefix, location_name: "Prefix"))
    ExtendedS3DestinationDescription.add_member(:buffering_hints, Shapes::ShapeRef.new(shape: BufferingHints, required: true, location_name: "BufferingHints"))
    ExtendedS3DestinationDescription.add_member(:compression_format, Shapes::ShapeRef.new(shape: CompressionFormat, required: true, location_name: "CompressionFormat"))
    ExtendedS3DestinationDescription.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, required: true, location_name: "EncryptionConfiguration"))
    ExtendedS3DestinationDescription.add_member(:cloud_watch_logging_options, Shapes::ShapeRef.new(shape: CloudWatchLoggingOptions, location_name: "CloudWatchLoggingOptions"))
    ExtendedS3DestinationDescription.add_member(:processing_configuration, Shapes::ShapeRef.new(shape: ProcessingConfiguration, location_name: "ProcessingConfiguration"))
    ExtendedS3DestinationDescription.add_member(:s3_backup_mode, Shapes::ShapeRef.new(shape: S3BackupMode, location_name: "S3BackupMode"))
    ExtendedS3DestinationDescription.add_member(:s3_backup_description, Shapes::ShapeRef.new(shape: S3DestinationDescription, location_name: "S3BackupDescription"))
    ExtendedS3DestinationDescription.add_member(:data_format_conversion_configuration, Shapes::ShapeRef.new(shape: DataFormatConversionConfiguration, location_name: "DataFormatConversionConfiguration"))
    ExtendedS3DestinationDescription.struct_class = Types::ExtendedS3DestinationDescription

    ExtendedS3DestinationUpdate.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
    ExtendedS3DestinationUpdate.add_member(:bucket_arn, Shapes::ShapeRef.new(shape: BucketARN, location_name: "BucketARN"))
    ExtendedS3DestinationUpdate.add_member(:prefix, Shapes::ShapeRef.new(shape: Prefix, location_name: "Prefix"))
    ExtendedS3DestinationUpdate.add_member(:buffering_hints, Shapes::ShapeRef.new(shape: BufferingHints, location_name: "BufferingHints"))
    ExtendedS3DestinationUpdate.add_member(:compression_format, Shapes::ShapeRef.new(shape: CompressionFormat, location_name: "CompressionFormat"))
    ExtendedS3DestinationUpdate.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "EncryptionConfiguration"))
    ExtendedS3DestinationUpdate.add_member(:cloud_watch_logging_options, Shapes::ShapeRef.new(shape: CloudWatchLoggingOptions, location_name: "CloudWatchLoggingOptions"))
    ExtendedS3DestinationUpdate.add_member(:processing_configuration, Shapes::ShapeRef.new(shape: ProcessingConfiguration, location_name: "ProcessingConfiguration"))
    ExtendedS3DestinationUpdate.add_member(:s3_backup_mode, Shapes::ShapeRef.new(shape: S3BackupMode, location_name: "S3BackupMode"))
    ExtendedS3DestinationUpdate.add_member(:s3_backup_update, Shapes::ShapeRef.new(shape: S3DestinationUpdate, location_name: "S3BackupUpdate"))
    ExtendedS3DestinationUpdate.add_member(:data_format_conversion_configuration, Shapes::ShapeRef.new(shape: DataFormatConversionConfiguration, location_name: "DataFormatConversionConfiguration"))
    ExtendedS3DestinationUpdate.struct_class = Types::ExtendedS3DestinationUpdate

    HiveJsonSerDe.add_member(:timestamp_formats, Shapes::ShapeRef.new(shape: ListOfNonEmptyStrings, location_name: "TimestampFormats"))
    HiveJsonSerDe.struct_class = Types::HiveJsonSerDe

    InputFormatConfiguration.add_member(:deserializer, Shapes::ShapeRef.new(shape: Deserializer, location_name: "Deserializer"))
    InputFormatConfiguration.struct_class = Types::InputFormatConfiguration

    KMSEncryptionConfig.add_member(:awskms_key_arn, Shapes::ShapeRef.new(shape: AWSKMSKeyARN, required: true, location_name: "AWSKMSKeyARN"))
    KMSEncryptionConfig.struct_class = Types::KMSEncryptionConfig

    KinesisStreamSourceConfiguration.add_member(:kinesis_stream_arn, Shapes::ShapeRef.new(shape: KinesisStreamARN, required: true, location_name: "KinesisStreamARN"))
    KinesisStreamSourceConfiguration.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, required: true, location_name: "RoleARN"))
    KinesisStreamSourceConfiguration.struct_class = Types::KinesisStreamSourceConfiguration

    KinesisStreamSourceDescription.add_member(:kinesis_stream_arn, Shapes::ShapeRef.new(shape: KinesisStreamARN, location_name: "KinesisStreamARN"))
    KinesisStreamSourceDescription.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
    KinesisStreamSourceDescription.add_member(:delivery_start_timestamp, Shapes::ShapeRef.new(shape: DeliveryStartTimestamp, location_name: "DeliveryStartTimestamp"))
    KinesisStreamSourceDescription.struct_class = Types::KinesisStreamSourceDescription

    ListDeliveryStreamsInput.add_member(:limit, Shapes::ShapeRef.new(shape: ListDeliveryStreamsInputLimit, location_name: "Limit"))
    ListDeliveryStreamsInput.add_member(:delivery_stream_type, Shapes::ShapeRef.new(shape: DeliveryStreamType, location_name: "DeliveryStreamType"))
    ListDeliveryStreamsInput.add_member(:exclusive_start_delivery_stream_name, Shapes::ShapeRef.new(shape: DeliveryStreamName, location_name: "ExclusiveStartDeliveryStreamName"))
    ListDeliveryStreamsInput.struct_class = Types::ListDeliveryStreamsInput

    ListDeliveryStreamsOutput.add_member(:delivery_stream_names, Shapes::ShapeRef.new(shape: DeliveryStreamNameList, required: true, location_name: "DeliveryStreamNames"))
    ListDeliveryStreamsOutput.add_member(:has_more_delivery_streams, Shapes::ShapeRef.new(shape: BooleanObject, required: true, location_name: "HasMoreDeliveryStreams"))
    ListDeliveryStreamsOutput.struct_class = Types::ListDeliveryStreamsOutput

    ListOfNonEmptyStrings.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    ListOfNonEmptyStringsWithoutWhitespace.member = Shapes::ShapeRef.new(shape: NonEmptyStringWithoutWhitespace)

    ListTagsForDeliveryStreamInput.add_member(:delivery_stream_name, Shapes::ShapeRef.new(shape: DeliveryStreamName, required: true, location_name: "DeliveryStreamName"))
    ListTagsForDeliveryStreamInput.add_member(:exclusive_start_tag_key, Shapes::ShapeRef.new(shape: TagKey, location_name: "ExclusiveStartTagKey"))
    ListTagsForDeliveryStreamInput.add_member(:limit, Shapes::ShapeRef.new(shape: ListTagsForDeliveryStreamInputLimit, location_name: "Limit"))
    ListTagsForDeliveryStreamInput.struct_class = Types::ListTagsForDeliveryStreamInput

    ListTagsForDeliveryStreamOutput.add_member(:tags, Shapes::ShapeRef.new(shape: ListTagsForDeliveryStreamOutputTagList, required: true, location_name: "Tags"))
    ListTagsForDeliveryStreamOutput.add_member(:has_more_tags, Shapes::ShapeRef.new(shape: BooleanObject, required: true, location_name: "HasMoreTags"))
    ListTagsForDeliveryStreamOutput.struct_class = Types::ListTagsForDeliveryStreamOutput

    ListTagsForDeliveryStreamOutputTagList.member = Shapes::ShapeRef.new(shape: Tag)

    OpenXJsonSerDe.add_member(:convert_dots_in_json_keys_to_underscores, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "ConvertDotsInJsonKeysToUnderscores"))
    OpenXJsonSerDe.add_member(:case_insensitive, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "CaseInsensitive"))
    OpenXJsonSerDe.add_member(:column_to_json_key_mappings, Shapes::ShapeRef.new(shape: ColumnToJsonKeyMappings, location_name: "ColumnToJsonKeyMappings"))
    OpenXJsonSerDe.struct_class = Types::OpenXJsonSerDe

    OrcSerDe.add_member(:stripe_size_bytes, Shapes::ShapeRef.new(shape: OrcStripeSizeBytes, location_name: "StripeSizeBytes"))
    OrcSerDe.add_member(:block_size_bytes, Shapes::ShapeRef.new(shape: BlockSizeBytes, location_name: "BlockSizeBytes"))
    OrcSerDe.add_member(:row_index_stride, Shapes::ShapeRef.new(shape: OrcRowIndexStride, location_name: "RowIndexStride"))
    OrcSerDe.add_member(:enable_padding, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "EnablePadding"))
    OrcSerDe.add_member(:padding_tolerance, Shapes::ShapeRef.new(shape: Proportion, location_name: "PaddingTolerance"))
    OrcSerDe.add_member(:compression, Shapes::ShapeRef.new(shape: OrcCompression, location_name: "Compression"))
    OrcSerDe.add_member(:bloom_filter_columns, Shapes::ShapeRef.new(shape: ListOfNonEmptyStringsWithoutWhitespace, location_name: "BloomFilterColumns"))
    OrcSerDe.add_member(:bloom_filter_false_positive_probability, Shapes::ShapeRef.new(shape: Proportion, location_name: "BloomFilterFalsePositiveProbability"))
    OrcSerDe.add_member(:dictionary_key_threshold, Shapes::ShapeRef.new(shape: Proportion, location_name: "DictionaryKeyThreshold"))
    OrcSerDe.add_member(:format_version, Shapes::ShapeRef.new(shape: OrcFormatVersion, location_name: "FormatVersion"))
    OrcSerDe.struct_class = Types::OrcSerDe

    OutputFormatConfiguration.add_member(:serializer, Shapes::ShapeRef.new(shape: Serializer, location_name: "Serializer"))
    OutputFormatConfiguration.struct_class = Types::OutputFormatConfiguration

    ParquetSerDe.add_member(:block_size_bytes, Shapes::ShapeRef.new(shape: BlockSizeBytes, location_name: "BlockSizeBytes"))
    ParquetSerDe.add_member(:page_size_bytes, Shapes::ShapeRef.new(shape: ParquetPageSizeBytes, location_name: "PageSizeBytes"))
    ParquetSerDe.add_member(:compression, Shapes::ShapeRef.new(shape: ParquetCompression, location_name: "Compression"))
    ParquetSerDe.add_member(:enable_dictionary_compression, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "EnableDictionaryCompression"))
    ParquetSerDe.add_member(:max_padding_bytes, Shapes::ShapeRef.new(shape: NonNegativeIntegerObject, location_name: "MaxPaddingBytes"))
    ParquetSerDe.add_member(:writer_version, Shapes::ShapeRef.new(shape: ParquetWriterVersion, location_name: "WriterVersion"))
    ParquetSerDe.struct_class = Types::ParquetSerDe

    ProcessingConfiguration.add_member(:enabled, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "Enabled"))
    ProcessingConfiguration.add_member(:processors, Shapes::ShapeRef.new(shape: ProcessorList, location_name: "Processors"))
    ProcessingConfiguration.struct_class = Types::ProcessingConfiguration

    Processor.add_member(:type, Shapes::ShapeRef.new(shape: ProcessorType, required: true, location_name: "Type"))
    Processor.add_member(:parameters, Shapes::ShapeRef.new(shape: ProcessorParameterList, location_name: "Parameters"))
    Processor.struct_class = Types::Processor

    ProcessorList.member = Shapes::ShapeRef.new(shape: Processor)

    ProcessorParameter.add_member(:parameter_name, Shapes::ShapeRef.new(shape: ProcessorParameterName, required: true, location_name: "ParameterName"))
    ProcessorParameter.add_member(:parameter_value, Shapes::ShapeRef.new(shape: ProcessorParameterValue, required: true, location_name: "ParameterValue"))
    ProcessorParameter.struct_class = Types::ProcessorParameter

    ProcessorParameterList.member = Shapes::ShapeRef.new(shape: ProcessorParameter)

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
    RedshiftDestinationConfiguration.add_member(:cluster_jdbc_url, Shapes::ShapeRef.new(shape: ClusterJDBCURL, required: true, location_name: "ClusterJDBCURL"))
    RedshiftDestinationConfiguration.add_member(:copy_command, Shapes::ShapeRef.new(shape: CopyCommand, required: true, location_name: "CopyCommand"))
    RedshiftDestinationConfiguration.add_member(:username, Shapes::ShapeRef.new(shape: Username, required: true, location_name: "Username"))
    RedshiftDestinationConfiguration.add_member(:password, Shapes::ShapeRef.new(shape: Password, required: true, location_name: "Password"))
    RedshiftDestinationConfiguration.add_member(:retry_options, Shapes::ShapeRef.new(shape: RedshiftRetryOptions, location_name: "RetryOptions"))
    RedshiftDestinationConfiguration.add_member(:s3_configuration, Shapes::ShapeRef.new(shape: S3DestinationConfiguration, required: true, location_name: "S3Configuration"))
    RedshiftDestinationConfiguration.add_member(:processing_configuration, Shapes::ShapeRef.new(shape: ProcessingConfiguration, location_name: "ProcessingConfiguration"))
    RedshiftDestinationConfiguration.add_member(:s3_backup_mode, Shapes::ShapeRef.new(shape: RedshiftS3BackupMode, location_name: "S3BackupMode"))
    RedshiftDestinationConfiguration.add_member(:s3_backup_configuration, Shapes::ShapeRef.new(shape: S3DestinationConfiguration, location_name: "S3BackupConfiguration"))
    RedshiftDestinationConfiguration.add_member(:cloud_watch_logging_options, Shapes::ShapeRef.new(shape: CloudWatchLoggingOptions, location_name: "CloudWatchLoggingOptions"))
    RedshiftDestinationConfiguration.struct_class = Types::RedshiftDestinationConfiguration

    RedshiftDestinationDescription.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, required: true, location_name: "RoleARN"))
    RedshiftDestinationDescription.add_member(:cluster_jdbc_url, Shapes::ShapeRef.new(shape: ClusterJDBCURL, required: true, location_name: "ClusterJDBCURL"))
    RedshiftDestinationDescription.add_member(:copy_command, Shapes::ShapeRef.new(shape: CopyCommand, required: true, location_name: "CopyCommand"))
    RedshiftDestinationDescription.add_member(:username, Shapes::ShapeRef.new(shape: Username, required: true, location_name: "Username"))
    RedshiftDestinationDescription.add_member(:retry_options, Shapes::ShapeRef.new(shape: RedshiftRetryOptions, location_name: "RetryOptions"))
    RedshiftDestinationDescription.add_member(:s3_destination_description, Shapes::ShapeRef.new(shape: S3DestinationDescription, required: true, location_name: "S3DestinationDescription"))
    RedshiftDestinationDescription.add_member(:processing_configuration, Shapes::ShapeRef.new(shape: ProcessingConfiguration, location_name: "ProcessingConfiguration"))
    RedshiftDestinationDescription.add_member(:s3_backup_mode, Shapes::ShapeRef.new(shape: RedshiftS3BackupMode, location_name: "S3BackupMode"))
    RedshiftDestinationDescription.add_member(:s3_backup_description, Shapes::ShapeRef.new(shape: S3DestinationDescription, location_name: "S3BackupDescription"))
    RedshiftDestinationDescription.add_member(:cloud_watch_logging_options, Shapes::ShapeRef.new(shape: CloudWatchLoggingOptions, location_name: "CloudWatchLoggingOptions"))
    RedshiftDestinationDescription.struct_class = Types::RedshiftDestinationDescription

    RedshiftDestinationUpdate.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleARN, location_name: "RoleARN"))
    RedshiftDestinationUpdate.add_member(:cluster_jdbc_url, Shapes::ShapeRef.new(shape: ClusterJDBCURL, location_name: "ClusterJDBCURL"))
    RedshiftDestinationUpdate.add_member(:copy_command, Shapes::ShapeRef.new(shape: CopyCommand, location_name: "CopyCommand"))
    RedshiftDestinationUpdate.add_member(:username, Shapes::ShapeRef.new(shape: Username, location_name: "Username"))
    RedshiftDestinationUpdate.add_member(:password, Shapes::ShapeRef.new(shape: Password, location_name: "Password"))
    RedshiftDestinationUpdate.add_member(:retry_options, Shapes::ShapeRef.new(shape: RedshiftRetryOptions, location_name: "RetryOptions"))
    RedshiftDestinationUpdate.add_member(:s3_update, Shapes::ShapeRef.new(shape: S3DestinationUpdate, location_name: "S3Update"))
    RedshiftDestinationUpdate.add_member(:processing_configuration, Shapes::ShapeRef.new(shape: ProcessingConfiguration, location_name: "ProcessingConfiguration"))
    RedshiftDestinationUpdate.add_member(:s3_backup_mode, Shapes::ShapeRef.new(shape: RedshiftS3BackupMode, location_name: "S3BackupMode"))
    RedshiftDestinationUpdate.add_member(:s3_backup_update, Shapes::ShapeRef.new(shape: S3DestinationUpdate, location_name: "S3BackupUpdate"))
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

    SchemaConfiguration.add_member(:role_arn, Shapes::ShapeRef.new(shape: NonEmptyStringWithoutWhitespace, location_name: "RoleARN"))
    SchemaConfiguration.add_member(:catalog_id, Shapes::ShapeRef.new(shape: NonEmptyStringWithoutWhitespace, location_name: "CatalogId"))
    SchemaConfiguration.add_member(:database_name, Shapes::ShapeRef.new(shape: NonEmptyStringWithoutWhitespace, location_name: "DatabaseName"))
    SchemaConfiguration.add_member(:table_name, Shapes::ShapeRef.new(shape: NonEmptyStringWithoutWhitespace, location_name: "TableName"))
    SchemaConfiguration.add_member(:region, Shapes::ShapeRef.new(shape: NonEmptyStringWithoutWhitespace, location_name: "Region"))
    SchemaConfiguration.add_member(:version_id, Shapes::ShapeRef.new(shape: NonEmptyStringWithoutWhitespace, location_name: "VersionId"))
    SchemaConfiguration.struct_class = Types::SchemaConfiguration

    Serializer.add_member(:parquet_ser_de, Shapes::ShapeRef.new(shape: ParquetSerDe, location_name: "ParquetSerDe"))
    Serializer.add_member(:orc_ser_de, Shapes::ShapeRef.new(shape: OrcSerDe, location_name: "OrcSerDe"))
    Serializer.struct_class = Types::Serializer

    SourceDescription.add_member(:kinesis_stream_source_description, Shapes::ShapeRef.new(shape: KinesisStreamSourceDescription, location_name: "KinesisStreamSourceDescription"))
    SourceDescription.struct_class = Types::SourceDescription

    SplunkDestinationConfiguration.add_member(:hec_endpoint, Shapes::ShapeRef.new(shape: HECEndpoint, required: true, location_name: "HECEndpoint"))
    SplunkDestinationConfiguration.add_member(:hec_endpoint_type, Shapes::ShapeRef.new(shape: HECEndpointType, required: true, location_name: "HECEndpointType"))
    SplunkDestinationConfiguration.add_member(:hec_token, Shapes::ShapeRef.new(shape: HECToken, required: true, location_name: "HECToken"))
    SplunkDestinationConfiguration.add_member(:hec_acknowledgment_timeout_in_seconds, Shapes::ShapeRef.new(shape: HECAcknowledgmentTimeoutInSeconds, location_name: "HECAcknowledgmentTimeoutInSeconds"))
    SplunkDestinationConfiguration.add_member(:retry_options, Shapes::ShapeRef.new(shape: SplunkRetryOptions, location_name: "RetryOptions"))
    SplunkDestinationConfiguration.add_member(:s3_backup_mode, Shapes::ShapeRef.new(shape: SplunkS3BackupMode, location_name: "S3BackupMode"))
    SplunkDestinationConfiguration.add_member(:s3_configuration, Shapes::ShapeRef.new(shape: S3DestinationConfiguration, required: true, location_name: "S3Configuration"))
    SplunkDestinationConfiguration.add_member(:processing_configuration, Shapes::ShapeRef.new(shape: ProcessingConfiguration, location_name: "ProcessingConfiguration"))
    SplunkDestinationConfiguration.add_member(:cloud_watch_logging_options, Shapes::ShapeRef.new(shape: CloudWatchLoggingOptions, location_name: "CloudWatchLoggingOptions"))
    SplunkDestinationConfiguration.struct_class = Types::SplunkDestinationConfiguration

    SplunkDestinationDescription.add_member(:hec_endpoint, Shapes::ShapeRef.new(shape: HECEndpoint, location_name: "HECEndpoint"))
    SplunkDestinationDescription.add_member(:hec_endpoint_type, Shapes::ShapeRef.new(shape: HECEndpointType, location_name: "HECEndpointType"))
    SplunkDestinationDescription.add_member(:hec_token, Shapes::ShapeRef.new(shape: HECToken, location_name: "HECToken"))
    SplunkDestinationDescription.add_member(:hec_acknowledgment_timeout_in_seconds, Shapes::ShapeRef.new(shape: HECAcknowledgmentTimeoutInSeconds, location_name: "HECAcknowledgmentTimeoutInSeconds"))
    SplunkDestinationDescription.add_member(:retry_options, Shapes::ShapeRef.new(shape: SplunkRetryOptions, location_name: "RetryOptions"))
    SplunkDestinationDescription.add_member(:s3_backup_mode, Shapes::ShapeRef.new(shape: SplunkS3BackupMode, location_name: "S3BackupMode"))
    SplunkDestinationDescription.add_member(:s3_destination_description, Shapes::ShapeRef.new(shape: S3DestinationDescription, location_name: "S3DestinationDescription"))
    SplunkDestinationDescription.add_member(:processing_configuration, Shapes::ShapeRef.new(shape: ProcessingConfiguration, location_name: "ProcessingConfiguration"))
    SplunkDestinationDescription.add_member(:cloud_watch_logging_options, Shapes::ShapeRef.new(shape: CloudWatchLoggingOptions, location_name: "CloudWatchLoggingOptions"))
    SplunkDestinationDescription.struct_class = Types::SplunkDestinationDescription

    SplunkDestinationUpdate.add_member(:hec_endpoint, Shapes::ShapeRef.new(shape: HECEndpoint, location_name: "HECEndpoint"))
    SplunkDestinationUpdate.add_member(:hec_endpoint_type, Shapes::ShapeRef.new(shape: HECEndpointType, location_name: "HECEndpointType"))
    SplunkDestinationUpdate.add_member(:hec_token, Shapes::ShapeRef.new(shape: HECToken, location_name: "HECToken"))
    SplunkDestinationUpdate.add_member(:hec_acknowledgment_timeout_in_seconds, Shapes::ShapeRef.new(shape: HECAcknowledgmentTimeoutInSeconds, location_name: "HECAcknowledgmentTimeoutInSeconds"))
    SplunkDestinationUpdate.add_member(:retry_options, Shapes::ShapeRef.new(shape: SplunkRetryOptions, location_name: "RetryOptions"))
    SplunkDestinationUpdate.add_member(:s3_backup_mode, Shapes::ShapeRef.new(shape: SplunkS3BackupMode, location_name: "S3BackupMode"))
    SplunkDestinationUpdate.add_member(:s3_update, Shapes::ShapeRef.new(shape: S3DestinationUpdate, location_name: "S3Update"))
    SplunkDestinationUpdate.add_member(:processing_configuration, Shapes::ShapeRef.new(shape: ProcessingConfiguration, location_name: "ProcessingConfiguration"))
    SplunkDestinationUpdate.add_member(:cloud_watch_logging_options, Shapes::ShapeRef.new(shape: CloudWatchLoggingOptions, location_name: "CloudWatchLoggingOptions"))
    SplunkDestinationUpdate.struct_class = Types::SplunkDestinationUpdate

    SplunkRetryOptions.add_member(:duration_in_seconds, Shapes::ShapeRef.new(shape: SplunkRetryDurationInSeconds, location_name: "DurationInSeconds"))
    SplunkRetryOptions.struct_class = Types::SplunkRetryOptions

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagDeliveryStreamInput.add_member(:delivery_stream_name, Shapes::ShapeRef.new(shape: DeliveryStreamName, required: true, location_name: "DeliveryStreamName"))
    TagDeliveryStreamInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagDeliveryStreamInputTagList, required: true, location_name: "Tags"))
    TagDeliveryStreamInput.struct_class = Types::TagDeliveryStreamInput

    TagDeliveryStreamInputTagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagDeliveryStreamOutput.struct_class = Types::TagDeliveryStreamOutput

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    UntagDeliveryStreamInput.add_member(:delivery_stream_name, Shapes::ShapeRef.new(shape: DeliveryStreamName, required: true, location_name: "DeliveryStreamName"))
    UntagDeliveryStreamInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagDeliveryStreamInput.struct_class = Types::UntagDeliveryStreamInput

    UntagDeliveryStreamOutput.struct_class = Types::UntagDeliveryStreamOutput

    UpdateDestinationInput.add_member(:delivery_stream_name, Shapes::ShapeRef.new(shape: DeliveryStreamName, required: true, location_name: "DeliveryStreamName"))
    UpdateDestinationInput.add_member(:current_delivery_stream_version_id, Shapes::ShapeRef.new(shape: DeliveryStreamVersionId, required: true, location_name: "CurrentDeliveryStreamVersionId"))
    UpdateDestinationInput.add_member(:destination_id, Shapes::ShapeRef.new(shape: DestinationId, required: true, location_name: "DestinationId"))
    UpdateDestinationInput.add_member(:s3_destination_update, Shapes::ShapeRef.new(shape: S3DestinationUpdate, deprecated: true, location_name: "S3DestinationUpdate"))
    UpdateDestinationInput.add_member(:extended_s3_destination_update, Shapes::ShapeRef.new(shape: ExtendedS3DestinationUpdate, location_name: "ExtendedS3DestinationUpdate"))
    UpdateDestinationInput.add_member(:redshift_destination_update, Shapes::ShapeRef.new(shape: RedshiftDestinationUpdate, location_name: "RedshiftDestinationUpdate"))
    UpdateDestinationInput.add_member(:elasticsearch_destination_update, Shapes::ShapeRef.new(shape: ElasticsearchDestinationUpdate, location_name: "ElasticsearchDestinationUpdate"))
    UpdateDestinationInput.add_member(:splunk_destination_update, Shapes::ShapeRef.new(shape: SplunkDestinationUpdate, location_name: "SplunkDestinationUpdate"))
    UpdateDestinationInput.struct_class = Types::UpdateDestinationInput

    UpdateDestinationOutput.struct_class = Types::UpdateDestinationOutput


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2015-08-04"

      api.metadata = {
        "apiVersion" => "2015-08-04",
        "endpointPrefix" => "firehose",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceAbbreviation" => "Firehose",
        "serviceFullName" => "Amazon Kinesis Firehose",
        "serviceId" => "Firehose",
        "signatureVersion" => "v4",
        "targetPrefix" => "Firehose_20150804",
        "uid" => "firehose-2015-08-04",
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

      api.add_operation(:list_tags_for_delivery_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForDeliveryStream"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForDeliveryStreamInput)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForDeliveryStreamOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
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

      api.add_operation(:tag_delivery_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagDeliveryStream"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagDeliveryStreamInput)
        o.output = Shapes::ShapeRef.new(shape: TagDeliveryStreamOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:untag_delivery_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagDeliveryStream"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagDeliveryStreamInput)
        o.output = Shapes::ShapeRef.new(shape: UntagDeliveryStreamOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
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
