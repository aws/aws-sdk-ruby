# frozen_string_literal: true

# This is generated code!

module Aws::KeyspacesStreams
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspacesstreams#AccessDeniedException', name: 'AccessDeniedException', traits: {"aws.protocols#awsQueryError" => {"code" => "AccessDeniedException", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Date = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.keyspacesstreams#Date', name: 'Date')
    GetRecordsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspacesstreams#GetRecordsInput', name: 'GetRecordsInput')
    GetRecordsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspacesstreams#GetRecordsOutput', name: 'GetRecordsOutput')
    GetShardIteratorInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspacesstreams#GetShardIteratorInput', name: 'GetShardIteratorInput')
    GetShardIteratorOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspacesstreams#GetShardIteratorOutput', name: 'GetShardIteratorOutput')
    GetStreamInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspacesstreams#GetStreamInput', name: 'GetStreamInput')
    GetStreamOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspacesstreams#GetStreamOutput', name: 'GetStreamOutput')
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspacesstreams#InternalServerException', name: 'InternalServerException', traits: {"aws.protocols#awsQueryError" => {"code" => "InternalServerException", "httpResponseCode" => 500}, "smithy.api#error" => "server", "smithy.api#httpError" => 500})
    KeyspaceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.keyspacesstreams#KeyspaceName', name: 'KeyspaceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 48}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_]{0,47}$"})
    KeyspacesCell = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspacesstreams#KeyspacesCell', name: 'KeyspacesCell')
    KeyspacesCellList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.keyspacesstreams#KeyspacesCellList', name: 'KeyspacesCellList')
    KeyspacesCellMap = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.keyspacesstreams#KeyspacesCellMap', name: 'KeyspacesCellMap')
    KeyspacesCellMapDefinition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspacesstreams#KeyspacesCellMapDefinition', name: 'KeyspacesCellMapDefinition')
    KeyspacesCellValue = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.keyspacesstreams#KeyspacesCellValue', name: 'KeyspacesCellValue')
    KeyspacesCells = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.keyspacesstreams#KeyspacesCells', name: 'KeyspacesCells')
    KeyspacesKeysMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.keyspacesstreams#KeyspacesKeysMap', name: 'KeyspacesKeysMap')
    KeyspacesMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspacesstreams#KeyspacesMetadata', name: 'KeyspacesMetadata')
    KeyspacesRow = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspacesstreams#KeyspacesRow', name: 'KeyspacesRow')
    KeyspacesUdtMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.keyspacesstreams#KeyspacesUdtMap', name: 'KeyspacesUdtMap')
    ListStreamsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspacesstreams#ListStreamsInput', name: 'ListStreamsInput')
    ListStreamsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspacesstreams#ListStreamsOutput', name: 'ListStreamsOutput')
    OriginType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.keyspacesstreams#OriginType', name: 'OriginType')
    Record = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspacesstreams#Record', name: 'Record')
    RecordList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.keyspacesstreams#RecordList', name: 'RecordList')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspacesstreams#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceNotFoundException", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SequenceNumber = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.keyspacesstreams#SequenceNumber', name: 'SequenceNumber', traits: {"smithy.api#length" => {"min" => 21, "max" => 48}})
    SequenceNumberRange = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspacesstreams#SequenceNumberRange', name: 'SequenceNumberRange')
    Shard = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspacesstreams#Shard', name: 'Shard')
    ShardDescriptionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.keyspacesstreams#ShardDescriptionList', name: 'ShardDescriptionList')
    ShardFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspacesstreams#ShardFilter', name: 'ShardFilter')
    ShardFilterType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.keyspacesstreams#ShardFilterType', name: 'ShardFilterType')
    ShardId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.keyspacesstreams#ShardId', name: 'ShardId', traits: {"smithy.api#length" => {"min" => 28, "max" => 65}})
    ShardIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.keyspacesstreams#ShardIdList', name: 'ShardIdList')
    ShardIdToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.keyspacesstreams#ShardIdToken', name: 'ShardIdToken', traits: {"smithy.api#length" => {"min" => 80, "max" => 3000}})
    ShardIterator = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.keyspacesstreams#ShardIterator', name: 'ShardIterator', traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}})
    ShardIteratorType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.keyspacesstreams#ShardIteratorType', name: 'ShardIteratorType')
    Stream = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspacesstreams#Stream', name: 'Stream')
    StreamArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.keyspacesstreams#StreamArn', name: 'StreamArn', traits: {"smithy.api#length" => {"min" => 37, "max" => 1024}})
    StreamArnToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.keyspacesstreams#StreamArnToken', name: 'StreamArnToken', traits: {"smithy.api#length" => {"min" => 80, "max" => 3000}})
    StreamList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.keyspacesstreams#StreamList', name: 'StreamList')
    StreamStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.keyspacesstreams#StreamStatus', name: 'StreamStatus')
    StreamViewType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.keyspacesstreams#StreamViewType', name: 'StreamViewType')
    TableName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.keyspacesstreams#TableName', name: 'TableName', traits: {"smithy.api#length" => {"min" => 1, "max" => 48}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_]{0,47}$"})
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspacesstreams#ThrottlingException', name: 'ThrottlingException', traits: {"aws.protocols#awsQueryError" => {"code" => "ThrottlingException", "httpResponseCode" => 429}, "smithy.api#error" => "client", "smithy.api#httpError" => 429})
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.keyspacesstreams#ValidationException', name: 'ValidationException', traits: {"aws.protocols#awsQueryError" => {"code" => "ValidationException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.keyspacesstreams#ValidationExceptionType', name: 'ValidationExceptionType')

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>You don't have sufficient permissions to perform this action.</p>"}))
    AccessDeniedException.type = Types::AccessDeniedException
    GetRecordsInput.add_member(:shard_iterator, Smithy::Schema::Shapes::ShapeRef.new(shape: ShardIterator, location_name: 'shardIterator', traits: {"smithy.api#documentation" => "<p> The unique identifier of the shard iterator. A shard iterator specifies the position in the shard from which you want to start reading data records sequentially. You obtain this value by calling the <code>GetShardIterator</code> operation. Each shard iterator is valid for 15 minutes after creation. </p>", "smithy.api#required" => {}}))
    GetRecordsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p> The maximum number of records to return in a single <code>GetRecords</code> request. Default value is 1000. You can specify a limit between 1 and 1000, but the actual number returned might be less than the specified maximum if the size of the data for the returned records exceeds the internal size limit. </p>", "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    GetRecordsInput.type = Types::GetRecordsInput
    GetRecordsOutput.add_member(:change_records, Smithy::Schema::Shapes::ShapeRef.new(shape: RecordList, location_name: 'changeRecords', traits: {"smithy.api#documentation" => "<p> An array of change data records retrieved from the specified shard. Each record represents a single data modification (insert, update, or delete) to a row in the Amazon Keyspaces table. Records include the primary key columns and information about what data was modified. </p>"}))
    GetRecordsOutput.add_member(:next_shard_iterator, Smithy::Schema::Shapes::ShapeRef.new(shape: ShardIterator, location_name: 'nextShardIterator', traits: {"smithy.api#documentation" => "<p> The next position in the shard from which to start sequentially reading data records. If null, the shard has been closed and the requested iterator doesn't return any more data. </p>"}))
    GetRecordsOutput.type = Types::GetRecordsOutput
    GetShardIteratorInput.add_member(:stream_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamArn, location_name: 'streamArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the stream for which to get the shard iterator. The ARN uniquely identifies the stream within Amazon Keyspaces. </p>", "smithy.api#required" => {}}))
    GetShardIteratorInput.add_member(:shard_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ShardId, location_name: 'shardId', traits: {"smithy.api#documentation" => "<p> The identifier of the shard within the stream. The shard ID uniquely identifies a subset of the stream's data records that you want to access. </p>", "smithy.api#required" => {}}))
    GetShardIteratorInput.add_member(:shard_iterator_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ShardIteratorType, location_name: 'shardIteratorType', traits: {"smithy.api#documentation" => "<p> Determines how the shard iterator is positioned. Must be one of the following:</p> <ul> <li> <p> <code>TRIM_HORIZON</code> - Start reading at the last untrimmed record in the shard, which is the oldest data record in the shard.</p> </li> <li> <p> <code>AT_SEQUENCE_NUMBER</code> - Start reading exactly from the specified sequence number.</p> </li> <li> <p> <code>AFTER_SEQUENCE_NUMBER</code> - Start reading right after the specified sequence number.</p> </li> <li> <p> <code>LATEST</code> - Start reading just after the most recent record in the shard, so that you always read the most recent data.</p> </li> </ul>", "smithy.api#required" => {}}))
    GetShardIteratorInput.add_member(:sequence_number, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceNumber, location_name: 'sequenceNumber', traits: {"smithy.api#documentation" => "<p> The sequence number of the data record in the shard from which to start reading. Required if <code>ShardIteratorType</code> is <code>AT_SEQUENCE_NUMBER</code> or <code>AFTER_SEQUENCE_NUMBER</code>. This parameter is ignored for other iterator types. </p>"}))
    GetShardIteratorInput.type = Types::GetShardIteratorInput
    GetShardIteratorOutput.add_member(:shard_iterator, Smithy::Schema::Shapes::ShapeRef.new(shape: ShardIterator, location_name: 'shardIterator', traits: {"smithy.api#documentation" => "<p> The unique identifier for the shard iterator. This value is used in the <code>GetRecords</code> operation to retrieve data records from the specified shard. Each shard iterator expires 15 minutes after it is returned to the requester. </p>"}))
    GetShardIteratorOutput.type = Types::GetShardIteratorOutput
    GetStreamInput.add_member(:stream_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamArn, location_name: 'streamArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the stream for which detailed information is requested. This uniquely identifies the specific stream you want to get information about. </p>", "smithy.api#required" => {}}))
    GetStreamInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p> The maximum number of shard objects to return in a single <code>GetStream</code> request. Default value is 100. The minimum value is 1 and the maximum value is 100. </p>", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    GetStreamInput.add_member(:shard_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: ShardFilter, location_name: 'shardFilter', traits: {"smithy.api#documentation" => "<p> Optional filter criteria to apply when retrieving shards. You can filter shards based on their state or other attributes to narrow down the results returned by the <code>GetStream</code> operation. </p>"}))
    GetStreamInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ShardIdToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> An optional pagination token provided by a previous <code>GetStream</code> operation. If this parameter is specified, the response includes only records beyond the token, up to the value specified by <code>maxResults</code>. </p>"}))
    GetStreamInput.type = Types::GetStreamInput
    GetStreamOutput.add_member(:stream_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamArn, location_name: 'streamArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) that uniquely identifies the stream within Amazon Keyspaces. This ARN can be used in other API operations to reference this specific stream. </p>", "smithy.api#required" => {}}))
    GetStreamOutput.add_member(:stream_label, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'streamLabel', traits: {"smithy.api#documentation" => "<p> A timestamp that serves as a unique identifier for this stream, used for debugging and monitoring purposes. The stream label represents the point in time when the stream was created. </p>", "smithy.api#required" => {}}))
    GetStreamOutput.add_member(:stream_status, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamStatus, location_name: 'streamStatus', traits: {"smithy.api#documentation" => "<p> The current status of the stream. Values can be <code>ENABLING</code>, <code>ENABLED</code>, <code>DISABLING</code>, or <code>DISABLED</code>. Operations on the stream depend on its current status. </p>", "smithy.api#required" => {}}))
    GetStreamOutput.add_member(:stream_view_type, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamViewType, location_name: 'streamViewType', traits: {"smithy.api#documentation" => "<p> The format of the data records in this stream. Currently, this can be one of the following options:</p> <ul> <li> <p> <code>NEW_AND_OLD_IMAGES</code> - both versions of the row, before and after the change. This is the default.</p> </li> <li> <p> <code>NEW_IMAGE</code> - the version of the row after the change.</p> </li> <li> <p> <code>OLD_IMAGE</code> - the version of the row before the change.</p> </li> <li> <p> <code>KEYS_ONLY</code> - the partition and clustering keys of the row that was changed.</p> </li> </ul>", "smithy.api#required" => {}}))
    GetStreamOutput.add_member(:creation_request_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'creationRequestDateTime', traits: {"smithy.api#documentation" => "<p> The date and time when the request to create this stream was issued. The value is represented in ISO 8601 format. </p>", "smithy.api#required" => {}}))
    GetStreamOutput.add_member(:keyspace_name, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyspaceName, location_name: 'keyspaceName', traits: {"smithy.api#documentation" => "<p> The name of the keyspace containing the table associated with this stream. The keyspace name is part of the table's hierarchical identifier in Amazon Keyspaces. </p>", "smithy.api#required" => {}}))
    GetStreamOutput.add_member(:table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: 'tableName', traits: {"smithy.api#documentation" => "<p> The name of the table associated with this stream. The stream captures changes to rows in this Amazon Keyspaces table. </p>", "smithy.api#required" => {}}))
    GetStreamOutput.add_member(:shards, Smithy::Schema::Shapes::ShapeRef.new(shape: ShardDescriptionList, location_name: 'shards', traits: {"smithy.api#documentation" => "<p> An array of shard objects associated with this stream. Each shard contains a subset of the stream's data records and has its own unique identifier. The collection of shards represents the complete stream data. </p>"}))
    GetStreamOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ShardIdToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> A pagination token that can be used in a subsequent <code>GetStream</code> request. This token is returned if the response contains more shards than can be returned in a single response. </p>"}))
    GetStreamOutput.type = Types::GetStreamOutput
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The service encountered an internal error. Try your request again.</p>"}))
    InternalServerException.type = Types::InternalServerException
    KeyspacesCell.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyspacesCellValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The value stored in this cell, which can be of various data types supported by Amazon Keyspaces.</p>"}))
    KeyspacesCell.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyspacesMetadata, location_name: 'metadata', traits: {"smithy.api#documentation" => "<p>Metadata associated with this cell, such as time-to-live (TTL) expiration time and write timestamp.</p>"}))
    KeyspacesCell.type = Types::KeyspacesCell
    KeyspacesCellList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: KeyspacesCell)
    KeyspacesCellMap.member = Smithy::Schema::Shapes::ShapeRef.new(shape: KeyspacesCellMapDefinition)
    KeyspacesCellMapDefinition.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyspacesCellValue, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The key of this map entry in the Amazon Keyspaces cell.</p>"}))
    KeyspacesCellMapDefinition.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyspacesCellValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The value associated with the key in this map entry.</p>"}))
    KeyspacesCellMapDefinition.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyspacesMetadata, location_name: 'metadata', traits: {"smithy.api#documentation" => "<p>Metadata for this specific key-value pair within the map, such as timestamps and TTL information.</p>"}))
    KeyspacesCellMapDefinition.type = Types::KeyspacesCellMapDefinition
    KeyspacesCellValue.add_member(:ascii_t, Types::KeyspacesCellValue::AsciiT, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'asciiT', traits: {"smithy.api#documentation" => "<p>A value of ASCII text type, containing US-ASCII characters. </p>"}))
    KeyspacesCellValue.add_member(:bigint_t, Types::KeyspacesCellValue::BigintT, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'bigintT', traits: {"smithy.api#documentation" => "<p>A 64-bit signed integer value. </p>"}))
    KeyspacesCellValue.add_member(:blob_t, Types::KeyspacesCellValue::BlobT, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Blob, location_name: 'blobT', traits: {"smithy.api#documentation" => "<p>A binary large object (BLOB) value stored as a Base64-encoded string. </p>"}))
    KeyspacesCellValue.add_member(:bool_t, Types::KeyspacesCellValue::BoolT, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'boolT', traits: {"smithy.api#documentation" => "<p>A Boolean value, either <code>true</code> or <code>false</code>. </p>"}))
    KeyspacesCellValue.add_member(:counter_t, Types::KeyspacesCellValue::CounterT, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'counterT', traits: {"smithy.api#documentation" => "<p>A distributed counter value that can be incremented and decremented. </p>"}))
    KeyspacesCellValue.add_member(:date_t, Types::KeyspacesCellValue::DateT, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'dateT', traits: {"smithy.api#documentation" => "<p>A date value without a time component, represented as days since epoch (January 1, 1970). </p>"}))
    KeyspacesCellValue.add_member(:decimal_t, Types::KeyspacesCellValue::DecimalT, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'decimalT', traits: {"smithy.api#documentation" => "<p>A variable-precision decimal number value. </p>"}))
    KeyspacesCellValue.add_member(:double_t, Types::KeyspacesCellValue::DoubleT, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'doubleT', traits: {"smithy.api#documentation" => "<p>A 64-bit double-precision floating point value. </p>"}))
    KeyspacesCellValue.add_member(:float_t, Types::KeyspacesCellValue::FloatT, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'floatT', traits: {"smithy.api#documentation" => "<p>A 32-bit single-precision floating point value. </p>"}))
    KeyspacesCellValue.add_member(:inet_t, Types::KeyspacesCellValue::InetT, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'inetT', traits: {"smithy.api#documentation" => "<p>An IP address value, either IPv4 or IPv6 format. </p>"}))
    KeyspacesCellValue.add_member(:int_t, Types::KeyspacesCellValue::IntT, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'intT', traits: {"smithy.api#documentation" => "<p>A 32-bit signed integer value. </p>"}))
    KeyspacesCellValue.add_member(:list_t, Types::KeyspacesCellValue::ListT, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyspacesCellList, location_name: 'listT', traits: {"smithy.api#documentation" => "<p>An ordered collection of elements that can contain duplicate values. </p>"}))
    KeyspacesCellValue.add_member(:map_t, Types::KeyspacesCellValue::MapT, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyspacesCellMap, location_name: 'mapT', traits: {"smithy.api#documentation" => "<p>A collection of key-value pairs where each key is unique. </p>"}))
    KeyspacesCellValue.add_member(:set_t, Types::KeyspacesCellValue::SetT, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyspacesCellList, location_name: 'setT', traits: {"smithy.api#documentation" => "<p>An unordered collection of unique elements. </p>"}))
    KeyspacesCellValue.add_member(:smallint_t, Types::KeyspacesCellValue::SmallintT, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'smallintT', traits: {"smithy.api#documentation" => "<p>A 16-bit signed integer value. </p>"}))
    KeyspacesCellValue.add_member(:text_t, Types::KeyspacesCellValue::TextT, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'textT', traits: {"smithy.api#documentation" => "<p>A UTF-8 encoded string value. </p>"}))
    KeyspacesCellValue.add_member(:time_t, Types::KeyspacesCellValue::TimeT, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'timeT', traits: {"smithy.api#documentation" => "<p>A time value without a date component, with nanosecond precision. </p>"}))
    KeyspacesCellValue.add_member(:timestamp_t, Types::KeyspacesCellValue::TimestampT, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'timestampT', traits: {"smithy.api#documentation" => "<p>A timestamp value representing date and time with millisecond precision. </p>"}))
    KeyspacesCellValue.add_member(:timeuuid_t, Types::KeyspacesCellValue::TimeuuidT, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'timeuuidT', traits: {"smithy.api#documentation" => "<p>A universally unique identifier (UUID) that includes a timestamp component, ensuring both uniqueness and time ordering. </p>"}))
    KeyspacesCellValue.add_member(:tinyint_t, Types::KeyspacesCellValue::TinyintT, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'tinyintT', traits: {"smithy.api#documentation" => "<p>An 8-bit signed integer value. </p>"}))
    KeyspacesCellValue.add_member(:tuple_t, Types::KeyspacesCellValue::TupleT, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyspacesCellList, location_name: 'tupleT', traits: {"smithy.api#documentation" => "<p>A fixed-length ordered list of elements, where each element can be of a different data type. </p>"}))
    KeyspacesCellValue.add_member(:uuid_t, Types::KeyspacesCellValue::UuidT, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'uuidT', traits: {"smithy.api#documentation" => "<p>A universally unique identifier (UUID) value. </p>"}))
    KeyspacesCellValue.add_member(:varchar_t, Types::KeyspacesCellValue::VarcharT, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'varcharT', traits: {"smithy.api#documentation" => "<p>A UTF-8 encoded string value, functionally equivalent to text type. </p>"}))
    KeyspacesCellValue.add_member(:varint_t, Types::KeyspacesCellValue::VarintT, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'varintT', traits: {"smithy.api#documentation" => "<p>A variable precision integer value with arbitrary length. </p>"}))
    KeyspacesCellValue.add_member(:udt_t, Types::KeyspacesCellValue::UdtT, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyspacesUdtMap, location_name: 'udtT', traits: {"smithy.api#documentation" => "<p>A user-defined type (UDT) value consisting of named fields, each with its own data type. </p>"}))
    KeyspacesCellValue.add_member(:unknown, Types::KeyspacesCellValue::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    KeyspacesCellValue.type = Types::KeyspacesCellValue
    KeyspacesCells.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    KeyspacesCells.value = Smithy::Schema::Shapes::ShapeRef.new(shape: KeyspacesCell)
    KeyspacesKeysMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    KeyspacesKeysMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: KeyspacesCellValue)
    KeyspacesMetadata.add_member(:expiration_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'expirationTime', traits: {"smithy.api#documentation" => "<p>The time at which the associated data will expire, based on the time-to-live (TTL) setting.</p>"}))
    KeyspacesMetadata.add_member(:write_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'writeTime', traits: {"smithy.api#documentation" => "<p>The timestamp at which the associated data was written to the database.</p>"}))
    KeyspacesMetadata.type = Types::KeyspacesMetadata
    KeyspacesRow.add_member(:value_cells, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyspacesCells, location_name: 'valueCells', traits: {"smithy.api#documentation" => "<p>A map of regular (non-static) column cells in the row, where keys are column names and values are the corresponding cells.</p>"}))
    KeyspacesRow.add_member(:static_cells, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyspacesCells, location_name: 'staticCells', traits: {"smithy.api#documentation" => "<p>A map of static column cells shared by all rows with the same partition key, where keys are column names and values are the corresponding cells.</p>"}))
    KeyspacesRow.add_member(:row_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyspacesMetadata, location_name: 'rowMetadata', traits: {"smithy.api#documentation" => "<p>Metadata that applies to the entire row, such as timestamps and TTL information.</p>"}))
    KeyspacesRow.type = Types::KeyspacesRow
    KeyspacesUdtMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    KeyspacesUdtMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: KeyspacesCell)
    ListStreamsInput.add_member(:keyspace_name, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyspaceName, location_name: 'keyspaceName', traits: {"smithy.api#documentation" => "<p> The name of the keyspace for which to list streams. If specified, only streams associated with tables in this keyspace are returned. If omitted, streams from all keyspaces are included in the results. </p>"}))
    ListStreamsInput.add_member(:table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: 'tableName', traits: {"smithy.api#documentation" => "<p> The name of the table for which to list streams. Must be used together with <code>keyspaceName</code>. If specified, only streams associated with this specific table are returned. </p>"}))
    ListStreamsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p> The maximum number of streams to return in a single <code>ListStreams</code> request. Default value is 100. The minimum value is 1 and the maximum value is 100. </p>", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListStreamsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamArnToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> An optional pagination token provided by a previous <code>ListStreams</code> operation. If this parameter is specified, the response includes only records beyond the token, up to the value specified by <code>maxResults</code>. </p>"}))
    ListStreamsInput.type = Types::ListStreamsInput
    ListStreamsOutput.add_member(:streams, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamList, location_name: 'streams', traits: {"smithy.api#documentation" => "<p> An array of stream objects, each containing summary information about a stream including its ARN, status, and associated table information. This list includes all streams that match the request criteria. </p>"}))
    ListStreamsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamArnToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> A pagination token that can be used in a subsequent <code>ListStreams</code> request. This token is returned if the response contains more streams than can be returned in a single response based on the <code>MaxResults</code> parameter. </p>"}))
    ListStreamsOutput.type = Types::ListStreamsOutput
    OriginType.add_member(:user, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USER', traits: {"smithy.api#enumValue" => "USER"}))
    OriginType.add_member(:replication, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REPLICATION', traits: {"smithy.api#enumValue" => "REPLICATION"}))
    OriginType.add_member(:ttl, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TTL', traits: {"smithy.api#enumValue" => "TTL"}))
    Record.add_member(:event_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'eventVersion', traits: {"smithy.api#documentation" => "<p>The version of the record format, used to track the evolution of the record structure over time.</p>"}))
    Record.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The timestamp indicating when this change data capture record was created.</p>"}))
    Record.add_member(:origin, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginType, location_name: 'origin', traits: {"smithy.api#documentation" => "<p>The origin or source of this change data capture record.</p>"}))
    Record.add_member(:partition_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyspacesKeysMap, location_name: 'partitionKeys', traits: {"smithy.api#documentation" => "<p>The partition key columns and their values for the affected row.</p>"}))
    Record.add_member(:clustering_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyspacesKeysMap, location_name: 'clusteringKeys', traits: {"smithy.api#documentation" => "<p>The clustering key columns and their values for the affected row, which determine the order of rows within a partition.</p>"}))
    Record.add_member(:new_image, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyspacesRow, location_name: 'newImage', traits: {"smithy.api#documentation" => "<p>The state of the row after the change operation that generated this record.</p>"}))
    Record.add_member(:old_image, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyspacesRow, location_name: 'oldImage', traits: {"smithy.api#documentation" => "<p>The state of the row before the change operation that generated this record.</p>"}))
    Record.add_member(:sequence_number, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceNumber, location_name: 'sequenceNumber', traits: {"smithy.api#documentation" => "<p>A unique identifier assigned to this record within the shard, used for ordering and tracking purposes.</p>"}))
    Record.type = Types::Record
    RecordList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Record)
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The requested resource wasn't found. Verify that the resource exists and try again.</p>"}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    SequenceNumberRange.add_member(:starting_sequence_number, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceNumber, location_name: 'startingSequenceNumber', traits: {"smithy.api#documentation" => "<p>The starting sequence number of the range.</p>"}))
    SequenceNumberRange.add_member(:ending_sequence_number, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceNumber, location_name: 'endingSequenceNumber', traits: {"smithy.api#documentation" => "<p>The ending sequence number of the range, which may be null for open-ended ranges.</p>"}))
    SequenceNumberRange.type = Types::SequenceNumberRange
    Shard.add_member(:shard_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ShardId, location_name: 'shardId', traits: {"smithy.api#documentation" => "<p>A unique identifier for this shard within the stream.</p>"}))
    Shard.add_member(:sequence_number_range, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceNumberRange, location_name: 'sequenceNumberRange', traits: {"smithy.api#documentation" => "<p>The range of sequence numbers contained within this shard.</p>"}))
    Shard.add_member(:parent_shard_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ShardIdList, location_name: 'parentShardIds', traits: {"smithy.api#documentation" => "<p>The identifiers of parent shards that this shard evolved from, if this shard was created through resharding.</p>"}))
    Shard.type = Types::Shard
    ShardDescriptionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Shard)
    ShardFilter.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ShardFilterType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of shard filter to use, which determines how the shardId parameter is interpreted.</p>"}))
    ShardFilter.add_member(:shard_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ShardId, location_name: 'shardId', traits: {"smithy.api#documentation" => "<p>The identifier of a specific shard used to filter results based on the specified filter type.</p>"}))
    ShardFilter.type = Types::ShardFilter
    ShardFilterType.add_member(:child_shards, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CHILD_SHARDS', traits: {"smithy.api#enumValue" => "CHILD_SHARDS"}))
    ShardIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ShardId)
    ShardIteratorType.add_member(:trim_horizon, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRIM_HORIZON', traits: {"smithy.api#enumValue" => "TRIM_HORIZON"}))
    ShardIteratorType.add_member(:latest, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LATEST', traits: {"smithy.api#enumValue" => "LATEST"}))
    ShardIteratorType.add_member(:at_sequence_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AT_SEQUENCE_NUMBER', traits: {"smithy.api#enumValue" => "AT_SEQUENCE_NUMBER"}))
    ShardIteratorType.add_member(:after_sequence_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AFTER_SEQUENCE_NUMBER', traits: {"smithy.api#enumValue" => "AFTER_SEQUENCE_NUMBER"}))
    Stream.add_member(:stream_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamArn, location_name: 'streamArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that uniquely identifies this stream.</p>", "smithy.api#required" => {}}))
    Stream.add_member(:keyspace_name, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyspaceName, location_name: 'keyspaceName', traits: {"smithy.api#documentation" => "<p>The name of the keyspace containing the table associated with this stream.</p>", "smithy.api#required" => {}}))
    Stream.add_member(:table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TableName, location_name: 'tableName', traits: {"smithy.api#documentation" => "<p>The name of the table associated with this stream.</p>", "smithy.api#required" => {}}))
    Stream.add_member(:stream_label, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'streamLabel', traits: {"smithy.api#documentation" => "<p>A unique identifier for this stream that can be used in stream operations.</p>", "smithy.api#required" => {}}))
    Stream.type = Types::Stream
    StreamList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Stream)
    StreamStatus.add_member(:enabling, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLING', traits: {"smithy.api#enumValue" => "ENABLING"}))
    StreamStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    StreamStatus.add_member(:disabling, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLING', traits: {"smithy.api#enumValue" => "DISABLING"}))
    StreamStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    StreamViewType.add_member(:new_image, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NEW_IMAGE', traits: {"smithy.api#enumValue" => "NEW_IMAGE"}))
    StreamViewType.add_member(:old_image, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OLD_IMAGE', traits: {"smithy.api#enumValue" => "OLD_IMAGE"}))
    StreamViewType.add_member(:new_and_old_images, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NEW_AND_OLD_IMAGES', traits: {"smithy.api#enumValue" => "NEW_AND_OLD_IMAGES"}))
    StreamViewType.add_member(:keys_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KEYS_ONLY', traits: {"smithy.api#enumValue" => "KEYS_ONLY"}))
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The request was denied due to request throttling. Reduce the frequency of requests and try again.</p>"}))
    ThrottlingException.type = Types::ThrottlingException
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The input fails to satisfy the constraints specified by the service. Check the error details and modify your request.</p>"}))
    ValidationException.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionType, location_name: 'errorCode', traits: {"smithy.api#documentation" => "<p>An error occurred validating your request. See the error message for details.</p>"}))
    ValidationException.type = Types::ValidationException
    ValidationExceptionType.add_member(:invalid_format, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InvalidFormat', traits: {"smithy.api#enumValue" => "InvalidFormat"}))
    ValidationExceptionType.add_member(:trimmed_data_access, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TrimmedDataAccess', traits: {"smithy.api#enumValue" => "TrimmedDataAccess"}))
    ValidationExceptionType.add_member(:expired_iterator, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ExpiredIterator', traits: {"smithy.api#enumValue" => "ExpiredIterator"}))
    ValidationExceptionType.add_member(:expired_next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ExpiredNextToken', traits: {"smithy.api#enumValue" => "ExpiredNextToken"}))

    KeyspacesStreams = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.keyspacesstreams#KeyspacesStreams"
      service.name = "KeyspacesStreams"
      service.version = "2024-09-09"
      service.traits = {"aws.api#service" => {"sdkId" => "KeyspacesStreams", "arnNamespace" => "cassandra", "cloudTrailEventSource" => "cassandra-streams.amazonaws.com", "endpointPrefix" => "cassandra-streams"}, "aws.auth#sigv4" => {"name" => "cassandra"}, "aws.endpoints#dualStackOnlyEndpoints" => {}, "aws.endpoints#standardRegionalEndpoints" => {}, "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "Amazon Keyspaces Streams"}
      service.add_operation(:get_records, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.keyspacesstreams#GetRecords"
        operation.name = "GetRecords"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRecordsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRecordsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_shard_iterator, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.keyspacesstreams#GetShardIterator"
        operation.name = "GetShardIterator"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetShardIteratorInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetShardIteratorOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_stream, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.keyspacesstreams#GetStream"
        operation.name = "GetStream"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetStreamInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetStreamOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetStream.new
      end)
      service.add_operation(:list_streams, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.keyspacesstreams#ListStreams"
        operation.name = "ListStreams"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListStreamsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListStreamsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "ListStreamsSuccess", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListStreams.new
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
