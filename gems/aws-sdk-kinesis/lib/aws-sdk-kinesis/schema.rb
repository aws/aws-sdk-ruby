# frozen_string_literal: true

# This is generated code!

module Aws::Kinesis
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client"})
    AddTagsToStreamInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#AddTagsToStreamInput", name: "AddTagsToStreamInput")
    BooleanObject = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.kinesis#BooleanObject", name: "BooleanObject")
    ChildShard = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#ChildShard", name: "ChildShard")
    ChildShardList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesis#ChildShardList", name: "ChildShardList")
    Consumer = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#Consumer", name: "Consumer")
    ConsumerARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesis#ConsumerARN", name: "ConsumerARN", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(arn):aws.*:kinesis:.*:\\d{12}:.*stream\\/[a-zA-Z0-9_.-]+\\/consumer\\/[a-zA-Z0-9_.-]+:[0-9]+$"})
    ConsumerCountObject = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kinesis#ConsumerCountObject", name: "ConsumerCountObject", traits: {"smithy.api#range" => {"min" => 0, "max" => 1000000}})
    ConsumerDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#ConsumerDescription", name: "ConsumerDescription")
    ConsumerList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesis#ConsumerList", name: "ConsumerList")
    ConsumerName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesis#ConsumerName", name: "ConsumerName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    ConsumerStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kinesis#ConsumerStatus", name: "ConsumerStatus")
    CreateStreamInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#CreateStreamInput", name: "CreateStreamInput")
    Data = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.kinesis#Data", name: "Data", traits: {"smithy.api#length" => {"min" => 0, "max" => 1048576}})
    DecreaseStreamRetentionPeriodInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#DecreaseStreamRetentionPeriodInput", name: "DecreaseStreamRetentionPeriodInput")
    DeleteResourcePolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#DeleteResourcePolicyInput", name: "DeleteResourcePolicyInput")
    DeleteStreamInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#DeleteStreamInput", name: "DeleteStreamInput")
    DeregisterStreamConsumerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#DeregisterStreamConsumerInput", name: "DeregisterStreamConsumerInput")
    DescribeLimitsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#DescribeLimitsInput", name: "DescribeLimitsInput")
    DescribeLimitsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#DescribeLimitsOutput", name: "DescribeLimitsOutput")
    DescribeStreamConsumerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#DescribeStreamConsumerInput", name: "DescribeStreamConsumerInput")
    DescribeStreamConsumerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#DescribeStreamConsumerOutput", name: "DescribeStreamConsumerOutput")
    DescribeStreamInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#DescribeStreamInput", name: "DescribeStreamInput")
    DescribeStreamInputLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kinesis#DescribeStreamInputLimit", name: "DescribeStreamInputLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 10000}})
    DescribeStreamOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#DescribeStreamOutput", name: "DescribeStreamOutput")
    DescribeStreamSummaryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#DescribeStreamSummaryInput", name: "DescribeStreamSummaryInput")
    DescribeStreamSummaryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#DescribeStreamSummaryOutput", name: "DescribeStreamSummaryOutput")
    DisableEnhancedMonitoringInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#DisableEnhancedMonitoringInput", name: "DisableEnhancedMonitoringInput")
    DisableEnhancedMonitoringOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#DisableEnhancedMonitoringOutput", name: "DisableEnhancedMonitoringOutput")
    EnableEnhancedMonitoringInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#EnableEnhancedMonitoringInput", name: "EnableEnhancedMonitoringInput")
    EnableEnhancedMonitoringOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#EnableEnhancedMonitoringOutput", name: "EnableEnhancedMonitoringOutput")
    EncryptionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kinesis#EncryptionType", name: "EncryptionType")
    EnhancedMetrics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#EnhancedMetrics", name: "EnhancedMetrics")
    EnhancedMonitoringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesis#EnhancedMonitoringList", name: "EnhancedMonitoringList")
    ErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesis#ErrorCode", name: "ErrorCode")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesis#ErrorMessage", name: "ErrorMessage")
    ExpiredIteratorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#ExpiredIteratorException", name: "ExpiredIteratorException", traits: {"smithy.api#error" => "client"})
    ExpiredNextTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#ExpiredNextTokenException", name: "ExpiredNextTokenException", traits: {"smithy.api#error" => "client"})
    GetRecordsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#GetRecordsInput", name: "GetRecordsInput")
    GetRecordsInputLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kinesis#GetRecordsInputLimit", name: "GetRecordsInputLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 10000}})
    GetRecordsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#GetRecordsOutput", name: "GetRecordsOutput")
    GetResourcePolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#GetResourcePolicyInput", name: "GetResourcePolicyInput")
    GetResourcePolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#GetResourcePolicyOutput", name: "GetResourcePolicyOutput")
    GetShardIteratorInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#GetShardIteratorInput", name: "GetShardIteratorInput")
    GetShardIteratorOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#GetShardIteratorOutput", name: "GetShardIteratorOutput")
    HashKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesis#HashKey", name: "HashKey", traits: {"smithy.api#pattern" => "^0|([1-9]\\d{0,38})$"})
    HashKeyRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#HashKeyRange", name: "HashKeyRange")
    IncreaseStreamRetentionPeriodInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#IncreaseStreamRetentionPeriodInput", name: "IncreaseStreamRetentionPeriodInput")
    InternalFailureException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#InternalFailureException", name: "InternalFailureException", traits: {"smithy.api#error" => "server"})
    InvalidArgumentException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#InvalidArgumentException", name: "InvalidArgumentException", traits: {"smithy.api#error" => "client"})
    KMSAccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#KMSAccessDeniedException", name: "KMSAccessDeniedException", traits: {"smithy.api#error" => "client"})
    KMSDisabledException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#KMSDisabledException", name: "KMSDisabledException", traits: {"smithy.api#error" => "client"})
    KMSInvalidStateException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#KMSInvalidStateException", name: "KMSInvalidStateException", traits: {"smithy.api#error" => "client"})
    KMSNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#KMSNotFoundException", name: "KMSNotFoundException", traits: {"smithy.api#error" => "client"})
    KMSOptInRequired = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#KMSOptInRequired", name: "KMSOptInRequired", traits: {"smithy.api#error" => "client"})
    KMSThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#KMSThrottlingException", name: "KMSThrottlingException", traits: {"smithy.api#error" => "client"})
    KeyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesis#KeyId", name: "KeyId", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client"})
    ListShardsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#ListShardsInput", name: "ListShardsInput")
    ListShardsInputLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kinesis#ListShardsInputLimit", name: "ListShardsInputLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 10000}})
    ListShardsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#ListShardsOutput", name: "ListShardsOutput")
    ListStreamConsumersInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#ListStreamConsumersInput", name: "ListStreamConsumersInput")
    ListStreamConsumersInputLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kinesis#ListStreamConsumersInputLimit", name: "ListStreamConsumersInputLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 10000}})
    ListStreamConsumersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#ListStreamConsumersOutput", name: "ListStreamConsumersOutput")
    ListStreamsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#ListStreamsInput", name: "ListStreamsInput")
    ListStreamsInputLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kinesis#ListStreamsInputLimit", name: "ListStreamsInputLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 10000}})
    ListStreamsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#ListStreamsOutput", name: "ListStreamsOutput")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#ListTagsForResourceInput", name: "ListTagsForResourceInput")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    ListTagsForStreamInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#ListTagsForStreamInput", name: "ListTagsForStreamInput")
    ListTagsForStreamInputLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kinesis#ListTagsForStreamInputLimit", name: "ListTagsForStreamInputLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    ListTagsForStreamOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#ListTagsForStreamOutput", name: "ListTagsForStreamOutput")
    MergeShardsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#MergeShardsInput", name: "MergeShardsInput")
    MetricsName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kinesis#MetricsName", name: "MetricsName")
    MetricsNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesis#MetricsNameList", name: "MetricsNameList", traits: {"smithy.api#length" => {"min" => 1, "max" => 7}})
    MillisBehindLatest = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kinesis#MillisBehindLatest", name: "MillisBehindLatest", traits: {"smithy.api#range" => {"min" => 0}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesis#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 1048576}})
    OnDemandStreamCountLimitObject = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kinesis#OnDemandStreamCountLimitObject", name: "OnDemandStreamCountLimitObject", traits: {"smithy.api#range" => {"min" => 0, "max" => 1000000}})
    OnDemandStreamCountObject = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kinesis#OnDemandStreamCountObject", name: "OnDemandStreamCountObject", traits: {"smithy.api#range" => {"min" => 0, "max" => 1000000}})
    PartitionKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesis#PartitionKey", name: "PartitionKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    Policy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesis#Policy", name: "Policy")
    PositiveIntegerObject = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kinesis#PositiveIntegerObject", name: "PositiveIntegerObject", traits: {"smithy.api#range" => {"min" => 1}})
    ProvisionedThroughputExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#ProvisionedThroughputExceededException", name: "ProvisionedThroughputExceededException", traits: {"smithy.api#error" => "client"})
    PutRecordInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#PutRecordInput", name: "PutRecordInput")
    PutRecordOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#PutRecordOutput", name: "PutRecordOutput")
    PutRecordsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#PutRecordsInput", name: "PutRecordsInput")
    PutRecordsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#PutRecordsOutput", name: "PutRecordsOutput")
    PutRecordsRequestEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#PutRecordsRequestEntry", name: "PutRecordsRequestEntry")
    PutRecordsRequestEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesis#PutRecordsRequestEntryList", name: "PutRecordsRequestEntryList", traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    PutRecordsResultEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#PutRecordsResultEntry", name: "PutRecordsResultEntry")
    PutRecordsResultEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesis#PutRecordsResultEntryList", name: "PutRecordsResultEntryList", traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    PutResourcePolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#PutResourcePolicyInput", name: "PutResourcePolicyInput")
    Record = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#Record", name: "Record")
    RecordList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesis#RecordList", name: "RecordList")
    RegisterStreamConsumerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#RegisterStreamConsumerInput", name: "RegisterStreamConsumerInput")
    RegisterStreamConsumerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#RegisterStreamConsumerOutput", name: "RegisterStreamConsumerOutput")
    RemoveTagsFromStreamInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#RemoveTagsFromStreamInput", name: "RemoveTagsFromStreamInput")
    ResourceARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesis#ResourceARN", name: "ResourceARN", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws.*:kinesis:.*:\\d{12}:.*stream/\\S+$"})
    ResourceInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#ResourceInUseException", name: "ResourceInUseException", traits: {"smithy.api#error" => "client"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client"})
    RetentionPeriodHours = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kinesis#RetentionPeriodHours", name: "RetentionPeriodHours")
    ScalingType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kinesis#ScalingType", name: "ScalingType")
    SequenceNumber = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesis#SequenceNumber", name: "SequenceNumber", traits: {"smithy.api#pattern" => "^0|([1-9]\\d{0,128})$"})
    SequenceNumberRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#SequenceNumberRange", name: "SequenceNumberRange")
    Shard = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#Shard", name: "Shard")
    ShardCountObject = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kinesis#ShardCountObject", name: "ShardCountObject", traits: {"smithy.api#range" => {"min" => 0, "max" => 1000000}})
    ShardFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#ShardFilter", name: "ShardFilter")
    ShardFilterType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kinesis#ShardFilterType", name: "ShardFilterType")
    ShardId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesis#ShardId", name: "ShardId", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    ShardIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesis#ShardIdList", name: "ShardIdList")
    ShardIterator = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesis#ShardIterator", name: "ShardIterator", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    ShardIteratorType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kinesis#ShardIteratorType", name: "ShardIteratorType")
    ShardList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesis#ShardList", name: "ShardList")
    SplitShardInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#SplitShardInput", name: "SplitShardInput")
    StartStreamEncryptionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#StartStreamEncryptionInput", name: "StartStreamEncryptionInput")
    StartingPosition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#StartingPosition", name: "StartingPosition")
    StopStreamEncryptionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#StopStreamEncryptionInput", name: "StopStreamEncryptionInput")
    StreamARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesis#StreamARN", name: "StreamARN", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws.*:kinesis:.*:\\d{12}:stream/\\S+$"})
    StreamDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#StreamDescription", name: "StreamDescription")
    StreamDescriptionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#StreamDescriptionSummary", name: "StreamDescriptionSummary")
    StreamMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kinesis#StreamMode", name: "StreamMode")
    StreamModeDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#StreamModeDetails", name: "StreamModeDetails")
    StreamName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesis#StreamName", name: "StreamName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    StreamNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesis#StreamNameList", name: "StreamNameList")
    StreamStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kinesis#StreamStatus", name: "StreamStatus")
    StreamSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#StreamSummary", name: "StreamSummary")
    StreamSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesis#StreamSummaryList", name: "StreamSummaryList")
    SubscribeToShardEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#SubscribeToShardEvent", name: "SubscribeToShardEvent")
    SubscribeToShardEventStream = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.kinesis#SubscribeToShardEventStream", name: "SubscribeToShardEventStream", traits: {"smithy.api#streaming" => {}})
    SubscribeToShardInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#SubscribeToShardInput", name: "SubscribeToShardInput")
    SubscribeToShardOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#SubscribeToShardOutput", name: "SubscribeToShardOutput")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesis#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesis#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesis#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.kinesis#TagMap", name: "TagMap", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#TagResourceInput", name: "TagResourceInput")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesis#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.kinesis#Timestamp", name: "Timestamp")
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#UntagResourceInput", name: "UntagResourceInput")
    UpdateShardCountInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#UpdateShardCountInput", name: "UpdateShardCountInput")
    UpdateShardCountOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#UpdateShardCountOutput", name: "UpdateShardCountOutput")
    UpdateStreamModeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#UpdateStreamModeInput", name: "UpdateStreamModeInput")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client"})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AddTagsToStreamInput.add_member(:stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamName, name: "StreamName"))
    AddTagsToStreamInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"smithy.api#required" => {}}))
    AddTagsToStreamInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.rules#contextParam" => {"name" => "StreamARN"}}))
    AddTagsToStreamInput.type = Types::AddTagsToStreamInput
    ChildShard.add_member(:shard_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardId, name: "ShardId", traits: {"smithy.api#required" => {}}))
    ChildShard.add_member(:parent_shards, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardIdList, name: "ParentShards", traits: {"smithy.api#required" => {}}))
    ChildShard.add_member(:hash_key_range, ::Smithy::Schema::Shapes::MemberShape.new(target: HashKeyRange, name: "HashKeyRange", traits: {"smithy.api#required" => {}}))
    ChildShard.type = Types::ChildShard
    ChildShardList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ChildShard, name: "member")
    Consumer.add_member(:consumer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumerName, name: "ConsumerName", traits: {"smithy.api#required" => {}}))
    Consumer.add_member(:consumer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumerARN, name: "ConsumerARN", traits: {"smithy.api#required" => {}}))
    Consumer.add_member(:consumer_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumerStatus, name: "ConsumerStatus", traits: {"smithy.api#required" => {}}))
    Consumer.add_member(:consumer_creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ConsumerCreationTimestamp", traits: {"smithy.api#required" => {}}))
    Consumer.type = Types::Consumer
    ConsumerDescription.add_member(:consumer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumerName, name: "ConsumerName", traits: {"smithy.api#required" => {}}))
    ConsumerDescription.add_member(:consumer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumerARN, name: "ConsumerARN", traits: {"smithy.api#required" => {}}))
    ConsumerDescription.add_member(:consumer_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumerStatus, name: "ConsumerStatus", traits: {"smithy.api#required" => {}}))
    ConsumerDescription.add_member(:consumer_creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ConsumerCreationTimestamp", traits: {"smithy.api#required" => {}}))
    ConsumerDescription.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.api#required" => {}}))
    ConsumerDescription.type = Types::ConsumerDescription
    ConsumerList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Consumer, name: "member")
    ConsumerStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    ConsumerStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ConsumerStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    CreateStreamInput.add_member(:stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamName, name: "StreamName", traits: {"smithy.api#required" => {}}))
    CreateStreamInput.add_member(:shard_count, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveIntegerObject, name: "ShardCount"))
    CreateStreamInput.add_member(:stream_mode_details, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamModeDetails, name: "StreamModeDetails"))
    CreateStreamInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreateStreamInput.type = Types::CreateStreamInput
    DecreaseStreamRetentionPeriodInput.add_member(:stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamName, name: "StreamName"))
    DecreaseStreamRetentionPeriodInput.add_member(:retention_period_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionPeriodHours, name: "RetentionPeriodHours", traits: {"smithy.api#required" => {}}))
    DecreaseStreamRetentionPeriodInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.rules#contextParam" => {"name" => "StreamARN"}}))
    DecreaseStreamRetentionPeriodInput.type = Types::DecreaseStreamRetentionPeriodInput
    DeleteResourcePolicyInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceARN", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceARN"}}))
    DeleteResourcePolicyInput.type = Types::DeleteResourcePolicyInput
    DeleteStreamInput.add_member(:stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamName, name: "StreamName"))
    DeleteStreamInput.add_member(:enforce_consumer_deletion, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "EnforceConsumerDeletion"))
    DeleteStreamInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.rules#contextParam" => {"name" => "StreamARN"}}))
    DeleteStreamInput.type = Types::DeleteStreamInput
    DeregisterStreamConsumerInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.rules#contextParam" => {"name" => "StreamARN"}}))
    DeregisterStreamConsumerInput.add_member(:consumer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumerName, name: "ConsumerName"))
    DeregisterStreamConsumerInput.add_member(:consumer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumerARN, name: "ConsumerARN", traits: {"smithy.rules#contextParam" => {"name" => "ConsumerARN"}}))
    DeregisterStreamConsumerInput.type = Types::DeregisterStreamConsumerInput
    DescribeLimitsInput.type = Types::DescribeLimitsInput
    DescribeLimitsOutput.add_member(:shard_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardCountObject, name: "ShardLimit", traits: {"smithy.api#required" => {}}))
    DescribeLimitsOutput.add_member(:open_shard_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardCountObject, name: "OpenShardCount", traits: {"smithy.api#required" => {}}))
    DescribeLimitsOutput.add_member(:on_demand_stream_count, ::Smithy::Schema::Shapes::MemberShape.new(target: OnDemandStreamCountObject, name: "OnDemandStreamCount", traits: {"smithy.api#required" => {}}))
    DescribeLimitsOutput.add_member(:on_demand_stream_count_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: OnDemandStreamCountLimitObject, name: "OnDemandStreamCountLimit", traits: {"smithy.api#required" => {}}))
    DescribeLimitsOutput.type = Types::DescribeLimitsOutput
    DescribeStreamConsumerInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.rules#contextParam" => {"name" => "StreamARN"}}))
    DescribeStreamConsumerInput.add_member(:consumer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumerName, name: "ConsumerName"))
    DescribeStreamConsumerInput.add_member(:consumer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumerARN, name: "ConsumerARN", traits: {"smithy.rules#contextParam" => {"name" => "ConsumerARN"}}))
    DescribeStreamConsumerInput.type = Types::DescribeStreamConsumerInput
    DescribeStreamConsumerOutput.add_member(:consumer_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumerDescription, name: "ConsumerDescription", traits: {"smithy.api#required" => {}}))
    DescribeStreamConsumerOutput.type = Types::DescribeStreamConsumerOutput
    DescribeStreamInput.add_member(:stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamName, name: "StreamName"))
    DescribeStreamInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeStreamInputLimit, name: "Limit"))
    DescribeStreamInput.add_member(:exclusive_start_shard_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardId, name: "ExclusiveStartShardId"))
    DescribeStreamInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.rules#contextParam" => {"name" => "StreamARN"}}))
    DescribeStreamInput.type = Types::DescribeStreamInput
    DescribeStreamOutput.add_member(:stream_description, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamDescription, name: "StreamDescription", traits: {"smithy.api#required" => {}}))
    DescribeStreamOutput.type = Types::DescribeStreamOutput
    DescribeStreamSummaryInput.add_member(:stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamName, name: "StreamName"))
    DescribeStreamSummaryInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.rules#contextParam" => {"name" => "StreamARN"}}))
    DescribeStreamSummaryInput.type = Types::DescribeStreamSummaryInput
    DescribeStreamSummaryOutput.add_member(:stream_description_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamDescriptionSummary, name: "StreamDescriptionSummary", traits: {"smithy.api#required" => {}}))
    DescribeStreamSummaryOutput.type = Types::DescribeStreamSummaryOutput
    DisableEnhancedMonitoringInput.add_member(:stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamName, name: "StreamName"))
    DisableEnhancedMonitoringInput.add_member(:shard_level_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricsNameList, name: "ShardLevelMetrics", traits: {"smithy.api#required" => {}}))
    DisableEnhancedMonitoringInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.rules#contextParam" => {"name" => "StreamARN"}}))
    DisableEnhancedMonitoringInput.type = Types::DisableEnhancedMonitoringInput
    DisableEnhancedMonitoringOutput.add_member(:stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamName, name: "StreamName"))
    DisableEnhancedMonitoringOutput.add_member(:current_shard_level_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricsNameList, name: "CurrentShardLevelMetrics"))
    DisableEnhancedMonitoringOutput.add_member(:desired_shard_level_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricsNameList, name: "DesiredShardLevelMetrics"))
    DisableEnhancedMonitoringOutput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN"))
    DisableEnhancedMonitoringOutput.type = Types::DisableEnhancedMonitoringOutput
    EnableEnhancedMonitoringInput.add_member(:stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamName, name: "StreamName"))
    EnableEnhancedMonitoringInput.add_member(:shard_level_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricsNameList, name: "ShardLevelMetrics", traits: {"smithy.api#required" => {}}))
    EnableEnhancedMonitoringInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.rules#contextParam" => {"name" => "StreamARN"}}))
    EnableEnhancedMonitoringInput.type = Types::EnableEnhancedMonitoringInput
    EnableEnhancedMonitoringOutput.add_member(:stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamName, name: "StreamName"))
    EnableEnhancedMonitoringOutput.add_member(:current_shard_level_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricsNameList, name: "CurrentShardLevelMetrics"))
    EnableEnhancedMonitoringOutput.add_member(:desired_shard_level_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricsNameList, name: "DesiredShardLevelMetrics"))
    EnableEnhancedMonitoringOutput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN"))
    EnableEnhancedMonitoringOutput.type = Types::EnableEnhancedMonitoringOutput
    EncryptionType.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    EncryptionType.add_member(:kms, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KMS", traits: {"smithy.api#enumValue" => "KMS"}))
    EnhancedMetrics.add_member(:shard_level_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricsNameList, name: "ShardLevelMetrics"))
    EnhancedMetrics.type = Types::EnhancedMetrics
    EnhancedMonitoringList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EnhancedMetrics, name: "member")
    ExpiredIteratorException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ExpiredIteratorException.type = Types::ExpiredIteratorException
    ExpiredNextTokenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ExpiredNextTokenException.type = Types::ExpiredNextTokenException
    GetRecordsInput.add_member(:shard_iterator, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardIterator, name: "ShardIterator", traits: {"smithy.api#required" => {}}))
    GetRecordsInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: GetRecordsInputLimit, name: "Limit"))
    GetRecordsInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.rules#contextParam" => {"name" => "StreamARN"}}))
    GetRecordsInput.type = Types::GetRecordsInput
    GetRecordsOutput.add_member(:records, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordList, name: "Records", traits: {"smithy.api#required" => {}}))
    GetRecordsOutput.add_member(:next_shard_iterator, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardIterator, name: "NextShardIterator"))
    GetRecordsOutput.add_member(:millis_behind_latest, ::Smithy::Schema::Shapes::MemberShape.new(target: MillisBehindLatest, name: "MillisBehindLatest"))
    GetRecordsOutput.add_member(:child_shards, ::Smithy::Schema::Shapes::MemberShape.new(target: ChildShardList, name: "ChildShards"))
    GetRecordsOutput.type = Types::GetRecordsOutput
    GetResourcePolicyInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceARN", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceARN"}}))
    GetResourcePolicyInput.type = Types::GetResourcePolicyInput
    GetResourcePolicyOutput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: Policy, name: "Policy", traits: {"smithy.api#required" => {}}))
    GetResourcePolicyOutput.type = Types::GetResourcePolicyOutput
    GetShardIteratorInput.add_member(:stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamName, name: "StreamName"))
    GetShardIteratorInput.add_member(:shard_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardId, name: "ShardId", traits: {"smithy.api#required" => {}}))
    GetShardIteratorInput.add_member(:shard_iterator_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardIteratorType, name: "ShardIteratorType", traits: {"smithy.api#required" => {}}))
    GetShardIteratorInput.add_member(:starting_sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceNumber, name: "StartingSequenceNumber"))
    GetShardIteratorInput.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "Timestamp"))
    GetShardIteratorInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.rules#contextParam" => {"name" => "StreamARN"}}))
    GetShardIteratorInput.type = Types::GetShardIteratorInput
    GetShardIteratorOutput.add_member(:shard_iterator, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardIterator, name: "ShardIterator"))
    GetShardIteratorOutput.type = Types::GetShardIteratorOutput
    HashKeyRange.add_member(:starting_hash_key, ::Smithy::Schema::Shapes::MemberShape.new(target: HashKey, name: "StartingHashKey", traits: {"smithy.api#required" => {}}))
    HashKeyRange.add_member(:ending_hash_key, ::Smithy::Schema::Shapes::MemberShape.new(target: HashKey, name: "EndingHashKey", traits: {"smithy.api#required" => {}}))
    HashKeyRange.type = Types::HashKeyRange
    IncreaseStreamRetentionPeriodInput.add_member(:stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamName, name: "StreamName"))
    IncreaseStreamRetentionPeriodInput.add_member(:retention_period_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionPeriodHours, name: "RetentionPeriodHours", traits: {"smithy.api#required" => {}}))
    IncreaseStreamRetentionPeriodInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.rules#contextParam" => {"name" => "StreamARN"}}))
    IncreaseStreamRetentionPeriodInput.type = Types::IncreaseStreamRetentionPeriodInput
    InternalFailureException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InternalFailureException.type = Types::InternalFailureException
    InvalidArgumentException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidArgumentException.type = Types::InvalidArgumentException
    KMSAccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    KMSAccessDeniedException.type = Types::KMSAccessDeniedException
    KMSDisabledException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    KMSDisabledException.type = Types::KMSDisabledException
    KMSInvalidStateException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    KMSInvalidStateException.type = Types::KMSInvalidStateException
    KMSNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    KMSNotFoundException.type = Types::KMSNotFoundException
    KMSOptInRequired.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    KMSOptInRequired.type = Types::KMSOptInRequired
    KMSThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    KMSThrottlingException.type = Types::KMSThrottlingException
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    LimitExceededException.type = Types::LimitExceededException
    ListShardsInput.add_member(:stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamName, name: "StreamName"))
    ListShardsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListShardsInput.add_member(:exclusive_start_shard_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardId, name: "ExclusiveStartShardId"))
    ListShardsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListShardsInputLimit, name: "MaxResults"))
    ListShardsInput.add_member(:stream_creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StreamCreationTimestamp"))
    ListShardsInput.add_member(:shard_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardFilter, name: "ShardFilter"))
    ListShardsInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.rules#contextParam" => {"name" => "StreamARN"}}))
    ListShardsInput.type = Types::ListShardsInput
    ListShardsOutput.add_member(:shards, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardList, name: "Shards"))
    ListShardsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListShardsOutput.type = Types::ListShardsOutput
    ListStreamConsumersInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "StreamARN"}}))
    ListStreamConsumersInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListStreamConsumersInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListStreamConsumersInputLimit, name: "MaxResults"))
    ListStreamConsumersInput.add_member(:stream_creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StreamCreationTimestamp"))
    ListStreamConsumersInput.type = Types::ListStreamConsumersInput
    ListStreamConsumersOutput.add_member(:consumers, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumerList, name: "Consumers"))
    ListStreamConsumersOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListStreamConsumersOutput.type = Types::ListStreamConsumersOutput
    ListStreamsInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ListStreamsInputLimit, name: "Limit"))
    ListStreamsInput.add_member(:exclusive_start_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamName, name: "ExclusiveStartStreamName"))
    ListStreamsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListStreamsInput.type = Types::ListStreamsInput
    ListStreamsOutput.add_member(:stream_names, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamNameList, name: "StreamNames", traits: {"smithy.api#required" => {}}))
    ListStreamsOutput.add_member(:has_more_streams, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "HasMoreStreams", traits: {"smithy.api#required" => {}}))
    ListStreamsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListStreamsOutput.add_member(:stream_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamSummaryList, name: "StreamSummaries"))
    ListStreamsOutput.type = Types::ListStreamsOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceARN", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceARN"}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListTagsForStreamInput.add_member(:stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamName, name: "StreamName"))
    ListTagsForStreamInput.add_member(:exclusive_start_tag_key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "ExclusiveStartTagKey"))
    ListTagsForStreamInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ListTagsForStreamInputLimit, name: "Limit"))
    ListTagsForStreamInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.rules#contextParam" => {"name" => "StreamARN"}}))
    ListTagsForStreamInput.type = Types::ListTagsForStreamInput
    ListTagsForStreamOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    ListTagsForStreamOutput.add_member(:has_more_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "HasMoreTags", traits: {"smithy.api#required" => {}}))
    ListTagsForStreamOutput.type = Types::ListTagsForStreamOutput
    MergeShardsInput.add_member(:stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamName, name: "StreamName"))
    MergeShardsInput.add_member(:shard_to_merge, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardId, name: "ShardToMerge", traits: {"smithy.api#required" => {}}))
    MergeShardsInput.add_member(:adjacent_shard_to_merge, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardId, name: "AdjacentShardToMerge", traits: {"smithy.api#required" => {}}))
    MergeShardsInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.rules#contextParam" => {"name" => "StreamARN"}}))
    MergeShardsInput.type = Types::MergeShardsInput
    MetricsName.add_member(:incoming_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCOMING_BYTES", traits: {"smithy.api#enumValue" => "IncomingBytes"}))
    MetricsName.add_member(:incoming_records, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCOMING_RECORDS", traits: {"smithy.api#enumValue" => "IncomingRecords"}))
    MetricsName.add_member(:outgoing_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OUTGOING_BYTES", traits: {"smithy.api#enumValue" => "OutgoingBytes"}))
    MetricsName.add_member(:outgoing_records, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OUTGOING_RECORDS", traits: {"smithy.api#enumValue" => "OutgoingRecords"}))
    MetricsName.add_member(:write_provisioned_throughput_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WRITE_PROVISIONED_THROUGHPUT_EXCEEDED", traits: {"smithy.api#enumValue" => "WriteProvisionedThroughputExceeded"}))
    MetricsName.add_member(:read_provisioned_throughput_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READ_PROVISIONED_THROUGHPUT_EXCEEDED", traits: {"smithy.api#enumValue" => "ReadProvisionedThroughputExceeded"}))
    MetricsName.add_member(:iterator_age_milliseconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ITERATOR_AGE_MILLISECONDS", traits: {"smithy.api#enumValue" => "IteratorAgeMilliseconds"}))
    MetricsName.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    MetricsNameList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MetricsName, name: "member")
    ProvisionedThroughputExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ProvisionedThroughputExceededException.type = Types::ProvisionedThroughputExceededException
    PutRecordInput.add_member(:stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamName, name: "StreamName"))
    PutRecordInput.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "Data", traits: {"smithy.api#required" => {}}))
    PutRecordInput.add_member(:partition_key, ::Smithy::Schema::Shapes::MemberShape.new(target: PartitionKey, name: "PartitionKey", traits: {"smithy.api#required" => {}}))
    PutRecordInput.add_member(:explicit_hash_key, ::Smithy::Schema::Shapes::MemberShape.new(target: HashKey, name: "ExplicitHashKey"))
    PutRecordInput.add_member(:sequence_number_for_ordering, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceNumber, name: "SequenceNumberForOrdering"))
    PutRecordInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.rules#contextParam" => {"name" => "StreamARN"}}))
    PutRecordInput.type = Types::PutRecordInput
    PutRecordOutput.add_member(:shard_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardId, name: "ShardId", traits: {"smithy.api#required" => {}}))
    PutRecordOutput.add_member(:sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceNumber, name: "SequenceNumber", traits: {"smithy.api#required" => {}}))
    PutRecordOutput.add_member(:encryption_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionType, name: "EncryptionType"))
    PutRecordOutput.type = Types::PutRecordOutput
    PutRecordsInput.add_member(:records, ::Smithy::Schema::Shapes::MemberShape.new(target: PutRecordsRequestEntryList, name: "Records", traits: {"smithy.api#required" => {}}))
    PutRecordsInput.add_member(:stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamName, name: "StreamName"))
    PutRecordsInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.rules#contextParam" => {"name" => "StreamARN"}}))
    PutRecordsInput.type = Types::PutRecordsInput
    PutRecordsOutput.add_member(:failed_record_count, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveIntegerObject, name: "FailedRecordCount"))
    PutRecordsOutput.add_member(:records, ::Smithy::Schema::Shapes::MemberShape.new(target: PutRecordsResultEntryList, name: "Records", traits: {"smithy.api#required" => {}}))
    PutRecordsOutput.add_member(:encryption_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionType, name: "EncryptionType"))
    PutRecordsOutput.type = Types::PutRecordsOutput
    PutRecordsRequestEntry.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "Data", traits: {"smithy.api#required" => {}}))
    PutRecordsRequestEntry.add_member(:explicit_hash_key, ::Smithy::Schema::Shapes::MemberShape.new(target: HashKey, name: "ExplicitHashKey"))
    PutRecordsRequestEntry.add_member(:partition_key, ::Smithy::Schema::Shapes::MemberShape.new(target: PartitionKey, name: "PartitionKey", traits: {"smithy.api#required" => {}}))
    PutRecordsRequestEntry.type = Types::PutRecordsRequestEntry
    PutRecordsRequestEntryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PutRecordsRequestEntry, name: "member")
    PutRecordsResultEntry.add_member(:sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceNumber, name: "SequenceNumber"))
    PutRecordsResultEntry.add_member(:shard_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardId, name: "ShardId"))
    PutRecordsResultEntry.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode"))
    PutRecordsResultEntry.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "ErrorMessage"))
    PutRecordsResultEntry.type = Types::PutRecordsResultEntry
    PutRecordsResultEntryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PutRecordsResultEntry, name: "member")
    PutResourcePolicyInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceARN", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceARN"}}))
    PutResourcePolicyInput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: Policy, name: "Policy", traits: {"smithy.api#required" => {}}))
    PutResourcePolicyInput.type = Types::PutResourcePolicyInput
    Record.add_member(:sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceNumber, name: "SequenceNumber", traits: {"smithy.api#required" => {}}))
    Record.add_member(:approximate_arrival_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ApproximateArrivalTimestamp"))
    Record.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "Data", traits: {"smithy.api#required" => {}}))
    Record.add_member(:partition_key, ::Smithy::Schema::Shapes::MemberShape.new(target: PartitionKey, name: "PartitionKey", traits: {"smithy.api#required" => {}}))
    Record.add_member(:encryption_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionType, name: "EncryptionType"))
    Record.type = Types::Record
    RecordList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Record, name: "member")
    RegisterStreamConsumerInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "StreamARN"}}))
    RegisterStreamConsumerInput.add_member(:consumer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumerName, name: "ConsumerName", traits: {"smithy.api#required" => {}}))
    RegisterStreamConsumerInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    RegisterStreamConsumerInput.type = Types::RegisterStreamConsumerInput
    RegisterStreamConsumerOutput.add_member(:consumer, ::Smithy::Schema::Shapes::MemberShape.new(target: Consumer, name: "Consumer", traits: {"smithy.api#required" => {}}))
    RegisterStreamConsumerOutput.type = Types::RegisterStreamConsumerOutput
    RemoveTagsFromStreamInput.add_member(:stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamName, name: "StreamName"))
    RemoveTagsFromStreamInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    RemoveTagsFromStreamInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.rules#contextParam" => {"name" => "StreamARN"}}))
    RemoveTagsFromStreamInput.type = Types::RemoveTagsFromStreamInput
    ResourceInUseException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ScalingType.add_member(:uniform_scaling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNIFORM_SCALING", traits: {"smithy.api#enumValue" => "UNIFORM_SCALING"}))
    SequenceNumberRange.add_member(:starting_sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceNumber, name: "StartingSequenceNumber", traits: {"smithy.api#required" => {}}))
    SequenceNumberRange.add_member(:ending_sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceNumber, name: "EndingSequenceNumber"))
    SequenceNumberRange.type = Types::SequenceNumberRange
    Shard.add_member(:shard_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardId, name: "ShardId", traits: {"smithy.api#required" => {}}))
    Shard.add_member(:parent_shard_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardId, name: "ParentShardId"))
    Shard.add_member(:adjacent_parent_shard_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardId, name: "AdjacentParentShardId"))
    Shard.add_member(:hash_key_range, ::Smithy::Schema::Shapes::MemberShape.new(target: HashKeyRange, name: "HashKeyRange", traits: {"smithy.api#required" => {}}))
    Shard.add_member(:sequence_number_range, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceNumberRange, name: "SequenceNumberRange", traits: {"smithy.api#required" => {}}))
    Shard.type = Types::Shard
    ShardFilter.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardFilterType, name: "Type", traits: {"smithy.api#required" => {}}))
    ShardFilter.add_member(:shard_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardId, name: "ShardId"))
    ShardFilter.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "Timestamp"))
    ShardFilter.type = Types::ShardFilter
    ShardFilterType.add_member(:after_shard_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AFTER_SHARD_ID", traits: {"smithy.api#enumValue" => "AFTER_SHARD_ID"}))
    ShardFilterType.add_member(:at_trim_horizon, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AT_TRIM_HORIZON", traits: {"smithy.api#enumValue" => "AT_TRIM_HORIZON"}))
    ShardFilterType.add_member(:from_trim_horizon, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FROM_TRIM_HORIZON", traits: {"smithy.api#enumValue" => "FROM_TRIM_HORIZON"}))
    ShardFilterType.add_member(:at_latest, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AT_LATEST", traits: {"smithy.api#enumValue" => "AT_LATEST"}))
    ShardFilterType.add_member(:at_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AT_TIMESTAMP", traits: {"smithy.api#enumValue" => "AT_TIMESTAMP"}))
    ShardFilterType.add_member(:from_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FROM_TIMESTAMP", traits: {"smithy.api#enumValue" => "FROM_TIMESTAMP"}))
    ShardIdList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ShardId, name: "member")
    ShardIteratorType.add_member(:at_sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AT_SEQUENCE_NUMBER", traits: {"smithy.api#enumValue" => "AT_SEQUENCE_NUMBER"}))
    ShardIteratorType.add_member(:after_sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AFTER_SEQUENCE_NUMBER", traits: {"smithy.api#enumValue" => "AFTER_SEQUENCE_NUMBER"}))
    ShardIteratorType.add_member(:trim_horizon, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRIM_HORIZON", traits: {"smithy.api#enumValue" => "TRIM_HORIZON"}))
    ShardIteratorType.add_member(:latest, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LATEST", traits: {"smithy.api#enumValue" => "LATEST"}))
    ShardIteratorType.add_member(:at_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AT_TIMESTAMP", traits: {"smithy.api#enumValue" => "AT_TIMESTAMP"}))
    ShardList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Shard, name: "member")
    SplitShardInput.add_member(:stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamName, name: "StreamName"))
    SplitShardInput.add_member(:shard_to_split, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardId, name: "ShardToSplit", traits: {"smithy.api#required" => {}}))
    SplitShardInput.add_member(:new_starting_hash_key, ::Smithy::Schema::Shapes::MemberShape.new(target: HashKey, name: "NewStartingHashKey", traits: {"smithy.api#required" => {}}))
    SplitShardInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.rules#contextParam" => {"name" => "StreamARN"}}))
    SplitShardInput.type = Types::SplitShardInput
    StartStreamEncryptionInput.add_member(:stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamName, name: "StreamName"))
    StartStreamEncryptionInput.add_member(:encryption_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionType, name: "EncryptionType", traits: {"smithy.api#required" => {}}))
    StartStreamEncryptionInput.add_member(:key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyId, name: "KeyId", traits: {"smithy.api#required" => {}}))
    StartStreamEncryptionInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.rules#contextParam" => {"name" => "StreamARN"}}))
    StartStreamEncryptionInput.type = Types::StartStreamEncryptionInput
    StartingPosition.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardIteratorType, name: "Type", traits: {"smithy.api#required" => {}}))
    StartingPosition.add_member(:sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceNumber, name: "SequenceNumber"))
    StartingPosition.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "Timestamp"))
    StartingPosition.type = Types::StartingPosition
    StopStreamEncryptionInput.add_member(:stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamName, name: "StreamName"))
    StopStreamEncryptionInput.add_member(:encryption_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionType, name: "EncryptionType", traits: {"smithy.api#required" => {}}))
    StopStreamEncryptionInput.add_member(:key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyId, name: "KeyId", traits: {"smithy.api#required" => {}}))
    StopStreamEncryptionInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.rules#contextParam" => {"name" => "StreamARN"}}))
    StopStreamEncryptionInput.type = Types::StopStreamEncryptionInput
    StreamDescription.add_member(:stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamName, name: "StreamName", traits: {"smithy.api#required" => {}}))
    StreamDescription.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.api#required" => {}}))
    StreamDescription.add_member(:stream_status, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamStatus, name: "StreamStatus", traits: {"smithy.api#required" => {}}))
    StreamDescription.add_member(:stream_mode_details, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamModeDetails, name: "StreamModeDetails"))
    StreamDescription.add_member(:shards, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardList, name: "Shards", traits: {"smithy.api#required" => {}}))
    StreamDescription.add_member(:has_more_shards, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "HasMoreShards", traits: {"smithy.api#required" => {}}))
    StreamDescription.add_member(:retention_period_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionPeriodHours, name: "RetentionPeriodHours", traits: {"smithy.api#required" => {}}))
    StreamDescription.add_member(:stream_creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StreamCreationTimestamp", traits: {"smithy.api#required" => {}}))
    StreamDescription.add_member(:enhanced_monitoring, ::Smithy::Schema::Shapes::MemberShape.new(target: EnhancedMonitoringList, name: "EnhancedMonitoring", traits: {"smithy.api#required" => {}}))
    StreamDescription.add_member(:encryption_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionType, name: "EncryptionType"))
    StreamDescription.add_member(:key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyId, name: "KeyId"))
    StreamDescription.type = Types::StreamDescription
    StreamDescriptionSummary.add_member(:stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamName, name: "StreamName", traits: {"smithy.api#required" => {}}))
    StreamDescriptionSummary.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.api#required" => {}}))
    StreamDescriptionSummary.add_member(:stream_status, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamStatus, name: "StreamStatus", traits: {"smithy.api#required" => {}}))
    StreamDescriptionSummary.add_member(:stream_mode_details, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamModeDetails, name: "StreamModeDetails"))
    StreamDescriptionSummary.add_member(:retention_period_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionPeriodHours, name: "RetentionPeriodHours", traits: {"smithy.api#required" => {}}))
    StreamDescriptionSummary.add_member(:stream_creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StreamCreationTimestamp", traits: {"smithy.api#required" => {}}))
    StreamDescriptionSummary.add_member(:enhanced_monitoring, ::Smithy::Schema::Shapes::MemberShape.new(target: EnhancedMonitoringList, name: "EnhancedMonitoring", traits: {"smithy.api#required" => {}}))
    StreamDescriptionSummary.add_member(:encryption_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionType, name: "EncryptionType"))
    StreamDescriptionSummary.add_member(:key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyId, name: "KeyId"))
    StreamDescriptionSummary.add_member(:open_shard_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardCountObject, name: "OpenShardCount", traits: {"smithy.api#required" => {}}))
    StreamDescriptionSummary.add_member(:consumer_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumerCountObject, name: "ConsumerCount"))
    StreamDescriptionSummary.type = Types::StreamDescriptionSummary
    StreamMode.add_member(:provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROVISIONED", traits: {"smithy.api#enumValue" => "PROVISIONED"}))
    StreamMode.add_member(:on_demand, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ON_DEMAND", traits: {"smithy.api#enumValue" => "ON_DEMAND"}))
    StreamModeDetails.add_member(:stream_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamMode, name: "StreamMode", traits: {"smithy.api#required" => {}}))
    StreamModeDetails.type = Types::StreamModeDetails
    StreamNameList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StreamName, name: "member")
    StreamStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    StreamStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    StreamStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    StreamStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    StreamSummary.add_member(:stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamName, name: "StreamName", traits: {"smithy.api#required" => {}}))
    StreamSummary.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.api#required" => {}}))
    StreamSummary.add_member(:stream_status, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamStatus, name: "StreamStatus", traits: {"smithy.api#required" => {}}))
    StreamSummary.add_member(:stream_mode_details, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamModeDetails, name: "StreamModeDetails"))
    StreamSummary.add_member(:stream_creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StreamCreationTimestamp"))
    StreamSummary.type = Types::StreamSummary
    StreamSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StreamSummary, name: "member")
    SubscribeToShardEvent.add_member(:records, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordList, name: "Records", traits: {"smithy.api#required" => {}}))
    SubscribeToShardEvent.add_member(:continuation_sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceNumber, name: "ContinuationSequenceNumber", traits: {"smithy.api#required" => {}}))
    SubscribeToShardEvent.add_member(:millis_behind_latest, ::Smithy::Schema::Shapes::MemberShape.new(target: MillisBehindLatest, name: "MillisBehindLatest", traits: {"smithy.api#required" => {}}))
    SubscribeToShardEvent.add_member(:child_shards, ::Smithy::Schema::Shapes::MemberShape.new(target: ChildShardList, name: "ChildShards"))
    SubscribeToShardEvent.type = Types::SubscribeToShardEvent
    SubscribeToShardEventStream.add_member(:subscribe_to_shard_event, Types::SubscribeToShardEventStream::SubscribeToShardEvent, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscribeToShardEvent, name: "SubscribeToShardEvent"))
    SubscribeToShardEventStream.add_member(:resource_not_found_exception, Types::SubscribeToShardEventStream::ResourceNotFoundException, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNotFoundException, name: "ResourceNotFoundException"))
    SubscribeToShardEventStream.add_member(:resource_in_use_exception, Types::SubscribeToShardEventStream::ResourceInUseException, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceInUseException, name: "ResourceInUseException"))
    SubscribeToShardEventStream.add_member(:kms_disabled_exception, Types::SubscribeToShardEventStream::KMSDisabledException, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSDisabledException, name: "KMSDisabledException"))
    SubscribeToShardEventStream.add_member(:kms_invalid_state_exception, Types::SubscribeToShardEventStream::KMSInvalidStateException, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSInvalidStateException, name: "KMSInvalidStateException"))
    SubscribeToShardEventStream.add_member(:kms_access_denied_exception, Types::SubscribeToShardEventStream::KMSAccessDeniedException, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSAccessDeniedException, name: "KMSAccessDeniedException"))
    SubscribeToShardEventStream.add_member(:kms_not_found_exception, Types::SubscribeToShardEventStream::KMSNotFoundException, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSNotFoundException, name: "KMSNotFoundException"))
    SubscribeToShardEventStream.add_member(:kms_opt_in_required, Types::SubscribeToShardEventStream::KMSOptInRequired, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSOptInRequired, name: "KMSOptInRequired"))
    SubscribeToShardEventStream.add_member(:kms_throttling_exception, Types::SubscribeToShardEventStream::KMSThrottlingException, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSThrottlingException, name: "KMSThrottlingException"))
    SubscribeToShardEventStream.add_member(:internal_failure_exception, Types::SubscribeToShardEventStream::InternalFailureException, ::Smithy::Schema::Shapes::MemberShape.new(target: InternalFailureException, name: "InternalFailureException"))
    SubscribeToShardEventStream.add_member(:unknown, Types::SubscribeToShardEventStream::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    SubscribeToShardEventStream.type = Types::SubscribeToShardEventStream
    SubscribeToShardInput.add_member(:consumer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumerARN, name: "ConsumerARN", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ConsumerARN"}}))
    SubscribeToShardInput.add_member(:shard_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardId, name: "ShardId", traits: {"smithy.api#required" => {}}))
    SubscribeToShardInput.add_member(:starting_position, ::Smithy::Schema::Shapes::MemberShape.new(target: StartingPosition, name: "StartingPosition", traits: {"smithy.api#required" => {}}))
    SubscribeToShardInput.type = Types::SubscribeToShardInput
    SubscribeToShardOutput.add_member(:event_stream, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscribeToShardEventStream, name: "EventStream", traits: {"smithy.api#required" => {}}))
    SubscribeToShardOutput.type = Types::SubscribeToShardOutput
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value"))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member")
    TagList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member")
    TagMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key")
    TagMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value")
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceARN", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceARN"}}))
    TagResourceInput.type = Types::TagResourceInput
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceARN", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceARN"}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UpdateShardCountInput.add_member(:stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamName, name: "StreamName"))
    UpdateShardCountInput.add_member(:target_shard_count, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveIntegerObject, name: "TargetShardCount", traits: {"smithy.api#required" => {}}))
    UpdateShardCountInput.add_member(:scaling_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingType, name: "ScalingType", traits: {"smithy.api#required" => {}}))
    UpdateShardCountInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.rules#contextParam" => {"name" => "StreamARN"}}))
    UpdateShardCountInput.type = Types::UpdateShardCountInput
    UpdateShardCountOutput.add_member(:stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamName, name: "StreamName"))
    UpdateShardCountOutput.add_member(:current_shard_count, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveIntegerObject, name: "CurrentShardCount"))
    UpdateShardCountOutput.add_member(:target_shard_count, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveIntegerObject, name: "TargetShardCount"))
    UpdateShardCountOutput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN"))
    UpdateShardCountOutput.type = Types::UpdateShardCountOutput
    UpdateStreamModeInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "StreamARN"}}))
    UpdateStreamModeInput.add_member(:stream_mode_details, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamModeDetails, name: "StreamModeDetails", traits: {"smithy.api#required" => {}}))
    UpdateStreamModeInput.type = Types::UpdateStreamModeInput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ValidationException.type = Types::ValidationException

    Kinesis20131202 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.kinesis#Kinesis_20131202"
      service.name = "Kinesis20131202"
      service.version = "2013-12-02"
      service.traits = {"aws.api#service" => {"sdkId" => "Kinesis", "arnNamespace" => "kinesis", "cloudFormationName" => "Kinesis", "cloudTrailEventSource" => "kinesis.amazonaws.com", "endpointPrefix" => "kinesis"}, "aws.auth#sigv4" => {"name" => "kinesis"}, "aws.protocols#awsJson1_1" => {"http" => ["http/1.1", "h2"], "eventStreamHttp" => ["h2"]}, "smithy.api#title" => "Amazon Kinesis", "smithy.api#xmlNamespace" => {"uri" => "http://kinesis.amazonaws.com/doc/2013-12-02"}}
      service.add_operation(:add_tags_to_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesis#AddTagsToStream"
        operation.name = "AddTagsToStream"
        operation.input = AddTagsToStreamInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InvalidArgumentException
        operation.errors << LimitExceededException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.rules#staticContextParams" => {"OperationType" => {"value" => "control"}}}
      end)
      service.add_operation(:create_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesis#CreateStream"
        operation.name = "CreateStream"
        operation.input = CreateStreamInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidArgumentException
        operation.errors << LimitExceededException
        operation.errors << ResourceInUseException
        operation.traits = {}
      end)
      service.add_operation(:decrease_stream_retention_period, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesis#DecreaseStreamRetentionPeriod"
        operation.name = "DecreaseStreamRetentionPeriod"
        operation.input = DecreaseStreamRetentionPeriodInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InvalidArgumentException
        operation.errors << LimitExceededException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.rules#staticContextParams" => {"OperationType" => {"value" => "control"}}}
      end)
      service.add_operation(:delete_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesis#DeleteResourcePolicy"
        operation.name = "DeleteResourcePolicy"
        operation.input = DeleteResourcePolicyInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InvalidArgumentException
        operation.errors << LimitExceededException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.rules#staticContextParams" => {"OperationType" => {"value" => "control"}}}
      end)
      service.add_operation(:delete_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesis#DeleteStream"
        operation.name = "DeleteStream"
        operation.input = DeleteStreamInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InvalidArgumentException
        operation.errors << LimitExceededException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.rules#staticContextParams" => {"OperationType" => {"value" => "control"}}}
      end)
      service.add_operation(:deregister_stream_consumer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesis#DeregisterStreamConsumer"
        operation.name = "DeregisterStreamConsumer"
        operation.input = DeregisterStreamConsumerInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidArgumentException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.rules#staticContextParams" => {"OperationType" => {"value" => "control"}}}
      end)
      service.add_operation(:describe_limits, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesis#DescribeLimits"
        operation.name = "DescribeLimits"
        operation.input = DescribeLimitsInput
        operation.output = DescribeLimitsOutput
        operation.errors << LimitExceededException
        operation.traits = {}
      end)
      service.add_operation(:describe_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesis#DescribeStream"
        operation.name = "DescribeStream"
        operation.input = DescribeStreamInput
        operation.output = DescribeStreamOutput
        operation.errors << AccessDeniedException
        operation.errors << InvalidArgumentException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.rules#staticContextParams" => {"OperationType" => {"value" => "control"}}, "smithy.test#smokeTests" => [{"id" => "DescribeStreamFailure", "params" => {"StreamName" => "bogus-stream-name"}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"failure" => {}}}]}
      end)
      service.add_operation(:describe_stream_consumer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesis#DescribeStreamConsumer"
        operation.name = "DescribeStreamConsumer"
        operation.input = DescribeStreamConsumerInput
        operation.output = DescribeStreamConsumerOutput
        operation.errors << InvalidArgumentException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.rules#staticContextParams" => {"OperationType" => {"value" => "control"}}}
      end)
      service.add_operation(:describe_stream_summary, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesis#DescribeStreamSummary"
        operation.name = "DescribeStreamSummary"
        operation.input = DescribeStreamSummaryInput
        operation.output = DescribeStreamSummaryOutput
        operation.errors << AccessDeniedException
        operation.errors << InvalidArgumentException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.rules#staticContextParams" => {"OperationType" => {"value" => "control"}}}
      end)
      service.add_operation(:disable_enhanced_monitoring, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesis#DisableEnhancedMonitoring"
        operation.name = "DisableEnhancedMonitoring"
        operation.input = DisableEnhancedMonitoringInput
        operation.output = DisableEnhancedMonitoringOutput
        operation.errors << AccessDeniedException
        operation.errors << InvalidArgumentException
        operation.errors << LimitExceededException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.rules#staticContextParams" => {"OperationType" => {"value" => "control"}}}
      end)
      service.add_operation(:enable_enhanced_monitoring, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesis#EnableEnhancedMonitoring"
        operation.name = "EnableEnhancedMonitoring"
        operation.input = EnableEnhancedMonitoringInput
        operation.output = EnableEnhancedMonitoringOutput
        operation.errors << AccessDeniedException
        operation.errors << InvalidArgumentException
        operation.errors << LimitExceededException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.rules#staticContextParams" => {"OperationType" => {"value" => "control"}}}
      end)
      service.add_operation(:get_records, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesis#GetRecords"
        operation.name = "GetRecords"
        operation.input = GetRecordsInput
        operation.output = GetRecordsOutput
        operation.errors << AccessDeniedException
        operation.errors << ExpiredIteratorException
        operation.errors << InternalFailureException
        operation.errors << InvalidArgumentException
        operation.errors << KMSAccessDeniedException
        operation.errors << KMSDisabledException
        operation.errors << KMSInvalidStateException
        operation.errors << KMSNotFoundException
        operation.errors << KMSOptInRequired
        operation.errors << KMSThrottlingException
        operation.errors << ProvisionedThroughputExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.rules#staticContextParams" => {"OperationType" => {"value" => "data"}}}
      end)
      service.add_operation(:get_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesis#GetResourcePolicy"
        operation.name = "GetResourcePolicy"
        operation.input = GetResourcePolicyInput
        operation.output = GetResourcePolicyOutput
        operation.errors << AccessDeniedException
        operation.errors << InvalidArgumentException
        operation.errors << LimitExceededException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.rules#staticContextParams" => {"OperationType" => {"value" => "control"}}}
      end)
      service.add_operation(:get_shard_iterator, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesis#GetShardIterator"
        operation.name = "GetShardIterator"
        operation.input = GetShardIteratorInput
        operation.output = GetShardIteratorOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalFailureException
        operation.errors << InvalidArgumentException
        operation.errors << ProvisionedThroughputExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.rules#staticContextParams" => {"OperationType" => {"value" => "data"}}}
      end)
      service.add_operation(:increase_stream_retention_period, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesis#IncreaseStreamRetentionPeriod"
        operation.name = "IncreaseStreamRetentionPeriod"
        operation.input = IncreaseStreamRetentionPeriodInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InvalidArgumentException
        operation.errors << LimitExceededException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.rules#staticContextParams" => {"OperationType" => {"value" => "control"}}}
      end)
      service.add_operation(:list_shards, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesis#ListShards"
        operation.name = "ListShards"
        operation.input = ListShardsInput
        operation.output = ListShardsOutput
        operation.errors << AccessDeniedException
        operation.errors << ExpiredNextTokenException
        operation.errors << InvalidArgumentException
        operation.errors << LimitExceededException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.rules#staticContextParams" => {"OperationType" => {"value" => "control"}}}
      end)
      service.add_operation(:list_stream_consumers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesis#ListStreamConsumers"
        operation.name = "ListStreamConsumers"
        operation.input = ListStreamConsumersInput
        operation.output = ListStreamConsumersOutput
        operation.errors << ExpiredNextTokenException
        operation.errors << InvalidArgumentException
        operation.errors << LimitExceededException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.rules#staticContextParams" => {"OperationType" => {"value" => "control"}}}
        operation[:paginator] = Paginators::ListStreamConsumers.new
      end)
      service.add_operation(:list_streams, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesis#ListStreams"
        operation.name = "ListStreams"
        operation.input = ListStreamsInput
        operation.output = ListStreamsOutput
        operation.errors << ExpiredNextTokenException
        operation.errors << InvalidArgumentException
        operation.errors << LimitExceededException
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "ListStreamsSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::ListStreams.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesis#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceInput
        operation.output = ListTagsForResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << InvalidArgumentException
        operation.errors << LimitExceededException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.rules#staticContextParams" => {"OperationType" => {"value" => "control"}}}
      end)
      service.add_operation(:list_tags_for_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesis#ListTagsForStream"
        operation.name = "ListTagsForStream"
        operation.input = ListTagsForStreamInput
        operation.output = ListTagsForStreamOutput
        operation.errors << AccessDeniedException
        operation.errors << InvalidArgumentException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.rules#staticContextParams" => {"OperationType" => {"value" => "control"}}}
      end)
      service.add_operation(:merge_shards, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesis#MergeShards"
        operation.name = "MergeShards"
        operation.input = MergeShardsInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InvalidArgumentException
        operation.errors << LimitExceededException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.rules#staticContextParams" => {"OperationType" => {"value" => "control"}}}
      end)
      service.add_operation(:put_record, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesis#PutRecord"
        operation.name = "PutRecord"
        operation.input = PutRecordInput
        operation.output = PutRecordOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalFailureException
        operation.errors << InvalidArgumentException
        operation.errors << KMSAccessDeniedException
        operation.errors << KMSDisabledException
        operation.errors << KMSInvalidStateException
        operation.errors << KMSNotFoundException
        operation.errors << KMSOptInRequired
        operation.errors << KMSThrottlingException
        operation.errors << ProvisionedThroughputExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.rules#staticContextParams" => {"OperationType" => {"value" => "data"}}}
      end)
      service.add_operation(:put_records, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesis#PutRecords"
        operation.name = "PutRecords"
        operation.input = PutRecordsInput
        operation.output = PutRecordsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalFailureException
        operation.errors << InvalidArgumentException
        operation.errors << KMSAccessDeniedException
        operation.errors << KMSDisabledException
        operation.errors << KMSInvalidStateException
        operation.errors << KMSNotFoundException
        operation.errors << KMSOptInRequired
        operation.errors << KMSThrottlingException
        operation.errors << ProvisionedThroughputExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.rules#staticContextParams" => {"OperationType" => {"value" => "data"}}}
      end)
      service.add_operation(:put_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesis#PutResourcePolicy"
        operation.name = "PutResourcePolicy"
        operation.input = PutResourcePolicyInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InvalidArgumentException
        operation.errors << LimitExceededException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.rules#staticContextParams" => {"OperationType" => {"value" => "control"}}}
      end)
      service.add_operation(:register_stream_consumer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesis#RegisterStreamConsumer"
        operation.name = "RegisterStreamConsumer"
        operation.input = RegisterStreamConsumerInput
        operation.output = RegisterStreamConsumerOutput
        operation.errors << InvalidArgumentException
        operation.errors << LimitExceededException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.rules#staticContextParams" => {"OperationType" => {"value" => "control"}}}
      end)
      service.add_operation(:remove_tags_from_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesis#RemoveTagsFromStream"
        operation.name = "RemoveTagsFromStream"
        operation.input = RemoveTagsFromStreamInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InvalidArgumentException
        operation.errors << LimitExceededException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.rules#staticContextParams" => {"OperationType" => {"value" => "control"}}}
      end)
      service.add_operation(:split_shard, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesis#SplitShard"
        operation.name = "SplitShard"
        operation.input = SplitShardInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InvalidArgumentException
        operation.errors << LimitExceededException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.rules#staticContextParams" => {"OperationType" => {"value" => "control"}}}
      end)
      service.add_operation(:start_stream_encryption, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesis#StartStreamEncryption"
        operation.name = "StartStreamEncryption"
        operation.input = StartStreamEncryptionInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InvalidArgumentException
        operation.errors << KMSAccessDeniedException
        operation.errors << KMSDisabledException
        operation.errors << KMSInvalidStateException
        operation.errors << KMSNotFoundException
        operation.errors << KMSOptInRequired
        operation.errors << KMSThrottlingException
        operation.errors << LimitExceededException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.rules#staticContextParams" => {"OperationType" => {"value" => "control"}}}
      end)
      service.add_operation(:stop_stream_encryption, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesis#StopStreamEncryption"
        operation.name = "StopStreamEncryption"
        operation.input = StopStreamEncryptionInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InvalidArgumentException
        operation.errors << LimitExceededException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.rules#staticContextParams" => {"OperationType" => {"value" => "control"}}}
      end)
      service.add_operation(:subscribe_to_shard, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesis#SubscribeToShard"
        operation.name = "SubscribeToShard"
        operation.input = SubscribeToShardInput
        operation.output = SubscribeToShardOutput
        operation.errors << AccessDeniedException
        operation.errors << InvalidArgumentException
        operation.errors << LimitExceededException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.rules#staticContextParams" => {"OperationType" => {"value" => "data"}}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesis#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InvalidArgumentException
        operation.errors << LimitExceededException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.rules#staticContextParams" => {"OperationType" => {"value" => "control"}}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesis#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InvalidArgumentException
        operation.errors << LimitExceededException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.rules#staticContextParams" => {"OperationType" => {"value" => "control"}}}
      end)
      service.add_operation(:update_shard_count, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesis#UpdateShardCount"
        operation.name = "UpdateShardCount"
        operation.input = UpdateShardCountInput
        operation.output = UpdateShardCountOutput
        operation.errors << AccessDeniedException
        operation.errors << InvalidArgumentException
        operation.errors << LimitExceededException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.rules#staticContextParams" => {"OperationType" => {"value" => "control"}}}
      end)
      service.add_operation(:update_stream_mode, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesis#UpdateStreamMode"
        operation.name = "UpdateStreamMode"
        operation.input = UpdateStreamModeInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidArgumentException
        operation.errors << LimitExceededException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.rules#staticContextParams" => {"OperationType" => {"value" => "control"}}}
      end)
    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(::Smithy::Schema::Shapes::StructureShape) }
        @type_registry = ::Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
