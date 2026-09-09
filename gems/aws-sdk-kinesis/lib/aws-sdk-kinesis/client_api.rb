# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Kinesis
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AddTagsToStreamInput = Shapes::StructureShape.new(name: 'AddTagsToStreamInput')
    BooleanObject = Shapes::BooleanShape.new(name: 'BooleanObject')
    BucketARN = Shapes::StringShape.new(name: 'BucketARN')
    ChannelARN = Shapes::StringShape.new(name: 'ChannelARN')
    ChannelCountObject = Shapes::IntegerShape.new(name: 'ChannelCountObject')
    ChannelDescription = Shapes::StructureShape.new(name: 'ChannelDescription')
    ChannelDestinationType = Shapes::StringShape.new(name: 'ChannelDestinationType')
    ChannelEncryptionConfiguration = Shapes::StructureShape.new(name: 'ChannelEncryptionConfiguration')
    ChannelEncryptionType = Shapes::StringShape.new(name: 'ChannelEncryptionType')
    ChannelId = Shapes::StringShape.new(name: 'ChannelId')
    ChannelLoggingConfiguration = Shapes::StructureShape.new(name: 'ChannelLoggingConfiguration')
    ChannelLoggingUpdateInput = Shapes::StructureShape.new(name: 'ChannelLoggingUpdateInput')
    ChannelName = Shapes::StringShape.new(name: 'ChannelName')
    ChannelStatus = Shapes::StringShape.new(name: 'ChannelStatus')
    ChannelStatusReason = Shapes::StringShape.new(name: 'ChannelStatusReason')
    ChannelStreamConfiguration = Shapes::StructureShape.new(name: 'ChannelStreamConfiguration')
    ChannelStreamConfigurationList = Shapes::ListShape.new(name: 'ChannelStreamConfigurationList')
    ChannelStreamDescription = Shapes::StructureShape.new(name: 'ChannelStreamDescription')
    ChannelStreamDescriptionList = Shapes::ListShape.new(name: 'ChannelStreamDescriptionList')
    ChannelStreamIdentifier = Shapes::StructureShape.new(name: 'ChannelStreamIdentifier')
    ChannelStreamIdentifierList = Shapes::ListShape.new(name: 'ChannelStreamIdentifierList')
    ChannelSummary = Shapes::StructureShape.new(name: 'ChannelSummary')
    ChannelSummaryList = Shapes::ListShape.new(name: 'ChannelSummaryList')
    ChildShard = Shapes::StructureShape.new(name: 'ChildShard')
    ChildShardList = Shapes::ListShape.new(name: 'ChildShardList')
    CloudWatchLogGroupName = Shapes::StringShape.new(name: 'CloudWatchLogGroupName')
    CloudWatchLogStreamName = Shapes::StringShape.new(name: 'CloudWatchLogStreamName')
    CloudWatchLogs = Shapes::StructureShape.new(name: 'CloudWatchLogs')
    CloudWatchLogsUpdateInput = Shapes::StructureShape.new(name: 'CloudWatchLogsUpdateInput')
    Consumer = Shapes::StructureShape.new(name: 'Consumer')
    ConsumerARN = Shapes::StringShape.new(name: 'ConsumerARN')
    ConsumerCountObject = Shapes::IntegerShape.new(name: 'ConsumerCountObject')
    ConsumerDescription = Shapes::StructureShape.new(name: 'ConsumerDescription')
    ConsumerList = Shapes::ListShape.new(name: 'ConsumerList')
    ConsumerName = Shapes::StringShape.new(name: 'ConsumerName')
    ConsumerStatus = Shapes::StringShape.new(name: 'ConsumerStatus')
    CreateChannelInput = Shapes::StructureShape.new(name: 'CreateChannelInput')
    CreateChannelOutput = Shapes::StructureShape.new(name: 'CreateChannelOutput')
    CreateStreamInput = Shapes::StructureShape.new(name: 'CreateStreamInput')
    Data = Shapes::BlobShape.new(name: 'Data')
    DataFreshnessInSeconds = Shapes::IntegerShape.new(name: 'DataFreshnessInSeconds')
    DeadLetterQueueS3Configuration = Shapes::StructureShape.new(name: 'DeadLetterQueueS3Configuration')
    DecreaseStreamRetentionPeriodInput = Shapes::StructureShape.new(name: 'DecreaseStreamRetentionPeriodInput')
    DeleteChannelInput = Shapes::StructureShape.new(name: 'DeleteChannelInput')
    DeleteResourcePolicyInput = Shapes::StructureShape.new(name: 'DeleteResourcePolicyInput')
    DeleteStreamInput = Shapes::StructureShape.new(name: 'DeleteStreamInput')
    DeregisterStreamConsumerInput = Shapes::StructureShape.new(name: 'DeregisterStreamConsumerInput')
    DescribeAccountSettingsInput = Shapes::StructureShape.new(name: 'DescribeAccountSettingsInput')
    DescribeAccountSettingsOutput = Shapes::StructureShape.new(name: 'DescribeAccountSettingsOutput')
    DescribeChannelInput = Shapes::StructureShape.new(name: 'DescribeChannelInput')
    DescribeChannelOutput = Shapes::StructureShape.new(name: 'DescribeChannelOutput')
    DescribeLimitsInput = Shapes::StructureShape.new(name: 'DescribeLimitsInput')
    DescribeLimitsOutput = Shapes::StructureShape.new(name: 'DescribeLimitsOutput')
    DescribeStreamConsumerInput = Shapes::StructureShape.new(name: 'DescribeStreamConsumerInput')
    DescribeStreamConsumerOutput = Shapes::StructureShape.new(name: 'DescribeStreamConsumerOutput')
    DescribeStreamInput = Shapes::StructureShape.new(name: 'DescribeStreamInput')
    DescribeStreamInputLimit = Shapes::IntegerShape.new(name: 'DescribeStreamInputLimit')
    DescribeStreamOutput = Shapes::StructureShape.new(name: 'DescribeStreamOutput')
    DescribeStreamSummaryInput = Shapes::StructureShape.new(name: 'DescribeStreamSummaryInput')
    DescribeStreamSummaryOutput = Shapes::StructureShape.new(name: 'DescribeStreamSummaryOutput')
    DisableEnhancedMonitoringInput = Shapes::StructureShape.new(name: 'DisableEnhancedMonitoringInput')
    DryRunOperationException = Shapes::StructureShape.new(name: 'DryRunOperationException')
    EnableEnhancedMonitoringInput = Shapes::StructureShape.new(name: 'EnableEnhancedMonitoringInput')
    EncryptionType = Shapes::StringShape.new(name: 'EncryptionType')
    EnhancedMetrics = Shapes::StructureShape.new(name: 'EnhancedMetrics')
    EnhancedMonitoringList = Shapes::ListShape.new(name: 'EnhancedMonitoringList')
    EnhancedMonitoringOutput = Shapes::StructureShape.new(name: 'EnhancedMonitoringOutput')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ExpectedBucketOwner = Shapes::StringShape.new(name: 'ExpectedBucketOwner')
    ExpiredIteratorException = Shapes::StructureShape.new(name: 'ExpiredIteratorException')
    ExpiredNextTokenException = Shapes::StructureShape.new(name: 'ExpiredNextTokenException')
    GSRSchemaARN = Shapes::StringShape.new(name: 'GSRSchemaARN')
    GetRecordsInput = Shapes::StructureShape.new(name: 'GetRecordsInput')
    GetRecordsInputLimit = Shapes::IntegerShape.new(name: 'GetRecordsInputLimit')
    GetRecordsOutput = Shapes::StructureShape.new(name: 'GetRecordsOutput')
    GetResourcePolicyInput = Shapes::StructureShape.new(name: 'GetResourcePolicyInput')
    GetResourcePolicyOutput = Shapes::StructureShape.new(name: 'GetResourcePolicyOutput')
    GetShardIteratorInput = Shapes::StructureShape.new(name: 'GetShardIteratorInput')
    GetShardIteratorOutput = Shapes::StructureShape.new(name: 'GetShardIteratorOutput')
    HashKey = Shapes::StringShape.new(name: 'HashKey')
    HashKeyRange = Shapes::StructureShape.new(name: 'HashKeyRange')
    IncreaseStreamRetentionPeriodInput = Shapes::StructureShape.new(name: 'IncreaseStreamRetentionPeriodInput')
    InternalFailureException = Shapes::StructureShape.new(name: 'InternalFailureException')
    InvalidArgumentException = Shapes::StructureShape.new(name: 'InvalidArgumentException')
    KMSAccessDeniedException = Shapes::StructureShape.new(name: 'KMSAccessDeniedException')
    KMSDisabledException = Shapes::StructureShape.new(name: 'KMSDisabledException')
    KMSInvalidStateException = Shapes::StructureShape.new(name: 'KMSInvalidStateException')
    KMSNotFoundException = Shapes::StructureShape.new(name: 'KMSNotFoundException')
    KMSOptInRequired = Shapes::StructureShape.new(name: 'KMSOptInRequired')
    KMSThrottlingException = Shapes::StructureShape.new(name: 'KMSThrottlingException')
    KeyId = Shapes::StringShape.new(name: 'KeyId')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListChannelsInput = Shapes::StructureShape.new(name: 'ListChannelsInput')
    ListChannelsInputLimit = Shapes::IntegerShape.new(name: 'ListChannelsInputLimit')
    ListChannelsOutput = Shapes::StructureShape.new(name: 'ListChannelsOutput')
    ListShardsInput = Shapes::StructureShape.new(name: 'ListShardsInput')
    ListShardsInputLimit = Shapes::IntegerShape.new(name: 'ListShardsInputLimit')
    ListShardsOutput = Shapes::StructureShape.new(name: 'ListShardsOutput')
    ListStreamConsumersInput = Shapes::StructureShape.new(name: 'ListStreamConsumersInput')
    ListStreamConsumersInputLimit = Shapes::IntegerShape.new(name: 'ListStreamConsumersInputLimit')
    ListStreamConsumersOutput = Shapes::StructureShape.new(name: 'ListStreamConsumersOutput')
    ListStreamsInput = Shapes::StructureShape.new(name: 'ListStreamsInput')
    ListStreamsInputLimit = Shapes::IntegerShape.new(name: 'ListStreamsInputLimit')
    ListStreamsOutput = Shapes::StructureShape.new(name: 'ListStreamsOutput')
    ListTagsForResourceInput = Shapes::StructureShape.new(name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Shapes::StructureShape.new(name: 'ListTagsForResourceOutput')
    ListTagsForStreamInput = Shapes::StructureShape.new(name: 'ListTagsForStreamInput')
    ListTagsForStreamInputLimit = Shapes::IntegerShape.new(name: 'ListTagsForStreamInputLimit')
    ListTagsForStreamOutput = Shapes::StructureShape.new(name: 'ListTagsForStreamOutput')
    MaxRecordSizeInKiB = Shapes::IntegerShape.new(name: 'MaxRecordSizeInKiB')
    MergeShardsInput = Shapes::StructureShape.new(name: 'MergeShardsInput')
    MetricsName = Shapes::StringShape.new(name: 'MetricsName')
    MetricsNameList = Shapes::ListShape.new(name: 'MetricsNameList')
    MillisBehindLatest = Shapes::IntegerShape.new(name: 'MillisBehindLatest')
    MinimumThroughputBillingCommitmentInput = Shapes::StructureShape.new(name: 'MinimumThroughputBillingCommitmentInput')
    MinimumThroughputBillingCommitmentInputStatus = Shapes::StringShape.new(name: 'MinimumThroughputBillingCommitmentInputStatus')
    MinimumThroughputBillingCommitmentOutput = Shapes::StructureShape.new(name: 'MinimumThroughputBillingCommitmentOutput')
    MinimumThroughputBillingCommitmentOutputStatus = Shapes::StringShape.new(name: 'MinimumThroughputBillingCommitmentOutputStatus')
    NaturalIntegerObject = Shapes::IntegerShape.new(name: 'NaturalIntegerObject')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    OnDemandStreamCountLimitObject = Shapes::IntegerShape.new(name: 'OnDemandStreamCountLimitObject')
    OnDemandStreamCountObject = Shapes::IntegerShape.new(name: 'OnDemandStreamCountObject')
    PartitionField = Shapes::StructureShape.new(name: 'PartitionField')
    PartitionFieldList = Shapes::ListShape.new(name: 'PartitionFieldList')
    PartitionKey = Shapes::StringShape.new(name: 'PartitionKey')
    PartitionSourceName = Shapes::StringShape.new(name: 'PartitionSourceName')
    PartitionSpec = Shapes::StructureShape.new(name: 'PartitionSpec')
    PartitionTransform = Shapes::StringShape.new(name: 'PartitionTransform')
    Policy = Shapes::StringShape.new(name: 'Policy')
    PositiveIntegerObject = Shapes::IntegerShape.new(name: 'PositiveIntegerObject')
    ProvisionedThroughputExceededException = Shapes::StructureShape.new(name: 'ProvisionedThroughputExceededException')
    PutRecordInput = Shapes::StructureShape.new(name: 'PutRecordInput')
    PutRecordOutput = Shapes::StructureShape.new(name: 'PutRecordOutput')
    PutRecordsInput = Shapes::StructureShape.new(name: 'PutRecordsInput')
    PutRecordsOutput = Shapes::StructureShape.new(name: 'PutRecordsOutput')
    PutRecordsRequestEntry = Shapes::StructureShape.new(name: 'PutRecordsRequestEntry')
    PutRecordsRequestEntryList = Shapes::ListShape.new(name: 'PutRecordsRequestEntryList')
    PutRecordsResultEntry = Shapes::StructureShape.new(name: 'PutRecordsResultEntry')
    PutRecordsResultEntryList = Shapes::ListShape.new(name: 'PutRecordsResultEntryList')
    PutResourcePolicyInput = Shapes::StructureShape.new(name: 'PutResourcePolicyInput')
    Record = Shapes::StructureShape.new(name: 'Record')
    RecordConfiguration = Shapes::StructureShape.new(name: 'RecordConfiguration')
    RecordFormatType = Shapes::StringShape.new(name: 'RecordFormatType')
    RecordList = Shapes::ListShape.new(name: 'RecordList')
    RegisterStreamConsumerInput = Shapes::StructureShape.new(name: 'RegisterStreamConsumerInput')
    RegisterStreamConsumerOutput = Shapes::StructureShape.new(name: 'RegisterStreamConsumerOutput')
    RemoveTagsFromStreamInput = Shapes::StructureShape.new(name: 'RemoveTagsFromStreamInput')
    ResourceARN = Shapes::StringShape.new(name: 'ResourceARN')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RetentionPeriodHours = Shapes::IntegerShape.new(name: 'RetentionPeriodHours')
    RoleARN = Shapes::StringShape.new(name: 'RoleARN')
    S3CompressionType = Shapes::StringShape.new(name: 'S3CompressionType')
    S3DestinationConfiguration = Shapes::StructureShape.new(name: 'S3DestinationConfiguration')
    S3DestinationDescription = Shapes::StructureShape.new(name: 'S3DestinationDescription')
    S3DestinationUpdateInput = Shapes::StructureShape.new(name: 'S3DestinationUpdateInput')
    S3ErrorOutputPrefix = Shapes::StringShape.new(name: 'S3ErrorOutputPrefix')
    S3OutputKeyTemplate = Shapes::StringShape.new(name: 'S3OutputKeyTemplate')
    S3StorageClass = Shapes::StringShape.new(name: 'S3StorageClass')
    S3StorageConfiguration = Shapes::StructureShape.new(name: 'S3StorageConfiguration')
    S3TablesCompressionType = Shapes::StringShape.new(name: 'S3TablesCompressionType')
    S3TablesConfiguration = Shapes::StructureShape.new(name: 'S3TablesConfiguration')
    S3TablesConfigurationList = Shapes::ListShape.new(name: 'S3TablesConfigurationList')
    S3TablesDestinationConfiguration = Shapes::StructureShape.new(name: 'S3TablesDestinationConfiguration')
    S3TablesDestinationDescription = Shapes::StructureShape.new(name: 'S3TablesDestinationDescription')
    S3TablesDestinationUpdateInput = Shapes::StructureShape.new(name: 'S3TablesDestinationUpdateInput')
    S3TablesNamespace = Shapes::StringShape.new(name: 'S3TablesNamespace')
    S3TablesTableName = Shapes::StringShape.new(name: 'S3TablesTableName')
    ScalingType = Shapes::StringShape.new(name: 'ScalingType')
    SequenceNumber = Shapes::StringShape.new(name: 'SequenceNumber')
    SequenceNumberRange = Shapes::StructureShape.new(name: 'SequenceNumberRange')
    Shard = Shapes::StructureShape.new(name: 'Shard')
    ShardCountObject = Shapes::IntegerShape.new(name: 'ShardCountObject')
    ShardFilter = Shapes::StructureShape.new(name: 'ShardFilter')
    ShardFilterType = Shapes::StringShape.new(name: 'ShardFilterType')
    ShardId = Shapes::StringShape.new(name: 'ShardId')
    ShardIdList = Shapes::ListShape.new(name: 'ShardIdList')
    ShardIterator = Shapes::StringShape.new(name: 'ShardIterator')
    ShardIteratorType = Shapes::StringShape.new(name: 'ShardIteratorType')
    ShardList = Shapes::ListShape.new(name: 'ShardList')
    SplitShardInput = Shapes::StructureShape.new(name: 'SplitShardInput')
    StartStreamEncryptionInput = Shapes::StructureShape.new(name: 'StartStreamEncryptionInput')
    StartingPosition = Shapes::StructureShape.new(name: 'StartingPosition')
    StopStreamEncryptionInput = Shapes::StructureShape.new(name: 'StopStreamEncryptionInput')
    StreamARN = Shapes::StringShape.new(name: 'StreamARN')
    StreamDescription = Shapes::StructureShape.new(name: 'StreamDescription')
    StreamDescriptionSummary = Shapes::StructureShape.new(name: 'StreamDescriptionSummary')
    StreamFilter = Shapes::StructureShape.new(name: 'StreamFilter')
    StreamFilterList = Shapes::ListShape.new(name: 'StreamFilterList')
    StreamId = Shapes::StringShape.new(name: 'StreamId')
    StreamMode = Shapes::StringShape.new(name: 'StreamMode')
    StreamModeDetails = Shapes::StructureShape.new(name: 'StreamModeDetails')
    StreamName = Shapes::StringShape.new(name: 'StreamName')
    StreamNameList = Shapes::ListShape.new(name: 'StreamNameList')
    StreamStatus = Shapes::StringShape.new(name: 'StreamStatus')
    StreamSummary = Shapes::StructureShape.new(name: 'StreamSummary')
    StreamSummaryList = Shapes::ListShape.new(name: 'StreamSummaryList')
    SubscribeToShardEvent = Shapes::StructureShape.new(name: 'SubscribeToShardEvent')
    SubscribeToShardEventStream = Shapes::StructureShape.new(name: 'SubscribeToShardEventStream')
    SubscribeToShardInput = Shapes::StructureShape.new(name: 'SubscribeToShardInput')
    SubscribeToShardOutput = Shapes::StructureShape.new(name: 'SubscribeToShardOutput')
    TableBucketARN = Shapes::StringShape.new(name: 'TableBucketARN')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceInput = Shapes::StructureShape.new(name: 'TagResourceInput')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UntagResourceInput = Shapes::StructureShape.new(name: 'UntagResourceInput')
    UpdateAccountSettingsInput = Shapes::StructureShape.new(name: 'UpdateAccountSettingsInput')
    UpdateAccountSettingsOutput = Shapes::StructureShape.new(name: 'UpdateAccountSettingsOutput')
    UpdateChannelInput = Shapes::StructureShape.new(name: 'UpdateChannelInput')
    UpdateChannelOutput = Shapes::StructureShape.new(name: 'UpdateChannelOutput')
    UpdateMaxRecordSizeInput = Shapes::StructureShape.new(name: 'UpdateMaxRecordSizeInput')
    UpdateShardCountInput = Shapes::StructureShape.new(name: 'UpdateShardCountInput')
    UpdateShardCountOutput = Shapes::StructureShape.new(name: 'UpdateShardCountOutput')
    UpdateStreamModeInput = Shapes::StructureShape.new(name: 'UpdateStreamModeInput')
    UpdateStreamWarmThroughputInput = Shapes::StructureShape.new(name: 'UpdateStreamWarmThroughputInput')
    UpdateStreamWarmThroughputOutput = Shapes::StructureShape.new(name: 'UpdateStreamWarmThroughputOutput')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    WarmThroughputObject = Shapes::StructureShape.new(name: 'WarmThroughputObject')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AddTagsToStreamInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, location_name: "StreamName"))
    AddTagsToStreamInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "Tags"))
    AddTagsToStreamInput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: StreamARN, location_name: "StreamARN", metadata: {"contextParam" => {"name" => "StreamARN"}}))
    AddTagsToStreamInput.add_member(:stream_id, Shapes::ShapeRef.new(shape: StreamId, location_name: "StreamId", metadata: {"contextParam" => {"name" => "StreamId"}}))
    AddTagsToStreamInput.struct_class = Types::AddTagsToStreamInput

    ChannelDescription.add_member(:channel_name, Shapes::ShapeRef.new(shape: ChannelName, required: true, location_name: "ChannelName"))
    ChannelDescription.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChannelARN, required: true, location_name: "ChannelARN"))
    ChannelDescription.add_member(:channel_id, Shapes::ShapeRef.new(shape: ChannelId, required: true, location_name: "ChannelId"))
    ChannelDescription.add_member(:channel_status, Shapes::ShapeRef.new(shape: ChannelStatus, required: true, location_name: "ChannelStatus"))
    ChannelDescription.add_member(:channel_status_reason, Shapes::ShapeRef.new(shape: ChannelStatusReason, location_name: "ChannelStatusReason"))
    ChannelDescription.add_member(:channel_creation_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "ChannelCreationTimestamp"))
    ChannelDescription.add_member(:service_execution_role_arn, Shapes::ShapeRef.new(shape: RoleARN, required: true, location_name: "ServiceExecutionRoleARN"))
    ChannelDescription.add_member(:stream_configuration_list, Shapes::ShapeRef.new(shape: ChannelStreamDescriptionList, required: true, location_name: "StreamConfigurationList"))
    ChannelDescription.add_member(:s3_destination_configuration, Shapes::ShapeRef.new(shape: S3DestinationDescription, location_name: "S3DestinationConfiguration"))
    ChannelDescription.add_member(:s3_tables_destination_configuration, Shapes::ShapeRef.new(shape: S3TablesDestinationDescription, location_name: "S3TablesDestinationConfiguration"))
    ChannelDescription.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: ChannelEncryptionConfiguration, location_name: "EncryptionConfiguration"))
    ChannelDescription.add_member(:logging_configuration, Shapes::ShapeRef.new(shape: ChannelLoggingConfiguration, required: true, location_name: "LoggingConfiguration"))
    ChannelDescription.struct_class = Types::ChannelDescription

    ChannelEncryptionConfiguration.add_member(:encryption_type, Shapes::ShapeRef.new(shape: ChannelEncryptionType, required: true, location_name: "EncryptionType"))
    ChannelEncryptionConfiguration.add_member(:key_id, Shapes::ShapeRef.new(shape: KeyId, required: true, location_name: "KeyId"))
    ChannelEncryptionConfiguration.struct_class = Types::ChannelEncryptionConfiguration

    ChannelLoggingConfiguration.add_member(:cloud_watch_logs, Shapes::ShapeRef.new(shape: CloudWatchLogs, required: true, location_name: "CloudWatchLogs"))
    ChannelLoggingConfiguration.struct_class = Types::ChannelLoggingConfiguration

    ChannelLoggingUpdateInput.add_member(:cloud_watch_logs, Shapes::ShapeRef.new(shape: CloudWatchLogsUpdateInput, required: true, location_name: "CloudWatchLogs"))
    ChannelLoggingUpdateInput.struct_class = Types::ChannelLoggingUpdateInput

    ChannelStreamConfiguration.add_member(:stream_arn, Shapes::ShapeRef.new(shape: StreamARN, required: true, location_name: "StreamARN"))
    ChannelStreamConfiguration.add_member(:record_configuration, Shapes::ShapeRef.new(shape: RecordConfiguration, required: true, location_name: "RecordConfiguration"))
    ChannelStreamConfiguration.struct_class = Types::ChannelStreamConfiguration

    ChannelStreamConfigurationList.member = Shapes::ShapeRef.new(shape: ChannelStreamConfiguration)

    ChannelStreamDescription.add_member(:stream_arn, Shapes::ShapeRef.new(shape: StreamARN, required: true, location_name: "StreamARN"))
    ChannelStreamDescription.add_member(:stream_creation_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "StreamCreationTimestamp"))
    ChannelStreamDescription.add_member(:record_configuration, Shapes::ShapeRef.new(shape: RecordConfiguration, required: true, location_name: "RecordConfiguration"))
    ChannelStreamDescription.struct_class = Types::ChannelStreamDescription

    ChannelStreamDescriptionList.member = Shapes::ShapeRef.new(shape: ChannelStreamDescription)

    ChannelStreamIdentifier.add_member(:stream_arn, Shapes::ShapeRef.new(shape: StreamARN, required: true, location_name: "StreamARN"))
    ChannelStreamIdentifier.add_member(:stream_creation_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "StreamCreationTimestamp"))
    ChannelStreamIdentifier.struct_class = Types::ChannelStreamIdentifier

    ChannelStreamIdentifierList.member = Shapes::ShapeRef.new(shape: ChannelStreamIdentifier)

    ChannelSummary.add_member(:channel_name, Shapes::ShapeRef.new(shape: ChannelName, required: true, location_name: "ChannelName"))
    ChannelSummary.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChannelARN, required: true, location_name: "ChannelARN"))
    ChannelSummary.add_member(:channel_id, Shapes::ShapeRef.new(shape: ChannelId, required: true, location_name: "ChannelId"))
    ChannelSummary.add_member(:channel_status, Shapes::ShapeRef.new(shape: ChannelStatus, required: true, location_name: "ChannelStatus"))
    ChannelSummary.add_member(:channel_status_reason, Shapes::ShapeRef.new(shape: ChannelStatusReason, location_name: "ChannelStatusReason"))
    ChannelSummary.add_member(:channel_creation_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "ChannelCreationTimestamp"))
    ChannelSummary.add_member(:channel_destination_type, Shapes::ShapeRef.new(shape: ChannelDestinationType, required: true, location_name: "ChannelDestinationType"))
    ChannelSummary.add_member(:streams, Shapes::ShapeRef.new(shape: ChannelStreamIdentifierList, required: true, location_name: "Streams"))
    ChannelSummary.struct_class = Types::ChannelSummary

    ChannelSummaryList.member = Shapes::ShapeRef.new(shape: ChannelSummary)

    ChildShard.add_member(:shard_id, Shapes::ShapeRef.new(shape: ShardId, required: true, location_name: "ShardId"))
    ChildShard.add_member(:parent_shards, Shapes::ShapeRef.new(shape: ShardIdList, required: true, location_name: "ParentShards"))
    ChildShard.add_member(:hash_key_range, Shapes::ShapeRef.new(shape: HashKeyRange, required: true, location_name: "HashKeyRange"))
    ChildShard.struct_class = Types::ChildShard

    ChildShardList.member = Shapes::ShapeRef.new(shape: ChildShard)

    CloudWatchLogs.add_member(:enabled, Shapes::ShapeRef.new(shape: BooleanObject, required: true, location_name: "Enabled"))
    CloudWatchLogs.add_member(:log_group_name, Shapes::ShapeRef.new(shape: CloudWatchLogGroupName, location_name: "LogGroupName"))
    CloudWatchLogs.add_member(:log_stream_name, Shapes::ShapeRef.new(shape: CloudWatchLogStreamName, location_name: "LogStreamName"))
    CloudWatchLogs.struct_class = Types::CloudWatchLogs

    CloudWatchLogsUpdateInput.add_member(:enabled, Shapes::ShapeRef.new(shape: BooleanObject, required: true, location_name: "Enabled"))
    CloudWatchLogsUpdateInput.add_member(:log_group_name, Shapes::ShapeRef.new(shape: CloudWatchLogGroupName, location_name: "LogGroupName"))
    CloudWatchLogsUpdateInput.add_member(:log_stream_name, Shapes::ShapeRef.new(shape: CloudWatchLogStreamName, location_name: "LogStreamName"))
    CloudWatchLogsUpdateInput.struct_class = Types::CloudWatchLogsUpdateInput

    Consumer.add_member(:consumer_name, Shapes::ShapeRef.new(shape: ConsumerName, required: true, location_name: "ConsumerName"))
    Consumer.add_member(:consumer_arn, Shapes::ShapeRef.new(shape: ConsumerARN, required: true, location_name: "ConsumerARN"))
    Consumer.add_member(:consumer_status, Shapes::ShapeRef.new(shape: ConsumerStatus, required: true, location_name: "ConsumerStatus"))
    Consumer.add_member(:consumer_creation_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "ConsumerCreationTimestamp"))
    Consumer.struct_class = Types::Consumer

    ConsumerDescription.add_member(:consumer_name, Shapes::ShapeRef.new(shape: ConsumerName, required: true, location_name: "ConsumerName"))
    ConsumerDescription.add_member(:consumer_arn, Shapes::ShapeRef.new(shape: ConsumerARN, required: true, location_name: "ConsumerARN"))
    ConsumerDescription.add_member(:consumer_status, Shapes::ShapeRef.new(shape: ConsumerStatus, required: true, location_name: "ConsumerStatus"))
    ConsumerDescription.add_member(:consumer_creation_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "ConsumerCreationTimestamp"))
    ConsumerDescription.add_member(:stream_arn, Shapes::ShapeRef.new(shape: StreamARN, required: true, location_name: "StreamARN"))
    ConsumerDescription.struct_class = Types::ConsumerDescription

    ConsumerList.member = Shapes::ShapeRef.new(shape: Consumer)

    CreateChannelInput.add_member(:channel_name, Shapes::ShapeRef.new(shape: ChannelName, required: true, location_name: "ChannelName"))
    CreateChannelInput.add_member(:service_execution_role_arn, Shapes::ShapeRef.new(shape: RoleARN, required: true, location_name: "ServiceExecutionRoleARN"))
    CreateChannelInput.add_member(:stream_configuration_list, Shapes::ShapeRef.new(shape: ChannelStreamConfigurationList, required: true, location_name: "StreamConfigurationList"))
    CreateChannelInput.add_member(:s3_destination_configuration, Shapes::ShapeRef.new(shape: S3DestinationConfiguration, location_name: "S3DestinationConfiguration"))
    CreateChannelInput.add_member(:s3_tables_destination_configuration, Shapes::ShapeRef.new(shape: S3TablesDestinationConfiguration, location_name: "S3TablesDestinationConfiguration"))
    CreateChannelInput.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: ChannelEncryptionConfiguration, location_name: "EncryptionConfiguration"))
    CreateChannelInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateChannelInput.add_member(:logging_configuration, Shapes::ShapeRef.new(shape: ChannelLoggingConfiguration, location_name: "LoggingConfiguration"))
    CreateChannelInput.struct_class = Types::CreateChannelInput

    CreateChannelOutput.add_member(:channel_description, Shapes::ShapeRef.new(shape: ChannelDescription, required: true, location_name: "ChannelDescription"))
    CreateChannelOutput.struct_class = Types::CreateChannelOutput

    CreateStreamInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, required: true, location_name: "StreamName"))
    CreateStreamInput.add_member(:shard_count, Shapes::ShapeRef.new(shape: PositiveIntegerObject, location_name: "ShardCount"))
    CreateStreamInput.add_member(:stream_mode_details, Shapes::ShapeRef.new(shape: StreamModeDetails, location_name: "StreamModeDetails"))
    CreateStreamInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateStreamInput.add_member(:warm_throughput_mi_bps, Shapes::ShapeRef.new(shape: NaturalIntegerObject, location_name: "WarmThroughputMiBps"))
    CreateStreamInput.add_member(:max_record_size_in_ki_b, Shapes::ShapeRef.new(shape: MaxRecordSizeInKiB, location_name: "MaxRecordSizeInKiB"))
    CreateStreamInput.struct_class = Types::CreateStreamInput

    DeadLetterQueueS3Configuration.add_member(:bucket_arn, Shapes::ShapeRef.new(shape: BucketARN, required: true, location_name: "BucketARN"))
    DeadLetterQueueS3Configuration.add_member(:expected_bucket_owner, Shapes::ShapeRef.new(shape: ExpectedBucketOwner, required: true, location_name: "ExpectedBucketOwner"))
    DeadLetterQueueS3Configuration.add_member(:error_output_prefix, Shapes::ShapeRef.new(shape: S3ErrorOutputPrefix, location_name: "ErrorOutputPrefix"))
    DeadLetterQueueS3Configuration.struct_class = Types::DeadLetterQueueS3Configuration

    DecreaseStreamRetentionPeriodInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, location_name: "StreamName"))
    DecreaseStreamRetentionPeriodInput.add_member(:retention_period_hours, Shapes::ShapeRef.new(shape: RetentionPeriodHours, required: true, location_name: "RetentionPeriodHours"))
    DecreaseStreamRetentionPeriodInput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: StreamARN, location_name: "StreamARN", metadata: {"contextParam" => {"name" => "StreamARN"}}))
    DecreaseStreamRetentionPeriodInput.add_member(:stream_id, Shapes::ShapeRef.new(shape: StreamId, location_name: "StreamId", metadata: {"contextParam" => {"name" => "StreamId"}}))
    DecreaseStreamRetentionPeriodInput.struct_class = Types::DecreaseStreamRetentionPeriodInput

    DeleteChannelInput.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChannelARN, required: true, location_name: "ChannelARN", metadata: {"contextParam" => {"name" => "ChannelARN"}}))
    DeleteChannelInput.struct_class = Types::DeleteChannelInput

    DeleteResourcePolicyInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ResourceARN", metadata: {"contextParam" => {"name" => "ResourceARN"}}))
    DeleteResourcePolicyInput.add_member(:stream_id, Shapes::ShapeRef.new(shape: StreamId, location_name: "StreamId", metadata: {"contextParam" => {"name" => "StreamId"}}))
    DeleteResourcePolicyInput.struct_class = Types::DeleteResourcePolicyInput

    DeleteStreamInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, location_name: "StreamName"))
    DeleteStreamInput.add_member(:enforce_consumer_deletion, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "EnforceConsumerDeletion"))
    DeleteStreamInput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: StreamARN, location_name: "StreamARN", metadata: {"contextParam" => {"name" => "StreamARN"}}))
    DeleteStreamInput.add_member(:stream_id, Shapes::ShapeRef.new(shape: StreamId, location_name: "StreamId", metadata: {"contextParam" => {"name" => "StreamId"}}))
    DeleteStreamInput.struct_class = Types::DeleteStreamInput

    DeregisterStreamConsumerInput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: StreamARN, location_name: "StreamARN", metadata: {"contextParam" => {"name" => "StreamARN"}}))
    DeregisterStreamConsumerInput.add_member(:consumer_name, Shapes::ShapeRef.new(shape: ConsumerName, location_name: "ConsumerName"))
    DeregisterStreamConsumerInput.add_member(:consumer_arn, Shapes::ShapeRef.new(shape: ConsumerARN, location_name: "ConsumerARN", metadata: {"contextParam" => {"name" => "ConsumerARN"}}))
    DeregisterStreamConsumerInput.add_member(:stream_id, Shapes::ShapeRef.new(shape: StreamId, location_name: "StreamId", metadata: {"contextParam" => {"name" => "StreamId"}}))
    DeregisterStreamConsumerInput.struct_class = Types::DeregisterStreamConsumerInput

    DescribeAccountSettingsInput.struct_class = Types::DescribeAccountSettingsInput

    DescribeAccountSettingsOutput.add_member(:minimum_throughput_billing_commitment, Shapes::ShapeRef.new(shape: MinimumThroughputBillingCommitmentOutput, location_name: "MinimumThroughputBillingCommitment"))
    DescribeAccountSettingsOutput.struct_class = Types::DescribeAccountSettingsOutput

    DescribeChannelInput.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChannelARN, required: true, location_name: "ChannelARN", metadata: {"contextParam" => {"name" => "ChannelARN"}}))
    DescribeChannelInput.struct_class = Types::DescribeChannelInput

    DescribeChannelOutput.add_member(:channel_description, Shapes::ShapeRef.new(shape: ChannelDescription, required: true, location_name: "ChannelDescription"))
    DescribeChannelOutput.struct_class = Types::DescribeChannelOutput

    DescribeLimitsInput.struct_class = Types::DescribeLimitsInput

    DescribeLimitsOutput.add_member(:shard_limit, Shapes::ShapeRef.new(shape: ShardCountObject, required: true, location_name: "ShardLimit"))
    DescribeLimitsOutput.add_member(:open_shard_count, Shapes::ShapeRef.new(shape: ShardCountObject, required: true, location_name: "OpenShardCount"))
    DescribeLimitsOutput.add_member(:on_demand_stream_count, Shapes::ShapeRef.new(shape: OnDemandStreamCountObject, required: true, location_name: "OnDemandStreamCount"))
    DescribeLimitsOutput.add_member(:on_demand_stream_count_limit, Shapes::ShapeRef.new(shape: OnDemandStreamCountLimitObject, required: true, location_name: "OnDemandStreamCountLimit"))
    DescribeLimitsOutput.add_member(:channel_count, Shapes::ShapeRef.new(shape: ChannelCountObject, location_name: "ChannelCount"))
    DescribeLimitsOutput.add_member(:channel_count_limit, Shapes::ShapeRef.new(shape: ChannelCountObject, location_name: "ChannelCountLimit"))
    DescribeLimitsOutput.struct_class = Types::DescribeLimitsOutput

    DescribeStreamConsumerInput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: StreamARN, location_name: "StreamARN", metadata: {"contextParam" => {"name" => "StreamARN"}}))
    DescribeStreamConsumerInput.add_member(:consumer_name, Shapes::ShapeRef.new(shape: ConsumerName, location_name: "ConsumerName"))
    DescribeStreamConsumerInput.add_member(:consumer_arn, Shapes::ShapeRef.new(shape: ConsumerARN, location_name: "ConsumerARN", metadata: {"contextParam" => {"name" => "ConsumerARN"}}))
    DescribeStreamConsumerInput.add_member(:stream_id, Shapes::ShapeRef.new(shape: StreamId, location_name: "StreamId", metadata: {"contextParam" => {"name" => "StreamId"}}))
    DescribeStreamConsumerInput.struct_class = Types::DescribeStreamConsumerInput

    DescribeStreamConsumerOutput.add_member(:consumer_description, Shapes::ShapeRef.new(shape: ConsumerDescription, required: true, location_name: "ConsumerDescription"))
    DescribeStreamConsumerOutput.struct_class = Types::DescribeStreamConsumerOutput

    DescribeStreamInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, location_name: "StreamName"))
    DescribeStreamInput.add_member(:limit, Shapes::ShapeRef.new(shape: DescribeStreamInputLimit, location_name: "Limit"))
    DescribeStreamInput.add_member(:exclusive_start_shard_id, Shapes::ShapeRef.new(shape: ShardId, location_name: "ExclusiveStartShardId"))
    DescribeStreamInput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: StreamARN, location_name: "StreamARN", metadata: {"contextParam" => {"name" => "StreamARN"}}))
    DescribeStreamInput.add_member(:stream_id, Shapes::ShapeRef.new(shape: StreamId, location_name: "StreamId", metadata: {"contextParam" => {"name" => "StreamId"}}))
    DescribeStreamInput.struct_class = Types::DescribeStreamInput

    DescribeStreamOutput.add_member(:stream_description, Shapes::ShapeRef.new(shape: StreamDescription, required: true, location_name: "StreamDescription"))
    DescribeStreamOutput.struct_class = Types::DescribeStreamOutput

    DescribeStreamSummaryInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, location_name: "StreamName"))
    DescribeStreamSummaryInput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: StreamARN, location_name: "StreamARN", metadata: {"contextParam" => {"name" => "StreamARN"}}))
    DescribeStreamSummaryInput.add_member(:stream_id, Shapes::ShapeRef.new(shape: StreamId, location_name: "StreamId", metadata: {"contextParam" => {"name" => "StreamId"}}))
    DescribeStreamSummaryInput.struct_class = Types::DescribeStreamSummaryInput

    DescribeStreamSummaryOutput.add_member(:stream_description_summary, Shapes::ShapeRef.new(shape: StreamDescriptionSummary, required: true, location_name: "StreamDescriptionSummary"))
    DescribeStreamSummaryOutput.struct_class = Types::DescribeStreamSummaryOutput

    DisableEnhancedMonitoringInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, location_name: "StreamName"))
    DisableEnhancedMonitoringInput.add_member(:shard_level_metrics, Shapes::ShapeRef.new(shape: MetricsNameList, required: true, location_name: "ShardLevelMetrics"))
    DisableEnhancedMonitoringInput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: StreamARN, location_name: "StreamARN", metadata: {"contextParam" => {"name" => "StreamARN"}}))
    DisableEnhancedMonitoringInput.add_member(:stream_id, Shapes::ShapeRef.new(shape: StreamId, location_name: "StreamId", metadata: {"contextParam" => {"name" => "StreamId"}}))
    DisableEnhancedMonitoringInput.struct_class = Types::DisableEnhancedMonitoringInput

    DryRunOperationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    DryRunOperationException.struct_class = Types::DryRunOperationException

    EnableEnhancedMonitoringInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, location_name: "StreamName"))
    EnableEnhancedMonitoringInput.add_member(:shard_level_metrics, Shapes::ShapeRef.new(shape: MetricsNameList, required: true, location_name: "ShardLevelMetrics"))
    EnableEnhancedMonitoringInput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: StreamARN, location_name: "StreamARN", metadata: {"contextParam" => {"name" => "StreamARN"}}))
    EnableEnhancedMonitoringInput.add_member(:stream_id, Shapes::ShapeRef.new(shape: StreamId, location_name: "StreamId", metadata: {"contextParam" => {"name" => "StreamId"}}))
    EnableEnhancedMonitoringInput.struct_class = Types::EnableEnhancedMonitoringInput

    EnhancedMetrics.add_member(:shard_level_metrics, Shapes::ShapeRef.new(shape: MetricsNameList, location_name: "ShardLevelMetrics"))
    EnhancedMetrics.struct_class = Types::EnhancedMetrics

    EnhancedMonitoringList.member = Shapes::ShapeRef.new(shape: EnhancedMetrics)

    EnhancedMonitoringOutput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, location_name: "StreamName"))
    EnhancedMonitoringOutput.add_member(:current_shard_level_metrics, Shapes::ShapeRef.new(shape: MetricsNameList, location_name: "CurrentShardLevelMetrics"))
    EnhancedMonitoringOutput.add_member(:desired_shard_level_metrics, Shapes::ShapeRef.new(shape: MetricsNameList, location_name: "DesiredShardLevelMetrics"))
    EnhancedMonitoringOutput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: StreamARN, location_name: "StreamARN"))
    EnhancedMonitoringOutput.struct_class = Types::EnhancedMonitoringOutput

    ExpiredIteratorException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ExpiredIteratorException.struct_class = Types::ExpiredIteratorException

    ExpiredNextTokenException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ExpiredNextTokenException.struct_class = Types::ExpiredNextTokenException

    GetRecordsInput.add_member(:shard_iterator, Shapes::ShapeRef.new(shape: ShardIterator, required: true, location_name: "ShardIterator"))
    GetRecordsInput.add_member(:limit, Shapes::ShapeRef.new(shape: GetRecordsInputLimit, location_name: "Limit"))
    GetRecordsInput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: StreamARN, location_name: "StreamARN", metadata: {"contextParam" => {"name" => "StreamARN"}}))
    GetRecordsInput.add_member(:stream_id, Shapes::ShapeRef.new(shape: StreamId, location_name: "StreamId", metadata: {"contextParam" => {"name" => "StreamId"}}))
    GetRecordsInput.add_member(:dry_run, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "DryRun"))
    GetRecordsInput.struct_class = Types::GetRecordsInput

    GetRecordsOutput.add_member(:records, Shapes::ShapeRef.new(shape: RecordList, required: true, location_name: "Records"))
    GetRecordsOutput.add_member(:next_shard_iterator, Shapes::ShapeRef.new(shape: ShardIterator, location_name: "NextShardIterator"))
    GetRecordsOutput.add_member(:millis_behind_latest, Shapes::ShapeRef.new(shape: MillisBehindLatest, location_name: "MillisBehindLatest"))
    GetRecordsOutput.add_member(:child_shards, Shapes::ShapeRef.new(shape: ChildShardList, location_name: "ChildShards"))
    GetRecordsOutput.struct_class = Types::GetRecordsOutput

    GetResourcePolicyInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ResourceARN", metadata: {"contextParam" => {"name" => "ResourceARN"}}))
    GetResourcePolicyInput.add_member(:stream_id, Shapes::ShapeRef.new(shape: StreamId, location_name: "StreamId", metadata: {"contextParam" => {"name" => "StreamId"}}))
    GetResourcePolicyInput.struct_class = Types::GetResourcePolicyInput

    GetResourcePolicyOutput.add_member(:policy, Shapes::ShapeRef.new(shape: Policy, required: true, location_name: "Policy"))
    GetResourcePolicyOutput.struct_class = Types::GetResourcePolicyOutput

    GetShardIteratorInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, location_name: "StreamName"))
    GetShardIteratorInput.add_member(:shard_id, Shapes::ShapeRef.new(shape: ShardId, required: true, location_name: "ShardId"))
    GetShardIteratorInput.add_member(:shard_iterator_type, Shapes::ShapeRef.new(shape: ShardIteratorType, required: true, location_name: "ShardIteratorType"))
    GetShardIteratorInput.add_member(:starting_sequence_number, Shapes::ShapeRef.new(shape: SequenceNumber, location_name: "StartingSequenceNumber"))
    GetShardIteratorInput.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Timestamp"))
    GetShardIteratorInput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: StreamARN, location_name: "StreamARN", metadata: {"contextParam" => {"name" => "StreamARN"}}))
    GetShardIteratorInput.add_member(:stream_id, Shapes::ShapeRef.new(shape: StreamId, location_name: "StreamId", metadata: {"contextParam" => {"name" => "StreamId"}}))
    GetShardIteratorInput.add_member(:dry_run, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "DryRun"))
    GetShardIteratorInput.struct_class = Types::GetShardIteratorInput

    GetShardIteratorOutput.add_member(:shard_iterator, Shapes::ShapeRef.new(shape: ShardIterator, location_name: "ShardIterator"))
    GetShardIteratorOutput.struct_class = Types::GetShardIteratorOutput

    HashKeyRange.add_member(:starting_hash_key, Shapes::ShapeRef.new(shape: HashKey, required: true, location_name: "StartingHashKey"))
    HashKeyRange.add_member(:ending_hash_key, Shapes::ShapeRef.new(shape: HashKey, required: true, location_name: "EndingHashKey"))
    HashKeyRange.struct_class = Types::HashKeyRange

    IncreaseStreamRetentionPeriodInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, location_name: "StreamName"))
    IncreaseStreamRetentionPeriodInput.add_member(:retention_period_hours, Shapes::ShapeRef.new(shape: RetentionPeriodHours, required: true, location_name: "RetentionPeriodHours"))
    IncreaseStreamRetentionPeriodInput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: StreamARN, location_name: "StreamARN", metadata: {"contextParam" => {"name" => "StreamARN"}}))
    IncreaseStreamRetentionPeriodInput.add_member(:stream_id, Shapes::ShapeRef.new(shape: StreamId, location_name: "StreamId", metadata: {"contextParam" => {"name" => "StreamId"}}))
    IncreaseStreamRetentionPeriodInput.struct_class = Types::IncreaseStreamRetentionPeriodInput

    InternalFailureException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InternalFailureException.struct_class = Types::InternalFailureException

    InvalidArgumentException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InvalidArgumentException.struct_class = Types::InvalidArgumentException

    KMSAccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    KMSAccessDeniedException.struct_class = Types::KMSAccessDeniedException

    KMSDisabledException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    KMSDisabledException.struct_class = Types::KMSDisabledException

    KMSInvalidStateException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    KMSInvalidStateException.struct_class = Types::KMSInvalidStateException

    KMSNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    KMSNotFoundException.struct_class = Types::KMSNotFoundException

    KMSOptInRequired.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    KMSOptInRequired.struct_class = Types::KMSOptInRequired

    KMSThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    KMSThrottlingException.struct_class = Types::KMSThrottlingException

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListChannelsInput.add_member(:stream_filter, Shapes::ShapeRef.new(shape: StreamFilterList, location_name: "StreamFilter"))
    ListChannelsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListChannelsInputLimit, location_name: "MaxResults"))
    ListChannelsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListChannelsInput.struct_class = Types::ListChannelsInput

    ListChannelsOutput.add_member(:channel_summaries, Shapes::ShapeRef.new(shape: ChannelSummaryList, required: true, location_name: "ChannelSummaries"))
    ListChannelsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListChannelsOutput.struct_class = Types::ListChannelsOutput

    ListShardsInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, location_name: "StreamName"))
    ListShardsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListShardsInput.add_member(:exclusive_start_shard_id, Shapes::ShapeRef.new(shape: ShardId, location_name: "ExclusiveStartShardId"))
    ListShardsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListShardsInputLimit, location_name: "MaxResults"))
    ListShardsInput.add_member(:stream_creation_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StreamCreationTimestamp"))
    ListShardsInput.add_member(:shard_filter, Shapes::ShapeRef.new(shape: ShardFilter, location_name: "ShardFilter"))
    ListShardsInput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: StreamARN, location_name: "StreamARN", metadata: {"contextParam" => {"name" => "StreamARN"}}))
    ListShardsInput.add_member(:stream_id, Shapes::ShapeRef.new(shape: StreamId, location_name: "StreamId", metadata: {"contextParam" => {"name" => "StreamId"}}))
    ListShardsInput.struct_class = Types::ListShardsInput

    ListShardsOutput.add_member(:shards, Shapes::ShapeRef.new(shape: ShardList, location_name: "Shards"))
    ListShardsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListShardsOutput.struct_class = Types::ListShardsOutput

    ListStreamConsumersInput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: StreamARN, required: true, location_name: "StreamARN", metadata: {"contextParam" => {"name" => "StreamARN"}}))
    ListStreamConsumersInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListStreamConsumersInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListStreamConsumersInputLimit, location_name: "MaxResults"))
    ListStreamConsumersInput.add_member(:stream_creation_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StreamCreationTimestamp"))
    ListStreamConsumersInput.add_member(:stream_id, Shapes::ShapeRef.new(shape: StreamId, location_name: "StreamId", metadata: {"contextParam" => {"name" => "StreamId"}}))
    ListStreamConsumersInput.struct_class = Types::ListStreamConsumersInput

    ListStreamConsumersOutput.add_member(:consumers, Shapes::ShapeRef.new(shape: ConsumerList, location_name: "Consumers"))
    ListStreamConsumersOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListStreamConsumersOutput.struct_class = Types::ListStreamConsumersOutput

    ListStreamsInput.add_member(:limit, Shapes::ShapeRef.new(shape: ListStreamsInputLimit, location_name: "Limit"))
    ListStreamsInput.add_member(:exclusive_start_stream_name, Shapes::ShapeRef.new(shape: StreamName, location_name: "ExclusiveStartStreamName"))
    ListStreamsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListStreamsInput.struct_class = Types::ListStreamsInput

    ListStreamsOutput.add_member(:stream_names, Shapes::ShapeRef.new(shape: StreamNameList, required: true, location_name: "StreamNames"))
    ListStreamsOutput.add_member(:has_more_streams, Shapes::ShapeRef.new(shape: BooleanObject, required: true, location_name: "HasMoreStreams"))
    ListStreamsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListStreamsOutput.add_member(:stream_summaries, Shapes::ShapeRef.new(shape: StreamSummaryList, location_name: "StreamSummaries"))
    ListStreamsOutput.struct_class = Types::ListStreamsOutput

    ListTagsForResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ResourceARN", metadata: {"contextParam" => {"name" => "ResourceARN"}}))
    ListTagsForResourceInput.add_member(:stream_id, Shapes::ShapeRef.new(shape: StreamId, location_name: "StreamId", metadata: {"contextParam" => {"name" => "StreamId"}}))
    ListTagsForResourceInput.struct_class = Types::ListTagsForResourceInput

    ListTagsForResourceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceOutput.struct_class = Types::ListTagsForResourceOutput

    ListTagsForStreamInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, location_name: "StreamName"))
    ListTagsForStreamInput.add_member(:exclusive_start_tag_key, Shapes::ShapeRef.new(shape: TagKey, location_name: "ExclusiveStartTagKey"))
    ListTagsForStreamInput.add_member(:limit, Shapes::ShapeRef.new(shape: ListTagsForStreamInputLimit, location_name: "Limit"))
    ListTagsForStreamInput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: StreamARN, location_name: "StreamARN", metadata: {"contextParam" => {"name" => "StreamARN"}}))
    ListTagsForStreamInput.add_member(:stream_id, Shapes::ShapeRef.new(shape: StreamId, location_name: "StreamId", metadata: {"contextParam" => {"name" => "StreamId"}}))
    ListTagsForStreamInput.struct_class = Types::ListTagsForStreamInput

    ListTagsForStreamOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    ListTagsForStreamOutput.add_member(:has_more_tags, Shapes::ShapeRef.new(shape: BooleanObject, required: true, location_name: "HasMoreTags"))
    ListTagsForStreamOutput.struct_class = Types::ListTagsForStreamOutput

    MergeShardsInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, location_name: "StreamName"))
    MergeShardsInput.add_member(:shard_to_merge, Shapes::ShapeRef.new(shape: ShardId, required: true, location_name: "ShardToMerge"))
    MergeShardsInput.add_member(:adjacent_shard_to_merge, Shapes::ShapeRef.new(shape: ShardId, required: true, location_name: "AdjacentShardToMerge"))
    MergeShardsInput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: StreamARN, location_name: "StreamARN", metadata: {"contextParam" => {"name" => "StreamARN"}}))
    MergeShardsInput.add_member(:stream_id, Shapes::ShapeRef.new(shape: StreamId, location_name: "StreamId", metadata: {"contextParam" => {"name" => "StreamId"}}))
    MergeShardsInput.struct_class = Types::MergeShardsInput

    MetricsNameList.member = Shapes::ShapeRef.new(shape: MetricsName)

    MinimumThroughputBillingCommitmentInput.add_member(:status, Shapes::ShapeRef.new(shape: MinimumThroughputBillingCommitmentInputStatus, required: true, location_name: "Status"))
    MinimumThroughputBillingCommitmentInput.struct_class = Types::MinimumThroughputBillingCommitmentInput

    MinimumThroughputBillingCommitmentOutput.add_member(:status, Shapes::ShapeRef.new(shape: MinimumThroughputBillingCommitmentOutputStatus, required: true, location_name: "Status"))
    MinimumThroughputBillingCommitmentOutput.add_member(:started_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartedAt"))
    MinimumThroughputBillingCommitmentOutput.add_member(:ended_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndedAt"))
    MinimumThroughputBillingCommitmentOutput.add_member(:earliest_allowed_end_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EarliestAllowedEndAt"))
    MinimumThroughputBillingCommitmentOutput.struct_class = Types::MinimumThroughputBillingCommitmentOutput

    PartitionField.add_member(:transform, Shapes::ShapeRef.new(shape: PartitionTransform, required: true, location_name: "Transform"))
    PartitionField.add_member(:source_name, Shapes::ShapeRef.new(shape: PartitionSourceName, required: true, location_name: "SourceName"))
    PartitionField.struct_class = Types::PartitionField

    PartitionFieldList.member = Shapes::ShapeRef.new(shape: PartitionField)

    PartitionSpec.add_member(:partition_fields, Shapes::ShapeRef.new(shape: PartitionFieldList, required: true, location_name: "PartitionFields"))
    PartitionSpec.struct_class = Types::PartitionSpec

    ProvisionedThroughputExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ProvisionedThroughputExceededException.struct_class = Types::ProvisionedThroughputExceededException

    PutRecordInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, location_name: "StreamName"))
    PutRecordInput.add_member(:data, Shapes::ShapeRef.new(shape: Data, required: true, location_name: "Data"))
    PutRecordInput.add_member(:partition_key, Shapes::ShapeRef.new(shape: PartitionKey, required: true, location_name: "PartitionKey"))
    PutRecordInput.add_member(:explicit_hash_key, Shapes::ShapeRef.new(shape: HashKey, location_name: "ExplicitHashKey"))
    PutRecordInput.add_member(:sequence_number_for_ordering, Shapes::ShapeRef.new(shape: SequenceNumber, location_name: "SequenceNumberForOrdering"))
    PutRecordInput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: StreamARN, location_name: "StreamARN", metadata: {"contextParam" => {"name" => "StreamARN"}}))
    PutRecordInput.add_member(:stream_id, Shapes::ShapeRef.new(shape: StreamId, location_name: "StreamId", metadata: {"contextParam" => {"name" => "StreamId"}}))
    PutRecordInput.add_member(:dry_run, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "DryRun"))
    PutRecordInput.struct_class = Types::PutRecordInput

    PutRecordOutput.add_member(:shard_id, Shapes::ShapeRef.new(shape: ShardId, required: true, location_name: "ShardId"))
    PutRecordOutput.add_member(:sequence_number, Shapes::ShapeRef.new(shape: SequenceNumber, required: true, location_name: "SequenceNumber"))
    PutRecordOutput.add_member(:encryption_type, Shapes::ShapeRef.new(shape: EncryptionType, location_name: "EncryptionType"))
    PutRecordOutput.struct_class = Types::PutRecordOutput

    PutRecordsInput.add_member(:records, Shapes::ShapeRef.new(shape: PutRecordsRequestEntryList, required: true, location_name: "Records"))
    PutRecordsInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, location_name: "StreamName"))
    PutRecordsInput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: StreamARN, location_name: "StreamARN", metadata: {"contextParam" => {"name" => "StreamARN"}}))
    PutRecordsInput.add_member(:stream_id, Shapes::ShapeRef.new(shape: StreamId, location_name: "StreamId", metadata: {"contextParam" => {"name" => "StreamId"}}))
    PutRecordsInput.add_member(:dry_run, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "DryRun"))
    PutRecordsInput.struct_class = Types::PutRecordsInput

    PutRecordsOutput.add_member(:failed_record_count, Shapes::ShapeRef.new(shape: PositiveIntegerObject, location_name: "FailedRecordCount"))
    PutRecordsOutput.add_member(:records, Shapes::ShapeRef.new(shape: PutRecordsResultEntryList, required: true, location_name: "Records"))
    PutRecordsOutput.add_member(:encryption_type, Shapes::ShapeRef.new(shape: EncryptionType, location_name: "EncryptionType"))
    PutRecordsOutput.struct_class = Types::PutRecordsOutput

    PutRecordsRequestEntry.add_member(:data, Shapes::ShapeRef.new(shape: Data, required: true, location_name: "Data"))
    PutRecordsRequestEntry.add_member(:explicit_hash_key, Shapes::ShapeRef.new(shape: HashKey, location_name: "ExplicitHashKey"))
    PutRecordsRequestEntry.add_member(:partition_key, Shapes::ShapeRef.new(shape: PartitionKey, required: true, location_name: "PartitionKey"))
    PutRecordsRequestEntry.struct_class = Types::PutRecordsRequestEntry

    PutRecordsRequestEntryList.member = Shapes::ShapeRef.new(shape: PutRecordsRequestEntry)

    PutRecordsResultEntry.add_member(:sequence_number, Shapes::ShapeRef.new(shape: SequenceNumber, location_name: "SequenceNumber"))
    PutRecordsResultEntry.add_member(:shard_id, Shapes::ShapeRef.new(shape: ShardId, location_name: "ShardId"))
    PutRecordsResultEntry.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "ErrorCode"))
    PutRecordsResultEntry.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "ErrorMessage"))
    PutRecordsResultEntry.struct_class = Types::PutRecordsResultEntry

    PutRecordsResultEntryList.member = Shapes::ShapeRef.new(shape: PutRecordsResultEntry)

    PutResourcePolicyInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ResourceARN", metadata: {"contextParam" => {"name" => "ResourceARN"}}))
    PutResourcePolicyInput.add_member(:stream_id, Shapes::ShapeRef.new(shape: StreamId, location_name: "StreamId", metadata: {"contextParam" => {"name" => "StreamId"}}))
    PutResourcePolicyInput.add_member(:policy, Shapes::ShapeRef.new(shape: Policy, required: true, location_name: "Policy"))
    PutResourcePolicyInput.struct_class = Types::PutResourcePolicyInput

    Record.add_member(:sequence_number, Shapes::ShapeRef.new(shape: SequenceNumber, required: true, location_name: "SequenceNumber"))
    Record.add_member(:approximate_arrival_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ApproximateArrivalTimestamp"))
    Record.add_member(:data, Shapes::ShapeRef.new(shape: Data, required: true, location_name: "Data"))
    Record.add_member(:partition_key, Shapes::ShapeRef.new(shape: PartitionKey, required: true, location_name: "PartitionKey"))
    Record.add_member(:encryption_type, Shapes::ShapeRef.new(shape: EncryptionType, location_name: "EncryptionType"))
    Record.struct_class = Types::Record

    RecordConfiguration.add_member(:record_format_type, Shapes::ShapeRef.new(shape: RecordFormatType, required: true, location_name: "RecordFormatType"))
    RecordConfiguration.add_member(:gsr_schema_arn, Shapes::ShapeRef.new(shape: GSRSchemaARN, location_name: "GSRSchemaARN"))
    RecordConfiguration.struct_class = Types::RecordConfiguration

    RecordList.member = Shapes::ShapeRef.new(shape: Record)

    RegisterStreamConsumerInput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: StreamARN, required: true, location_name: "StreamARN", metadata: {"contextParam" => {"name" => "StreamARN"}}))
    RegisterStreamConsumerInput.add_member(:consumer_name, Shapes::ShapeRef.new(shape: ConsumerName, required: true, location_name: "ConsumerName"))
    RegisterStreamConsumerInput.add_member(:stream_id, Shapes::ShapeRef.new(shape: StreamId, location_name: "StreamId", metadata: {"contextParam" => {"name" => "StreamId"}}))
    RegisterStreamConsumerInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    RegisterStreamConsumerInput.struct_class = Types::RegisterStreamConsumerInput

    RegisterStreamConsumerOutput.add_member(:consumer, Shapes::ShapeRef.new(shape: Consumer, required: true, location_name: "Consumer"))
    RegisterStreamConsumerOutput.struct_class = Types::RegisterStreamConsumerOutput

    RemoveTagsFromStreamInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, location_name: "StreamName"))
    RemoveTagsFromStreamInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    RemoveTagsFromStreamInput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: StreamARN, location_name: "StreamARN", metadata: {"contextParam" => {"name" => "StreamARN"}}))
    RemoveTagsFromStreamInput.add_member(:stream_id, Shapes::ShapeRef.new(shape: StreamId, location_name: "StreamId", metadata: {"contextParam" => {"name" => "StreamId"}}))
    RemoveTagsFromStreamInput.struct_class = Types::RemoveTagsFromStreamInput

    ResourceInUseException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ResourceInUseException.struct_class = Types::ResourceInUseException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    S3DestinationConfiguration.add_member(:data_freshness_in_seconds, Shapes::ShapeRef.new(shape: DataFreshnessInSeconds, location_name: "DataFreshnessInSeconds"))
    S3DestinationConfiguration.add_member(:dead_letter_queue_s3_configuration, Shapes::ShapeRef.new(shape: DeadLetterQueueS3Configuration, location_name: "DeadLetterQueueS3Configuration"))
    S3DestinationConfiguration.add_member(:storage_configuration, Shapes::ShapeRef.new(shape: S3StorageConfiguration, required: true, location_name: "StorageConfiguration"))
    S3DestinationConfiguration.struct_class = Types::S3DestinationConfiguration

    S3DestinationDescription.add_member(:data_freshness_in_seconds, Shapes::ShapeRef.new(shape: DataFreshnessInSeconds, required: true, location_name: "DataFreshnessInSeconds"))
    S3DestinationDescription.add_member(:dead_letter_queue_s3_configuration, Shapes::ShapeRef.new(shape: DeadLetterQueueS3Configuration, required: true, location_name: "DeadLetterQueueS3Configuration"))
    S3DestinationDescription.add_member(:storage_configuration, Shapes::ShapeRef.new(shape: S3StorageConfiguration, required: true, location_name: "StorageConfiguration"))
    S3DestinationDescription.struct_class = Types::S3DestinationDescription

    S3DestinationUpdateInput.add_member(:data_freshness_in_seconds, Shapes::ShapeRef.new(shape: DataFreshnessInSeconds, required: true, location_name: "DataFreshnessInSeconds"))
    S3DestinationUpdateInput.struct_class = Types::S3DestinationUpdateInput

    S3StorageConfiguration.add_member(:bucket_arn, Shapes::ShapeRef.new(shape: BucketARN, required: true, location_name: "BucketARN"))
    S3StorageConfiguration.add_member(:expected_bucket_owner, Shapes::ShapeRef.new(shape: ExpectedBucketOwner, required: true, location_name: "ExpectedBucketOwner"))
    S3StorageConfiguration.add_member(:output_key_template, Shapes::ShapeRef.new(shape: S3OutputKeyTemplate, location_name: "OutputKeyTemplate"))
    S3StorageConfiguration.add_member(:storage_class, Shapes::ShapeRef.new(shape: S3StorageClass, location_name: "StorageClass"))
    S3StorageConfiguration.add_member(:compression_type, Shapes::ShapeRef.new(shape: S3CompressionType, required: true, location_name: "CompressionType"))
    S3StorageConfiguration.struct_class = Types::S3StorageConfiguration

    S3TablesConfiguration.add_member(:table_bucket_arn, Shapes::ShapeRef.new(shape: TableBucketARN, required: true, location_name: "TableBucketARN"))
    S3TablesConfiguration.add_member(:namespace, Shapes::ShapeRef.new(shape: S3TablesNamespace, required: true, location_name: "Namespace"))
    S3TablesConfiguration.add_member(:table_name, Shapes::ShapeRef.new(shape: S3TablesTableName, required: true, location_name: "TableName"))
    S3TablesConfiguration.add_member(:compression_type, Shapes::ShapeRef.new(shape: S3TablesCompressionType, required: true, location_name: "CompressionType"))
    S3TablesConfiguration.add_member(:partition_spec, Shapes::ShapeRef.new(shape: PartitionSpec, location_name: "PartitionSpec"))
    S3TablesConfiguration.struct_class = Types::S3TablesConfiguration

    S3TablesConfigurationList.member = Shapes::ShapeRef.new(shape: S3TablesConfiguration)

    S3TablesDestinationConfiguration.add_member(:data_freshness_in_seconds, Shapes::ShapeRef.new(shape: DataFreshnessInSeconds, location_name: "DataFreshnessInSeconds"))
    S3TablesDestinationConfiguration.add_member(:dead_letter_queue_s3_configuration, Shapes::ShapeRef.new(shape: DeadLetterQueueS3Configuration, required: true, location_name: "DeadLetterQueueS3Configuration"))
    S3TablesDestinationConfiguration.add_member(:s3_tables_configuration_list, Shapes::ShapeRef.new(shape: S3TablesConfigurationList, required: true, location_name: "S3TablesConfigurationList"))
    S3TablesDestinationConfiguration.struct_class = Types::S3TablesDestinationConfiguration

    S3TablesDestinationDescription.add_member(:data_freshness_in_seconds, Shapes::ShapeRef.new(shape: DataFreshnessInSeconds, required: true, location_name: "DataFreshnessInSeconds"))
    S3TablesDestinationDescription.add_member(:dead_letter_queue_s3_configuration, Shapes::ShapeRef.new(shape: DeadLetterQueueS3Configuration, required: true, location_name: "DeadLetterQueueS3Configuration"))
    S3TablesDestinationDescription.add_member(:s3_tables_configuration_list, Shapes::ShapeRef.new(shape: S3TablesConfigurationList, required: true, location_name: "S3TablesConfigurationList"))
    S3TablesDestinationDescription.struct_class = Types::S3TablesDestinationDescription

    S3TablesDestinationUpdateInput.add_member(:data_freshness_in_seconds, Shapes::ShapeRef.new(shape: DataFreshnessInSeconds, required: true, location_name: "DataFreshnessInSeconds"))
    S3TablesDestinationUpdateInput.struct_class = Types::S3TablesDestinationUpdateInput

    SequenceNumberRange.add_member(:starting_sequence_number, Shapes::ShapeRef.new(shape: SequenceNumber, required: true, location_name: "StartingSequenceNumber"))
    SequenceNumberRange.add_member(:ending_sequence_number, Shapes::ShapeRef.new(shape: SequenceNumber, location_name: "EndingSequenceNumber"))
    SequenceNumberRange.struct_class = Types::SequenceNumberRange

    Shard.add_member(:shard_id, Shapes::ShapeRef.new(shape: ShardId, required: true, location_name: "ShardId"))
    Shard.add_member(:parent_shard_id, Shapes::ShapeRef.new(shape: ShardId, location_name: "ParentShardId"))
    Shard.add_member(:adjacent_parent_shard_id, Shapes::ShapeRef.new(shape: ShardId, location_name: "AdjacentParentShardId"))
    Shard.add_member(:hash_key_range, Shapes::ShapeRef.new(shape: HashKeyRange, required: true, location_name: "HashKeyRange"))
    Shard.add_member(:sequence_number_range, Shapes::ShapeRef.new(shape: SequenceNumberRange, required: true, location_name: "SequenceNumberRange"))
    Shard.struct_class = Types::Shard

    ShardFilter.add_member(:type, Shapes::ShapeRef.new(shape: ShardFilterType, required: true, location_name: "Type"))
    ShardFilter.add_member(:shard_id, Shapes::ShapeRef.new(shape: ShardId, location_name: "ShardId"))
    ShardFilter.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Timestamp"))
    ShardFilter.struct_class = Types::ShardFilter

    ShardIdList.member = Shapes::ShapeRef.new(shape: ShardId)

    ShardList.member = Shapes::ShapeRef.new(shape: Shard)

    SplitShardInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, location_name: "StreamName"))
    SplitShardInput.add_member(:shard_to_split, Shapes::ShapeRef.new(shape: ShardId, required: true, location_name: "ShardToSplit"))
    SplitShardInput.add_member(:new_starting_hash_key, Shapes::ShapeRef.new(shape: HashKey, required: true, location_name: "NewStartingHashKey"))
    SplitShardInput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: StreamARN, location_name: "StreamARN", metadata: {"contextParam" => {"name" => "StreamARN"}}))
    SplitShardInput.add_member(:stream_id, Shapes::ShapeRef.new(shape: StreamId, location_name: "StreamId", metadata: {"contextParam" => {"name" => "StreamId"}}))
    SplitShardInput.struct_class = Types::SplitShardInput

    StartStreamEncryptionInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, location_name: "StreamName"))
    StartStreamEncryptionInput.add_member(:encryption_type, Shapes::ShapeRef.new(shape: EncryptionType, required: true, location_name: "EncryptionType"))
    StartStreamEncryptionInput.add_member(:key_id, Shapes::ShapeRef.new(shape: KeyId, required: true, location_name: "KeyId"))
    StartStreamEncryptionInput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: StreamARN, location_name: "StreamARN", metadata: {"contextParam" => {"name" => "StreamARN"}}))
    StartStreamEncryptionInput.add_member(:stream_id, Shapes::ShapeRef.new(shape: StreamId, location_name: "StreamId", metadata: {"contextParam" => {"name" => "StreamId"}}))
    StartStreamEncryptionInput.struct_class = Types::StartStreamEncryptionInput

    StartingPosition.add_member(:type, Shapes::ShapeRef.new(shape: ShardIteratorType, required: true, location_name: "Type"))
    StartingPosition.add_member(:sequence_number, Shapes::ShapeRef.new(shape: SequenceNumber, location_name: "SequenceNumber"))
    StartingPosition.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Timestamp"))
    StartingPosition.struct_class = Types::StartingPosition

    StopStreamEncryptionInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, location_name: "StreamName"))
    StopStreamEncryptionInput.add_member(:encryption_type, Shapes::ShapeRef.new(shape: EncryptionType, required: true, location_name: "EncryptionType"))
    StopStreamEncryptionInput.add_member(:key_id, Shapes::ShapeRef.new(shape: KeyId, required: true, location_name: "KeyId"))
    StopStreamEncryptionInput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: StreamARN, location_name: "StreamARN", metadata: {"contextParam" => {"name" => "StreamARN"}}))
    StopStreamEncryptionInput.add_member(:stream_id, Shapes::ShapeRef.new(shape: StreamId, location_name: "StreamId", metadata: {"contextParam" => {"name" => "StreamId"}}))
    StopStreamEncryptionInput.struct_class = Types::StopStreamEncryptionInput

    StreamDescription.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, required: true, location_name: "StreamName"))
    StreamDescription.add_member(:stream_arn, Shapes::ShapeRef.new(shape: StreamARN, required: true, location_name: "StreamARN"))
    StreamDescription.add_member(:stream_status, Shapes::ShapeRef.new(shape: StreamStatus, required: true, location_name: "StreamStatus"))
    StreamDescription.add_member(:stream_mode_details, Shapes::ShapeRef.new(shape: StreamModeDetails, location_name: "StreamModeDetails"))
    StreamDescription.add_member(:shards, Shapes::ShapeRef.new(shape: ShardList, required: true, location_name: "Shards"))
    StreamDescription.add_member(:has_more_shards, Shapes::ShapeRef.new(shape: BooleanObject, required: true, location_name: "HasMoreShards"))
    StreamDescription.add_member(:retention_period_hours, Shapes::ShapeRef.new(shape: RetentionPeriodHours, required: true, location_name: "RetentionPeriodHours"))
    StreamDescription.add_member(:stream_creation_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "StreamCreationTimestamp"))
    StreamDescription.add_member(:enhanced_monitoring, Shapes::ShapeRef.new(shape: EnhancedMonitoringList, required: true, location_name: "EnhancedMonitoring"))
    StreamDescription.add_member(:encryption_type, Shapes::ShapeRef.new(shape: EncryptionType, location_name: "EncryptionType"))
    StreamDescription.add_member(:key_id, Shapes::ShapeRef.new(shape: KeyId, location_name: "KeyId"))
    StreamDescription.struct_class = Types::StreamDescription

    StreamDescriptionSummary.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, required: true, location_name: "StreamName"))
    StreamDescriptionSummary.add_member(:stream_arn, Shapes::ShapeRef.new(shape: StreamARN, required: true, location_name: "StreamARN"))
    StreamDescriptionSummary.add_member(:stream_id, Shapes::ShapeRef.new(shape: StreamId, location_name: "StreamId"))
    StreamDescriptionSummary.add_member(:stream_status, Shapes::ShapeRef.new(shape: StreamStatus, required: true, location_name: "StreamStatus"))
    StreamDescriptionSummary.add_member(:stream_mode_details, Shapes::ShapeRef.new(shape: StreamModeDetails, location_name: "StreamModeDetails"))
    StreamDescriptionSummary.add_member(:retention_period_hours, Shapes::ShapeRef.new(shape: RetentionPeriodHours, required: true, location_name: "RetentionPeriodHours"))
    StreamDescriptionSummary.add_member(:stream_creation_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "StreamCreationTimestamp"))
    StreamDescriptionSummary.add_member(:enhanced_monitoring, Shapes::ShapeRef.new(shape: EnhancedMonitoringList, required: true, location_name: "EnhancedMonitoring"))
    StreamDescriptionSummary.add_member(:encryption_type, Shapes::ShapeRef.new(shape: EncryptionType, location_name: "EncryptionType"))
    StreamDescriptionSummary.add_member(:key_id, Shapes::ShapeRef.new(shape: KeyId, location_name: "KeyId"))
    StreamDescriptionSummary.add_member(:open_shard_count, Shapes::ShapeRef.new(shape: ShardCountObject, required: true, location_name: "OpenShardCount"))
    StreamDescriptionSummary.add_member(:consumer_count, Shapes::ShapeRef.new(shape: ConsumerCountObject, location_name: "ConsumerCount"))
    StreamDescriptionSummary.add_member(:warm_throughput, Shapes::ShapeRef.new(shape: WarmThroughputObject, location_name: "WarmThroughput"))
    StreamDescriptionSummary.add_member(:max_record_size_in_ki_b, Shapes::ShapeRef.new(shape: MaxRecordSizeInKiB, location_name: "MaxRecordSizeInKiB"))
    StreamDescriptionSummary.add_member(:channel_count, Shapes::ShapeRef.new(shape: ChannelCountObject, location_name: "ChannelCount"))
    StreamDescriptionSummary.struct_class = Types::StreamDescriptionSummary

    StreamFilter.add_member(:stream_arn, Shapes::ShapeRef.new(shape: StreamARN, required: true, location_name: "StreamARN"))
    StreamFilter.add_member(:stream_creation_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StreamCreationTimestamp"))
    StreamFilter.struct_class = Types::StreamFilter

    StreamFilterList.member = Shapes::ShapeRef.new(shape: StreamFilter)

    StreamModeDetails.add_member(:stream_mode, Shapes::ShapeRef.new(shape: StreamMode, required: true, location_name: "StreamMode"))
    StreamModeDetails.struct_class = Types::StreamModeDetails

    StreamNameList.member = Shapes::ShapeRef.new(shape: StreamName)

    StreamSummary.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, required: true, location_name: "StreamName"))
    StreamSummary.add_member(:stream_arn, Shapes::ShapeRef.new(shape: StreamARN, required: true, location_name: "StreamARN"))
    StreamSummary.add_member(:stream_status, Shapes::ShapeRef.new(shape: StreamStatus, required: true, location_name: "StreamStatus"))
    StreamSummary.add_member(:stream_mode_details, Shapes::ShapeRef.new(shape: StreamModeDetails, location_name: "StreamModeDetails"))
    StreamSummary.add_member(:stream_creation_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StreamCreationTimestamp"))
    StreamSummary.struct_class = Types::StreamSummary

    StreamSummaryList.member = Shapes::ShapeRef.new(shape: StreamSummary)

    SubscribeToShardEvent.add_member(:records, Shapes::ShapeRef.new(shape: RecordList, required: true, location_name: "Records"))
    SubscribeToShardEvent.add_member(:continuation_sequence_number, Shapes::ShapeRef.new(shape: SequenceNumber, required: true, location_name: "ContinuationSequenceNumber"))
    SubscribeToShardEvent.add_member(:millis_behind_latest, Shapes::ShapeRef.new(shape: MillisBehindLatest, required: true, location_name: "MillisBehindLatest"))
    SubscribeToShardEvent.add_member(:child_shards, Shapes::ShapeRef.new(shape: ChildShardList, location_name: "ChildShards"))
    SubscribeToShardEvent.struct_class = Types::SubscribeToShardEvent

    SubscribeToShardEventStream.add_member(:subscribe_to_shard_event, Shapes::ShapeRef.new(shape: SubscribeToShardEvent, required: true, event: true, location_name: "SubscribeToShardEvent"))
    SubscribeToShardEventStream.add_member(:resource_not_found_exception, Shapes::ShapeRef.new(shape: ResourceNotFoundException, event: true, location_name: "ResourceNotFoundException"))
    SubscribeToShardEventStream.add_member(:resource_in_use_exception, Shapes::ShapeRef.new(shape: ResourceInUseException, event: true, location_name: "ResourceInUseException"))
    SubscribeToShardEventStream.add_member(:kms_disabled_exception, Shapes::ShapeRef.new(shape: KMSDisabledException, event: true, location_name: "KMSDisabledException"))
    SubscribeToShardEventStream.add_member(:kms_invalid_state_exception, Shapes::ShapeRef.new(shape: KMSInvalidStateException, event: true, location_name: "KMSInvalidStateException"))
    SubscribeToShardEventStream.add_member(:kms_access_denied_exception, Shapes::ShapeRef.new(shape: KMSAccessDeniedException, event: true, location_name: "KMSAccessDeniedException"))
    SubscribeToShardEventStream.add_member(:kms_not_found_exception, Shapes::ShapeRef.new(shape: KMSNotFoundException, event: true, location_name: "KMSNotFoundException"))
    SubscribeToShardEventStream.add_member(:kms_opt_in_required, Shapes::ShapeRef.new(shape: KMSOptInRequired, event: true, location_name: "KMSOptInRequired"))
    SubscribeToShardEventStream.add_member(:kms_throttling_exception, Shapes::ShapeRef.new(shape: KMSThrottlingException, event: true, location_name: "KMSThrottlingException"))
    SubscribeToShardEventStream.add_member(:internal_failure_exception, Shapes::ShapeRef.new(shape: InternalFailureException, event: true, location_name: "InternalFailureException"))
    SubscribeToShardEventStream.struct_class = Types::SubscribeToShardEventStream

    SubscribeToShardInput.add_member(:consumer_arn, Shapes::ShapeRef.new(shape: ConsumerARN, required: true, location_name: "ConsumerARN", metadata: {"contextParam" => {"name" => "ConsumerARN"}}))
    SubscribeToShardInput.add_member(:stream_id, Shapes::ShapeRef.new(shape: StreamId, location_name: "StreamId", metadata: {"contextParam" => {"name" => "StreamId"}}))
    SubscribeToShardInput.add_member(:shard_id, Shapes::ShapeRef.new(shape: ShardId, required: true, location_name: "ShardId"))
    SubscribeToShardInput.add_member(:starting_position, Shapes::ShapeRef.new(shape: StartingPosition, required: true, location_name: "StartingPosition"))
    SubscribeToShardInput.add_member(:dry_run, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "DryRun"))
    SubscribeToShardInput.struct_class = Types::SubscribeToShardInput

    SubscribeToShardOutput.add_member(:event_stream, Shapes::ShapeRef.new(shape: SubscribeToShardEventStream, required: true, eventstream: true, location_name: "EventStream"))
    SubscribeToShardOutput.struct_class = Types::SubscribeToShardOutput

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "Tags"))
    TagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ResourceARN", metadata: {"contextParam" => {"name" => "ResourceARN"}}))
    TagResourceInput.add_member(:stream_id, Shapes::ShapeRef.new(shape: StreamId, location_name: "StreamId", metadata: {"contextParam" => {"name" => "StreamId"}}))
    TagResourceInput.struct_class = Types::TagResourceInput

    UntagResourceInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, required: true, location_name: "ResourceARN", metadata: {"contextParam" => {"name" => "ResourceARN"}}))
    UntagResourceInput.add_member(:stream_id, Shapes::ShapeRef.new(shape: StreamId, location_name: "StreamId", metadata: {"contextParam" => {"name" => "StreamId"}}))
    UntagResourceInput.struct_class = Types::UntagResourceInput

    UpdateAccountSettingsInput.add_member(:minimum_throughput_billing_commitment, Shapes::ShapeRef.new(shape: MinimumThroughputBillingCommitmentInput, required: true, location_name: "MinimumThroughputBillingCommitment"))
    UpdateAccountSettingsInput.struct_class = Types::UpdateAccountSettingsInput

    UpdateAccountSettingsOutput.add_member(:minimum_throughput_billing_commitment, Shapes::ShapeRef.new(shape: MinimumThroughputBillingCommitmentOutput, location_name: "MinimumThroughputBillingCommitment"))
    UpdateAccountSettingsOutput.struct_class = Types::UpdateAccountSettingsOutput

    UpdateChannelInput.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChannelARN, required: true, location_name: "ChannelARN", metadata: {"contextParam" => {"name" => "ChannelARN"}}))
    UpdateChannelInput.add_member(:s3_destination_configuration, Shapes::ShapeRef.new(shape: S3DestinationUpdateInput, location_name: "S3DestinationConfiguration"))
    UpdateChannelInput.add_member(:s3_tables_destination_configuration, Shapes::ShapeRef.new(shape: S3TablesDestinationUpdateInput, location_name: "S3TablesDestinationConfiguration"))
    UpdateChannelInput.add_member(:logging_configuration, Shapes::ShapeRef.new(shape: ChannelLoggingUpdateInput, location_name: "LoggingConfiguration"))
    UpdateChannelInput.struct_class = Types::UpdateChannelInput

    UpdateChannelOutput.add_member(:channel_description, Shapes::ShapeRef.new(shape: ChannelDescription, required: true, location_name: "ChannelDescription"))
    UpdateChannelOutput.struct_class = Types::UpdateChannelOutput

    UpdateMaxRecordSizeInput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: StreamARN, location_name: "StreamARN", metadata: {"contextParam" => {"name" => "StreamARN"}}))
    UpdateMaxRecordSizeInput.add_member(:stream_id, Shapes::ShapeRef.new(shape: StreamId, location_name: "StreamId", metadata: {"contextParam" => {"name" => "StreamId"}}))
    UpdateMaxRecordSizeInput.add_member(:max_record_size_in_ki_b, Shapes::ShapeRef.new(shape: MaxRecordSizeInKiB, required: true, location_name: "MaxRecordSizeInKiB"))
    UpdateMaxRecordSizeInput.struct_class = Types::UpdateMaxRecordSizeInput

    UpdateShardCountInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, location_name: "StreamName"))
    UpdateShardCountInput.add_member(:target_shard_count, Shapes::ShapeRef.new(shape: PositiveIntegerObject, required: true, location_name: "TargetShardCount"))
    UpdateShardCountInput.add_member(:scaling_type, Shapes::ShapeRef.new(shape: ScalingType, required: true, location_name: "ScalingType"))
    UpdateShardCountInput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: StreamARN, location_name: "StreamARN", metadata: {"contextParam" => {"name" => "StreamARN"}}))
    UpdateShardCountInput.add_member(:stream_id, Shapes::ShapeRef.new(shape: StreamId, location_name: "StreamId", metadata: {"contextParam" => {"name" => "StreamId"}}))
    UpdateShardCountInput.struct_class = Types::UpdateShardCountInput

    UpdateShardCountOutput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, location_name: "StreamName"))
    UpdateShardCountOutput.add_member(:current_shard_count, Shapes::ShapeRef.new(shape: PositiveIntegerObject, location_name: "CurrentShardCount"))
    UpdateShardCountOutput.add_member(:target_shard_count, Shapes::ShapeRef.new(shape: PositiveIntegerObject, location_name: "TargetShardCount"))
    UpdateShardCountOutput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: StreamARN, location_name: "StreamARN"))
    UpdateShardCountOutput.struct_class = Types::UpdateShardCountOutput

    UpdateStreamModeInput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: StreamARN, required: true, location_name: "StreamARN", metadata: {"contextParam" => {"name" => "StreamARN"}}))
    UpdateStreamModeInput.add_member(:stream_id, Shapes::ShapeRef.new(shape: StreamId, location_name: "StreamId", metadata: {"contextParam" => {"name" => "StreamId"}}))
    UpdateStreamModeInput.add_member(:stream_mode_details, Shapes::ShapeRef.new(shape: StreamModeDetails, required: true, location_name: "StreamModeDetails"))
    UpdateStreamModeInput.add_member(:warm_throughput_mi_bps, Shapes::ShapeRef.new(shape: NaturalIntegerObject, location_name: "WarmThroughputMiBps"))
    UpdateStreamModeInput.struct_class = Types::UpdateStreamModeInput

    UpdateStreamWarmThroughputInput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: StreamARN, location_name: "StreamARN", metadata: {"contextParam" => {"name" => "StreamARN"}}))
    UpdateStreamWarmThroughputInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, location_name: "StreamName"))
    UpdateStreamWarmThroughputInput.add_member(:stream_id, Shapes::ShapeRef.new(shape: StreamId, location_name: "StreamId", metadata: {"contextParam" => {"name" => "StreamId"}}))
    UpdateStreamWarmThroughputInput.add_member(:warm_throughput_mi_bps, Shapes::ShapeRef.new(shape: NaturalIntegerObject, required: true, location_name: "WarmThroughputMiBps"))
    UpdateStreamWarmThroughputInput.struct_class = Types::UpdateStreamWarmThroughputInput

    UpdateStreamWarmThroughputOutput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: StreamARN, location_name: "StreamARN"))
    UpdateStreamWarmThroughputOutput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, location_name: "StreamName"))
    UpdateStreamWarmThroughputOutput.add_member(:warm_throughput, Shapes::ShapeRef.new(shape: WarmThroughputObject, location_name: "WarmThroughput"))
    UpdateStreamWarmThroughputOutput.struct_class = Types::UpdateStreamWarmThroughputOutput

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException

    WarmThroughputObject.add_member(:target_mi_bps, Shapes::ShapeRef.new(shape: NaturalIntegerObject, location_name: "TargetMiBps"))
    WarmThroughputObject.add_member(:current_mi_bps, Shapes::ShapeRef.new(shape: NaturalIntegerObject, location_name: "CurrentMiBps"))
    WarmThroughputObject.struct_class = Types::WarmThroughputObject


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2013-12-02"

      api.metadata = {
        "apiVersion" => "2013-12-02",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "kinesis",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "protocolSettings" => {"h2" => "eventstream"},
        "protocols" => ["json"],
        "serviceAbbreviation" => "Kinesis",
        "serviceFullName" => "Amazon Kinesis",
        "serviceId" => "Kinesis",
        "signatureVersion" => "v4",
        "targetPrefix" => "Kinesis_20131202",
        "uid" => "kinesis-2013-12-02",
      }

      api.add_operation(:add_tags_to_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddTagsToStream"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AddTagsToStreamInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateChannel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateChannelInput)
        o.output = Shapes::ShapeRef.new(shape: CreateChannelOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: KMSDisabledException)
        o.errors << Shapes::ShapeRef.new(shape: KMSInvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: KMSAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: KMSNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: KMSOptInRequired)
        o.errors << Shapes::ShapeRef.new(shape: KMSThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateStream"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateStreamInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:decrease_stream_retention_period, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DecreaseStreamRetentionPeriod"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DecreaseStreamRetentionPeriodInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteChannel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteChannelInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteResourcePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteResourcePolicyInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:delete_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteStream"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteStreamInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:deregister_stream_consumer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterStreamConsumer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeregisterStreamConsumerInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
      end)

      api.add_operation(:describe_account_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAccountSettings"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAccountSettingsInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeAccountSettingsOutput)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:describe_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeChannel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeChannelInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeChannelOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:describe_limits, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLimits"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeLimitsInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeLimitsOutput)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:describe_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeStream"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeStreamInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeStreamOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          more_results: "stream_description.has_more_shards",
          limit_key: "limit",
          tokens: {
            "stream_description.shards[-1].shard_id" => "exclusive_start_shard_id"
          }
        )
      end)

      api.add_operation(:describe_stream_consumer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeStreamConsumer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeStreamConsumerInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeStreamConsumerOutput)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
      end)

      api.add_operation(:describe_stream_summary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeStreamSummary"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeStreamSummaryInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeStreamSummaryOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:disable_enhanced_monitoring, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisableEnhancedMonitoring"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisableEnhancedMonitoringInput)
        o.output = Shapes::ShapeRef.new(shape: EnhancedMonitoringOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:enable_enhanced_monitoring, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EnableEnhancedMonitoring"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: EnableEnhancedMonitoringInput)
        o.output = Shapes::ShapeRef.new(shape: EnhancedMonitoringOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_records, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRecords"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetRecordsInput)
        o.output = Shapes::ShapeRef.new(shape: GetRecordsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ExpiredIteratorException)
        o.errors << Shapes::ShapeRef.new(shape: KMSDisabledException)
        o.errors << Shapes::ShapeRef.new(shape: KMSInvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: KMSAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: KMSNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: KMSOptInRequired)
        o.errors << Shapes::ShapeRef.new(shape: KMSThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: DryRunOperationException)
      end)

      api.add_operation(:get_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResourcePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetResourcePolicyInput)
        o.output = Shapes::ShapeRef.new(shape: GetResourcePolicyOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:get_shard_iterator, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetShardIterator"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetShardIteratorInput)
        o.output = Shapes::ShapeRef.new(shape: GetShardIteratorOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: DryRunOperationException)
      end)

      api.add_operation(:increase_stream_retention_period, Seahorse::Model::Operation.new.tap do |o|
        o.name = "IncreaseStreamRetentionPeriod"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: IncreaseStreamRetentionPeriodInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_channels, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListChannels"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListChannelsInput)
        o.output = Shapes::ShapeRef.new(shape: ListChannelsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ExpiredNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_shards, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListShards"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListShardsInput)
        o.output = Shapes::ShapeRef.new(shape: ListShardsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ExpiredNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_stream_consumers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListStreamConsumers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListStreamConsumersInput)
        o.output = Shapes::ShapeRef.new(shape: ListStreamConsumersOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ExpiredNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_streams, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListStreams"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListStreamsInput)
        o.output = Shapes::ShapeRef.new(shape: ListStreamsOutput)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ExpiredNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o[:pager] = Aws::Pager.new(
          more_results: "has_more_streams",
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_tags_for_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForStream"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForStreamInput)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForStreamOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:merge_shards, Seahorse::Model::Operation.new.tap do |o|
        o.name = "MergeShards"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: MergeShardsInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:put_record, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutRecord"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutRecordInput)
        o.output = Shapes::ShapeRef.new(shape: PutRecordOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: KMSDisabledException)
        o.errors << Shapes::ShapeRef.new(shape: KMSInvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: KMSAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: KMSNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: KMSOptInRequired)
        o.errors << Shapes::ShapeRef.new(shape: KMSThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: DryRunOperationException)
      end)

      api.add_operation(:put_records, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutRecords"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutRecordsInput)
        o.output = Shapes::ShapeRef.new(shape: PutRecordsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: KMSDisabledException)
        o.errors << Shapes::ShapeRef.new(shape: KMSInvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: KMSAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: KMSNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: KMSOptInRequired)
        o.errors << Shapes::ShapeRef.new(shape: KMSThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: DryRunOperationException)
      end)

      api.add_operation(:put_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutResourcePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutResourcePolicyInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:register_stream_consumer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterStreamConsumer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RegisterStreamConsumerInput)
        o.output = Shapes::ShapeRef.new(shape: RegisterStreamConsumerOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:remove_tags_from_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveTagsFromStream"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RemoveTagsFromStreamInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:split_shard, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SplitShard"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SplitShardInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:start_stream_encryption, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartStreamEncryption"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartStreamEncryptionInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: KMSDisabledException)
        o.errors << Shapes::ShapeRef.new(shape: KMSInvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: KMSAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: KMSNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: KMSOptInRequired)
        o.errors << Shapes::ShapeRef.new(shape: KMSThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:stop_stream_encryption, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopStreamEncryption"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopStreamEncryptionInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:subscribe_to_shard, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SubscribeToShard"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SubscribeToShardInput)
        o.output = Shapes::ShapeRef.new(shape: SubscribeToShardOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: DryRunOperationException)
        o.async = true
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_account_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAccountSettings"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateAccountSettingsInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateAccountSettingsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:update_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateChannel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateChannelInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateChannelOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_max_record_size, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateMaxRecordSize"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateMaxRecordSizeInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_shard_count, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateShardCount"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateShardCountInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateShardCountOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_stream_mode, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateStreamMode"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateStreamModeInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_stream_warm_throughput, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateStreamWarmThroughput"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateStreamWarmThroughputInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateStreamWarmThroughputOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)
    end

  end
end
