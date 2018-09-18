# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Kinesis
  # @api private
  module ClientApi

    include Seahorse::Model

    AddTagsToStreamInput = Shapes::StructureShape.new(name: 'AddTagsToStreamInput')
    BooleanObject = Shapes::BooleanShape.new(name: 'BooleanObject')
    Consumer = Shapes::StructureShape.new(name: 'Consumer')
    ConsumerARN = Shapes::StringShape.new(name: 'ConsumerARN')
    ConsumerCountObject = Shapes::IntegerShape.new(name: 'ConsumerCountObject')
    ConsumerDescription = Shapes::StructureShape.new(name: 'ConsumerDescription')
    ConsumerList = Shapes::ListShape.new(name: 'ConsumerList')
    ConsumerName = Shapes::StringShape.new(name: 'ConsumerName')
    ConsumerStatus = Shapes::StringShape.new(name: 'ConsumerStatus')
    CreateStreamInput = Shapes::StructureShape.new(name: 'CreateStreamInput')
    Data = Shapes::BlobShape.new(name: 'Data')
    DecreaseStreamRetentionPeriodInput = Shapes::StructureShape.new(name: 'DecreaseStreamRetentionPeriodInput')
    DeleteStreamInput = Shapes::StructureShape.new(name: 'DeleteStreamInput')
    DeregisterStreamConsumerInput = Shapes::StructureShape.new(name: 'DeregisterStreamConsumerInput')
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
    EnableEnhancedMonitoringInput = Shapes::StructureShape.new(name: 'EnableEnhancedMonitoringInput')
    EncryptionType = Shapes::StringShape.new(name: 'EncryptionType')
    EnhancedMetrics = Shapes::StructureShape.new(name: 'EnhancedMetrics')
    EnhancedMonitoringList = Shapes::ListShape.new(name: 'EnhancedMonitoringList')
    EnhancedMonitoringOutput = Shapes::StructureShape.new(name: 'EnhancedMonitoringOutput')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ExpiredIteratorException = Shapes::StructureShape.new(name: 'ExpiredIteratorException')
    ExpiredNextTokenException = Shapes::StructureShape.new(name: 'ExpiredNextTokenException')
    GetRecordsInput = Shapes::StructureShape.new(name: 'GetRecordsInput')
    GetRecordsInputLimit = Shapes::IntegerShape.new(name: 'GetRecordsInputLimit')
    GetRecordsOutput = Shapes::StructureShape.new(name: 'GetRecordsOutput')
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
    ListShardsInput = Shapes::StructureShape.new(name: 'ListShardsInput')
    ListShardsInputLimit = Shapes::IntegerShape.new(name: 'ListShardsInputLimit')
    ListShardsOutput = Shapes::StructureShape.new(name: 'ListShardsOutput')
    ListStreamConsumersInput = Shapes::StructureShape.new(name: 'ListStreamConsumersInput')
    ListStreamConsumersInputLimit = Shapes::IntegerShape.new(name: 'ListStreamConsumersInputLimit')
    ListStreamConsumersOutput = Shapes::StructureShape.new(name: 'ListStreamConsumersOutput')
    ListStreamsInput = Shapes::StructureShape.new(name: 'ListStreamsInput')
    ListStreamsInputLimit = Shapes::IntegerShape.new(name: 'ListStreamsInputLimit')
    ListStreamsOutput = Shapes::StructureShape.new(name: 'ListStreamsOutput')
    ListTagsForStreamInput = Shapes::StructureShape.new(name: 'ListTagsForStreamInput')
    ListTagsForStreamInputLimit = Shapes::IntegerShape.new(name: 'ListTagsForStreamInputLimit')
    ListTagsForStreamOutput = Shapes::StructureShape.new(name: 'ListTagsForStreamOutput')
    MergeShardsInput = Shapes::StructureShape.new(name: 'MergeShardsInput')
    MetricsName = Shapes::StringShape.new(name: 'MetricsName')
    MetricsNameList = Shapes::ListShape.new(name: 'MetricsNameList')
    MillisBehindLatest = Shapes::IntegerShape.new(name: 'MillisBehindLatest')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    PartitionKey = Shapes::StringShape.new(name: 'PartitionKey')
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
    Record = Shapes::StructureShape.new(name: 'Record')
    RecordList = Shapes::ListShape.new(name: 'RecordList')
    RegisterStreamConsumerInput = Shapes::StructureShape.new(name: 'RegisterStreamConsumerInput')
    RegisterStreamConsumerOutput = Shapes::StructureShape.new(name: 'RegisterStreamConsumerOutput')
    RemoveTagsFromStreamInput = Shapes::StructureShape.new(name: 'RemoveTagsFromStreamInput')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RetentionPeriodHours = Shapes::IntegerShape.new(name: 'RetentionPeriodHours')
    ScalingType = Shapes::StringShape.new(name: 'ScalingType')
    SequenceNumber = Shapes::StringShape.new(name: 'SequenceNumber')
    SequenceNumberRange = Shapes::StructureShape.new(name: 'SequenceNumberRange')
    Shard = Shapes::StructureShape.new(name: 'Shard')
    ShardCountObject = Shapes::IntegerShape.new(name: 'ShardCountObject')
    ShardId = Shapes::StringShape.new(name: 'ShardId')
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
    StreamName = Shapes::StringShape.new(name: 'StreamName')
    StreamNameList = Shapes::ListShape.new(name: 'StreamNameList')
    StreamStatus = Shapes::StringShape.new(name: 'StreamStatus')
    SubscribeToShardEvent = Shapes::StructureShape.new(name: 'SubscribeToShardEvent')
    SubscribeToShardEventStream = Shapes::StructureShape.new(name: 'SubscribeToShardEventStream')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UpdateShardCountInput = Shapes::StructureShape.new(name: 'UpdateShardCountInput')
    UpdateShardCountOutput = Shapes::StructureShape.new(name: 'UpdateShardCountOutput')

    AddTagsToStreamInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, required: true, location_name: "StreamName"))
    AddTagsToStreamInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "Tags"))
    AddTagsToStreamInput.struct_class = Types::AddTagsToStreamInput

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

    CreateStreamInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, required: true, location_name: "StreamName"))
    CreateStreamInput.add_member(:shard_count, Shapes::ShapeRef.new(shape: PositiveIntegerObject, required: true, location_name: "ShardCount"))
    CreateStreamInput.struct_class = Types::CreateStreamInput

    DecreaseStreamRetentionPeriodInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, required: true, location_name: "StreamName"))
    DecreaseStreamRetentionPeriodInput.add_member(:retention_period_hours, Shapes::ShapeRef.new(shape: RetentionPeriodHours, required: true, location_name: "RetentionPeriodHours"))
    DecreaseStreamRetentionPeriodInput.struct_class = Types::DecreaseStreamRetentionPeriodInput

    DeleteStreamInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, required: true, location_name: "StreamName"))
    DeleteStreamInput.add_member(:enforce_consumer_deletion, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "EnforceConsumerDeletion"))
    DeleteStreamInput.struct_class = Types::DeleteStreamInput

    DeregisterStreamConsumerInput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: StreamARN, location_name: "StreamARN"))
    DeregisterStreamConsumerInput.add_member(:consumer_name, Shapes::ShapeRef.new(shape: ConsumerName, location_name: "ConsumerName"))
    DeregisterStreamConsumerInput.add_member(:consumer_arn, Shapes::ShapeRef.new(shape: ConsumerARN, location_name: "ConsumerARN"))
    DeregisterStreamConsumerInput.struct_class = Types::DeregisterStreamConsumerInput

    DescribeLimitsInput.struct_class = Types::DescribeLimitsInput

    DescribeLimitsOutput.add_member(:shard_limit, Shapes::ShapeRef.new(shape: ShardCountObject, required: true, location_name: "ShardLimit"))
    DescribeLimitsOutput.add_member(:open_shard_count, Shapes::ShapeRef.new(shape: ShardCountObject, required: true, location_name: "OpenShardCount"))
    DescribeLimitsOutput.struct_class = Types::DescribeLimitsOutput

    DescribeStreamConsumerInput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: StreamARN, location_name: "StreamARN"))
    DescribeStreamConsumerInput.add_member(:consumer_name, Shapes::ShapeRef.new(shape: ConsumerName, location_name: "ConsumerName"))
    DescribeStreamConsumerInput.add_member(:consumer_arn, Shapes::ShapeRef.new(shape: ConsumerARN, location_name: "ConsumerARN"))
    DescribeStreamConsumerInput.struct_class = Types::DescribeStreamConsumerInput

    DescribeStreamConsumerOutput.add_member(:consumer_description, Shapes::ShapeRef.new(shape: ConsumerDescription, required: true, location_name: "ConsumerDescription"))
    DescribeStreamConsumerOutput.struct_class = Types::DescribeStreamConsumerOutput

    DescribeStreamInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, required: true, location_name: "StreamName"))
    DescribeStreamInput.add_member(:limit, Shapes::ShapeRef.new(shape: DescribeStreamInputLimit, location_name: "Limit"))
    DescribeStreamInput.add_member(:exclusive_start_shard_id, Shapes::ShapeRef.new(shape: ShardId, location_name: "ExclusiveStartShardId"))
    DescribeStreamInput.struct_class = Types::DescribeStreamInput

    DescribeStreamOutput.add_member(:stream_description, Shapes::ShapeRef.new(shape: StreamDescription, required: true, location_name: "StreamDescription"))
    DescribeStreamOutput.struct_class = Types::DescribeStreamOutput

    DescribeStreamSummaryInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, required: true, location_name: "StreamName"))
    DescribeStreamSummaryInput.struct_class = Types::DescribeStreamSummaryInput

    DescribeStreamSummaryOutput.add_member(:stream_description_summary, Shapes::ShapeRef.new(shape: StreamDescriptionSummary, required: true, location_name: "StreamDescriptionSummary"))
    DescribeStreamSummaryOutput.struct_class = Types::DescribeStreamSummaryOutput

    DisableEnhancedMonitoringInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, required: true, location_name: "StreamName"))
    DisableEnhancedMonitoringInput.add_member(:shard_level_metrics, Shapes::ShapeRef.new(shape: MetricsNameList, required: true, location_name: "ShardLevelMetrics"))
    DisableEnhancedMonitoringInput.struct_class = Types::DisableEnhancedMonitoringInput

    EnableEnhancedMonitoringInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, required: true, location_name: "StreamName"))
    EnableEnhancedMonitoringInput.add_member(:shard_level_metrics, Shapes::ShapeRef.new(shape: MetricsNameList, required: true, location_name: "ShardLevelMetrics"))
    EnableEnhancedMonitoringInput.struct_class = Types::EnableEnhancedMonitoringInput

    EnhancedMetrics.add_member(:shard_level_metrics, Shapes::ShapeRef.new(shape: MetricsNameList, location_name: "ShardLevelMetrics"))
    EnhancedMetrics.struct_class = Types::EnhancedMetrics

    EnhancedMonitoringList.member = Shapes::ShapeRef.new(shape: EnhancedMetrics)

    EnhancedMonitoringOutput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, location_name: "StreamName"))
    EnhancedMonitoringOutput.add_member(:current_shard_level_metrics, Shapes::ShapeRef.new(shape: MetricsNameList, location_name: "CurrentShardLevelMetrics"))
    EnhancedMonitoringOutput.add_member(:desired_shard_level_metrics, Shapes::ShapeRef.new(shape: MetricsNameList, location_name: "DesiredShardLevelMetrics"))
    EnhancedMonitoringOutput.struct_class = Types::EnhancedMonitoringOutput

    GetRecordsInput.add_member(:shard_iterator, Shapes::ShapeRef.new(shape: ShardIterator, required: true, location_name: "ShardIterator"))
    GetRecordsInput.add_member(:limit, Shapes::ShapeRef.new(shape: GetRecordsInputLimit, location_name: "Limit"))
    GetRecordsInput.struct_class = Types::GetRecordsInput

    GetRecordsOutput.add_member(:records, Shapes::ShapeRef.new(shape: RecordList, required: true, location_name: "Records"))
    GetRecordsOutput.add_member(:next_shard_iterator, Shapes::ShapeRef.new(shape: ShardIterator, location_name: "NextShardIterator"))
    GetRecordsOutput.add_member(:millis_behind_latest, Shapes::ShapeRef.new(shape: MillisBehindLatest, location_name: "MillisBehindLatest"))
    GetRecordsOutput.struct_class = Types::GetRecordsOutput

    GetShardIteratorInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, required: true, location_name: "StreamName"))
    GetShardIteratorInput.add_member(:shard_id, Shapes::ShapeRef.new(shape: ShardId, required: true, location_name: "ShardId"))
    GetShardIteratorInput.add_member(:shard_iterator_type, Shapes::ShapeRef.new(shape: ShardIteratorType, required: true, location_name: "ShardIteratorType"))
    GetShardIteratorInput.add_member(:starting_sequence_number, Shapes::ShapeRef.new(shape: SequenceNumber, location_name: "StartingSequenceNumber"))
    GetShardIteratorInput.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Timestamp"))
    GetShardIteratorInput.struct_class = Types::GetShardIteratorInput

    GetShardIteratorOutput.add_member(:shard_iterator, Shapes::ShapeRef.new(shape: ShardIterator, location_name: "ShardIterator"))
    GetShardIteratorOutput.struct_class = Types::GetShardIteratorOutput

    HashKeyRange.add_member(:starting_hash_key, Shapes::ShapeRef.new(shape: HashKey, required: true, location_name: "StartingHashKey"))
    HashKeyRange.add_member(:ending_hash_key, Shapes::ShapeRef.new(shape: HashKey, required: true, location_name: "EndingHashKey"))
    HashKeyRange.struct_class = Types::HashKeyRange

    IncreaseStreamRetentionPeriodInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, required: true, location_name: "StreamName"))
    IncreaseStreamRetentionPeriodInput.add_member(:retention_period_hours, Shapes::ShapeRef.new(shape: RetentionPeriodHours, required: true, location_name: "RetentionPeriodHours"))
    IncreaseStreamRetentionPeriodInput.struct_class = Types::IncreaseStreamRetentionPeriodInput

    ListShardsInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, location_name: "StreamName"))
    ListShardsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListShardsInput.add_member(:exclusive_start_shard_id, Shapes::ShapeRef.new(shape: ShardId, location_name: "ExclusiveStartShardId"))
    ListShardsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListShardsInputLimit, location_name: "MaxResults"))
    ListShardsInput.add_member(:stream_creation_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StreamCreationTimestamp"))
    ListShardsInput.struct_class = Types::ListShardsInput

    ListShardsOutput.add_member(:shards, Shapes::ShapeRef.new(shape: ShardList, location_name: "Shards"))
    ListShardsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListShardsOutput.struct_class = Types::ListShardsOutput

    ListStreamConsumersInput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: StreamARN, required: true, location_name: "StreamARN"))
    ListStreamConsumersInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListStreamConsumersInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListStreamConsumersInputLimit, location_name: "MaxResults"))
    ListStreamConsumersInput.add_member(:stream_creation_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StreamCreationTimestamp"))
    ListStreamConsumersInput.struct_class = Types::ListStreamConsumersInput

    ListStreamConsumersOutput.add_member(:consumers, Shapes::ShapeRef.new(shape: ConsumerList, location_name: "Consumers"))
    ListStreamConsumersOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListStreamConsumersOutput.struct_class = Types::ListStreamConsumersOutput

    ListStreamsInput.add_member(:limit, Shapes::ShapeRef.new(shape: ListStreamsInputLimit, location_name: "Limit"))
    ListStreamsInput.add_member(:exclusive_start_stream_name, Shapes::ShapeRef.new(shape: StreamName, location_name: "ExclusiveStartStreamName"))
    ListStreamsInput.struct_class = Types::ListStreamsInput

    ListStreamsOutput.add_member(:stream_names, Shapes::ShapeRef.new(shape: StreamNameList, required: true, location_name: "StreamNames"))
    ListStreamsOutput.add_member(:has_more_streams, Shapes::ShapeRef.new(shape: BooleanObject, required: true, location_name: "HasMoreStreams"))
    ListStreamsOutput.struct_class = Types::ListStreamsOutput

    ListTagsForStreamInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, required: true, location_name: "StreamName"))
    ListTagsForStreamInput.add_member(:exclusive_start_tag_key, Shapes::ShapeRef.new(shape: TagKey, location_name: "ExclusiveStartTagKey"))
    ListTagsForStreamInput.add_member(:limit, Shapes::ShapeRef.new(shape: ListTagsForStreamInputLimit, location_name: "Limit"))
    ListTagsForStreamInput.struct_class = Types::ListTagsForStreamInput

    ListTagsForStreamOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    ListTagsForStreamOutput.add_member(:has_more_tags, Shapes::ShapeRef.new(shape: BooleanObject, required: true, location_name: "HasMoreTags"))
    ListTagsForStreamOutput.struct_class = Types::ListTagsForStreamOutput

    MergeShardsInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, required: true, location_name: "StreamName"))
    MergeShardsInput.add_member(:shard_to_merge, Shapes::ShapeRef.new(shape: ShardId, required: true, location_name: "ShardToMerge"))
    MergeShardsInput.add_member(:adjacent_shard_to_merge, Shapes::ShapeRef.new(shape: ShardId, required: true, location_name: "AdjacentShardToMerge"))
    MergeShardsInput.struct_class = Types::MergeShardsInput

    MetricsNameList.member = Shapes::ShapeRef.new(shape: MetricsName)

    PutRecordInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, required: true, location_name: "StreamName"))
    PutRecordInput.add_member(:data, Shapes::ShapeRef.new(shape: Data, required: true, location_name: "Data"))
    PutRecordInput.add_member(:partition_key, Shapes::ShapeRef.new(shape: PartitionKey, required: true, location_name: "PartitionKey"))
    PutRecordInput.add_member(:explicit_hash_key, Shapes::ShapeRef.new(shape: HashKey, location_name: "ExplicitHashKey"))
    PutRecordInput.add_member(:sequence_number_for_ordering, Shapes::ShapeRef.new(shape: SequenceNumber, location_name: "SequenceNumberForOrdering"))
    PutRecordInput.struct_class = Types::PutRecordInput

    PutRecordOutput.add_member(:shard_id, Shapes::ShapeRef.new(shape: ShardId, required: true, location_name: "ShardId"))
    PutRecordOutput.add_member(:sequence_number, Shapes::ShapeRef.new(shape: SequenceNumber, required: true, location_name: "SequenceNumber"))
    PutRecordOutput.add_member(:encryption_type, Shapes::ShapeRef.new(shape: EncryptionType, location_name: "EncryptionType"))
    PutRecordOutput.struct_class = Types::PutRecordOutput

    PutRecordsInput.add_member(:records, Shapes::ShapeRef.new(shape: PutRecordsRequestEntryList, required: true, location_name: "Records"))
    PutRecordsInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, required: true, location_name: "StreamName"))
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

    Record.add_member(:sequence_number, Shapes::ShapeRef.new(shape: SequenceNumber, required: true, location_name: "SequenceNumber"))
    Record.add_member(:approximate_arrival_timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ApproximateArrivalTimestamp"))
    Record.add_member(:data, Shapes::ShapeRef.new(shape: Data, required: true, location_name: "Data"))
    Record.add_member(:partition_key, Shapes::ShapeRef.new(shape: PartitionKey, required: true, location_name: "PartitionKey"))
    Record.add_member(:encryption_type, Shapes::ShapeRef.new(shape: EncryptionType, location_name: "EncryptionType"))
    Record.struct_class = Types::Record

    RecordList.member = Shapes::ShapeRef.new(shape: Record)

    RegisterStreamConsumerInput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: StreamARN, required: true, location_name: "StreamARN"))
    RegisterStreamConsumerInput.add_member(:consumer_name, Shapes::ShapeRef.new(shape: ConsumerName, required: true, location_name: "ConsumerName"))
    RegisterStreamConsumerInput.struct_class = Types::RegisterStreamConsumerInput

    RegisterStreamConsumerOutput.add_member(:consumer, Shapes::ShapeRef.new(shape: Consumer, required: true, location_name: "Consumer"))
    RegisterStreamConsumerOutput.struct_class = Types::RegisterStreamConsumerOutput

    RemoveTagsFromStreamInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, required: true, location_name: "StreamName"))
    RemoveTagsFromStreamInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    RemoveTagsFromStreamInput.struct_class = Types::RemoveTagsFromStreamInput

    SequenceNumberRange.add_member(:starting_sequence_number, Shapes::ShapeRef.new(shape: SequenceNumber, required: true, location_name: "StartingSequenceNumber"))
    SequenceNumberRange.add_member(:ending_sequence_number, Shapes::ShapeRef.new(shape: SequenceNumber, location_name: "EndingSequenceNumber"))
    SequenceNumberRange.struct_class = Types::SequenceNumberRange

    Shard.add_member(:shard_id, Shapes::ShapeRef.new(shape: ShardId, required: true, location_name: "ShardId"))
    Shard.add_member(:parent_shard_id, Shapes::ShapeRef.new(shape: ShardId, location_name: "ParentShardId"))
    Shard.add_member(:adjacent_parent_shard_id, Shapes::ShapeRef.new(shape: ShardId, location_name: "AdjacentParentShardId"))
    Shard.add_member(:hash_key_range, Shapes::ShapeRef.new(shape: HashKeyRange, required: true, location_name: "HashKeyRange"))
    Shard.add_member(:sequence_number_range, Shapes::ShapeRef.new(shape: SequenceNumberRange, required: true, location_name: "SequenceNumberRange"))
    Shard.struct_class = Types::Shard

    ShardList.member = Shapes::ShapeRef.new(shape: Shard)

    SplitShardInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, required: true, location_name: "StreamName"))
    SplitShardInput.add_member(:shard_to_split, Shapes::ShapeRef.new(shape: ShardId, required: true, location_name: "ShardToSplit"))
    SplitShardInput.add_member(:new_starting_hash_key, Shapes::ShapeRef.new(shape: HashKey, required: true, location_name: "NewStartingHashKey"))
    SplitShardInput.struct_class = Types::SplitShardInput

    StartStreamEncryptionInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, required: true, location_name: "StreamName"))
    StartStreamEncryptionInput.add_member(:encryption_type, Shapes::ShapeRef.new(shape: EncryptionType, required: true, location_name: "EncryptionType"))
    StartStreamEncryptionInput.add_member(:key_id, Shapes::ShapeRef.new(shape: KeyId, required: true, location_name: "KeyId"))
    StartStreamEncryptionInput.struct_class = Types::StartStreamEncryptionInput

    StartingPosition.add_member(:type, Shapes::ShapeRef.new(shape: ShardIteratorType, required: true, location_name: "Type"))
    StartingPosition.add_member(:sequence_number, Shapes::ShapeRef.new(shape: SequenceNumber, location_name: "SequenceNumber"))
    StartingPosition.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Timestamp"))
    StartingPosition.struct_class = Types::StartingPosition

    StopStreamEncryptionInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, required: true, location_name: "StreamName"))
    StopStreamEncryptionInput.add_member(:encryption_type, Shapes::ShapeRef.new(shape: EncryptionType, required: true, location_name: "EncryptionType"))
    StopStreamEncryptionInput.add_member(:key_id, Shapes::ShapeRef.new(shape: KeyId, required: true, location_name: "KeyId"))
    StopStreamEncryptionInput.struct_class = Types::StopStreamEncryptionInput

    StreamDescription.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, required: true, location_name: "StreamName"))
    StreamDescription.add_member(:stream_arn, Shapes::ShapeRef.new(shape: StreamARN, required: true, location_name: "StreamARN"))
    StreamDescription.add_member(:stream_status, Shapes::ShapeRef.new(shape: StreamStatus, required: true, location_name: "StreamStatus"))
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
    StreamDescriptionSummary.add_member(:stream_status, Shapes::ShapeRef.new(shape: StreamStatus, required: true, location_name: "StreamStatus"))
    StreamDescriptionSummary.add_member(:retention_period_hours, Shapes::ShapeRef.new(shape: PositiveIntegerObject, required: true, location_name: "RetentionPeriodHours"))
    StreamDescriptionSummary.add_member(:stream_creation_timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "StreamCreationTimestamp"))
    StreamDescriptionSummary.add_member(:enhanced_monitoring, Shapes::ShapeRef.new(shape: EnhancedMonitoringList, required: true, location_name: "EnhancedMonitoring"))
    StreamDescriptionSummary.add_member(:encryption_type, Shapes::ShapeRef.new(shape: EncryptionType, location_name: "EncryptionType"))
    StreamDescriptionSummary.add_member(:key_id, Shapes::ShapeRef.new(shape: KeyId, location_name: "KeyId"))
    StreamDescriptionSummary.add_member(:open_shard_count, Shapes::ShapeRef.new(shape: ShardCountObject, required: true, location_name: "OpenShardCount"))
    StreamDescriptionSummary.add_member(:consumer_count, Shapes::ShapeRef.new(shape: ConsumerCountObject, location_name: "ConsumerCount"))
    StreamDescriptionSummary.struct_class = Types::StreamDescriptionSummary

    StreamNameList.member = Shapes::ShapeRef.new(shape: StreamName)

    SubscribeToShardEvent.add_member(:records, Shapes::ShapeRef.new(shape: RecordList, required: true, location_name: "Records"))
    SubscribeToShardEvent.add_member(:continuation_sequence_number, Shapes::ShapeRef.new(shape: SequenceNumber, required: true, location_name: "ContinuationSequenceNumber"))
    SubscribeToShardEvent.add_member(:millis_behind_latest, Shapes::ShapeRef.new(shape: MillisBehindLatest, required: true, location_name: "MillisBehindLatest"))
    SubscribeToShardEvent.struct_class = Types::SubscribeToShardEvent

    SubscribeToShardEventStream.add_member(:subscribe_to_shard_event, Shapes::ShapeRef.new(shape: SubscribeToShardEvent, required: true, event: true, location_name: "SubscribeToShardEvent"))
    SubscribeToShardEventStream.add_member(:resource_not_found_exception, Shapes::ShapeRef.new(shape: ResourceNotFoundException, location_name: "ResourceNotFoundException"))
    SubscribeToShardEventStream.add_member(:resource_in_use_exception, Shapes::ShapeRef.new(shape: ResourceInUseException, location_name: "ResourceInUseException"))
    SubscribeToShardEventStream.add_member(:kms_disabled_exception, Shapes::ShapeRef.new(shape: KMSDisabledException, location_name: "KMSDisabledException"))
    SubscribeToShardEventStream.add_member(:kms_invalid_state_exception, Shapes::ShapeRef.new(shape: KMSInvalidStateException, location_name: "KMSInvalidStateException"))
    SubscribeToShardEventStream.add_member(:kms_access_denied_exception, Shapes::ShapeRef.new(shape: KMSAccessDeniedException, location_name: "KMSAccessDeniedException"))
    SubscribeToShardEventStream.add_member(:kms_not_found_exception, Shapes::ShapeRef.new(shape: KMSNotFoundException, location_name: "KMSNotFoundException"))
    SubscribeToShardEventStream.add_member(:kms_opt_in_required, Shapes::ShapeRef.new(shape: KMSOptInRequired, location_name: "KMSOptInRequired"))
    SubscribeToShardEventStream.add_member(:kms_throttling_exception, Shapes::ShapeRef.new(shape: KMSThrottlingException, location_name: "KMSThrottlingException"))
    SubscribeToShardEventStream.add_member(:internal_failure_exception, Shapes::ShapeRef.new(shape: InternalFailureException, location_name: "InternalFailureException"))
    SubscribeToShardEventStream.struct_class = Types::SubscribeToShardEventStream

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    UpdateShardCountInput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, required: true, location_name: "StreamName"))
    UpdateShardCountInput.add_member(:target_shard_count, Shapes::ShapeRef.new(shape: PositiveIntegerObject, required: true, location_name: "TargetShardCount"))
    UpdateShardCountInput.add_member(:scaling_type, Shapes::ShapeRef.new(shape: ScalingType, required: true, location_name: "ScalingType"))
    UpdateShardCountInput.struct_class = Types::UpdateShardCountInput

    UpdateShardCountOutput.add_member(:stream_name, Shapes::ShapeRef.new(shape: StreamName, location_name: "StreamName"))
    UpdateShardCountOutput.add_member(:current_shard_count, Shapes::ShapeRef.new(shape: PositiveIntegerObject, location_name: "CurrentShardCount"))
    UpdateShardCountOutput.add_member(:target_shard_count, Shapes::ShapeRef.new(shape: PositiveIntegerObject, location_name: "TargetShardCount"))
    UpdateShardCountOutput.struct_class = Types::UpdateShardCountOutput


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2013-12-02"

      api.metadata = {
        "apiVersion" => "2013-12-02",
        "endpointPrefix" => "kinesis",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "protocolSettings" => {"h2"=>"eventstream"},
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
        o[:pager] = Aws::Pager.new(
          more_results: "has_more_streams",
          limit_key: "limit",
          tokens: {
            "stream_names[-1]" => "exclusive_start_stream_name"
          }
        )
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
      end)
    end

  end
end
