# frozen_string_literal: true

# This is generated code!

module Aws::DynamoDBStreams
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AttributeMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.dynamodbstreams#AttributeMap", name: "AttributeMap")
    AttributeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodbstreams#AttributeName", name: "AttributeName", traits: {"smithy.api#length" => {"min" => 0, "max" => 65535}})
    AttributeValue = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.dynamodbstreams#AttributeValue", name: "AttributeValue")
    BinaryAttributeValue = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.dynamodbstreams#BinaryAttributeValue", name: "BinaryAttributeValue")
    BinarySetAttributeValue = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodbstreams#BinarySetAttributeValue", name: "BinarySetAttributeValue")
    BooleanAttributeValue = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.dynamodbstreams#BooleanAttributeValue", name: "BooleanAttributeValue")
    Date = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.dynamodbstreams#Date", name: "Date")
    DescribeStreamInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodbstreams#DescribeStreamInput", name: "DescribeStreamInput")
    DescribeStreamOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodbstreams#DescribeStreamOutput", name: "DescribeStreamOutput")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodbstreams#ErrorMessage", name: "ErrorMessage")
    ExpiredIteratorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodbstreams#ExpiredIteratorException", name: "ExpiredIteratorException", traits: {"smithy.api#error" => "client"})
    GetRecordsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodbstreams#GetRecordsInput", name: "GetRecordsInput")
    GetRecordsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodbstreams#GetRecordsOutput", name: "GetRecordsOutput")
    GetShardIteratorInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodbstreams#GetShardIteratorInput", name: "GetShardIteratorInput")
    GetShardIteratorOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodbstreams#GetShardIteratorOutput", name: "GetShardIteratorOutput")
    Identity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodbstreams#Identity", name: "Identity")
    InternalServerError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodbstreams#InternalServerError", name: "InternalServerError", traits: {"smithy.api#error" => "server"})
    KeySchema = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodbstreams#KeySchema", name: "KeySchema", traits: {"smithy.api#length" => {"min" => 1}})
    KeySchemaAttributeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodbstreams#KeySchemaAttributeName", name: "KeySchemaAttributeName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    KeySchemaElement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodbstreams#KeySchemaElement", name: "KeySchemaElement")
    KeyType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dynamodbstreams#KeyType", name: "KeyType")
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodbstreams#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client"})
    ListAttributeValue = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodbstreams#ListAttributeValue", name: "ListAttributeValue")
    ListStreamsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodbstreams#ListStreamsInput", name: "ListStreamsInput")
    ListStreamsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodbstreams#ListStreamsOutput", name: "ListStreamsOutput")
    MapAttributeValue = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.dynamodbstreams#MapAttributeValue", name: "MapAttributeValue")
    NullAttributeValue = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.dynamodbstreams#NullAttributeValue", name: "NullAttributeValue")
    NumberAttributeValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodbstreams#NumberAttributeValue", name: "NumberAttributeValue")
    NumberSetAttributeValue = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodbstreams#NumberSetAttributeValue", name: "NumberSetAttributeValue")
    OperationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dynamodbstreams#OperationType", name: "OperationType")
    PositiveIntegerObject = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.dynamodbstreams#PositiveIntegerObject", name: "PositiveIntegerObject", traits: {"smithy.api#range" => {"min" => 1}})
    PositiveLongObject = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.dynamodbstreams#PositiveLongObject", name: "PositiveLongObject", traits: {"smithy.api#range" => {"min" => 1}})
    Record = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodbstreams#Record", name: "Record")
    RecordList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodbstreams#RecordList", name: "RecordList")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodbstreams#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client"})
    SequenceNumber = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodbstreams#SequenceNumber", name: "SequenceNumber", traits: {"smithy.api#length" => {"min" => 21, "max" => 40}})
    SequenceNumberRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodbstreams#SequenceNumberRange", name: "SequenceNumberRange")
    Shard = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodbstreams#Shard", name: "Shard")
    ShardDescriptionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodbstreams#ShardDescriptionList", name: "ShardDescriptionList")
    ShardFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodbstreams#ShardFilter", name: "ShardFilter")
    ShardFilterType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dynamodbstreams#ShardFilterType", name: "ShardFilterType")
    ShardId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodbstreams#ShardId", name: "ShardId", traits: {"smithy.api#length" => {"min" => 28, "max" => 65}})
    ShardIterator = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodbstreams#ShardIterator", name: "ShardIterator", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    ShardIteratorType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dynamodbstreams#ShardIteratorType", name: "ShardIteratorType")
    Stream = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodbstreams#Stream", name: "Stream")
    StreamArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodbstreams#StreamArn", name: "StreamArn", traits: {"smithy.api#length" => {"min" => 37, "max" => 1024}})
    StreamDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodbstreams#StreamDescription", name: "StreamDescription")
    StreamList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodbstreams#StreamList", name: "StreamList")
    StreamRecord = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodbstreams#StreamRecord", name: "StreamRecord")
    StreamStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dynamodbstreams#StreamStatus", name: "StreamStatus")
    StreamViewType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.dynamodbstreams#StreamViewType", name: "StreamViewType")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodbstreams#String", name: "String")
    StringAttributeValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodbstreams#StringAttributeValue", name: "StringAttributeValue")
    StringSetAttributeValue = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dynamodbstreams#StringSetAttributeValue", name: "StringSetAttributeValue")
    TableName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dynamodbstreams#TableName", name: "TableName", traits: {"smithy.api#length" => {"min" => 3, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.dynamodbstreams#Timestamp", name: "Timestamp")
    TrimmedDataAccessException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dynamodbstreams#TrimmedDataAccessException", name: "TrimmedDataAccessException", traits: {"smithy.api#error" => "client"})

    AttributeMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeName, name: "key"))
    AttributeMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValue, name: "value"))
    AttributeValue.add_member(:s, Types::AttributeValue::S, ::Smithy::Schema::Shapes::MemberShape.new(target: StringAttributeValue, name: "S"))
    AttributeValue.add_member(:n, Types::AttributeValue::N, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberAttributeValue, name: "N"))
    AttributeValue.add_member(:b, Types::AttributeValue::B, ::Smithy::Schema::Shapes::MemberShape.new(target: BinaryAttributeValue, name: "B"))
    AttributeValue.add_member(:ss, Types::AttributeValue::SS, ::Smithy::Schema::Shapes::MemberShape.new(target: StringSetAttributeValue, name: "SS"))
    AttributeValue.add_member(:ns, Types::AttributeValue::NS, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberSetAttributeValue, name: "NS"))
    AttributeValue.add_member(:bs, Types::AttributeValue::BS, ::Smithy::Schema::Shapes::MemberShape.new(target: BinarySetAttributeValue, name: "BS"))
    AttributeValue.add_member(:m, Types::AttributeValue::M, ::Smithy::Schema::Shapes::MemberShape.new(target: MapAttributeValue, name: "M"))
    AttributeValue.add_member(:l, Types::AttributeValue::L, ::Smithy::Schema::Shapes::MemberShape.new(target: ListAttributeValue, name: "L"))
    AttributeValue.add_member(:null, Types::AttributeValue::NULL, ::Smithy::Schema::Shapes::MemberShape.new(target: NullAttributeValue, name: "NULL"))
    AttributeValue.add_member(:bool, Types::AttributeValue::BOOL, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanAttributeValue, name: "BOOL"))
    AttributeValue.add_member(:unknown, Types::AttributeValue::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    AttributeValue.type = Types::AttributeValue
    BinarySetAttributeValue.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BinaryAttributeValue, name: "member"))
    DescribeStreamInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamArn, name: "StreamArn", traits: {"smithy.api#required" => {}}))
    DescribeStreamInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveIntegerObject, name: "Limit"))
    DescribeStreamInput.add_member(:exclusive_start_shard_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardId, name: "ExclusiveStartShardId"))
    DescribeStreamInput.add_member(:shard_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardFilter, name: "ShardFilter"))
    DescribeStreamInput.type = Types::DescribeStreamInput
    DescribeStreamOutput.add_member(:stream_description, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamDescription, name: "StreamDescription"))
    DescribeStreamOutput.type = Types::DescribeStreamOutput
    ExpiredIteratorException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ExpiredIteratorException.type = Types::ExpiredIteratorException
    GetRecordsInput.add_member(:shard_iterator, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardIterator, name: "ShardIterator", traits: {"smithy.api#required" => {}}))
    GetRecordsInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveIntegerObject, name: "Limit"))
    GetRecordsInput.type = Types::GetRecordsInput
    GetRecordsOutput.add_member(:records, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordList, name: "Records"))
    GetRecordsOutput.add_member(:next_shard_iterator, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardIterator, name: "NextShardIterator"))
    GetRecordsOutput.type = Types::GetRecordsOutput
    GetShardIteratorInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamArn, name: "StreamArn", traits: {"smithy.api#required" => {}}))
    GetShardIteratorInput.add_member(:shard_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardId, name: "ShardId", traits: {"smithy.api#required" => {}}))
    GetShardIteratorInput.add_member(:shard_iterator_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardIteratorType, name: "ShardIteratorType", traits: {"smithy.api#required" => {}}))
    GetShardIteratorInput.add_member(:sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceNumber, name: "SequenceNumber"))
    GetShardIteratorInput.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "Timestamp"))
    GetShardIteratorInput.type = Types::GetShardIteratorInput
    GetShardIteratorOutput.add_member(:shard_iterator, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardIterator, name: "ShardIterator"))
    GetShardIteratorOutput.type = Types::GetShardIteratorOutput
    Identity.add_member(:principal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PrincipalId"))
    Identity.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    Identity.type = Types::Identity
    InternalServerError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InternalServerError.type = Types::InternalServerError
    KeySchema.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: KeySchemaElement, name: "member"))
    KeySchemaElement.add_member(:attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: KeySchemaAttributeName, name: "AttributeName", traits: {"smithy.api#required" => {}}))
    KeySchemaElement.add_member(:key_type, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyType, name: "KeyType", traits: {"smithy.api#required" => {}}))
    KeySchemaElement.type = Types::KeySchemaElement
    KeyType.add_member(:hash, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HASH", traits: {"smithy.api#enumValue" => "HASH"}))
    KeyType.add_member(:range, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RANGE", traits: {"smithy.api#enumValue" => "RANGE"}))
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    LimitExceededException.type = Types::LimitExceededException
    ListAttributeValue.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValue, name: "member"))
    ListStreamsInput.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "TableName"))
    ListStreamsInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveIntegerObject, name: "Limit"))
    ListStreamsInput.add_member(:exclusive_start_stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamArn, name: "ExclusiveStartStreamArn"))
    ListStreamsInput.type = Types::ListStreamsInput
    ListStreamsOutput.add_member(:streams, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamList, name: "Streams"))
    ListStreamsOutput.add_member(:last_evaluated_stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamArn, name: "LastEvaluatedStreamArn"))
    ListStreamsOutput.type = Types::ListStreamsOutput
    MapAttributeValue.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeName, name: "key"))
    MapAttributeValue.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValue, name: "value"))
    NumberSetAttributeValue.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberAttributeValue, name: "member"))
    OperationType.add_member(:insert, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSERT", traits: {"smithy.api#enumValue" => "INSERT"}))
    OperationType.add_member(:modify, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MODIFY", traits: {"smithy.api#enumValue" => "MODIFY"}))
    OperationType.add_member(:remove, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REMOVE", traits: {"smithy.api#enumValue" => "REMOVE"}))
    Record.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "eventID"))
    Record.add_member(:event_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationType, name: "eventName"))
    Record.add_member(:event_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "eventVersion"))
    Record.add_member(:event_source, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "eventSource"))
    Record.add_member(:aws_region, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "awsRegion"))
    Record.add_member(:dynamodb, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamRecord, name: "dynamodb"))
    Record.add_member(:user_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, name: "userIdentity"))
    Record.type = Types::Record
    RecordList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Record, name: "member"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    SequenceNumberRange.add_member(:starting_sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceNumber, name: "StartingSequenceNumber"))
    SequenceNumberRange.add_member(:ending_sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceNumber, name: "EndingSequenceNumber"))
    SequenceNumberRange.type = Types::SequenceNumberRange
    Shard.add_member(:shard_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardId, name: "ShardId"))
    Shard.add_member(:sequence_number_range, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceNumberRange, name: "SequenceNumberRange"))
    Shard.add_member(:parent_shard_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardId, name: "ParentShardId"))
    Shard.type = Types::Shard
    ShardDescriptionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Shard, name: "member"))
    ShardFilter.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardFilterType, name: "Type"))
    ShardFilter.add_member(:shard_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardId, name: "ShardId"))
    ShardFilter.type = Types::ShardFilter
    ShardFilterType.add_member(:child_shards, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHILD_SHARDS", traits: {"smithy.api#enumValue" => "CHILD_SHARDS"}))
    ShardIteratorType.add_member(:trim_horizon, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRIM_HORIZON", traits: {"smithy.api#enumValue" => "TRIM_HORIZON"}))
    ShardIteratorType.add_member(:latest, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LATEST", traits: {"smithy.api#enumValue" => "LATEST"}))
    ShardIteratorType.add_member(:at_sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AT_SEQUENCE_NUMBER", traits: {"smithy.api#enumValue" => "AT_SEQUENCE_NUMBER"}))
    ShardIteratorType.add_member(:after_sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AFTER_SEQUENCE_NUMBER", traits: {"smithy.api#enumValue" => "AFTER_SEQUENCE_NUMBER"}))
    ShardIteratorType.add_member(:at_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AT_TIMESTAMP", traits: {"smithy.api#enumValue" => "AT_TIMESTAMP"}))
    Stream.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamArn, name: "StreamArn"))
    Stream.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "TableName"))
    Stream.add_member(:stream_label, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StreamLabel"))
    Stream.type = Types::Stream
    StreamDescription.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamArn, name: "StreamArn"))
    StreamDescription.add_member(:stream_label, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StreamLabel"))
    StreamDescription.add_member(:stream_status, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamStatus, name: "StreamStatus"))
    StreamDescription.add_member(:stream_view_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamViewType, name: "StreamViewType"))
    StreamDescription.add_member(:creation_request_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "CreationRequestDateTime"))
    StreamDescription.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "TableName"))
    StreamDescription.add_member(:key_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: KeySchema, name: "KeySchema"))
    StreamDescription.add_member(:shards, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardDescriptionList, name: "Shards"))
    StreamDescription.add_member(:last_evaluated_shard_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardId, name: "LastEvaluatedShardId"))
    StreamDescription.type = Types::StreamDescription
    StreamList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Stream, name: "member"))
    StreamRecord.add_member(:approximate_creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "ApproximateCreationDateTime"))
    StreamRecord.add_member(:keys, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeMap, name: "Keys"))
    StreamRecord.add_member(:new_image, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeMap, name: "NewImage"))
    StreamRecord.add_member(:old_image, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeMap, name: "OldImage"))
    StreamRecord.add_member(:sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceNumber, name: "SequenceNumber"))
    StreamRecord.add_member(:size_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveLongObject, name: "SizeBytes"))
    StreamRecord.add_member(:stream_view_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamViewType, name: "StreamViewType"))
    StreamRecord.type = Types::StreamRecord
    StreamStatus.add_member(:enabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLING", traits: {"smithy.api#enumValue" => "ENABLING"}))
    StreamStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    StreamStatus.add_member(:disabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLING", traits: {"smithy.api#enumValue" => "DISABLING"}))
    StreamStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    StreamViewType.add_member(:new_image, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NEW_IMAGE", traits: {"smithy.api#enumValue" => "NEW_IMAGE"}))
    StreamViewType.add_member(:old_image, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OLD_IMAGE", traits: {"smithy.api#enumValue" => "OLD_IMAGE"}))
    StreamViewType.add_member(:new_and_old_images, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NEW_AND_OLD_IMAGES", traits: {"smithy.api#enumValue" => "NEW_AND_OLD_IMAGES"}))
    StreamViewType.add_member(:keys_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KEYS_ONLY", traits: {"smithy.api#enumValue" => "KEYS_ONLY"}))
    StringSetAttributeValue.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StringAttributeValue, name: "member"))
    TrimmedDataAccessException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    TrimmedDataAccessException.type = Types::TrimmedDataAccessException

    DynamoDBStreams20120810 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.dynamodbstreams#DynamoDBStreams_20120810"
      service.name = "DynamoDBStreams20120810"
      service.version = "2012-08-10"
      service.traits = {"aws.api#service" => {"sdkId" => "DynamoDB Streams", "arnNamespace" => "dynamodb", "cloudFormationName" => "DynamoDBStreams", "cloudTrailEventSource" => "dynamodbstreams.amazonaws.com", "docId" => "streams-dynamodb-2012-08-10", "endpointPrefix" => "streams.dynamodb"}, "aws.auth#sigv4" => {"name" => "dynamodb"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "Amazon DynamoDB Streams", "smithy.api#xmlNamespace" => {"uri" => "http://dynamodb.amazonaws.com/doc/2012-08-10/"}, "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}, "Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws-us-gov"]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws"]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws-cn"]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://streams-dynamodb.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://streams-dynamodb-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://streams.dynamodb.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://streams.dynamodb-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://streams.dynamodb-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://streams.dynamodb.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 19, "nodes" => "/////wAAAAH/////AAAAAAAAABEAAAADAAAAAQAAAAQF9eENAAAAAgAAAAUF9eENAAAAAwAAAAkAAAAGAAAABAX14QYAAAAHAAAACAAAAAgF9eEGAAAACQX14QkF9eEKAAAABAAAABAAAAAKAAAABQAAABAAAAALAAAABgAAABAAAAAMAAAABwAAAA4AAAANAAAACAX14QgF9eEMAAAACAAAAA8F9eELAAAACQX14QcF9eEIAAAACAX14QUF9eEEAAAAAwAAABMAAAASAAAACAX14QEF9eEDAAAACAX14QEF9eEC"}}
      service.add_operation(:describe_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodbstreams#DescribeStream"
        operation.name = "DescribeStream"
        operation.input = DescribeStreamInput
        operation.output = DescribeStreamOutput
        operation.errors << InternalServerError
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:get_records, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodbstreams#GetRecords"
        operation.name = "GetRecords"
        operation.input = GetRecordsInput
        operation.output = GetRecordsOutput
        operation.errors << ExpiredIteratorException
        operation.errors << InternalServerError
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << TrimmedDataAccessException
        operation.traits = {}
      end)
      service.add_operation(:get_shard_iterator, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodbstreams#GetShardIterator"
        operation.name = "GetShardIterator"
        operation.input = GetShardIteratorInput
        operation.output = GetShardIteratorOutput
        operation.errors << InternalServerError
        operation.errors << ResourceNotFoundException
        operation.errors << TrimmedDataAccessException
        operation.traits = {}
      end)
      service.add_operation(:list_streams, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodbstreams#ListStreams"
        operation.name = "ListStreams"
        operation.input = ListStreamsInput
        operation.output = ListStreamsOutput
        operation.errors << InternalServerError
        operation.errors << ResourceNotFoundException
        operation.traits = {}
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
