# frozen_string_literal: true

# This is generated code!

module Aws::DynamoDBStreams
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AttributeMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.dynamodbstreams#AttributeMap', name: 'AttributeMap')
    AttributeName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.dynamodbstreams#AttributeName', name: 'AttributeName', traits: {"smithy.api#length" => {"min" => 0, "max" => 65535}})
    AttributeValue = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.dynamodbstreams#AttributeValue', name: 'AttributeValue')
    BinaryAttributeValue = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.dynamodbstreams#BinaryAttributeValue', name: 'BinaryAttributeValue')
    BinarySetAttributeValue = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.dynamodbstreams#BinarySetAttributeValue', name: 'BinarySetAttributeValue')
    BooleanAttributeValue = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.dynamodbstreams#BooleanAttributeValue', name: 'BooleanAttributeValue')
    Date = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.dynamodbstreams#Date', name: 'Date')
    DescribeStreamInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dynamodbstreams#DescribeStreamInput', name: 'DescribeStreamInput')
    DescribeStreamOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dynamodbstreams#DescribeStreamOutput', name: 'DescribeStreamOutput')
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.dynamodbstreams#ErrorMessage', name: 'ErrorMessage')
    ExpiredIteratorException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dynamodbstreams#ExpiredIteratorException', name: 'ExpiredIteratorException', traits: {"smithy.api#error" => "client"})
    GetRecordsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dynamodbstreams#GetRecordsInput', name: 'GetRecordsInput')
    GetRecordsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dynamodbstreams#GetRecordsOutput', name: 'GetRecordsOutput')
    GetShardIteratorInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dynamodbstreams#GetShardIteratorInput', name: 'GetShardIteratorInput')
    GetShardIteratorOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dynamodbstreams#GetShardIteratorOutput', name: 'GetShardIteratorOutput')
    Identity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dynamodbstreams#Identity', name: 'Identity')
    InternalServerError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dynamodbstreams#InternalServerError', name: 'InternalServerError', traits: {"smithy.api#error" => "server"})
    KeySchema = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.dynamodbstreams#KeySchema', name: 'KeySchema', traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    KeySchemaAttributeName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.dynamodbstreams#KeySchemaAttributeName', name: 'KeySchemaAttributeName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    KeySchemaElement = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dynamodbstreams#KeySchemaElement', name: 'KeySchemaElement')
    KeyType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.dynamodbstreams#KeyType', name: 'KeyType')
    LimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dynamodbstreams#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client"})
    ListAttributeValue = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.dynamodbstreams#ListAttributeValue', name: 'ListAttributeValue')
    ListStreamsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dynamodbstreams#ListStreamsInput', name: 'ListStreamsInput')
    ListStreamsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dynamodbstreams#ListStreamsOutput', name: 'ListStreamsOutput')
    MapAttributeValue = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.dynamodbstreams#MapAttributeValue', name: 'MapAttributeValue')
    NullAttributeValue = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.dynamodbstreams#NullAttributeValue', name: 'NullAttributeValue')
    NumberAttributeValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.dynamodbstreams#NumberAttributeValue', name: 'NumberAttributeValue')
    NumberSetAttributeValue = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.dynamodbstreams#NumberSetAttributeValue', name: 'NumberSetAttributeValue')
    OperationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.dynamodbstreams#OperationType', name: 'OperationType')
    PositiveIntegerObject = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.dynamodbstreams#PositiveIntegerObject', name: 'PositiveIntegerObject', traits: {"smithy.api#range" => {"min" => 1}})
    PositiveLongObject = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.dynamodbstreams#PositiveLongObject', name: 'PositiveLongObject', traits: {"smithy.api#range" => {"min" => 1}})
    Record = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dynamodbstreams#Record', name: 'Record')
    RecordList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.dynamodbstreams#RecordList', name: 'RecordList')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dynamodbstreams#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client"})
    SequenceNumber = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.dynamodbstreams#SequenceNumber', name: 'SequenceNumber', traits: {"smithy.api#length" => {"min" => 21, "max" => 40}})
    SequenceNumberRange = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dynamodbstreams#SequenceNumberRange', name: 'SequenceNumberRange')
    Shard = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dynamodbstreams#Shard', name: 'Shard')
    ShardDescriptionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.dynamodbstreams#ShardDescriptionList', name: 'ShardDescriptionList')
    ShardFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dynamodbstreams#ShardFilter', name: 'ShardFilter')
    ShardFilterType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.dynamodbstreams#ShardFilterType', name: 'ShardFilterType')
    ShardId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.dynamodbstreams#ShardId', name: 'ShardId', traits: {"smithy.api#length" => {"min" => 28, "max" => 65}})
    ShardIterator = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.dynamodbstreams#ShardIterator', name: 'ShardIterator', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    ShardIteratorType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.dynamodbstreams#ShardIteratorType', name: 'ShardIteratorType')
    Stream = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dynamodbstreams#Stream', name: 'Stream')
    StreamArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.dynamodbstreams#StreamArn', name: 'StreamArn', traits: {"smithy.api#length" => {"min" => 37, "max" => 1024}})
    StreamDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dynamodbstreams#StreamDescription', name: 'StreamDescription')
    StreamList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.dynamodbstreams#StreamList', name: 'StreamList')
    StreamRecord = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dynamodbstreams#StreamRecord', name: 'StreamRecord')
    StreamStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.dynamodbstreams#StreamStatus', name: 'StreamStatus')
    StreamViewType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.dynamodbstreams#StreamViewType', name: 'StreamViewType')
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.dynamodbstreams#String', name: 'String')
    StringAttributeValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.dynamodbstreams#StringAttributeValue', name: 'StringAttributeValue')
    StringSetAttributeValue = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.dynamodbstreams#StringSetAttributeValue', name: 'StringSetAttributeValue')
    TableName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.dynamodbstreams#TableName', name: 'TableName', traits: {"smithy.api#length" => {"min" => 3, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    TrimmedDataAccessException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dynamodbstreams#TrimmedDataAccessException', name: 'TrimmedDataAccessException', traits: {"smithy.api#error" => "client"})

    AttributeMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeName)
    AttributeMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValue)
    AttributeValue.add_member(:s, Types::AttributeValue::S, Smithy::Schema::Shapes::ShapeRef.new(shape: StringAttributeValue, location_name: 'S', traits: {"smithy.api#documentation" => "<p>An attribute of type  String. For example:</p>\n         <p>\n            <code>\"S\": \"Hello\"</code>\n         </p>"}))
    AttributeValue.add_member(:n, Types::AttributeValue::N, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberAttributeValue, location_name: 'N', traits: {"smithy.api#documentation" => "<p>An attribute of type Number. For example:</p>\n         <p>\n            <code>\"N\": \"123.45\"</code>\n         </p>\n         <p>Numbers are sent across the network to DynamoDB as strings, to maximize compatibility across languages and libraries. However, DynamoDB treats them as number type attributes for mathematical operations.</p>"}))
    AttributeValue.add_member(:b, Types::AttributeValue::B, Smithy::Schema::Shapes::ShapeRef.new(shape: BinaryAttributeValue, location_name: 'B', traits: {"smithy.api#documentation" => "<p>An attribute of type Binary.  For example:</p>\n         <p>\n            <code>\"B\": \"dGhpcyB0ZXh0IGlzIGJhc2U2NC1lbmNvZGVk\"</code>\n         </p>"}))
    AttributeValue.add_member(:ss, Types::AttributeValue::Ss, Smithy::Schema::Shapes::ShapeRef.new(shape: StringSetAttributeValue, location_name: 'SS', traits: {"smithy.api#documentation" => "<p>An attribute of type String Set.  For example:</p>\n         <p>\n            <code>\"SS\": [\"Giraffe\", \"Hippo\" ,\"Zebra\"]</code>\n         </p>"}))
    AttributeValue.add_member(:ns, Types::AttributeValue::Ns, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberSetAttributeValue, location_name: 'NS', traits: {"smithy.api#documentation" => "<p>An attribute of type Number Set.  For example:</p>\n         <p>\n            <code>\"NS\": [\"42.2\", \"-19\", \"7.5\", \"3.14\"]</code>\n         </p>\n         <p>Numbers are sent across the network to DynamoDB as strings, to maximize compatibility across languages and libraries. However, DynamoDB treats them as number type attributes for mathematical operations.</p>"}))
    AttributeValue.add_member(:bs, Types::AttributeValue::Bs, Smithy::Schema::Shapes::ShapeRef.new(shape: BinarySetAttributeValue, location_name: 'BS', traits: {"smithy.api#documentation" => "<p>An attribute of type Binary Set.  For example:</p>\n         <p>\n            <code>\"BS\": [\"U3Vubnk=\", \"UmFpbnk=\", \"U25vd3k=\"]</code>\n         </p>"}))
    AttributeValue.add_member(:m, Types::AttributeValue::M, Smithy::Schema::Shapes::ShapeRef.new(shape: MapAttributeValue, location_name: 'M', traits: {"smithy.api#documentation" => "<p>An attribute of type Map.  For example:</p>\n         <p>\n            <code>\"M\": {\"Name\": {\"S\": \"Joe\"}, \"Age\": {\"N\": \"35\"}}</code>\n         </p>"}))
    AttributeValue.add_member(:l, Types::AttributeValue::L, Smithy::Schema::Shapes::ShapeRef.new(shape: ListAttributeValue, location_name: 'L', traits: {"smithy.api#documentation" => "<p>An attribute of type List.  For example:</p>\n         <p>\n            <code>\"L\": [ {\"S\": \"Cookies\"} , {\"S\": \"Coffee\"}, {\"N\": \"3.14159\"}]</code>\n         </p>"}))
    AttributeValue.add_member(:null, Types::AttributeValue::Null, Smithy::Schema::Shapes::ShapeRef.new(shape: NullAttributeValue, location_name: 'NULL', traits: {"smithy.api#documentation" => "<p>An attribute of type Null.  For example:</p>\n         <p>\n            <code>\"NULL\": true</code>\n         </p>"}))
    AttributeValue.add_member(:bool, Types::AttributeValue::Bool, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanAttributeValue, location_name: 'BOOL', traits: {"smithy.api#documentation" => "<p>An attribute of type Boolean.  For example:</p>\n         <p>\n            <code>\"BOOL\": true</code>\n         </p>"}))
    AttributeValue.add_member(:unknown, Types::AttributeValue::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    AttributeValue.type = Types::AttributeValue
    BinarySetAttributeValue.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BinaryAttributeValue)
    DescribeStreamInput.add_member(:stream_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamArn, location_name: 'StreamArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the stream.</p>", "smithy.api#required" => {}}))
    DescribeStreamInput.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveIntegerObject, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>The maximum number of shard objects to return. The upper limit is 100.</p>"}))
    DescribeStreamInput.add_member(:exclusive_start_shard_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ShardId, location_name: 'ExclusiveStartShardId', traits: {"smithy.api#documentation" => "<p>The shard ID of the first item that this operation will evaluate. Use the value that was\n      returned for <code>LastEvaluatedShardId</code> in the previous operation. </p>"}))
    DescribeStreamInput.add_member(:shard_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: ShardFilter, location_name: 'ShardFilter', traits: {"smithy.api#documentation" => "<p>This optional field contains the filter definition for the\n            <code>DescribeStream</code> API.</p>"}))
    DescribeStreamInput.type = Types::DescribeStreamInput
    DescribeStreamOutput.add_member(:stream_description, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamDescription, location_name: 'StreamDescription', traits: {"smithy.api#documentation" => "<p>A complete description of the stream, including its creation date and time, the DynamoDB table associated with the stream, the shard IDs within the stream, and the beginning and ending sequence numbers of stream records within the shards.</p>"}))
    DescribeStreamOutput.type = Types::DescribeStreamOutput
    ExpiredIteratorException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The provided iterator exceeds the maximum age allowed.</p>"}))
    ExpiredIteratorException.type = Types::ExpiredIteratorException
    GetRecordsInput.add_member(:shard_iterator, Smithy::Schema::Shapes::ShapeRef.new(shape: ShardIterator, location_name: 'ShardIterator', traits: {"smithy.api#documentation" => "<p>A shard iterator that was retrieved from a previous GetShardIterator operation. This iterator can be used to access the stream records in this shard.</p>", "smithy.api#required" => {}}))
    GetRecordsInput.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveIntegerObject, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>The maximum number of records to return from the shard. The upper limit is 1000.</p>"}))
    GetRecordsInput.type = Types::GetRecordsInput
    GetRecordsOutput.add_member(:records, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordList, location_name: 'Records', traits: {"smithy.api#documentation" => "<p>The stream records from the shard, which were retrieved using the shard iterator.</p>"}))
    GetRecordsOutput.add_member(:next_shard_iterator, Smithy::Schema::Shapes::ShapeRef.new(shape: ShardIterator, location_name: 'NextShardIterator', traits: {"smithy.api#documentation" => "<p>The next position in the shard from which to start sequentially reading stream records. If\n      set to <code>null</code>, the shard has been closed and the requested iterator will not return\n      any more data.</p>"}))
    GetRecordsOutput.type = Types::GetRecordsOutput
    GetShardIteratorInput.add_member(:stream_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamArn, location_name: 'StreamArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the stream.</p>", "smithy.api#required" => {}}))
    GetShardIteratorInput.add_member(:shard_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ShardId, location_name: 'ShardId', traits: {"smithy.api#documentation" => "<p>The identifier of the shard. The iterator will be returned for this shard ID.</p>", "smithy.api#required" => {}}))
    GetShardIteratorInput.add_member(:shard_iterator_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ShardIteratorType, location_name: 'ShardIteratorType', traits: {"smithy.api#documentation" => "<p>Determines how the shard iterator is used to start reading stream records from the shard:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>AT_SEQUENCE_NUMBER</code> - Start reading exactly from the position denoted by a\n          specific sequence number.</p>\n            </li>\n            <li>\n               <p>\n                  <code>AFTER_SEQUENCE_NUMBER</code> - Start reading right after the position denoted by a\n          specific sequence number.</p>\n            </li>\n            <li>\n               <p>\n                  <code>TRIM_HORIZON</code> - Start reading at the last (untrimmed) stream record, which is\n          the oldest record in the shard. In DynamoDB Streams, there is a 24 hour limit on data retention.\n          Stream records whose age exceeds this limit are subject to removal (trimming) from the\n          stream.</p>\n            </li>\n            <li>\n               <p>\n                  <code>LATEST</code> - Start reading just after the most recent stream record in the\n          shard, so that you always read the most recent data in the shard.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    GetShardIteratorInput.add_member(:sequence_number, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceNumber, location_name: 'SequenceNumber', traits: {"smithy.api#documentation" => "<p>The sequence number of a stream record in the shard from which to start reading.</p>"}))
    GetShardIteratorInput.type = Types::GetShardIteratorInput
    GetShardIteratorOutput.add_member(:shard_iterator, Smithy::Schema::Shapes::ShapeRef.new(shape: ShardIterator, location_name: 'ShardIterator', traits: {"smithy.api#documentation" => "<p>The position in the shard from which to start reading stream records sequentially. A shard iterator specifies this position using the sequence number of a stream record in a shard.</p>"}))
    GetShardIteratorOutput.type = Types::GetShardIteratorOutput
    Identity.add_member(:principal_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PrincipalId', traits: {"smithy.api#documentation" => "<p>A unique identifier for the entity that made the call. For Time To Live, the\n      principalId is \"dynamodb.amazonaws.com\".</p>"}))
    Identity.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of the identity. For Time To Live, the type is \"Service\".</p>"}))
    Identity.type = Types::Identity
    InternalServerError.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The server encountered an internal error trying to fulfill the request.</p>"}))
    InternalServerError.type = Types::InternalServerError
    KeySchema.member = Smithy::Schema::Shapes::ShapeRef.new(shape: KeySchemaElement)
    KeySchemaElement.add_member(:attribute_name, Smithy::Schema::Shapes::ShapeRef.new(shape: KeySchemaAttributeName, location_name: 'AttributeName', traits: {"smithy.api#documentation" => "<p>The name of a key attribute.</p>", "smithy.api#required" => {}}))
    KeySchemaElement.add_member(:key_type, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyType, location_name: 'KeyType', traits: {"smithy.api#documentation" => "<p>The role that this key attribute will assume:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>HASH</code> - partition key</p>\n            </li>\n            <li>\n               <p>\n                  <code>RANGE</code> - sort key</p>\n            </li>\n         </ul>\n         <note>\n            <p>The partition key of an item is also known as its <i>hash\n                    attribute</i>. The term \"hash attribute\" derives from DynamoDB's usage of\n                an internal hash function to evenly distribute data items across partitions, based\n                on their partition key values.</p>\n            <p>The sort key of an item is also known as its <i>range\n                attribute</i>. The term \"range attribute\" derives from the way DynamoDB\n                stores items with the same partition key physically close together, in sorted order\n                by the sort key value.</p>\n         </note>", "smithy.api#required" => {}}))
    KeySchemaElement.type = Types::KeySchemaElement
    KeyType.add_member(:hash, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HASH', traits: {"smithy.api#enumValue" => "HASH"}))
    KeyType.add_member(:range, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RANGE', traits: {"smithy.api#enumValue" => "RANGE"}))
    LimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Too many operations for a given subscriber.</p>"}))
    LimitExceededException.type = Types::LimitExceededException
    ListAttributeValue.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValue)
    ListStreamsInput.add_member(:table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: 'TableName', traits: {"smithy.api#documentation" => "<p>If this parameter is provided, then only the streams associated with this table name are returned.</p>"}))
    ListStreamsInput.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveIntegerObject, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>The maximum number of streams to return. The upper limit is 100.</p>"}))
    ListStreamsInput.add_member(:exclusive_start_stream_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamArn, location_name: 'ExclusiveStartStreamArn', traits: {"smithy.api#documentation" => "<p>The ARN (Amazon Resource Name) of the first item that this operation will evaluate. Use the\n      value that was returned for <code>LastEvaluatedStreamArn</code> in the previous operation.\n    </p>"}))
    ListStreamsInput.type = Types::ListStreamsInput
    ListStreamsOutput.add_member(:streams, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamList, location_name: 'Streams', traits: {"smithy.api#documentation" => "<p>A list of stream descriptors associated with the current account and endpoint.</p>"}))
    ListStreamsOutput.add_member(:last_evaluated_stream_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamArn, location_name: 'LastEvaluatedStreamArn', traits: {"smithy.api#documentation" => "<p>The stream ARN of the item where the operation stopped, inclusive of the previous result set. Use this value to start a new operation, excluding this value in the new request.</p>\n         <p>If <code>LastEvaluatedStreamArn</code> is empty, then the \"last page\" of results has been\n      processed and there is no more data to be retrieved.</p>\n         <p>If <code>LastEvaluatedStreamArn</code> is not empty, it does not necessarily mean that there\n      is more data in the result set. The only way to know when you have reached the end of the\n      result set is when <code>LastEvaluatedStreamArn</code> is empty.</p>"}))
    ListStreamsOutput.type = Types::ListStreamsOutput
    MapAttributeValue.key = Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeName)
    MapAttributeValue.value = Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValue)
    NumberSetAttributeValue.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NumberAttributeValue)
    OperationType.add_member(:insert, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSERT', traits: {"smithy.api#enumValue" => "INSERT"}))
    OperationType.add_member(:modify, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MODIFY', traits: {"smithy.api#enumValue" => "MODIFY"}))
    OperationType.add_member(:remove, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REMOVE', traits: {"smithy.api#enumValue" => "REMOVE"}))
    Record.add_member(:event_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'eventID', traits: {"smithy.api#documentation" => "<p>A globally unique identifier for the event that was recorded in this stream record.</p>"}))
    Record.add_member(:event_name, Smithy::Schema::Shapes::ShapeRef.new(shape: OperationType, location_name: 'eventName', traits: {"smithy.api#documentation" => "<p>The type of data modification that was performed on the DynamoDB table:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>INSERT</code> - a new item was added to the table.</p>\n            </li>\n            <li>\n               <p>\n                  <code>MODIFY</code> - one or more of an existing item's attributes were modified.</p>\n            </li>\n            <li>\n               <p>\n                  <code>REMOVE</code> - the item was deleted from the table</p>\n            </li>\n         </ul>"}))
    Record.add_member(:event_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'eventVersion', traits: {"smithy.api#documentation" => "<p>The version number of the stream record format.  This number is updated whenever the structure of <code>Record</code> is modified.</p>\n         <p>Client applications must not assume that <code>eventVersion</code> will remain at a particular\n      value, as this number is subject to change at any time. In general, <code>eventVersion</code> will\n      only increase as the low-level DynamoDB Streams API evolves.</p>"}))
    Record.add_member(:event_source, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'eventSource', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services service from which the stream record originated. For DynamoDB Streams, this is <code>aws:dynamodb</code>.</p>"}))
    Record.add_member(:aws_region, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'awsRegion', traits: {"smithy.api#documentation" => "<p>The region in which the <code>GetRecords</code> request was received.</p>"}))
    Record.add_member(:dynamodb, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamRecord, location_name: 'dynamodb', traits: {"smithy.api#documentation" => "<p>The main body of the stream record, containing all of the DynamoDB-specific fields.</p>"}))
    Record.add_member(:user_identity, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'userIdentity', traits: {"smithy.api#documentation" => "<p>Items that are deleted by the Time to Live process after expiration have the following fields: </p>\n         <ul>\n            <li>\n               <p>Records[].userIdentity.type</p>\n               <p>\"Service\"</p>\n            </li>\n            <li>\n               <p>Records[].userIdentity.principalId</p>\n               <p>\"dynamodb.amazonaws.com\"</p>\n            </li>\n         </ul>"}))
    Record.type = Types::Record
    RecordList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Record)
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The resource which is being requested does not exist.</p>"}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    SequenceNumberRange.add_member(:starting_sequence_number, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceNumber, location_name: 'StartingSequenceNumber', traits: {"smithy.api#documentation" => "<p>The first sequence number for the stream records contained within a shard. String contains numeric characters only.</p>"}))
    SequenceNumberRange.add_member(:ending_sequence_number, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceNumber, location_name: 'EndingSequenceNumber', traits: {"smithy.api#documentation" => "<p>The last sequence number for the stream records contained within a shard. String contains numeric characters only.</p>"}))
    SequenceNumberRange.type = Types::SequenceNumberRange
    Shard.add_member(:shard_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ShardId, location_name: 'ShardId', traits: {"smithy.api#documentation" => "<p>The system-generated identifier for this shard.</p>"}))
    Shard.add_member(:sequence_number_range, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceNumberRange, location_name: 'SequenceNumberRange', traits: {"smithy.api#documentation" => "<p>The range of possible sequence numbers for the shard.</p>"}))
    Shard.add_member(:parent_shard_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ShardId, location_name: 'ParentShardId', traits: {"smithy.api#documentation" => "<p>The shard ID of the current shard's parent.</p>"}))
    Shard.type = Types::Shard
    ShardDescriptionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Shard)
    ShardFilter.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ShardFilterType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>Contains the type of filter to be applied on the <code>DescribeStream</code> API. \n            Currently, the only value this parameter accepts is <code>CHILD_SHARDS</code>.</p>"}))
    ShardFilter.add_member(:shard_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ShardId, location_name: 'ShardId', traits: {"smithy.api#documentation" => "<p>Contains the <code>shardId</code> of the parent shard for which you are requesting child shards.</p>\n         <p>\n            <i>Sample request:</i>\n         </p>"}))
    ShardFilter.type = Types::ShardFilter
    ShardFilterType.add_member(:child_shards, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CHILD_SHARDS', traits: {"smithy.api#enumValue" => "CHILD_SHARDS"}))
    ShardIteratorType.add_member(:trim_horizon, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRIM_HORIZON', traits: {"smithy.api#enumValue" => "TRIM_HORIZON"}))
    ShardIteratorType.add_member(:latest, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LATEST', traits: {"smithy.api#enumValue" => "LATEST"}))
    ShardIteratorType.add_member(:at_sequence_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AT_SEQUENCE_NUMBER', traits: {"smithy.api#enumValue" => "AT_SEQUENCE_NUMBER"}))
    ShardIteratorType.add_member(:after_sequence_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AFTER_SEQUENCE_NUMBER', traits: {"smithy.api#enumValue" => "AFTER_SEQUENCE_NUMBER"}))
    Stream.add_member(:stream_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamArn, location_name: 'StreamArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the stream.</p>"}))
    Stream.add_member(:table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: 'TableName', traits: {"smithy.api#documentation" => "<p>The DynamoDB table with which the stream is associated.</p>"}))
    Stream.add_member(:stream_label, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StreamLabel', traits: {"smithy.api#documentation" => "<p>A timestamp, in ISO 8601 format, for this stream.</p>\n         <p>Note that <code>LatestStreamLabel</code> is not a unique identifier for the stream, because it is\n      possible that a stream from another table might have the same timestamp. However, the\n      combination of the following three elements is guaranteed to be unique:</p>\n         <ul>\n            <li>\n               <p>the Amazon Web Services customer ID.</p>\n            </li>\n            <li>\n               <p>the table name</p>\n            </li>\n            <li>\n               <p>the <code>StreamLabel</code>\n               </p>\n            </li>\n         </ul>"}))
    Stream.type = Types::Stream
    StreamDescription.add_member(:stream_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamArn, location_name: 'StreamArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the stream.</p>"}))
    StreamDescription.add_member(:stream_label, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StreamLabel', traits: {"smithy.api#documentation" => "<p>A timestamp, in ISO 8601 format, for this stream.</p>\n         <p>Note that <code>LatestStreamLabel</code> is not a unique identifier for the stream, because it is\n      possible that a stream from another table might have the same timestamp. However, the\n      combination of the following three elements is guaranteed to be unique:</p>\n         <ul>\n            <li>\n               <p>the Amazon Web Services customer ID.</p>\n            </li>\n            <li>\n               <p>the table name</p>\n            </li>\n            <li>\n               <p>the <code>StreamLabel</code>\n               </p>\n            </li>\n         </ul>"}))
    StreamDescription.add_member(:stream_status, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamStatus, location_name: 'StreamStatus', traits: {"smithy.api#documentation" => "<p>Indicates the current status of the stream:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ENABLING</code> - Streams is currently being enabled on the DynamoDB table.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ENABLED</code> - the stream is enabled.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DISABLING</code> - Streams is currently being disabled on the DynamoDB table.</p>\n            </li>\n            <li>\n               <p>\n                  <code>DISABLED</code> - the stream is disabled.</p>\n            </li>\n         </ul>"}))
    StreamDescription.add_member(:stream_view_type, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamViewType, location_name: 'StreamViewType', traits: {"smithy.api#documentation" => "<p>Indicates the format of the records within this stream:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>KEYS_ONLY</code> - only the key attributes of items that were modified in the DynamoDB table.</p>\n            </li>\n            <li>\n               <p>\n                  <code>NEW_IMAGE</code> - entire items from the table, as they appeared after they were modified.</p>\n            </li>\n            <li>\n               <p>\n                  <code>OLD_IMAGE</code> - entire items from the table, as they appeared before they were modified.</p>\n            </li>\n            <li>\n               <p>\n                  <code>NEW_AND_OLD_IMAGES</code> - both the new and the old images of the items from the table.</p>\n            </li>\n         </ul>"}))
    StreamDescription.add_member(:creation_request_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'CreationRequestDateTime', traits: {"smithy.api#documentation" => "<p>The date and time when the request to create this stream was issued.</p>"}))
    StreamDescription.add_member(:table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: 'TableName', traits: {"smithy.api#documentation" => "<p>The DynamoDB table with which the stream is associated.</p>"}))
    StreamDescription.add_member(:key_schema, Smithy::Schema::Shapes::ShapeRef.new(shape: KeySchema, location_name: 'KeySchema', traits: {"smithy.api#documentation" => "<p>The key attribute(s) of the stream's DynamoDB table.</p>"}))
    StreamDescription.add_member(:shards, Smithy::Schema::Shapes::ShapeRef.new(shape: ShardDescriptionList, location_name: 'Shards', traits: {"smithy.api#documentation" => "<p>The shards that comprise the stream.</p>"}))
    StreamDescription.add_member(:last_evaluated_shard_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ShardId, location_name: 'LastEvaluatedShardId', traits: {"smithy.api#documentation" => "<p>The shard ID of the item where the operation stopped, inclusive of the previous result set. Use this value to start a new operation, excluding this value in the new request.</p>\n         <p>If <code>LastEvaluatedShardId</code> is empty, then the \"last page\" of results has been\n      processed and there is currently no more data to be retrieved.</p>\n         <p>If <code>LastEvaluatedShardId</code> is not empty, it does not necessarily mean that there is\n      more data in the result set. The only way to know when you have reached the end of the result\n      set is when <code>LastEvaluatedShardId</code> is empty.</p>"}))
    StreamDescription.type = Types::StreamDescription
    StreamList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Stream)
    StreamRecord.add_member(:approximate_creation_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'ApproximateCreationDateTime', traits: {"smithy.api#documentation" => "<p>The approximate date and time when the stream record was created, in <a href=\"https://www.iso.org/iso-8601-date-and-time-format.html\">ISO 8601</a> format and rounded down to the closest second.</p>"}))
    StreamRecord.add_member(:keys, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeMap, location_name: 'Keys', traits: {"smithy.api#documentation" => "<p>The primary key attribute(s) for the DynamoDB item that was modified.</p>"}))
    StreamRecord.add_member(:new_image, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeMap, location_name: 'NewImage', traits: {"smithy.api#documentation" => "<p>The item in the DynamoDB table as it appeared after it was modified.</p>"}))
    StreamRecord.add_member(:old_image, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeMap, location_name: 'OldImage', traits: {"smithy.api#documentation" => "<p>The item in the DynamoDB table as it appeared before it was modified.</p>"}))
    StreamRecord.add_member(:sequence_number, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceNumber, location_name: 'SequenceNumber', traits: {"smithy.api#documentation" => "<p>The sequence number of the stream record.</p>"}))
    StreamRecord.add_member(:size_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: PositiveLongObject, location_name: 'SizeBytes', traits: {"smithy.api#documentation" => "<p>The size of the stream record, in bytes.</p>"}))
    StreamRecord.add_member(:stream_view_type, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamViewType, location_name: 'StreamViewType', traits: {"smithy.api#documentation" => "<p>The type of data from the modified DynamoDB item that was captured in this stream record:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>KEYS_ONLY</code> - only the key attributes of the modified item.</p>\n            </li>\n            <li>\n               <p>\n                  <code>NEW_IMAGE</code> - the entire item, as it appeared after it was modified.</p>\n            </li>\n            <li>\n               <p>\n                  <code>OLD_IMAGE</code> - the entire item, as it appeared before it was modified.</p>\n            </li>\n            <li>\n               <p>\n                  <code>NEW_AND_OLD_IMAGES</code> - both the new and the old item images of the item.</p>\n            </li>\n         </ul>"}))
    StreamRecord.type = Types::StreamRecord
    StreamStatus.add_member(:enabling, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLING', traits: {"smithy.api#enumValue" => "ENABLING"}))
    StreamStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    StreamStatus.add_member(:disabling, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLING', traits: {"smithy.api#enumValue" => "DISABLING"}))
    StreamStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    StreamViewType.add_member(:new_image, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NEW_IMAGE', traits: {"smithy.api#enumValue" => "NEW_IMAGE"}))
    StreamViewType.add_member(:old_image, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OLD_IMAGE', traits: {"smithy.api#enumValue" => "OLD_IMAGE"}))
    StreamViewType.add_member(:new_and_old_images, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NEW_AND_OLD_IMAGES', traits: {"smithy.api#enumValue" => "NEW_AND_OLD_IMAGES"}))
    StreamViewType.add_member(:keys_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KEYS_ONLY', traits: {"smithy.api#enumValue" => "KEYS_ONLY"}))
    StringSetAttributeValue.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StringAttributeValue)
    TrimmedDataAccessException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>\"The data you are trying to access has been trimmed.</p>"}))
    TrimmedDataAccessException.type = Types::TrimmedDataAccessException

    DynamoDBStreams20120810 = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.dynamodbstreams#DynamoDBStreams_20120810"
      service.name = "DynamoDBStreams20120810"
      service.version = "2012-08-10"
      service.traits = {"aws.api#service" => {"sdkId" => "DynamoDB Streams", "arnNamespace" => "dynamodb", "cloudFormationName" => "DynamoDBStreams", "cloudTrailEventSource" => "dynamodbstreams.amazonaws.com", "docId" => "streams-dynamodb-2012-08-10", "endpointPrefix" => "streams.dynamodb"}, "aws.auth#sigv4" => {"name" => "dynamodb"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "Amazon DynamoDB Streams", "smithy.api#xmlNamespace" => {"uri" => "http://dynamodb.amazonaws.com/doc/2012-08-10/"}}
      service.add_operation(:describe_stream, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodbstreams#DescribeStream"
        operation.name = "DescribeStream"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeStreamInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeStreamOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_records, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodbstreams#GetRecords"
        operation.name = "GetRecords"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRecordsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRecordsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ExpiredIteratorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TrimmedDataAccessException)
        operation.traits = {}
      end)
      service.add_operation(:get_shard_iterator, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodbstreams#GetShardIterator"
        operation.name = "GetShardIterator"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetShardIteratorInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetShardIteratorOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TrimmedDataAccessException)
        operation.traits = {}
      end)
      service.add_operation(:list_streams, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dynamodbstreams#ListStreams"
        operation.name = "ListStreams"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListStreamsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListStreamsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(Smithy::Schema::Shapes::StructureShape) }
        @type_registry = Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
