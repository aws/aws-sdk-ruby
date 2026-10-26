# frozen_string_literal: true

# This is generated code!

module Aws::Kinesis
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client"})
    AddTagsToStreamInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#AddTagsToStreamInput", name: "AddTagsToStreamInput")
    BooleanObject = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.kinesis#BooleanObject", name: "BooleanObject")
    BucketARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesis#BucketARN", name: "BucketARN", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[-a-z0-9]*:s3:::[a-z0-9._-]{3,63}$"})
    ChannelARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesis#ChannelARN", name: "ChannelARN", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws.*:kinesis:.*:\\d{12}:channel/\\S+$"})
    ChannelCountObject = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kinesis#ChannelCountObject", name: "ChannelCountObject", traits: {"smithy.api#range" => {"min" => 0, "max" => 1000000}})
    ChannelDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#ChannelDescription", name: "ChannelDescription")
    ChannelDestinationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kinesis#ChannelDestinationType", name: "ChannelDestinationType")
    ChannelEncryptionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#ChannelEncryptionConfiguration", name: "ChannelEncryptionConfiguration")
    ChannelEncryptionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kinesis#ChannelEncryptionType", name: "ChannelEncryptionType")
    ChannelId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesis#ChannelId", name: "ChannelId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    ChannelLoggingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#ChannelLoggingConfiguration", name: "ChannelLoggingConfiguration")
    ChannelLoggingUpdateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#ChannelLoggingUpdateInput", name: "ChannelLoggingUpdateInput")
    ChannelName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesis#ChannelName", name: "ChannelName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    ChannelStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kinesis#ChannelStatus", name: "ChannelStatus")
    ChannelStatusReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesis#ChannelStatusReason", name: "ChannelStatusReason", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    ChannelStreamConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#ChannelStreamConfiguration", name: "ChannelStreamConfiguration")
    ChannelStreamConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesis#ChannelStreamConfigurationList", name: "ChannelStreamConfigurationList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}})
    ChannelStreamDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#ChannelStreamDescription", name: "ChannelStreamDescription")
    ChannelStreamDescriptionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesis#ChannelStreamDescriptionList", name: "ChannelStreamDescriptionList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}})
    ChannelStreamIdentifier = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#ChannelStreamIdentifier", name: "ChannelStreamIdentifier")
    ChannelStreamIdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesis#ChannelStreamIdentifierList", name: "ChannelStreamIdentifierList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}})
    ChannelSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#ChannelSummary", name: "ChannelSummary")
    ChannelSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesis#ChannelSummaryList", name: "ChannelSummaryList")
    ChildShard = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#ChildShard", name: "ChildShard")
    ChildShardList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesis#ChildShardList", name: "ChildShardList")
    CloudWatchLogGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesis#CloudWatchLogGroupName", name: "CloudWatchLogGroupName", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[\\.\\-_/#A-Za-z0-9]+$"})
    CloudWatchLogStreamName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesis#CloudWatchLogStreamName", name: "CloudWatchLogStreamName", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[^:*]*$"})
    CloudWatchLogs = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#CloudWatchLogs", name: "CloudWatchLogs")
    CloudWatchLogsUpdateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#CloudWatchLogsUpdateInput", name: "CloudWatchLogsUpdateInput")
    Consumer = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#Consumer", name: "Consumer")
    ConsumerARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesis#ConsumerARN", name: "ConsumerARN", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(arn):aws.*:kinesis:.*:\\d{12}:.*stream\\/[a-zA-Z0-9_.-]+\\/consumer\\/[a-zA-Z0-9_.-]+:[0-9]+$"})
    ConsumerCountObject = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kinesis#ConsumerCountObject", name: "ConsumerCountObject", traits: {"smithy.api#range" => {"min" => 0, "max" => 1000000}})
    ConsumerDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#ConsumerDescription", name: "ConsumerDescription")
    ConsumerList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesis#ConsumerList", name: "ConsumerList")
    ConsumerName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesis#ConsumerName", name: "ConsumerName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    ConsumerStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kinesis#ConsumerStatus", name: "ConsumerStatus")
    CreateChannelInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#CreateChannelInput", name: "CreateChannelInput")
    CreateChannelOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#CreateChannelOutput", name: "CreateChannelOutput")
    CreateStreamInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#CreateStreamInput", name: "CreateStreamInput")
    Data = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.kinesis#Data", name: "Data", traits: {"smithy.api#length" => {"min" => 0, "max" => 10485760}})
    DataFreshnessInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kinesis#DataFreshnessInSeconds", name: "DataFreshnessInSeconds")
    DeadLetterQueueS3Configuration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#DeadLetterQueueS3Configuration", name: "DeadLetterQueueS3Configuration")
    DecreaseStreamRetentionPeriodInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#DecreaseStreamRetentionPeriodInput", name: "DecreaseStreamRetentionPeriodInput")
    DeleteChannelInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#DeleteChannelInput", name: "DeleteChannelInput")
    DeleteResourcePolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#DeleteResourcePolicyInput", name: "DeleteResourcePolicyInput")
    DeleteStreamInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#DeleteStreamInput", name: "DeleteStreamInput")
    DeregisterStreamConsumerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#DeregisterStreamConsumerInput", name: "DeregisterStreamConsumerInput")
    DescribeAccountSettingsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#DescribeAccountSettingsInput", name: "DescribeAccountSettingsInput")
    DescribeAccountSettingsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#DescribeAccountSettingsOutput", name: "DescribeAccountSettingsOutput")
    DescribeChannelInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#DescribeChannelInput", name: "DescribeChannelInput")
    DescribeChannelOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#DescribeChannelOutput", name: "DescribeChannelOutput")
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
    DryRunOperationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#DryRunOperationException", name: "DryRunOperationException", traits: {"smithy.api#error" => "client"})
    EnableEnhancedMonitoringInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#EnableEnhancedMonitoringInput", name: "EnableEnhancedMonitoringInput")
    EnableEnhancedMonitoringOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#EnableEnhancedMonitoringOutput", name: "EnableEnhancedMonitoringOutput")
    EncryptionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kinesis#EncryptionType", name: "EncryptionType")
    EnhancedMetrics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#EnhancedMetrics", name: "EnhancedMetrics")
    EnhancedMonitoringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesis#EnhancedMonitoringList", name: "EnhancedMonitoringList")
    ErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesis#ErrorCode", name: "ErrorCode")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesis#ErrorMessage", name: "ErrorMessage")
    ExpectedBucketOwner = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesis#ExpectedBucketOwner", name: "ExpectedBucketOwner", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^\\d{12}$"})
    ExpiredIteratorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#ExpiredIteratorException", name: "ExpiredIteratorException", traits: {"smithy.api#error" => "client"})
    ExpiredNextTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#ExpiredNextTokenException", name: "ExpiredNextTokenException", traits: {"smithy.api#error" => "client"})
    GSRSchemaARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesis#GSRSchemaARN", name: "GSRSchemaARN", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^arn:aws[-a-z0-9]*:glue:[-a-z0-9]+:\\d{12}:schema/[-a-zA-Z0-9_$#.]+/[-a-zA-Z0-9_$#.]+$"})
    GetRecordsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#GetRecordsInput", name: "GetRecordsInput")
    GetRecordsInputLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kinesis#GetRecordsInputLimit", name: "GetRecordsInputLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 10000}})
    GetRecordsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#GetRecordsOutput", name: "GetRecordsOutput")
    GetResourcePolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#GetResourcePolicyInput", name: "GetResourcePolicyInput")
    GetResourcePolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#GetResourcePolicyOutput", name: "GetResourcePolicyOutput")
    GetShardIteratorInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#GetShardIteratorInput", name: "GetShardIteratorInput")
    GetShardIteratorOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#GetShardIteratorOutput", name: "GetShardIteratorOutput")
    HashKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesis#HashKey", name: "HashKey", traits: {"smithy.api#pattern" => "^(0|([1-9]\\d{0,38}))$"})
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
    ListChannelsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#ListChannelsInput", name: "ListChannelsInput")
    ListChannelsInputLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kinesis#ListChannelsInputLimit", name: "ListChannelsInputLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 10000}})
    ListChannelsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#ListChannelsOutput", name: "ListChannelsOutput")
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
    MaxRecordSizeInKiB = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kinesis#MaxRecordSizeInKiB", name: "MaxRecordSizeInKiB", traits: {"smithy.api#range" => {"min" => 1024, "max" => 10240}})
    MergeShardsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#MergeShardsInput", name: "MergeShardsInput")
    MetricsName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kinesis#MetricsName", name: "MetricsName")
    MetricsNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesis#MetricsNameList", name: "MetricsNameList", traits: {"smithy.api#length" => {"min" => 1, "max" => 7}})
    MillisBehindLatest = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kinesis#MillisBehindLatest", name: "MillisBehindLatest", traits: {"smithy.api#range" => {"min" => 0}})
    MinimumThroughputBillingCommitmentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#MinimumThroughputBillingCommitmentInput", name: "MinimumThroughputBillingCommitmentInput")
    MinimumThroughputBillingCommitmentInputStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kinesis#MinimumThroughputBillingCommitmentInputStatus", name: "MinimumThroughputBillingCommitmentInputStatus")
    MinimumThroughputBillingCommitmentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#MinimumThroughputBillingCommitmentOutput", name: "MinimumThroughputBillingCommitmentOutput")
    MinimumThroughputBillingCommitmentOutputStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kinesis#MinimumThroughputBillingCommitmentOutputStatus", name: "MinimumThroughputBillingCommitmentOutputStatus")
    NaturalIntegerObject = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kinesis#NaturalIntegerObject", name: "NaturalIntegerObject", traits: {"smithy.api#range" => {"min" => 0}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesis#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 1048576}})
    OnDemandStreamCountLimitObject = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kinesis#OnDemandStreamCountLimitObject", name: "OnDemandStreamCountLimitObject", traits: {"smithy.api#range" => {"min" => 0, "max" => 1000000}})
    OnDemandStreamCountObject = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kinesis#OnDemandStreamCountObject", name: "OnDemandStreamCountObject", traits: {"smithy.api#range" => {"min" => 0, "max" => 1000000}})
    PartitionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#PartitionField", name: "PartitionField")
    PartitionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesis#PartitionFieldList", name: "PartitionFieldList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    PartitionKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesis#PartitionKey", name: "PartitionKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    PartitionSourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesis#PartitionSourceName", name: "PartitionSourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9\\.\\_]+$"})
    PartitionSpec = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#PartitionSpec", name: "PartitionSpec")
    PartitionTransform = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kinesis#PartitionTransform", name: "PartitionTransform")
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
    RecordConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#RecordConfiguration", name: "RecordConfiguration")
    RecordDistributionStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kinesis#RecordDistributionStrategy", name: "RecordDistributionStrategy")
    RecordFormatType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kinesis#RecordFormatType", name: "RecordFormatType")
    RecordList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesis#RecordList", name: "RecordList")
    RegisterStreamConsumerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#RegisterStreamConsumerInput", name: "RegisterStreamConsumerInput")
    RegisterStreamConsumerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#RegisterStreamConsumerOutput", name: "RegisterStreamConsumerOutput")
    RemoveTagsFromStreamInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#RemoveTagsFromStreamInput", name: "RemoveTagsFromStreamInput")
    ResourceARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesis#ResourceARN", name: "ResourceARN", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws.*:kinesis:.*:\\d{12}:.*(stream|channel)/\\S+$"})
    ResourceInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#ResourceInUseException", name: "ResourceInUseException", traits: {"smithy.api#error" => "client"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client"})
    RetentionPeriodHours = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.kinesis#RetentionPeriodHours", name: "RetentionPeriodHours")
    RoleARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesis#RoleARN", name: "RoleARN", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^arn:aws[-a-z0-9]*:iam::\\d{12}:role/[a-zA-Z_0-9+=,.@\\-_/]+$"})
    S3CompressionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kinesis#S3CompressionType", name: "S3CompressionType")
    S3DestinationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#S3DestinationConfiguration", name: "S3DestinationConfiguration")
    S3DestinationDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#S3DestinationDescription", name: "S3DestinationDescription")
    S3DestinationUpdateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#S3DestinationUpdateInput", name: "S3DestinationUpdateInput")
    S3ErrorOutputPrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesis#S3ErrorOutputPrefix", name: "S3ErrorOutputPrefix", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[0-9A-Za-z!\\-_'.*()\\/]+$"})
    S3OutputKeyTemplate = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesis#S3OutputKeyTemplate", name: "S3OutputKeyTemplate", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[0-9A-Za-z!\\-_'.*()\\/=:{}]+$"})
    S3StorageClass = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kinesis#S3StorageClass", name: "S3StorageClass")
    S3StorageConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#S3StorageConfiguration", name: "S3StorageConfiguration")
    S3TablesCompressionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kinesis#S3TablesCompressionType", name: "S3TablesCompressionType")
    S3TablesConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#S3TablesConfiguration", name: "S3TablesConfiguration")
    S3TablesConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesis#S3TablesConfigurationList", name: "S3TablesConfigurationList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}})
    S3TablesDestinationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#S3TablesDestinationConfiguration", name: "S3TablesDestinationConfiguration")
    S3TablesDestinationDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#S3TablesDestinationDescription", name: "S3TablesDestinationDescription")
    S3TablesDestinationUpdateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#S3TablesDestinationUpdateInput", name: "S3TablesDestinationUpdateInput")
    S3TablesNamespace = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesis#S3TablesNamespace", name: "S3TablesNamespace", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[0-9a-z_]+$"})
    S3TablesTableName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesis#S3TablesTableName", name: "S3TablesTableName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[0-9a-z_]+$"})
    ScalingType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.kinesis#ScalingType", name: "ScalingType")
    SequenceNumber = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesis#SequenceNumber", name: "SequenceNumber", traits: {"smithy.api#pattern" => "^(0|([1-9]\\d{0,128}))$"})
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
    StreamFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#StreamFilter", name: "StreamFilter")
    StreamFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesis#StreamFilterList", name: "StreamFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10000}})
    StreamId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesis#StreamId", name: "StreamId", traits: {"smithy.api#length" => {"min" => 1, "max" => 24}, "smithy.api#pattern" => "^[a-z0-9]{20}-[a-z0-9]{3}$"})
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
    TableBucketARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesis#TableBucketARN", name: "TableBucketARN", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[-a-z0-9]*:s3tables:[-a-z0-9]+:\\d{12}:bucket/[a-z0-9_-]{3,63}$"})
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesis#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesis#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.kinesis#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.kinesis#TagMap", name: "TagMap", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#TagResourceInput", name: "TagResourceInput")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.kinesis#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.kinesis#Timestamp", name: "Timestamp")
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#UntagResourceInput", name: "UntagResourceInput")
    UpdateAccountSettingsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#UpdateAccountSettingsInput", name: "UpdateAccountSettingsInput")
    UpdateAccountSettingsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#UpdateAccountSettingsOutput", name: "UpdateAccountSettingsOutput")
    UpdateChannelInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#UpdateChannelInput", name: "UpdateChannelInput")
    UpdateChannelOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#UpdateChannelOutput", name: "UpdateChannelOutput")
    UpdateMaxRecordSizeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#UpdateMaxRecordSizeInput", name: "UpdateMaxRecordSizeInput")
    UpdateShardCountInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#UpdateShardCountInput", name: "UpdateShardCountInput")
    UpdateShardCountOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#UpdateShardCountOutput", name: "UpdateShardCountOutput")
    UpdateStreamModeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#UpdateStreamModeInput", name: "UpdateStreamModeInput")
    UpdateStreamRecordDistributionStrategyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#UpdateStreamRecordDistributionStrategyInput", name: "UpdateStreamRecordDistributionStrategyInput")
    UpdateStreamWarmThroughputInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#UpdateStreamWarmThroughputInput", name: "UpdateStreamWarmThroughputInput")
    UpdateStreamWarmThroughputOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#UpdateStreamWarmThroughputOutput", name: "UpdateStreamWarmThroughputOutput")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client"})
    WarmThroughputObject = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.kinesis#WarmThroughputObject", name: "WarmThroughputObject")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AddTagsToStreamInput.add_member(:stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamName, name: "StreamName"))
    AddTagsToStreamInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"smithy.api#required" => {}}))
    AddTagsToStreamInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.rules#contextParam" => {"name" => "StreamARN"}}))
    AddTagsToStreamInput.add_member(:stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamId, name: "StreamId", traits: {"smithy.rules#contextParam" => {"name" => "StreamId"}}))
    AddTagsToStreamInput.type = Types::AddTagsToStreamInput
    ChannelDescription.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelName, name: "ChannelName", traits: {"smithy.api#required" => {}}))
    ChannelDescription.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelARN, name: "ChannelARN", traits: {"smithy.api#required" => {}}))
    ChannelDescription.add_member(:channel_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelId, name: "ChannelId", traits: {"smithy.api#required" => {}}))
    ChannelDescription.add_member(:channel_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelStatus, name: "ChannelStatus", traits: {"smithy.api#required" => {}}))
    ChannelDescription.add_member(:channel_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelStatusReason, name: "ChannelStatusReason"))
    ChannelDescription.add_member(:channel_creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ChannelCreationTimestamp", traits: {"smithy.api#required" => {}}))
    ChannelDescription.add_member(:service_execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "ServiceExecutionRoleARN", traits: {"smithy.api#required" => {}}))
    ChannelDescription.add_member(:stream_configuration_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelStreamDescriptionList, name: "StreamConfigurationList", traits: {"smithy.api#required" => {}}))
    ChannelDescription.add_member(:s3_destination_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DestinationDescription, name: "S3DestinationConfiguration"))
    ChannelDescription.add_member(:s3_tables_destination_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: S3TablesDestinationDescription, name: "S3TablesDestinationConfiguration"))
    ChannelDescription.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelEncryptionConfiguration, name: "EncryptionConfiguration"))
    ChannelDescription.add_member(:logging_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelLoggingConfiguration, name: "LoggingConfiguration", traits: {"smithy.api#required" => {}}))
    ChannelDescription.type = Types::ChannelDescription
    ChannelDestinationType.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3", traits: {"smithy.api#enumValue" => "S3"}))
    ChannelDestinationType.add_member(:s3_tables, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3_TABLES", traits: {"smithy.api#enumValue" => "S3_TABLES"}))
    ChannelEncryptionConfiguration.add_member(:encryption_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelEncryptionType, name: "EncryptionType", traits: {"smithy.api#required" => {}}))
    ChannelEncryptionConfiguration.add_member(:key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyId, name: "KeyId", traits: {"smithy.api#required" => {}}))
    ChannelEncryptionConfiguration.type = Types::ChannelEncryptionConfiguration
    ChannelEncryptionType.add_member(:kms, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KMS", traits: {"smithy.api#enumValue" => "KMS"}))
    ChannelLoggingConfiguration.add_member(:cloud_watch_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLogs, name: "CloudWatchLogs", traits: {"smithy.api#required" => {}}))
    ChannelLoggingConfiguration.type = Types::ChannelLoggingConfiguration
    ChannelLoggingUpdateInput.add_member(:cloud_watch_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLogsUpdateInput, name: "CloudWatchLogs", traits: {"smithy.api#required" => {}}))
    ChannelLoggingUpdateInput.type = Types::ChannelLoggingUpdateInput
    ChannelStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    ChannelStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ChannelStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    ChannelStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ChannelStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ChannelStreamConfiguration.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.api#required" => {}}))
    ChannelStreamConfiguration.add_member(:record_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordConfiguration, name: "RecordConfiguration", traits: {"smithy.api#required" => {}}))
    ChannelStreamConfiguration.type = Types::ChannelStreamConfiguration
    ChannelStreamConfigurationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelStreamConfiguration, name: "member"))
    ChannelStreamDescription.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.api#required" => {}}))
    ChannelStreamDescription.add_member(:stream_creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StreamCreationTimestamp", traits: {"smithy.api#required" => {}}))
    ChannelStreamDescription.add_member(:record_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordConfiguration, name: "RecordConfiguration", traits: {"smithy.api#required" => {}}))
    ChannelStreamDescription.type = Types::ChannelStreamDescription
    ChannelStreamDescriptionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelStreamDescription, name: "member"))
    ChannelStreamIdentifier.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.api#required" => {}}))
    ChannelStreamIdentifier.add_member(:stream_creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StreamCreationTimestamp", traits: {"smithy.api#required" => {}}))
    ChannelStreamIdentifier.type = Types::ChannelStreamIdentifier
    ChannelStreamIdentifierList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelStreamIdentifier, name: "member"))
    ChannelSummary.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelName, name: "ChannelName", traits: {"smithy.api#required" => {}}))
    ChannelSummary.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelARN, name: "ChannelARN", traits: {"smithy.api#required" => {}}))
    ChannelSummary.add_member(:channel_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelId, name: "ChannelId", traits: {"smithy.api#required" => {}}))
    ChannelSummary.add_member(:channel_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelStatus, name: "ChannelStatus", traits: {"smithy.api#required" => {}}))
    ChannelSummary.add_member(:channel_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelStatusReason, name: "ChannelStatusReason"))
    ChannelSummary.add_member(:channel_creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ChannelCreationTimestamp", traits: {"smithy.api#required" => {}}))
    ChannelSummary.add_member(:channel_destination_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelDestinationType, name: "ChannelDestinationType", traits: {"smithy.api#required" => {}}))
    ChannelSummary.add_member(:streams, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelStreamIdentifierList, name: "Streams", traits: {"smithy.api#required" => {}}))
    ChannelSummary.type = Types::ChannelSummary
    ChannelSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelSummary, name: "member"))
    ChildShard.add_member(:shard_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardId, name: "ShardId", traits: {"smithy.api#required" => {}}))
    ChildShard.add_member(:parent_shards, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardIdList, name: "ParentShards", traits: {"smithy.api#required" => {}}))
    ChildShard.add_member(:hash_key_range, ::Smithy::Schema::Shapes::MemberShape.new(target: HashKeyRange, name: "HashKeyRange", traits: {"smithy.api#required" => {}}))
    ChildShard.type = Types::ChildShard
    ChildShardList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ChildShard, name: "member"))
    CloudWatchLogs.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "Enabled", traits: {"smithy.api#required" => {}}))
    CloudWatchLogs.add_member(:log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLogGroupName, name: "LogGroupName"))
    CloudWatchLogs.add_member(:log_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLogStreamName, name: "LogStreamName"))
    CloudWatchLogs.type = Types::CloudWatchLogs
    CloudWatchLogsUpdateInput.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "Enabled", traits: {"smithy.api#required" => {}}))
    CloudWatchLogsUpdateInput.add_member(:log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLogGroupName, name: "LogGroupName"))
    CloudWatchLogsUpdateInput.add_member(:log_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLogStreamName, name: "LogStreamName"))
    CloudWatchLogsUpdateInput.type = Types::CloudWatchLogsUpdateInput
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
    ConsumerList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Consumer, name: "member"))
    ConsumerStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    ConsumerStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ConsumerStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    CreateChannelInput.add_member(:channel_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelName, name: "ChannelName", traits: {"smithy.api#required" => {}}))
    CreateChannelInput.add_member(:service_execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "ServiceExecutionRoleARN", traits: {"smithy.api#required" => {}}))
    CreateChannelInput.add_member(:stream_configuration_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelStreamConfigurationList, name: "StreamConfigurationList", traits: {"smithy.api#required" => {}}))
    CreateChannelInput.add_member(:s3_destination_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DestinationConfiguration, name: "S3DestinationConfiguration"))
    CreateChannelInput.add_member(:s3_tables_destination_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: S3TablesDestinationConfiguration, name: "S3TablesDestinationConfiguration"))
    CreateChannelInput.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelEncryptionConfiguration, name: "EncryptionConfiguration"))
    CreateChannelInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreateChannelInput.add_member(:logging_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelLoggingConfiguration, name: "LoggingConfiguration"))
    CreateChannelInput.type = Types::CreateChannelInput
    CreateChannelOutput.add_member(:channel_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelDescription, name: "ChannelDescription", traits: {"smithy.api#required" => {}}))
    CreateChannelOutput.type = Types::CreateChannelOutput
    CreateStreamInput.add_member(:stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamName, name: "StreamName", traits: {"smithy.api#required" => {}}))
    CreateStreamInput.add_member(:shard_count, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveIntegerObject, name: "ShardCount"))
    CreateStreamInput.add_member(:stream_mode_details, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamModeDetails, name: "StreamModeDetails"))
    CreateStreamInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreateStreamInput.add_member(:warm_throughput_mi_bps, ::Smithy::Schema::Shapes::MemberShape.new(target: NaturalIntegerObject, name: "WarmThroughputMiBps"))
    CreateStreamInput.add_member(:max_record_size_in_ki_b, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxRecordSizeInKiB, name: "MaxRecordSizeInKiB"))
    CreateStreamInput.add_member(:record_distribution_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordDistributionStrategy, name: "RecordDistributionStrategy"))
    CreateStreamInput.type = Types::CreateStreamInput
    DeadLetterQueueS3Configuration.add_member(:bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketARN, name: "BucketARN", traits: {"smithy.api#required" => {}}))
    DeadLetterQueueS3Configuration.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpectedBucketOwner, name: "ExpectedBucketOwner", traits: {"smithy.api#required" => {}}))
    DeadLetterQueueS3Configuration.add_member(:error_output_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ErrorOutputPrefix, name: "ErrorOutputPrefix"))
    DeadLetterQueueS3Configuration.type = Types::DeadLetterQueueS3Configuration
    DecreaseStreamRetentionPeriodInput.add_member(:stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamName, name: "StreamName"))
    DecreaseStreamRetentionPeriodInput.add_member(:retention_period_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionPeriodHours, name: "RetentionPeriodHours", traits: {"smithy.api#required" => {}}))
    DecreaseStreamRetentionPeriodInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.rules#contextParam" => {"name" => "StreamARN"}}))
    DecreaseStreamRetentionPeriodInput.add_member(:stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamId, name: "StreamId", traits: {"smithy.rules#contextParam" => {"name" => "StreamId"}}))
    DecreaseStreamRetentionPeriodInput.type = Types::DecreaseStreamRetentionPeriodInput
    DeleteChannelInput.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelARN, name: "ChannelARN", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ChannelARN"}}))
    DeleteChannelInput.type = Types::DeleteChannelInput
    DeleteResourcePolicyInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceARN", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceARN"}}))
    DeleteResourcePolicyInput.add_member(:stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamId, name: "StreamId", traits: {"smithy.rules#contextParam" => {"name" => "StreamId"}}))
    DeleteResourcePolicyInput.type = Types::DeleteResourcePolicyInput
    DeleteStreamInput.add_member(:stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamName, name: "StreamName"))
    DeleteStreamInput.add_member(:enforce_consumer_deletion, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "EnforceConsumerDeletion"))
    DeleteStreamInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.rules#contextParam" => {"name" => "StreamARN"}}))
    DeleteStreamInput.add_member(:stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamId, name: "StreamId", traits: {"smithy.rules#contextParam" => {"name" => "StreamId"}}))
    DeleteStreamInput.type = Types::DeleteStreamInput
    DeregisterStreamConsumerInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.rules#contextParam" => {"name" => "StreamARN"}}))
    DeregisterStreamConsumerInput.add_member(:consumer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumerName, name: "ConsumerName"))
    DeregisterStreamConsumerInput.add_member(:consumer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumerARN, name: "ConsumerARN", traits: {"smithy.rules#contextParam" => {"name" => "ConsumerARN"}}))
    DeregisterStreamConsumerInput.add_member(:stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamId, name: "StreamId", traits: {"smithy.rules#contextParam" => {"name" => "StreamId"}}))
    DeregisterStreamConsumerInput.type = Types::DeregisterStreamConsumerInput
    DescribeAccountSettingsInput.type = Types::DescribeAccountSettingsInput
    DescribeAccountSettingsOutput.add_member(:minimum_throughput_billing_commitment, ::Smithy::Schema::Shapes::MemberShape.new(target: MinimumThroughputBillingCommitmentOutput, name: "MinimumThroughputBillingCommitment"))
    DescribeAccountSettingsOutput.type = Types::DescribeAccountSettingsOutput
    DescribeChannelInput.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelARN, name: "ChannelARN", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ChannelARN"}}))
    DescribeChannelInput.type = Types::DescribeChannelInput
    DescribeChannelOutput.add_member(:channel_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelDescription, name: "ChannelDescription", traits: {"smithy.api#required" => {}}))
    DescribeChannelOutput.type = Types::DescribeChannelOutput
    DescribeLimitsInput.type = Types::DescribeLimitsInput
    DescribeLimitsOutput.add_member(:shard_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardCountObject, name: "ShardLimit", traits: {"smithy.api#required" => {}}))
    DescribeLimitsOutput.add_member(:open_shard_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardCountObject, name: "OpenShardCount", traits: {"smithy.api#required" => {}}))
    DescribeLimitsOutput.add_member(:on_demand_stream_count, ::Smithy::Schema::Shapes::MemberShape.new(target: OnDemandStreamCountObject, name: "OnDemandStreamCount", traits: {"smithy.api#required" => {}}))
    DescribeLimitsOutput.add_member(:on_demand_stream_count_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: OnDemandStreamCountLimitObject, name: "OnDemandStreamCountLimit", traits: {"smithy.api#required" => {}}))
    DescribeLimitsOutput.add_member(:channel_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelCountObject, name: "ChannelCount"))
    DescribeLimitsOutput.add_member(:channel_count_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelCountObject, name: "ChannelCountLimit"))
    DescribeLimitsOutput.type = Types::DescribeLimitsOutput
    DescribeStreamConsumerInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.rules#contextParam" => {"name" => "StreamARN"}}))
    DescribeStreamConsumerInput.add_member(:consumer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumerName, name: "ConsumerName"))
    DescribeStreamConsumerInput.add_member(:consumer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumerARN, name: "ConsumerARN", traits: {"smithy.rules#contextParam" => {"name" => "ConsumerARN"}}))
    DescribeStreamConsumerInput.add_member(:stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamId, name: "StreamId", traits: {"smithy.rules#contextParam" => {"name" => "StreamId"}}))
    DescribeStreamConsumerInput.type = Types::DescribeStreamConsumerInput
    DescribeStreamConsumerOutput.add_member(:consumer_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumerDescription, name: "ConsumerDescription", traits: {"smithy.api#required" => {}}))
    DescribeStreamConsumerOutput.type = Types::DescribeStreamConsumerOutput
    DescribeStreamInput.add_member(:stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamName, name: "StreamName"))
    DescribeStreamInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeStreamInputLimit, name: "Limit"))
    DescribeStreamInput.add_member(:exclusive_start_shard_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardId, name: "ExclusiveStartShardId"))
    DescribeStreamInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.rules#contextParam" => {"name" => "StreamARN"}}))
    DescribeStreamInput.add_member(:stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamId, name: "StreamId", traits: {"smithy.rules#contextParam" => {"name" => "StreamId"}}))
    DescribeStreamInput.type = Types::DescribeStreamInput
    DescribeStreamOutput.add_member(:stream_description, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamDescription, name: "StreamDescription", traits: {"smithy.api#required" => {}}))
    DescribeStreamOutput.type = Types::DescribeStreamOutput
    DescribeStreamSummaryInput.add_member(:stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamName, name: "StreamName"))
    DescribeStreamSummaryInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.rules#contextParam" => {"name" => "StreamARN"}}))
    DescribeStreamSummaryInput.add_member(:stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamId, name: "StreamId", traits: {"smithy.rules#contextParam" => {"name" => "StreamId"}}))
    DescribeStreamSummaryInput.type = Types::DescribeStreamSummaryInput
    DescribeStreamSummaryOutput.add_member(:stream_description_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamDescriptionSummary, name: "StreamDescriptionSummary", traits: {"smithy.api#required" => {}}))
    DescribeStreamSummaryOutput.type = Types::DescribeStreamSummaryOutput
    DisableEnhancedMonitoringInput.add_member(:stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamName, name: "StreamName"))
    DisableEnhancedMonitoringInput.add_member(:shard_level_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricsNameList, name: "ShardLevelMetrics", traits: {"smithy.api#required" => {}}))
    DisableEnhancedMonitoringInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.rules#contextParam" => {"name" => "StreamARN"}}))
    DisableEnhancedMonitoringInput.add_member(:stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamId, name: "StreamId", traits: {"smithy.rules#contextParam" => {"name" => "StreamId"}}))
    DisableEnhancedMonitoringInput.type = Types::DisableEnhancedMonitoringInput
    DisableEnhancedMonitoringOutput.add_member(:stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamName, name: "StreamName"))
    DisableEnhancedMonitoringOutput.add_member(:current_shard_level_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricsNameList, name: "CurrentShardLevelMetrics"))
    DisableEnhancedMonitoringOutput.add_member(:desired_shard_level_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricsNameList, name: "DesiredShardLevelMetrics"))
    DisableEnhancedMonitoringOutput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN"))
    DisableEnhancedMonitoringOutput.type = Types::DisableEnhancedMonitoringOutput
    DryRunOperationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    DryRunOperationException.type = Types::DryRunOperationException
    EnableEnhancedMonitoringInput.add_member(:stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamName, name: "StreamName"))
    EnableEnhancedMonitoringInput.add_member(:shard_level_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricsNameList, name: "ShardLevelMetrics", traits: {"smithy.api#required" => {}}))
    EnableEnhancedMonitoringInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.rules#contextParam" => {"name" => "StreamARN"}}))
    EnableEnhancedMonitoringInput.add_member(:stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamId, name: "StreamId", traits: {"smithy.rules#contextParam" => {"name" => "StreamId"}}))
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
    EnhancedMonitoringList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EnhancedMetrics, name: "member"))
    ExpiredIteratorException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ExpiredIteratorException.type = Types::ExpiredIteratorException
    ExpiredNextTokenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ExpiredNextTokenException.type = Types::ExpiredNextTokenException
    GetRecordsInput.add_member(:shard_iterator, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardIterator, name: "ShardIterator", traits: {"smithy.api#required" => {}}))
    GetRecordsInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: GetRecordsInputLimit, name: "Limit"))
    GetRecordsInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.rules#contextParam" => {"name" => "StreamARN"}}))
    GetRecordsInput.add_member(:stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamId, name: "StreamId", traits: {"smithy.rules#contextParam" => {"name" => "StreamId"}}))
    GetRecordsInput.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "DryRun"))
    GetRecordsInput.type = Types::GetRecordsInput
    GetRecordsOutput.add_member(:records, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordList, name: "Records", traits: {"smithy.api#required" => {}}))
    GetRecordsOutput.add_member(:next_shard_iterator, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardIterator, name: "NextShardIterator"))
    GetRecordsOutput.add_member(:millis_behind_latest, ::Smithy::Schema::Shapes::MemberShape.new(target: MillisBehindLatest, name: "MillisBehindLatest"))
    GetRecordsOutput.add_member(:child_shards, ::Smithy::Schema::Shapes::MemberShape.new(target: ChildShardList, name: "ChildShards"))
    GetRecordsOutput.type = Types::GetRecordsOutput
    GetResourcePolicyInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceARN", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceARN"}}))
    GetResourcePolicyInput.add_member(:stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamId, name: "StreamId", traits: {"smithy.rules#contextParam" => {"name" => "StreamId"}}))
    GetResourcePolicyInput.type = Types::GetResourcePolicyInput
    GetResourcePolicyOutput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: Policy, name: "Policy", traits: {"smithy.api#required" => {}}))
    GetResourcePolicyOutput.type = Types::GetResourcePolicyOutput
    GetShardIteratorInput.add_member(:stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamName, name: "StreamName"))
    GetShardIteratorInput.add_member(:shard_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardId, name: "ShardId", traits: {"smithy.api#required" => {}}))
    GetShardIteratorInput.add_member(:shard_iterator_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardIteratorType, name: "ShardIteratorType", traits: {"smithy.api#required" => {}}))
    GetShardIteratorInput.add_member(:starting_sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceNumber, name: "StartingSequenceNumber"))
    GetShardIteratorInput.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "Timestamp"))
    GetShardIteratorInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.rules#contextParam" => {"name" => "StreamARN"}}))
    GetShardIteratorInput.add_member(:stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamId, name: "StreamId", traits: {"smithy.rules#contextParam" => {"name" => "StreamId"}}))
    GetShardIteratorInput.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "DryRun"))
    GetShardIteratorInput.type = Types::GetShardIteratorInput
    GetShardIteratorOutput.add_member(:shard_iterator, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardIterator, name: "ShardIterator"))
    GetShardIteratorOutput.type = Types::GetShardIteratorOutput
    HashKeyRange.add_member(:starting_hash_key, ::Smithy::Schema::Shapes::MemberShape.new(target: HashKey, name: "StartingHashKey", traits: {"smithy.api#required" => {}}))
    HashKeyRange.add_member(:ending_hash_key, ::Smithy::Schema::Shapes::MemberShape.new(target: HashKey, name: "EndingHashKey", traits: {"smithy.api#required" => {}}))
    HashKeyRange.type = Types::HashKeyRange
    IncreaseStreamRetentionPeriodInput.add_member(:stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamName, name: "StreamName"))
    IncreaseStreamRetentionPeriodInput.add_member(:retention_period_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionPeriodHours, name: "RetentionPeriodHours", traits: {"smithy.api#required" => {}}))
    IncreaseStreamRetentionPeriodInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.rules#contextParam" => {"name" => "StreamARN"}}))
    IncreaseStreamRetentionPeriodInput.add_member(:stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamId, name: "StreamId", traits: {"smithy.rules#contextParam" => {"name" => "StreamId"}}))
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
    ListChannelsInput.add_member(:stream_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamFilterList, name: "StreamFilter"))
    ListChannelsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListChannelsInputLimit, name: "MaxResults"))
    ListChannelsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListChannelsInput.type = Types::ListChannelsInput
    ListChannelsOutput.add_member(:channel_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelSummaryList, name: "ChannelSummaries", traits: {"smithy.api#required" => {}}))
    ListChannelsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListChannelsOutput.type = Types::ListChannelsOutput
    ListShardsInput.add_member(:stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamName, name: "StreamName"))
    ListShardsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListShardsInput.add_member(:exclusive_start_shard_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardId, name: "ExclusiveStartShardId"))
    ListShardsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListShardsInputLimit, name: "MaxResults"))
    ListShardsInput.add_member(:stream_creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StreamCreationTimestamp"))
    ListShardsInput.add_member(:shard_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardFilter, name: "ShardFilter"))
    ListShardsInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.rules#contextParam" => {"name" => "StreamARN"}}))
    ListShardsInput.add_member(:stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamId, name: "StreamId", traits: {"smithy.rules#contextParam" => {"name" => "StreamId"}}))
    ListShardsInput.type = Types::ListShardsInput
    ListShardsOutput.add_member(:shards, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardList, name: "Shards"))
    ListShardsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListShardsOutput.type = Types::ListShardsOutput
    ListStreamConsumersInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "StreamARN"}}))
    ListStreamConsumersInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListStreamConsumersInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListStreamConsumersInputLimit, name: "MaxResults"))
    ListStreamConsumersInput.add_member(:stream_creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StreamCreationTimestamp"))
    ListStreamConsumersInput.add_member(:stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamId, name: "StreamId", traits: {"smithy.rules#contextParam" => {"name" => "StreamId"}}))
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
    ListTagsForResourceInput.add_member(:stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamId, name: "StreamId", traits: {"smithy.rules#contextParam" => {"name" => "StreamId"}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListTagsForStreamInput.add_member(:stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamName, name: "StreamName"))
    ListTagsForStreamInput.add_member(:exclusive_start_tag_key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "ExclusiveStartTagKey"))
    ListTagsForStreamInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ListTagsForStreamInputLimit, name: "Limit"))
    ListTagsForStreamInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.rules#contextParam" => {"name" => "StreamARN"}}))
    ListTagsForStreamInput.add_member(:stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamId, name: "StreamId", traits: {"smithy.rules#contextParam" => {"name" => "StreamId"}}))
    ListTagsForStreamInput.type = Types::ListTagsForStreamInput
    ListTagsForStreamOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    ListTagsForStreamOutput.add_member(:has_more_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "HasMoreTags", traits: {"smithy.api#required" => {}}))
    ListTagsForStreamOutput.type = Types::ListTagsForStreamOutput
    MergeShardsInput.add_member(:stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamName, name: "StreamName"))
    MergeShardsInput.add_member(:shard_to_merge, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardId, name: "ShardToMerge", traits: {"smithy.api#required" => {}}))
    MergeShardsInput.add_member(:adjacent_shard_to_merge, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardId, name: "AdjacentShardToMerge", traits: {"smithy.api#required" => {}}))
    MergeShardsInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.rules#contextParam" => {"name" => "StreamARN"}}))
    MergeShardsInput.add_member(:stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamId, name: "StreamId", traits: {"smithy.rules#contextParam" => {"name" => "StreamId"}}))
    MergeShardsInput.type = Types::MergeShardsInput
    MetricsName.add_member(:incoming_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCOMING_BYTES", traits: {"smithy.api#enumValue" => "IncomingBytes"}))
    MetricsName.add_member(:incoming_records, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCOMING_RECORDS", traits: {"smithy.api#enumValue" => "IncomingRecords"}))
    MetricsName.add_member(:outgoing_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OUTGOING_BYTES", traits: {"smithy.api#enumValue" => "OutgoingBytes"}))
    MetricsName.add_member(:outgoing_records, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OUTGOING_RECORDS", traits: {"smithy.api#enumValue" => "OutgoingRecords"}))
    MetricsName.add_member(:write_provisioned_throughput_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WRITE_PROVISIONED_THROUGHPUT_EXCEEDED", traits: {"smithy.api#enumValue" => "WriteProvisionedThroughputExceeded"}))
    MetricsName.add_member(:read_provisioned_throughput_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READ_PROVISIONED_THROUGHPUT_EXCEEDED", traits: {"smithy.api#enumValue" => "ReadProvisionedThroughputExceeded"}))
    MetricsName.add_member(:iterator_age_milliseconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ITERATOR_AGE_MILLISECONDS", traits: {"smithy.api#enumValue" => "IteratorAgeMilliseconds"}))
    MetricsName.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    MetricsNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricsName, name: "member"))
    MinimumThroughputBillingCommitmentInput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: MinimumThroughputBillingCommitmentInputStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    MinimumThroughputBillingCommitmentInput.type = Types::MinimumThroughputBillingCommitmentInput
    MinimumThroughputBillingCommitmentInputStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    MinimumThroughputBillingCommitmentInputStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    MinimumThroughputBillingCommitmentOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: MinimumThroughputBillingCommitmentOutputStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    MinimumThroughputBillingCommitmentOutput.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartedAt"))
    MinimumThroughputBillingCommitmentOutput.add_member(:ended_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndedAt"))
    MinimumThroughputBillingCommitmentOutput.add_member(:earliest_allowed_end_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EarliestAllowedEndAt"))
    MinimumThroughputBillingCommitmentOutput.type = Types::MinimumThroughputBillingCommitmentOutput
    MinimumThroughputBillingCommitmentOutputStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    MinimumThroughputBillingCommitmentOutputStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    MinimumThroughputBillingCommitmentOutputStatus.add_member(:enabled_until_earliest_allowed_end, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED_UNTIL_EARLIEST_ALLOWED_END", traits: {"smithy.api#enumValue" => "ENABLED_UNTIL_EARLIEST_ALLOWED_END"}))
    PartitionField.add_member(:transform, ::Smithy::Schema::Shapes::MemberShape.new(target: PartitionTransform, name: "Transform", traits: {"smithy.api#required" => {}}))
    PartitionField.add_member(:source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PartitionSourceName, name: "SourceName", traits: {"smithy.api#required" => {}}))
    PartitionField.type = Types::PartitionField
    PartitionFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PartitionField, name: "member"))
    PartitionSpec.add_member(:partition_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: PartitionFieldList, name: "PartitionFields", traits: {"smithy.api#required" => {}}))
    PartitionSpec.type = Types::PartitionSpec
    PartitionTransform.add_member(:time_hour, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIME_HOUR", traits: {"smithy.api#enumValue" => "TIME_HOUR"}))
    ProvisionedThroughputExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ProvisionedThroughputExceededException.type = Types::ProvisionedThroughputExceededException
    PutRecordInput.add_member(:stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamName, name: "StreamName"))
    PutRecordInput.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "Data", traits: {"smithy.api#required" => {}}))
    PutRecordInput.add_member(:partition_key, ::Smithy::Schema::Shapes::MemberShape.new(target: PartitionKey, name: "PartitionKey"))
    PutRecordInput.add_member(:explicit_hash_key, ::Smithy::Schema::Shapes::MemberShape.new(target: HashKey, name: "ExplicitHashKey"))
    PutRecordInput.add_member(:sequence_number_for_ordering, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceNumber, name: "SequenceNumberForOrdering"))
    PutRecordInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.rules#contextParam" => {"name" => "StreamARN"}}))
    PutRecordInput.add_member(:stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamId, name: "StreamId", traits: {"smithy.rules#contextParam" => {"name" => "StreamId"}}))
    PutRecordInput.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "DryRun"))
    PutRecordInput.type = Types::PutRecordInput
    PutRecordOutput.add_member(:shard_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardId, name: "ShardId", traits: {"smithy.api#required" => {}}))
    PutRecordOutput.add_member(:sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceNumber, name: "SequenceNumber", traits: {"smithy.api#required" => {}}))
    PutRecordOutput.add_member(:encryption_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionType, name: "EncryptionType"))
    PutRecordOutput.type = Types::PutRecordOutput
    PutRecordsInput.add_member(:records, ::Smithy::Schema::Shapes::MemberShape.new(target: PutRecordsRequestEntryList, name: "Records", traits: {"smithy.api#required" => {}}))
    PutRecordsInput.add_member(:stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamName, name: "StreamName"))
    PutRecordsInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.rules#contextParam" => {"name" => "StreamARN"}}))
    PutRecordsInput.add_member(:stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamId, name: "StreamId", traits: {"smithy.rules#contextParam" => {"name" => "StreamId"}}))
    PutRecordsInput.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "DryRun"))
    PutRecordsInput.type = Types::PutRecordsInput
    PutRecordsOutput.add_member(:failed_record_count, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveIntegerObject, name: "FailedRecordCount"))
    PutRecordsOutput.add_member(:records, ::Smithy::Schema::Shapes::MemberShape.new(target: PutRecordsResultEntryList, name: "Records", traits: {"smithy.api#required" => {}}))
    PutRecordsOutput.add_member(:encryption_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionType, name: "EncryptionType"))
    PutRecordsOutput.type = Types::PutRecordsOutput
    PutRecordsRequestEntry.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "Data", traits: {"smithy.api#required" => {}}))
    PutRecordsRequestEntry.add_member(:explicit_hash_key, ::Smithy::Schema::Shapes::MemberShape.new(target: HashKey, name: "ExplicitHashKey"))
    PutRecordsRequestEntry.add_member(:partition_key, ::Smithy::Schema::Shapes::MemberShape.new(target: PartitionKey, name: "PartitionKey"))
    PutRecordsRequestEntry.type = Types::PutRecordsRequestEntry
    PutRecordsRequestEntryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PutRecordsRequestEntry, name: "member"))
    PutRecordsResultEntry.add_member(:sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceNumber, name: "SequenceNumber"))
    PutRecordsResultEntry.add_member(:shard_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardId, name: "ShardId"))
    PutRecordsResultEntry.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode"))
    PutRecordsResultEntry.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "ErrorMessage"))
    PutRecordsResultEntry.type = Types::PutRecordsResultEntry
    PutRecordsResultEntryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PutRecordsResultEntry, name: "member"))
    PutResourcePolicyInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceARN", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceARN"}}))
    PutResourcePolicyInput.add_member(:stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamId, name: "StreamId", traits: {"smithy.rules#contextParam" => {"name" => "StreamId"}}))
    PutResourcePolicyInput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: Policy, name: "Policy", traits: {"smithy.api#required" => {}}))
    PutResourcePolicyInput.type = Types::PutResourcePolicyInput
    Record.add_member(:sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceNumber, name: "SequenceNumber", traits: {"smithy.api#required" => {}}))
    Record.add_member(:approximate_arrival_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ApproximateArrivalTimestamp"))
    Record.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "Data", traits: {"smithy.api#required" => {}}))
    Record.add_member(:partition_key, ::Smithy::Schema::Shapes::MemberShape.new(target: PartitionKey, name: "PartitionKey"))
    Record.add_member(:encryption_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionType, name: "EncryptionType"))
    Record.type = Types::Record
    RecordConfiguration.add_member(:record_format_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordFormatType, name: "RecordFormatType", traits: {"smithy.api#required" => {}}))
    RecordConfiguration.add_member(:gsr_schema_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GSRSchemaARN, name: "GSRSchemaARN"))
    RecordConfiguration.type = Types::RecordConfiguration
    RecordDistributionStrategy.add_member(:auto, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTO", traits: {"smithy.api#enumValue" => "AUTO"}))
    RecordDistributionStrategy.add_member(:user_partition_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER_PARTITION_KEY", traits: {"smithy.api#enumValue" => "USER_PARTITION_KEY"}))
    RecordFormatType.add_member(:gsr_json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GSR_JSON", traits: {"smithy.api#enumValue" => "GSR_JSON"}))
    RecordFormatType.add_member(:json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JSON", traits: {"smithy.api#enumValue" => "JSON"}))
    RecordFormatType.add_member(:string, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRING", traits: {"smithy.api#enumValue" => "STRING"}))
    RecordFormatType.add_member(:byte_array, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BYTE_ARRAY", traits: {"smithy.api#enumValue" => "BYTE_ARRAY"}))
    RecordList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Record, name: "member"))
    RegisterStreamConsumerInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "StreamARN"}}))
    RegisterStreamConsumerInput.add_member(:consumer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumerName, name: "ConsumerName", traits: {"smithy.api#required" => {}}))
    RegisterStreamConsumerInput.add_member(:stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamId, name: "StreamId", traits: {"smithy.rules#contextParam" => {"name" => "StreamId"}}))
    RegisterStreamConsumerInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    RegisterStreamConsumerInput.type = Types::RegisterStreamConsumerInput
    RegisterStreamConsumerOutput.add_member(:consumer, ::Smithy::Schema::Shapes::MemberShape.new(target: Consumer, name: "Consumer", traits: {"smithy.api#required" => {}}))
    RegisterStreamConsumerOutput.type = Types::RegisterStreamConsumerOutput
    RemoveTagsFromStreamInput.add_member(:stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamName, name: "StreamName"))
    RemoveTagsFromStreamInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    RemoveTagsFromStreamInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.rules#contextParam" => {"name" => "StreamARN"}}))
    RemoveTagsFromStreamInput.add_member(:stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamId, name: "StreamId", traits: {"smithy.rules#contextParam" => {"name" => "StreamId"}}))
    RemoveTagsFromStreamInput.type = Types::RemoveTagsFromStreamInput
    ResourceInUseException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    S3CompressionType.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    S3CompressionType.add_member(:gzip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GZIP", traits: {"smithy.api#enumValue" => "GZIP"}))
    S3CompressionType.add_member(:zstd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ZSTD", traits: {"smithy.api#enumValue" => "ZSTD"}))
    S3DestinationConfiguration.add_member(:data_freshness_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: DataFreshnessInSeconds, name: "DataFreshnessInSeconds"))
    S3DestinationConfiguration.add_member(:dead_letter_queue_s3_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DeadLetterQueueS3Configuration, name: "DeadLetterQueueS3Configuration"))
    S3DestinationConfiguration.add_member(:storage_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: S3StorageConfiguration, name: "StorageConfiguration", traits: {"smithy.api#required" => {}}))
    S3DestinationConfiguration.type = Types::S3DestinationConfiguration
    S3DestinationDescription.add_member(:data_freshness_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: DataFreshnessInSeconds, name: "DataFreshnessInSeconds", traits: {"smithy.api#required" => {}}))
    S3DestinationDescription.add_member(:dead_letter_queue_s3_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DeadLetterQueueS3Configuration, name: "DeadLetterQueueS3Configuration", traits: {"smithy.api#required" => {}}))
    S3DestinationDescription.add_member(:storage_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: S3StorageConfiguration, name: "StorageConfiguration", traits: {"smithy.api#required" => {}}))
    S3DestinationDescription.type = Types::S3DestinationDescription
    S3DestinationUpdateInput.add_member(:data_freshness_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: DataFreshnessInSeconds, name: "DataFreshnessInSeconds", traits: {"smithy.api#required" => {}}))
    S3DestinationUpdateInput.type = Types::S3DestinationUpdateInput
    S3StorageClass.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD", traits: {"smithy.api#enumValue" => "STANDARD"}))
    S3StorageClass.add_member(:intelligent_tiering, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTELLIGENT_TIERING", traits: {"smithy.api#enumValue" => "INTELLIGENT_TIERING"}))
    S3StorageClass.add_member(:glacier_ir, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GLACIER_IR", traits: {"smithy.api#enumValue" => "GLACIER_IR"}))
    S3StorageConfiguration.add_member(:bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketARN, name: "BucketARN", traits: {"smithy.api#required" => {}}))
    S3StorageConfiguration.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpectedBucketOwner, name: "ExpectedBucketOwner", traits: {"smithy.api#required" => {}}))
    S3StorageConfiguration.add_member(:output_key_template, ::Smithy::Schema::Shapes::MemberShape.new(target: S3OutputKeyTemplate, name: "OutputKeyTemplate"))
    S3StorageConfiguration.add_member(:storage_class, ::Smithy::Schema::Shapes::MemberShape.new(target: S3StorageClass, name: "StorageClass"))
    S3StorageConfiguration.add_member(:compression_type, ::Smithy::Schema::Shapes::MemberShape.new(target: S3CompressionType, name: "CompressionType", traits: {"smithy.api#required" => {}}))
    S3StorageConfiguration.type = Types::S3StorageConfiguration
    S3TablesCompressionType.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    S3TablesCompressionType.add_member(:zstd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ZSTD", traits: {"smithy.api#enumValue" => "ZSTD"}))
    S3TablesCompressionType.add_member(:snappy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SNAPPY", traits: {"smithy.api#enumValue" => "SNAPPY"}))
    S3TablesConfiguration.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TableBucketARN, name: "TableBucketARN", traits: {"smithy.api#required" => {}}))
    S3TablesConfiguration.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: S3TablesNamespace, name: "Namespace", traits: {"smithy.api#required" => {}}))
    S3TablesConfiguration.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: S3TablesTableName, name: "TableName", traits: {"smithy.api#required" => {}}))
    S3TablesConfiguration.add_member(:compression_type, ::Smithy::Schema::Shapes::MemberShape.new(target: S3TablesCompressionType, name: "CompressionType", traits: {"smithy.api#required" => {}}))
    S3TablesConfiguration.add_member(:partition_spec, ::Smithy::Schema::Shapes::MemberShape.new(target: PartitionSpec, name: "PartitionSpec"))
    S3TablesConfiguration.type = Types::S3TablesConfiguration
    S3TablesConfigurationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: S3TablesConfiguration, name: "member"))
    S3TablesDestinationConfiguration.add_member(:data_freshness_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: DataFreshnessInSeconds, name: "DataFreshnessInSeconds"))
    S3TablesDestinationConfiguration.add_member(:dead_letter_queue_s3_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DeadLetterQueueS3Configuration, name: "DeadLetterQueueS3Configuration", traits: {"smithy.api#required" => {}}))
    S3TablesDestinationConfiguration.add_member(:s3_tables_configuration_list, ::Smithy::Schema::Shapes::MemberShape.new(target: S3TablesConfigurationList, name: "S3TablesConfigurationList", traits: {"smithy.api#required" => {}}))
    S3TablesDestinationConfiguration.type = Types::S3TablesDestinationConfiguration
    S3TablesDestinationDescription.add_member(:data_freshness_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: DataFreshnessInSeconds, name: "DataFreshnessInSeconds", traits: {"smithy.api#required" => {}}))
    S3TablesDestinationDescription.add_member(:dead_letter_queue_s3_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DeadLetterQueueS3Configuration, name: "DeadLetterQueueS3Configuration", traits: {"smithy.api#required" => {}}))
    S3TablesDestinationDescription.add_member(:s3_tables_configuration_list, ::Smithy::Schema::Shapes::MemberShape.new(target: S3TablesConfigurationList, name: "S3TablesConfigurationList", traits: {"smithy.api#required" => {}}))
    S3TablesDestinationDescription.type = Types::S3TablesDestinationDescription
    S3TablesDestinationUpdateInput.add_member(:data_freshness_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: DataFreshnessInSeconds, name: "DataFreshnessInSeconds", traits: {"smithy.api#required" => {}}))
    S3TablesDestinationUpdateInput.type = Types::S3TablesDestinationUpdateInput
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
    ShardIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardId, name: "member"))
    ShardIteratorType.add_member(:at_sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AT_SEQUENCE_NUMBER", traits: {"smithy.api#enumValue" => "AT_SEQUENCE_NUMBER"}))
    ShardIteratorType.add_member(:after_sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AFTER_SEQUENCE_NUMBER", traits: {"smithy.api#enumValue" => "AFTER_SEQUENCE_NUMBER"}))
    ShardIteratorType.add_member(:trim_horizon, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRIM_HORIZON", traits: {"smithy.api#enumValue" => "TRIM_HORIZON"}))
    ShardIteratorType.add_member(:latest, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LATEST", traits: {"smithy.api#enumValue" => "LATEST"}))
    ShardIteratorType.add_member(:at_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AT_TIMESTAMP", traits: {"smithy.api#enumValue" => "AT_TIMESTAMP"}))
    ShardList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Shard, name: "member"))
    SplitShardInput.add_member(:stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamName, name: "StreamName"))
    SplitShardInput.add_member(:shard_to_split, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardId, name: "ShardToSplit", traits: {"smithy.api#required" => {}}))
    SplitShardInput.add_member(:new_starting_hash_key, ::Smithy::Schema::Shapes::MemberShape.new(target: HashKey, name: "NewStartingHashKey", traits: {"smithy.api#required" => {}}))
    SplitShardInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.rules#contextParam" => {"name" => "StreamARN"}}))
    SplitShardInput.add_member(:stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamId, name: "StreamId", traits: {"smithy.rules#contextParam" => {"name" => "StreamId"}}))
    SplitShardInput.type = Types::SplitShardInput
    StartStreamEncryptionInput.add_member(:stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamName, name: "StreamName"))
    StartStreamEncryptionInput.add_member(:encryption_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionType, name: "EncryptionType", traits: {"smithy.api#required" => {}}))
    StartStreamEncryptionInput.add_member(:key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyId, name: "KeyId", traits: {"smithy.api#required" => {}}))
    StartStreamEncryptionInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.rules#contextParam" => {"name" => "StreamARN"}}))
    StartStreamEncryptionInput.add_member(:stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamId, name: "StreamId", traits: {"smithy.rules#contextParam" => {"name" => "StreamId"}}))
    StartStreamEncryptionInput.type = Types::StartStreamEncryptionInput
    StartingPosition.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardIteratorType, name: "Type", traits: {"smithy.api#required" => {}}))
    StartingPosition.add_member(:sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceNumber, name: "SequenceNumber"))
    StartingPosition.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "Timestamp"))
    StartingPosition.type = Types::StartingPosition
    StopStreamEncryptionInput.add_member(:stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamName, name: "StreamName"))
    StopStreamEncryptionInput.add_member(:encryption_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionType, name: "EncryptionType", traits: {"smithy.api#required" => {}}))
    StopStreamEncryptionInput.add_member(:key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyId, name: "KeyId", traits: {"smithy.api#required" => {}}))
    StopStreamEncryptionInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.rules#contextParam" => {"name" => "StreamARN"}}))
    StopStreamEncryptionInput.add_member(:stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamId, name: "StreamId", traits: {"smithy.rules#contextParam" => {"name" => "StreamId"}}))
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
    StreamDescriptionSummary.add_member(:stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamId, name: "StreamId"))
    StreamDescriptionSummary.add_member(:stream_status, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamStatus, name: "StreamStatus", traits: {"smithy.api#required" => {}}))
    StreamDescriptionSummary.add_member(:stream_mode_details, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamModeDetails, name: "StreamModeDetails"))
    StreamDescriptionSummary.add_member(:retention_period_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: RetentionPeriodHours, name: "RetentionPeriodHours", traits: {"smithy.api#required" => {}}))
    StreamDescriptionSummary.add_member(:stream_creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StreamCreationTimestamp", traits: {"smithy.api#required" => {}}))
    StreamDescriptionSummary.add_member(:enhanced_monitoring, ::Smithy::Schema::Shapes::MemberShape.new(target: EnhancedMonitoringList, name: "EnhancedMonitoring", traits: {"smithy.api#required" => {}}))
    StreamDescriptionSummary.add_member(:encryption_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionType, name: "EncryptionType"))
    StreamDescriptionSummary.add_member(:key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyId, name: "KeyId"))
    StreamDescriptionSummary.add_member(:open_shard_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardCountObject, name: "OpenShardCount", traits: {"smithy.api#required" => {}}))
    StreamDescriptionSummary.add_member(:consumer_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumerCountObject, name: "ConsumerCount"))
    StreamDescriptionSummary.add_member(:warm_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: WarmThroughputObject, name: "WarmThroughput"))
    StreamDescriptionSummary.add_member(:max_record_size_in_ki_b, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxRecordSizeInKiB, name: "MaxRecordSizeInKiB"))
    StreamDescriptionSummary.add_member(:channel_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelCountObject, name: "ChannelCount"))
    StreamDescriptionSummary.add_member(:record_distribution_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordDistributionStrategy, name: "RecordDistributionStrategy"))
    StreamDescriptionSummary.type = Types::StreamDescriptionSummary
    StreamFilter.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.api#required" => {}}))
    StreamFilter.add_member(:stream_creation_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StreamCreationTimestamp"))
    StreamFilter.type = Types::StreamFilter
    StreamFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamFilter, name: "member"))
    StreamMode.add_member(:provisioned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROVISIONED", traits: {"smithy.api#enumValue" => "PROVISIONED"}))
    StreamMode.add_member(:on_demand, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ON_DEMAND", traits: {"smithy.api#enumValue" => "ON_DEMAND"}))
    StreamModeDetails.add_member(:stream_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamMode, name: "StreamMode", traits: {"smithy.api#required" => {}}))
    StreamModeDetails.type = Types::StreamModeDetails
    StreamNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamName, name: "member"))
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
    StreamSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamSummary, name: "member"))
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
    SubscribeToShardInput.add_member(:stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamId, name: "StreamId", traits: {"smithy.rules#contextParam" => {"name" => "StreamId"}}))
    SubscribeToShardInput.add_member(:shard_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardId, name: "ShardId", traits: {"smithy.api#required" => {}}))
    SubscribeToShardInput.add_member(:starting_position, ::Smithy::Schema::Shapes::MemberShape.new(target: StartingPosition, name: "StartingPosition", traits: {"smithy.api#required" => {}}))
    SubscribeToShardInput.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "DryRun"))
    SubscribeToShardInput.type = Types::SubscribeToShardInput
    SubscribeToShardOutput.add_member(:event_stream, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscribeToShardEventStream, name: "EventStream", traits: {"smithy.api#required" => {}}))
    SubscribeToShardOutput.type = Types::SubscribeToShardOutput
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value"))
    Tag.type = Types::Tag
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TagMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    TagMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceARN", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceARN"}}))
    TagResourceInput.add_member(:stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamId, name: "StreamId", traits: {"smithy.rules#contextParam" => {"name" => "StreamId"}}))
    TagResourceInput.type = Types::TagResourceInput
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ResourceARN", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceARN"}}))
    UntagResourceInput.add_member(:stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamId, name: "StreamId", traits: {"smithy.rules#contextParam" => {"name" => "StreamId"}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UpdateAccountSettingsInput.add_member(:minimum_throughput_billing_commitment, ::Smithy::Schema::Shapes::MemberShape.new(target: MinimumThroughputBillingCommitmentInput, name: "MinimumThroughputBillingCommitment", traits: {"smithy.api#required" => {}}))
    UpdateAccountSettingsInput.type = Types::UpdateAccountSettingsInput
    UpdateAccountSettingsOutput.add_member(:minimum_throughput_billing_commitment, ::Smithy::Schema::Shapes::MemberShape.new(target: MinimumThroughputBillingCommitmentOutput, name: "MinimumThroughputBillingCommitment"))
    UpdateAccountSettingsOutput.type = Types::UpdateAccountSettingsOutput
    UpdateChannelInput.add_member(:channel_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelARN, name: "ChannelARN", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ChannelARN"}}))
    UpdateChannelInput.add_member(:s3_destination_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DestinationUpdateInput, name: "S3DestinationConfiguration"))
    UpdateChannelInput.add_member(:s3_tables_destination_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: S3TablesDestinationUpdateInput, name: "S3TablesDestinationConfiguration"))
    UpdateChannelInput.add_member(:logging_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelLoggingUpdateInput, name: "LoggingConfiguration"))
    UpdateChannelInput.type = Types::UpdateChannelInput
    UpdateChannelOutput.add_member(:channel_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelDescription, name: "ChannelDescription", traits: {"smithy.api#required" => {}}))
    UpdateChannelOutput.type = Types::UpdateChannelOutput
    UpdateMaxRecordSizeInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.rules#contextParam" => {"name" => "StreamARN"}}))
    UpdateMaxRecordSizeInput.add_member(:stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamId, name: "StreamId", traits: {"smithy.rules#contextParam" => {"name" => "StreamId"}}))
    UpdateMaxRecordSizeInput.add_member(:max_record_size_in_ki_b, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxRecordSizeInKiB, name: "MaxRecordSizeInKiB", traits: {"smithy.api#required" => {}}))
    UpdateMaxRecordSizeInput.type = Types::UpdateMaxRecordSizeInput
    UpdateShardCountInput.add_member(:stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamName, name: "StreamName"))
    UpdateShardCountInput.add_member(:target_shard_count, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveIntegerObject, name: "TargetShardCount", traits: {"smithy.api#required" => {}}))
    UpdateShardCountInput.add_member(:scaling_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingType, name: "ScalingType", traits: {"smithy.api#required" => {}}))
    UpdateShardCountInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.rules#contextParam" => {"name" => "StreamARN"}}))
    UpdateShardCountInput.add_member(:stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamId, name: "StreamId", traits: {"smithy.rules#contextParam" => {"name" => "StreamId"}}))
    UpdateShardCountInput.type = Types::UpdateShardCountInput
    UpdateShardCountOutput.add_member(:stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamName, name: "StreamName"))
    UpdateShardCountOutput.add_member(:current_shard_count, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveIntegerObject, name: "CurrentShardCount"))
    UpdateShardCountOutput.add_member(:target_shard_count, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveIntegerObject, name: "TargetShardCount"))
    UpdateShardCountOutput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN"))
    UpdateShardCountOutput.type = Types::UpdateShardCountOutput
    UpdateStreamModeInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "StreamARN"}}))
    UpdateStreamModeInput.add_member(:stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamId, name: "StreamId", traits: {"smithy.rules#contextParam" => {"name" => "StreamId"}}))
    UpdateStreamModeInput.add_member(:stream_mode_details, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamModeDetails, name: "StreamModeDetails", traits: {"smithy.api#required" => {}}))
    UpdateStreamModeInput.add_member(:warm_throughput_mi_bps, ::Smithy::Schema::Shapes::MemberShape.new(target: NaturalIntegerObject, name: "WarmThroughputMiBps"))
    UpdateStreamModeInput.type = Types::UpdateStreamModeInput
    UpdateStreamRecordDistributionStrategyInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "StreamARN"}}))
    UpdateStreamRecordDistributionStrategyInput.add_member(:stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamId, name: "StreamId", traits: {"smithy.rules#contextParam" => {"name" => "StreamId"}}))
    UpdateStreamRecordDistributionStrategyInput.add_member(:record_distribution_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordDistributionStrategy, name: "RecordDistributionStrategy", traits: {"smithy.api#required" => {}}))
    UpdateStreamRecordDistributionStrategyInput.type = Types::UpdateStreamRecordDistributionStrategyInput
    UpdateStreamWarmThroughputInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN", traits: {"smithy.rules#contextParam" => {"name" => "StreamARN"}}))
    UpdateStreamWarmThroughputInput.add_member(:stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamName, name: "StreamName"))
    UpdateStreamWarmThroughputInput.add_member(:stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamId, name: "StreamId", traits: {"smithy.rules#contextParam" => {"name" => "StreamId"}}))
    UpdateStreamWarmThroughputInput.add_member(:warm_throughput_mi_bps, ::Smithy::Schema::Shapes::MemberShape.new(target: NaturalIntegerObject, name: "WarmThroughputMiBps", traits: {"smithy.api#required" => {}}))
    UpdateStreamWarmThroughputInput.type = Types::UpdateStreamWarmThroughputInput
    UpdateStreamWarmThroughputOutput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamARN, name: "StreamARN"))
    UpdateStreamWarmThroughputOutput.add_member(:stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamName, name: "StreamName"))
    UpdateStreamWarmThroughputOutput.add_member(:warm_throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: WarmThroughputObject, name: "WarmThroughput"))
    UpdateStreamWarmThroughputOutput.type = Types::UpdateStreamWarmThroughputOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ValidationException.type = Types::ValidationException
    WarmThroughputObject.add_member(:target_mi_bps, ::Smithy::Schema::Shapes::MemberShape.new(target: NaturalIntegerObject, name: "TargetMiBps"))
    WarmThroughputObject.add_member(:current_mi_bps, ::Smithy::Schema::Shapes::MemberShape.new(target: NaturalIntegerObject, name: "CurrentMiBps"))
    WarmThroughputObject.type = Types::WarmThroughputObject

    Kinesis20131202 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.kinesis#Kinesis_20131202"
      service.name = "Kinesis20131202"
      service.version = "2013-12-02"
      service.traits = {"aws.api#service" => {"sdkId" => "Kinesis", "arnNamespace" => "kinesis", "cloudFormationName" => "Kinesis", "cloudTrailEventSource" => "kinesis.amazonaws.com", "endpointPrefix" => "kinesis"}, "aws.auth#sigv4" => {"name" => "kinesis"}, "aws.protocols#awsJson1_1" => {"http" => ["http/1.1", "h2"], "eventStreamHttp" => ["h2"]}, "smithy.api#title" => "Amazon Kinesis", "smithy.api#xmlNamespace" => {"uri" => "http://kinesis.amazonaws.com/doc/2013-12-02"}, "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}, "OperationType" => {"required" => false, "documentation" => "Internal parameter to distinguish between Control/Data plane API and accordingly generate control/data plane endpoint", "type" => "string"}, "StreamId" => {"required" => false, "documentation" => "The unique identifier of the Kinesis stream", "type" => "string"}, "StreamARN" => {"required" => false, "documentation" => "The ARN of the Kinesis stream", "type" => "string"}, "ConsumerARN" => {"required" => false, "documentation" => "The ARN of the Kinesis consumer", "type" => "string"}, "ResourceARN" => {"required" => false, "documentation" => "The ARN of the Kinesis resource", "type" => "string"}, "ChannelARN" => {"required" => false, "documentation" => "The ARN of the Kinesis data channel", "type" => "string"}, "AccountId" => {"builtIn" => "AWS::Auth::AccountId", "required" => false, "documentation" => "The AWS AccountId used for the request.", "type" => "string"}, "AccountIdEndpointMode" => {"builtIn" => "AWS::Auth::AccountIdEndpointMode", "required" => false, "documentation" => "The AccountId Endpoint Mode.", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws-iso-b"]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws-iso"]}, {"fn" => "isSet", "argv" => [{"ref" => "StreamId"}]}, {"fn" => "substring", "argv" => [{"ref" => "StreamId"}, 21, 24, false], "assign" => "StreamIdSuffixValue"}, {"fn" => "substring", "argv" => [{"ref" => "StreamId"}, 0, 20, false], "assign" => "StreamIdPrefixValue"}, {"fn" => "stringEquals", "argv" => [{"fn" => "coalesce", "argv" => [{"fn" => "substring", "argv" => [{"ref" => "StreamId"}, 20, 21, false]}, ""]}, "-"]}, {"fn" => "stringEquals", "argv" => [{"fn" => "coalesce", "argv" => [{"fn" => "substring", "argv" => [{"ref" => "StreamId"}, 3, 4, true]}, ""]}, "-"]}, {"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "StreamARN"}]}, {"fn" => "isSet", "argv" => [{"ref" => "ConsumerARN"}]}, {"fn" => "aws.parseArn", "argv" => [{"ref" => "ConsumerARN"}], "assign" => "arn_ssa_2"}, {"fn" => "substring", "argv" => [{"ref" => "Endpoint"}, 15, 20, false], "assign" => "HttpsCustomEndpointSuffixValue"}, {"fn" => "stringEquals", "argv" => [{"fn" => "coalesce", "argv" => [{"fn" => "substring", "argv" => [{"ref" => "Endpoint"}, 15, 16, false]}, ""]}, "-"]}, {"fn" => "stringEquals", "argv" => [{"fn" => "coalesce", "argv" => [{"fn" => "substring", "argv" => [{"ref" => "Endpoint"}, 20, 21, false]}, ""]}, "."]}, {"fn" => "substring", "argv" => [{"ref" => "Endpoint"}, 7, 12, false], "assign" => "PlainCustomEndpointSuffixValue"}, {"fn" => "isValidHostLabel", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "arn_ssa_2"}, "accountId"]}, false]}, {"fn" => "isValidHostLabel", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "arn_ssa_2"}, "region"]}, false]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "arn_ssa_2"}, "service"]}, "kinesis"]}, {"fn" => "getAttr", "argv" => [{"ref" => "arn_ssa_2"}, "resourceId[0]"], "assign" => "arnType_ssa_2"}, {"fn" => "stringEquals", "argv" => [{"ref" => "arnType_ssa_2"}, ""]}, {"fn" => "aws.parseArn", "argv" => [{"ref" => "StreamARN"}], "assign" => "arn_ssa_4"}, {"fn" => "isValidHostLabel", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "arn_ssa_4"}, "accountId"]}, false]}, {"fn" => "stringEquals", "argv" => [{"ref" => "arnType_ssa_2"}, "stream"]}, {"fn" => "isValidHostLabel", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "arn_ssa_4"}, "region"]}, false]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, {"fn" => "getAttr", "argv" => [{"ref" => "arn_ssa_2"}, "partition"]}]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "arn_ssa_4"}, "service"]}, "kinesis"]}, {"fn" => "getAttr", "argv" => [{"ref" => "arn_ssa_4"}, "resourceId[0]"], "assign" => "arnType_ssa_1"}, {"fn" => "stringEquals", "argv" => [{"ref" => "arnType_ssa_1"}, ""]}, {"fn" => "isSet", "argv" => [{"ref" => "ResourceARN"}]}, {"fn" => "isSet", "argv" => [{"ref" => "ChannelARN"}]}, {"fn" => "isSet", "argv" => [{"ref" => "AccountIdEndpointMode"}]}, {"fn" => "isSet", "argv" => [{"ref" => "AccountId"}]}, {"fn" => "aws.parseArn", "argv" => [{"ref" => "ChannelARN"}], "assign" => "arn_ssa_1"}, {"fn" => "stringEquals", "argv" => [{"ref" => "AccountIdEndpointMode"}, "disabled"]}, {"fn" => "isValidHostLabel", "argv" => [{"ref" => "AccountId"}, false]}, {"fn" => "isValidHostLabel", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "arn_ssa_1"}, "accountId"]}, false]}, {"fn" => "isValidHostLabel", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "arn_ssa_1"}, "region"]}, false]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "arn_ssa_1"}, "service"]}, "kinesis"]}, {"fn" => "getAttr", "argv" => [{"ref" => "arn_ssa_1"}, "resourceId[0]"], "assign" => "arnType_ssa_4"}, {"fn" => "stringEquals", "argv" => [{"ref" => "arnType_ssa_4"}, ""]}, {"fn" => "stringEquals", "argv" => [{"ref" => "arnType_ssa_4"}, "channel"]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, {"fn" => "getAttr", "argv" => [{"ref" => "arn_ssa_1"}, "partition"]}]}, {"fn" => "aws.parseArn", "argv" => [{"ref" => "ResourceARN"}], "assign" => "arn_ssa_3"}, {"fn" => "isValidHostLabel", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "arn_ssa_3"}, "accountId"]}, false]}, {"fn" => "isValidHostLabel", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "arn_ssa_3"}, "region"]}, false]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "arn_ssa_3"}, "service"]}, "kinesis"]}, {"fn" => "getAttr", "argv" => [{"ref" => "arn_ssa_3"}, "resourceId[0]"], "assign" => "arnType_ssa_3"}, {"fn" => "stringEquals", "argv" => [{"ref" => "arnType_ssa_3"}, ""]}, {"fn" => "stringEquals", "argv" => [{"ref" => "arnType_ssa_3"}, "stream"]}, {"fn" => "stringEquals", "argv" => [{"ref" => "arnType_ssa_3"}, "channel"]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, {"fn" => "getAttr", "argv" => [{"ref" => "arn_ssa_3"}, "partition"]}]}, {"fn" => "stringEquals", "argv" => [{"ref" => "arnType_ssa_1"}, "stream"]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, {"fn" => "getAttr", "argv" => [{"ref" => "arn_ssa_4"}, "partition"]}]}, {"fn" => "stringEquals", "argv" => [{"ref" => "AccountIdEndpointMode"}, "required"]}, {"fn" => "isSet", "argv" => [{"ref" => "OperationType"}]}, {"fn" => "getAttr", "argv" => [{"ref" => "arn_ssa_3"}, "resourceId[1]"], "assign" => "resourceId_ssa_1"}, {"fn" => "isValidHostLabel", "argv" => [{"ref" => "resourceId_ssa_1"}, false]}, {"fn" => "getAttr", "argv" => [{"ref" => "arn_ssa_1"}, "resourceId[1]"], "assign" => "resourceId_ssa_2"}, {"fn" => "isValidHostLabel", "argv" => [{"ref" => "resourceId_ssa_2"}, false]}, {"fn" => "stringEquals", "argv" => [{"ref" => "OperationType"}, "data"]}, {"fn" => "stringEquals", "argv" => [{"fn" => "coalesce", "argv" => [{"fn" => "substring", "argv" => [{"ref" => "Endpoint"}, 7, 8, false]}, ""]}, "-"]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws-us-gov"]}, {"fn" => "stringEquals", "argv" => [{"fn" => "coalesce", "argv" => [{"fn" => "substring", "argv" => [{"ref" => "Endpoint"}, 12, 13, false]}, ""]}, "."]}], "results" => [{"conditions" => [], "endpoint" => {"url" => "https://{StreamIdPrefixValue}.{StreamIdSuffixValue}.{OperationType}-kinesis{HttpsCustomEndpointSuffixValue}-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled, but this partition does not support DualStack.", "type" => "error"}, {"conditions" => [], "error" => "FIPS is enabled, but this partition does not support FIPS.", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://{StreamIdPrefixValue}.{StreamIdSuffixValue}.{OperationType}-kinesis{HttpsCustomEndpointSuffixValue}-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://{StreamIdPrefixValue}.{StreamIdSuffixValue}.{OperationType}-kinesis{HttpsCustomEndpointSuffixValue}.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://{StreamIdPrefixValue}.{StreamIdSuffixValue}.{OperationType}-kinesis{HttpsCustomEndpointSuffixValue}.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://{StreamIdPrefixValue}.{StreamIdSuffixValue}.{OperationType}-kinesis{PlainCustomEndpointSuffixValue}-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://{StreamIdPrefixValue}.{StreamIdSuffixValue}.{OperationType}-kinesis{PlainCustomEndpointSuffixValue}-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://{StreamIdPrefixValue}.{StreamIdSuffixValue}.{OperationType}-kinesis{PlainCustomEndpointSuffixValue}.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://{StreamIdPrefixValue}.{StreamIdSuffixValue}.{OperationType}-kinesis{PlainCustomEndpointSuffixValue}.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://{StreamIdPrefixValue}.{StreamIdSuffixValue}.{OperationType}-kinesis-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://{StreamIdPrefixValue}.{StreamIdSuffixValue}.{OperationType}-kinesis-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://{StreamIdPrefixValue}.{StreamIdSuffixValue}.{OperationType}-kinesis.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://{StreamIdPrefixValue}.{StreamIdSuffixValue}.{OperationType}-kinesis.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Operation Type is not set. Please contact service team for resolution.", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://{arn_ssa_4#accountId}.{OperationType}-kinesis-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://{arn_ssa_4#accountId}.{OperationType}-kinesis-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://{arn_ssa_4#accountId}.{OperationType}-kinesis.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://{arn_ssa_4#accountId}.{OperationType}-kinesis.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Partition: {arn_ssa_4#partition} from ARN doesn't match with partition name: {PartitionResult#name}.", "type" => "error"}, {"conditions" => [], "error" => "Invalid ARN: Kinesis ARNs don't support `{arnType_ssa_1}` arn types.", "type" => "error"}, {"conditions" => [], "error" => "Invalid ARN: No ARN type specified", "type" => "error"}, {"conditions" => [], "error" => "Invalid ARN: The ARN was not for the Kinesis service, found: {arn_ssa_4#service}.", "type" => "error"}, {"conditions" => [], "error" => "Invalid ARN: Invalid region.", "type" => "error"}, {"conditions" => [], "error" => "Invalid ARN: Invalid account id.", "type" => "error"}, {"conditions" => [], "error" => "Invalid ARN: Failed to parse ARN.", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://{arn_ssa_2#accountId}.{OperationType}-kinesis-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://{arn_ssa_2#accountId}.{OperationType}-kinesis-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://{arn_ssa_2#accountId}.{OperationType}-kinesis.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://{arn_ssa_2#accountId}.{OperationType}-kinesis.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Partition: {arn_ssa_2#partition} from ARN doesn't match with partition name: {PartitionResult#name}.", "type" => "error"}, {"conditions" => [], "error" => "Invalid ARN: Kinesis ARNs don't support `{arnType_ssa_2}` arn types.", "type" => "error"}, {"conditions" => [], "error" => "Invalid ARN: The ARN was not for the Kinesis service, found: {arn_ssa_2#service}.", "type" => "error"}, {"conditions" => [], "error" => "Invalid ARN: Unsupported resource type `{arnType_ssa_3}`. Expected: stream or channel", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://{arn_ssa_3#accountId}.{OperationType}-kinesis-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://{arn_ssa_3#accountId}.{OperationType}-kinesis-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://{arn_ssa_3#accountId}.{OperationType}-kinesis.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://{arn_ssa_3#accountId}.{OperationType}-kinesis.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://{resourceId_ssa_1}.{OperationType}-kinesis-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://{resourceId_ssa_1}.{OperationType}-kinesis-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://{resourceId_ssa_1}.{OperationType}-kinesis.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://{resourceId_ssa_1}.{OperationType}-kinesis.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid ARN: Invalid channel id.", "type" => "error"}, {"conditions" => [], "error" => "Invalid ARN: Missing channel id.", "type" => "error"}, {"conditions" => [], "error" => "Partition: {arn_ssa_3#partition} from ARN doesn't match with partition name: {PartitionResult#name}.", "type" => "error"}, {"conditions" => [], "error" => "Invalid ARN: The ARN was not for the Kinesis service, found: {arn_ssa_3#service}.", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://{resourceId_ssa_2}.{OperationType}-kinesis-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://{resourceId_ssa_2}.{OperationType}-kinesis-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://{resourceId_ssa_2}.{OperationType}-kinesis.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://{resourceId_ssa_2}.{OperationType}-kinesis.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "ChannelARN does not support the `data` operation type.", "type" => "error"}, {"conditions" => [], "error" => "Partition: {arn_ssa_1#partition} from ARN doesn't match with partition name: {PartitionResult#name}.", "type" => "error"}, {"conditions" => [], "error" => "Invalid ARN: ChannelARN only supports `channel` arn types, found: `{arnType_ssa_4}`.", "type" => "error"}, {"conditions" => [], "error" => "Invalid ARN: The ARN was not for the Kinesis service, found: {arn_ssa_1#service}.", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://{AccountId}.{OperationType}-kinesis-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {"metricValues" => ["O"]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://{AccountId}.{OperationType}-kinesis-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {"metricValues" => ["O"]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://{AccountId}.{OperationType}-kinesis.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {"metricValues" => ["O"]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://{AccountId}.{OperationType}-kinesis.{Region}.{PartitionResult#dnsSuffix}", "properties" => {"metricValues" => ["O"]}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid account id.", "type" => "error"}, {"conditions" => [], "error" => "AccountIdEndpointMode is required but no AccountID was provided or able to be loaded", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this partition", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://kinesis-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://kinesis.{Region}.amazonaws.com", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://kinesis-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://kinesis.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://kinesis.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 155, "nodes" => "/////wAAAAH/////AAAAAAAAAAMAAAAEAAAAAQAAAAUAAAAEAAAACQAAAJoF9eFJAAAAAgAAAI8AAAAGAAAAAwAAAI8AAAAHAAAABAAAAAgAAAAMAAAABQAAAAkAAAAMAAAABgAAAAoAAAAMAAAABwAAAAsAAAAMAAAACAAAAG0AAAAMAAAACQAAAJoAAAANAAAACgAAAF0AAAAOAAAACwAAAE0AAAAPAAAAHgAAADEAAAAQAAAAHwAAAB4AAAARAAAAIAAAABIAAACSAAAAIQAAABMAAAAdAAAAIwAAAB0AAAAUAAAAJAAAABUF9eE9AAAAOAAAABYF9eERAAAAPwAAABkAAAAXAAAAQAAAABgF9eE8AAAAQgX14TsF9eEHAAAAQAAAABsAAAAaAAAAQQX14ToF9eEFAAAAQQAAABwF9eEDAAAAQgX14TkF9eECAAAANwX14T4AAACSAAAAIgAAAB8F9eEcAAAAJQAAACAF9eEbAAAAJgAAACEF9eEaAAAAJwAAACIF9eE4AAAAKAAAACMF9eEYAAAAKQX14RgAAAAkAAAAKgAAACUF9eE3AAAAKwAAACYF9eE2AAAAOAAAACcF9eERAAAAOwAAACgF9eEuAAAAPAAAACkF9eEtAAAAPQX14TUAAAAqAAAAPwAAAC0AAAArAAAAQAAAACwF9eE0AAAAQgX14TMF9eEHAAAAQAAAAC8AAAAuAAAAQQX14TIF9eEFAAAAQQAAADAF9eEDAAAAQgX14TEF9eECAAAALAAAADIF9eEcAAAALQAAADMF9eEbAAAALgAAADQF9eEaAAAALwAAADUF9eEwAAAAMAAAADYF9eEYAAAAMQX14RgAAAA3AAAAMgAAAEQAAAA4AAAAMwAAADkF9eEkAAAANAAAADoF9eEvAAAAOAAAADsF9eERAAAAOQAAADwF9eEuAAAAOgAAAD0F9eEtAAAAPwAAAEAAAAA+AAAAQAAAAD8F9eEsAAAAQgX14SsF9eEHAAAAQAAAAEIAAABBAAAAQQX14SoF9eEFAAAAQQAAAEMF9eEDAAAAQgX14SkF9eECAAAANAAAAEUF9eEvAAAAOAAAAEYF9eERAAAAPwAAAEkAAABHAAAAQAAAAEgF9eEoAAAAQgX14ScF9eEHAAAAQAAAAEsAAABKAAAAQQX14SYF9eEFAAAAQQAAAEwF9eEDAAAAQgX14SUF9eECAAAADAAAAE4F9eEcAAAAEQAAAE8F9eEbAAAAEgAAAFAF9eEaAAAAEwAAAFEF9eEjAAAAFAAAAFIF9eEYAAAAFQX14RgAAABTAAAAGAAAAFQF9eEiAAAAGgAAAFUF9eEhAAAAOAAAAFYF9eERAAAAPwAAAFkAAABXAAAAQAAAAFgF9eEgAAAAQgX14R8F9eEHAAAAQAAAAFsAAABaAAAAQQX14R4F9eEFAAAAQQAAAFwF9eEDAAAAQgX14R0F9eECAAAAFgAAAF4F9eEcAAAAFwAAAF8F9eEbAAAAGQAAAGAF9eEaAAAAGwAAAGEF9eEZAAAAHAAAAGIF9eEYAAAAHQX14RgAAABjAAAANQAAAGQF9eEXAAAANgAAAGUF9eEWAAAAOAAAAGYF9eERAAAAPwAAAGkAAABnAAAAQAAAAGgF9eEVAAAAQgX14RQF9eEHAAAAQAAAAGsAAABqAAAAQQX14RMF9eEFAAAAQQAAAGwF9eEDAAAAQgX14RIF9eECAAAACQAAAG4AAAByAAAADQAAAG8AAABxAAAADgAAAHAAAABxAAAADwAAAIcAAABxAAAAEAAAAHMAAAByAAAAOAAAAHUF9eERAAAAOAAAAHQF9eERAAAAPgAAAHwAAAB1AAAAPwAAAHgAAAB2AAAAQAAAAHcF9eEQAAAAQgX14Q8F9eEHAAAAQAAAAHoAAAB5AAAAQQX14Q4F9eEFAAAAQQAAAHsF9eEDAAAAQgX14Q0F9eECAAAAPwAAAIEAAAB9AAAAQAAAAH8AAAB+AAAARAX14QwF9eEQAAAAQgAAAIAF9eEHAAAARAX14QsF9eEPAAAAQAAAAIQAAACCAAAAQQAAAIMF9eEFAAAARAX14QoF9eEOAAAAQQAAAIUF9eEDAAAAQgAAAIYF9eECAAAARAX14QkF9eENAAAAOAAAAIgF9eERAAAAPwAAAIsAAACJAAAAQAAAAIoF9eEIAAAAQgX14QYF9eEHAAAAQAAAAI0AAACMAAAAQQX14QQF9eEFAAAAQQAAAI4F9eEDAAAAQgX14QEF9eECAAAACQAAAJoAAACQAAAAIAAAAJEAAACSAAAANwX14T8AAACSAAAAPwAAAJUAAACTAAAAQAAAAJQF9eFIAAAAQgX14UcF9eEHAAAAQAAAAJgAAACWAAAAQQAAAJcF9eEFAAAAQwX14UUF9eFGAAAAQQAAAJkF9eFEAAAAQgX14UMF9eFEAAAAPwX14UAAAACbAAAAQAX14UEF9eFC"}}
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
      service.add_operation(:create_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesis#CreateChannel"
        operation.name = "CreateChannel"
        operation.input = CreateChannelInput
        operation.output = CreateChannelOutput
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
        operation.errors << ValidationException
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
        operation.errors << ValidationException
        operation.traits = {"smithy.rules#staticContextParams" => {"OperationType" => {"value" => "control"}}}
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
      service.add_operation(:delete_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesis#DeleteChannel"
        operation.name = "DeleteChannel"
        operation.input = DeleteChannelInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InvalidArgumentException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
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
      service.add_operation(:describe_account_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesis#DescribeAccountSettings"
        operation.name = "DescribeAccountSettings"
        operation.input = DescribeAccountSettingsInput
        operation.output = DescribeAccountSettingsOutput
        operation.errors << LimitExceededException
        operation.traits = {"smithy.rules#staticContextParams" => {"OperationType" => {"value" => "control"}}}
      end)
      service.add_operation(:describe_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesis#DescribeChannel"
        operation.name = "DescribeChannel"
        operation.input = DescribeChannelInput
        operation.output = DescribeChannelOutput
        operation.errors << AccessDeniedException
        operation.errors << InvalidArgumentException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}, "smithy.rules#staticContextParams" => {"OperationType" => {"value" => "control"}}}
      end)
      service.add_operation(:describe_limits, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesis#DescribeLimits"
        operation.name = "DescribeLimits"
        operation.input = DescribeLimitsInput
        operation.output = DescribeLimitsOutput
        operation.errors << LimitExceededException
        operation.traits = {"smithy.rules#staticContextParams" => {"OperationType" => {"value" => "control"}}}
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
        operation.errors << DryRunOperationException
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
        operation.errors << DryRunOperationException
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
      service.add_operation(:list_channels, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesis#ListChannels"
        operation.name = "ListChannels"
        operation.input = ListChannelsInput
        operation.output = ListChannelsOutput
        operation.errors << AccessDeniedException
        operation.errors << ExpiredNextTokenException
        operation.errors << InvalidArgumentException
        operation.errors << LimitExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#readonly" => {}, "smithy.rules#staticContextParams" => {"OperationType" => {"value" => "control"}}}
        operation[:paginator] = Paginators::ListChannels.new
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
        operation.traits = {"smithy.rules#staticContextParams" => {"OperationType" => {"value" => "control"}}, "smithy.test#smokeTests" => [{"id" => "ListStreamsSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
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
        operation.errors << DryRunOperationException
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
        operation.errors << DryRunOperationException
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
        operation.errors << DryRunOperationException
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
      service.add_operation(:update_account_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesis#UpdateAccountSettings"
        operation.name = "UpdateAccountSettings"
        operation.input = UpdateAccountSettingsInput
        operation.output = UpdateAccountSettingsOutput
        operation.errors << InvalidArgumentException
        operation.errors << LimitExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.rules#staticContextParams" => {"OperationType" => {"value" => "control"}}}
      end)
      service.add_operation(:update_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesis#UpdateChannel"
        operation.name = "UpdateChannel"
        operation.input = UpdateChannelInput
        operation.output = UpdateChannelOutput
        operation.errors << AccessDeniedException
        operation.errors << InvalidArgumentException
        operation.errors << LimitExceededException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.rules#staticContextParams" => {"OperationType" => {"value" => "control"}}}
      end)
      service.add_operation(:update_max_record_size, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesis#UpdateMaxRecordSize"
        operation.name = "UpdateMaxRecordSize"
        operation.input = UpdateMaxRecordSizeInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InvalidArgumentException
        operation.errors << LimitExceededException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
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
        operation.errors << ValidationException
        operation.traits = {"smithy.rules#staticContextParams" => {"OperationType" => {"value" => "control"}}}
      end)
      service.add_operation(:update_stream_record_distribution_strategy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesis#UpdateStreamRecordDistributionStrategy"
        operation.name = "UpdateStreamRecordDistributionStrategy"
        operation.input = UpdateStreamRecordDistributionStrategyInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InvalidArgumentException
        operation.errors << LimitExceededException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.rules#staticContextParams" => {"OperationType" => {"value" => "control"}}}
      end)
      service.add_operation(:update_stream_warm_throughput, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.kinesis#UpdateStreamWarmThroughput"
        operation.name = "UpdateStreamWarmThroughput"
        operation.input = UpdateStreamWarmThroughputInput
        operation.output = UpdateStreamWarmThroughputOutput
        operation.errors << AccessDeniedException
        operation.errors << InvalidArgumentException
        operation.errors << LimitExceededException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
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
