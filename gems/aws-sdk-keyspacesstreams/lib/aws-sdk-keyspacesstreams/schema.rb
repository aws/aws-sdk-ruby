# frozen_string_literal: true

# This is generated code!

module Aws::KeyspacesStreams
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspacesstreams#AccessDeniedException", name: "AccessDeniedException", traits: {"aws.protocols#awsQueryError" => {"code" => "AccessDeniedException", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Date = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.keyspacesstreams#Date", name: "Date")
    GetRecordsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspacesstreams#GetRecordsInput", name: "GetRecordsInput")
    GetRecordsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspacesstreams#GetRecordsOutput", name: "GetRecordsOutput")
    GetShardIteratorInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspacesstreams#GetShardIteratorInput", name: "GetShardIteratorInput")
    GetShardIteratorOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspacesstreams#GetShardIteratorOutput", name: "GetShardIteratorOutput")
    GetStreamInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspacesstreams#GetStreamInput", name: "GetStreamInput")
    GetStreamOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspacesstreams#GetStreamOutput", name: "GetStreamOutput")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspacesstreams#InternalServerException", name: "InternalServerException", traits: {"aws.protocols#awsQueryError" => {"code" => "InternalServerException", "httpResponseCode" => 500}, "smithy.api#error" => "server", "smithy.api#httpError" => 500})
    KeyspaceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.keyspacesstreams#KeyspaceName", name: "KeyspaceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 48}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_]{0,47}$"})
    KeyspacesCell = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspacesstreams#KeyspacesCell", name: "KeyspacesCell")
    KeyspacesCellList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.keyspacesstreams#KeyspacesCellList", name: "KeyspacesCellList")
    KeyspacesCellMap = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.keyspacesstreams#KeyspacesCellMap", name: "KeyspacesCellMap")
    KeyspacesCellMapDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspacesstreams#KeyspacesCellMapDefinition", name: "KeyspacesCellMapDefinition")
    KeyspacesCellValue = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.keyspacesstreams#KeyspacesCellValue", name: "KeyspacesCellValue")
    KeyspacesCells = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.keyspacesstreams#KeyspacesCells", name: "KeyspacesCells")
    KeyspacesKeysMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.keyspacesstreams#KeyspacesKeysMap", name: "KeyspacesKeysMap")
    KeyspacesMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspacesstreams#KeyspacesMetadata", name: "KeyspacesMetadata")
    KeyspacesRow = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspacesstreams#KeyspacesRow", name: "KeyspacesRow")
    KeyspacesUdtMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.keyspacesstreams#KeyspacesUdtMap", name: "KeyspacesUdtMap")
    ListStreamsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspacesstreams#ListStreamsInput", name: "ListStreamsInput")
    ListStreamsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspacesstreams#ListStreamsOutput", name: "ListStreamsOutput")
    OriginType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.keyspacesstreams#OriginType", name: "OriginType")
    Record = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspacesstreams#Record", name: "Record")
    RecordList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.keyspacesstreams#RecordList", name: "RecordList")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspacesstreams#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceNotFoundException", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SequenceNumber = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.keyspacesstreams#SequenceNumber", name: "SequenceNumber", traits: {"smithy.api#length" => {"min" => 21, "max" => 48}})
    SequenceNumberRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspacesstreams#SequenceNumberRange", name: "SequenceNumberRange")
    Shard = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspacesstreams#Shard", name: "Shard")
    ShardDescriptionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.keyspacesstreams#ShardDescriptionList", name: "ShardDescriptionList")
    ShardFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspacesstreams#ShardFilter", name: "ShardFilter")
    ShardFilterType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.keyspacesstreams#ShardFilterType", name: "ShardFilterType")
    ShardId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.keyspacesstreams#ShardId", name: "ShardId", traits: {"smithy.api#length" => {"min" => 28, "max" => 65}})
    ShardIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.keyspacesstreams#ShardIdList", name: "ShardIdList")
    ShardIdToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.keyspacesstreams#ShardIdToken", name: "ShardIdToken", traits: {"smithy.api#length" => {"min" => 80, "max" => 3000}})
    ShardIterator = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.keyspacesstreams#ShardIterator", name: "ShardIterator", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}})
    ShardIteratorType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.keyspacesstreams#ShardIteratorType", name: "ShardIteratorType")
    Stream = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspacesstreams#Stream", name: "Stream")
    StreamArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.keyspacesstreams#StreamArn", name: "StreamArn", traits: {"smithy.api#length" => {"min" => 37, "max" => 1024}})
    StreamArnToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.keyspacesstreams#StreamArnToken", name: "StreamArnToken", traits: {"smithy.api#length" => {"min" => 80, "max" => 3000}})
    StreamList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.keyspacesstreams#StreamList", name: "StreamList")
    StreamStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.keyspacesstreams#StreamStatus", name: "StreamStatus")
    StreamViewType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.keyspacesstreams#StreamViewType", name: "StreamViewType")
    TableName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.keyspacesstreams#TableName", name: "TableName", traits: {"smithy.api#length" => {"min" => 1, "max" => 48}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_]{0,47}$"})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspacesstreams#ThrottlingException", name: "ThrottlingException", traits: {"aws.protocols#awsQueryError" => {"code" => "ThrottlingException", "httpResponseCode" => 429}, "smithy.api#error" => "client", "smithy.api#httpError" => 429})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.keyspacesstreams#ValidationException", name: "ValidationException", traits: {"aws.protocols#awsQueryError" => {"code" => "ValidationException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.keyspacesstreams#ValidationExceptionType", name: "ValidationExceptionType")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    AccessDeniedException.type = Types::AccessDeniedException
    GetRecordsInput.add_member(:shard_iterator, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardIterator, name: "shardIterator", traits: {"smithy.api#required" => {}}))
    GetRecordsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}}))
    GetRecordsInput.type = Types::GetRecordsInput
    GetRecordsOutput.add_member(:change_records, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordList, name: "changeRecords"))
    GetRecordsOutput.add_member(:next_shard_iterator, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardIterator, name: "nextShardIterator"))
    GetRecordsOutput.type = Types::GetRecordsOutput
    GetShardIteratorInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamArn, name: "streamArn", traits: {"smithy.api#required" => {}}))
    GetShardIteratorInput.add_member(:shard_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardId, name: "shardId", traits: {"smithy.api#required" => {}}))
    GetShardIteratorInput.add_member(:shard_iterator_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardIteratorType, name: "shardIteratorType", traits: {"smithy.api#required" => {}}))
    GetShardIteratorInput.add_member(:sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceNumber, name: "sequenceNumber"))
    GetShardIteratorInput.type = Types::GetShardIteratorInput
    GetShardIteratorOutput.add_member(:shard_iterator, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardIterator, name: "shardIterator"))
    GetShardIteratorOutput.type = Types::GetShardIteratorOutput
    GetStreamInput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamArn, name: "streamArn", traits: {"smithy.api#required" => {}}))
    GetStreamInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    GetStreamInput.add_member(:shard_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardFilter, name: "shardFilter"))
    GetStreamInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardIdToken, name: "nextToken"))
    GetStreamInput.type = Types::GetStreamInput
    GetStreamOutput.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamArn, name: "streamArn", traits: {"smithy.api#required" => {}}))
    GetStreamOutput.add_member(:stream_label, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "streamLabel", traits: {"smithy.api#required" => {}}))
    GetStreamOutput.add_member(:stream_status, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamStatus, name: "streamStatus", traits: {"smithy.api#required" => {}}))
    GetStreamOutput.add_member(:stream_view_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamViewType, name: "streamViewType", traits: {"smithy.api#required" => {}}))
    GetStreamOutput.add_member(:creation_request_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "creationRequestDateTime", traits: {"smithy.api#required" => {}}))
    GetStreamOutput.add_member(:keyspace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyspaceName, name: "keyspaceName", traits: {"smithy.api#required" => {}}))
    GetStreamOutput.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "tableName", traits: {"smithy.api#required" => {}}))
    GetStreamOutput.add_member(:shards, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardDescriptionList, name: "shards"))
    GetStreamOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardIdToken, name: "nextToken"))
    GetStreamOutput.type = Types::GetStreamOutput
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    InternalServerException.type = Types::InternalServerException
    KeyspacesCell.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyspacesCellValue, name: "value"))
    KeyspacesCell.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyspacesMetadata, name: "metadata"))
    KeyspacesCell.type = Types::KeyspacesCell
    KeyspacesCellList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyspacesCell, name: "member"))
    KeyspacesCellMap.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyspacesCellMapDefinition, name: "member"))
    KeyspacesCellMapDefinition.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyspacesCellValue, name: "key"))
    KeyspacesCellMapDefinition.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyspacesCellValue, name: "value"))
    KeyspacesCellMapDefinition.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyspacesMetadata, name: "metadata"))
    KeyspacesCellMapDefinition.type = Types::KeyspacesCellMapDefinition
    KeyspacesCellValue.add_member(:ascii_t, Types::KeyspacesCellValue::AsciiT, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "asciiT"))
    KeyspacesCellValue.add_member(:bigint_t, Types::KeyspacesCellValue::BigintT, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "bigintT"))
    KeyspacesCellValue.add_member(:blob_t, Types::KeyspacesCellValue::BlobT, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Blob, name: "blobT"))
    KeyspacesCellValue.add_member(:bool_t, Types::KeyspacesCellValue::BoolT, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "boolT"))
    KeyspacesCellValue.add_member(:counter_t, Types::KeyspacesCellValue::CounterT, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "counterT"))
    KeyspacesCellValue.add_member(:date_t, Types::KeyspacesCellValue::DateT, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "dateT"))
    KeyspacesCellValue.add_member(:decimal_t, Types::KeyspacesCellValue::DecimalT, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "decimalT"))
    KeyspacesCellValue.add_member(:double_t, Types::KeyspacesCellValue::DoubleT, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "doubleT"))
    KeyspacesCellValue.add_member(:float_t, Types::KeyspacesCellValue::FloatT, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "floatT"))
    KeyspacesCellValue.add_member(:inet_t, Types::KeyspacesCellValue::InetT, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "inetT"))
    KeyspacesCellValue.add_member(:int_t, Types::KeyspacesCellValue::IntT, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "intT"))
    KeyspacesCellValue.add_member(:list_t, Types::KeyspacesCellValue::ListT, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyspacesCellList, name: "listT"))
    KeyspacesCellValue.add_member(:map_t, Types::KeyspacesCellValue::MapT, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyspacesCellMap, name: "mapT"))
    KeyspacesCellValue.add_member(:set_t, Types::KeyspacesCellValue::SetT, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyspacesCellList, name: "setT"))
    KeyspacesCellValue.add_member(:smallint_t, Types::KeyspacesCellValue::SmallintT, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "smallintT"))
    KeyspacesCellValue.add_member(:text_t, Types::KeyspacesCellValue::TextT, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "textT"))
    KeyspacesCellValue.add_member(:time_t, Types::KeyspacesCellValue::TimeT, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "timeT"))
    KeyspacesCellValue.add_member(:timestamp_t, Types::KeyspacesCellValue::TimestampT, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "timestampT"))
    KeyspacesCellValue.add_member(:timeuuid_t, Types::KeyspacesCellValue::TimeuuidT, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "timeuuidT"))
    KeyspacesCellValue.add_member(:tinyint_t, Types::KeyspacesCellValue::TinyintT, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "tinyintT"))
    KeyspacesCellValue.add_member(:tuple_t, Types::KeyspacesCellValue::TupleT, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyspacesCellList, name: "tupleT"))
    KeyspacesCellValue.add_member(:uuid_t, Types::KeyspacesCellValue::UuidT, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "uuidT"))
    KeyspacesCellValue.add_member(:varchar_t, Types::KeyspacesCellValue::VarcharT, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "varcharT"))
    KeyspacesCellValue.add_member(:varint_t, Types::KeyspacesCellValue::VarintT, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "varintT"))
    KeyspacesCellValue.add_member(:udt_t, Types::KeyspacesCellValue::UdtT, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyspacesUdtMap, name: "udtT"))
    KeyspacesCellValue.add_member(:unknown, Types::KeyspacesCellValue::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    KeyspacesCellValue.type = Types::KeyspacesCellValue
    KeyspacesCells.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    KeyspacesCells.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyspacesCell, name: "value"))
    KeyspacesKeysMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    KeyspacesKeysMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyspacesCellValue, name: "value"))
    KeyspacesMetadata.add_member(:expiration_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "expirationTime"))
    KeyspacesMetadata.add_member(:write_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "writeTime"))
    KeyspacesMetadata.type = Types::KeyspacesMetadata
    KeyspacesRow.add_member(:value_cells, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyspacesCells, name: "valueCells"))
    KeyspacesRow.add_member(:static_cells, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyspacesCells, name: "staticCells"))
    KeyspacesRow.add_member(:row_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyspacesMetadata, name: "rowMetadata"))
    KeyspacesRow.type = Types::KeyspacesRow
    KeyspacesUdtMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    KeyspacesUdtMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyspacesCell, name: "value"))
    ListStreamsInput.add_member(:keyspace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyspaceName, name: "keyspaceName"))
    ListStreamsInput.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "tableName"))
    ListStreamsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListStreamsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamArnToken, name: "nextToken"))
    ListStreamsInput.type = Types::ListStreamsInput
    ListStreamsOutput.add_member(:streams, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamList, name: "streams"))
    ListStreamsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamArnToken, name: "nextToken"))
    ListStreamsOutput.type = Types::ListStreamsOutput
    OriginType.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER", traits: {"smithy.api#enumValue" => "USER"}))
    OriginType.add_member(:replication, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REPLICATION", traits: {"smithy.api#enumValue" => "REPLICATION"}))
    OriginType.add_member(:ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TTL", traits: {"smithy.api#enumValue" => "TTL"}))
    Record.add_member(:event_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "eventVersion"))
    Record.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "createdAt"))
    Record.add_member(:origin, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginType, name: "origin"))
    Record.add_member(:partition_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyspacesKeysMap, name: "partitionKeys"))
    Record.add_member(:clustering_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyspacesKeysMap, name: "clusteringKeys"))
    Record.add_member(:new_image, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyspacesRow, name: "newImage"))
    Record.add_member(:old_image, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyspacesRow, name: "oldImage"))
    Record.add_member(:sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceNumber, name: "sequenceNumber"))
    Record.type = Types::Record
    RecordList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Record, name: "member"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    SequenceNumberRange.add_member(:starting_sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceNumber, name: "startingSequenceNumber"))
    SequenceNumberRange.add_member(:ending_sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceNumber, name: "endingSequenceNumber"))
    SequenceNumberRange.type = Types::SequenceNumberRange
    Shard.add_member(:shard_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardId, name: "shardId"))
    Shard.add_member(:sequence_number_range, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceNumberRange, name: "sequenceNumberRange"))
    Shard.add_member(:parent_shard_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardIdList, name: "parentShardIds"))
    Shard.type = Types::Shard
    ShardDescriptionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Shard, name: "member"))
    ShardFilter.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardFilterType, name: "type"))
    ShardFilter.add_member(:shard_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardId, name: "shardId"))
    ShardFilter.type = Types::ShardFilter
    ShardFilterType.add_member(:child_shards, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHILD_SHARDS", traits: {"smithy.api#enumValue" => "CHILD_SHARDS"}))
    ShardIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ShardId, name: "member"))
    ShardIteratorType.add_member(:trim_horizon, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRIM_HORIZON", traits: {"smithy.api#enumValue" => "TRIM_HORIZON"}))
    ShardIteratorType.add_member(:latest, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LATEST", traits: {"smithy.api#enumValue" => "LATEST"}))
    ShardIteratorType.add_member(:at_sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AT_SEQUENCE_NUMBER", traits: {"smithy.api#enumValue" => "AT_SEQUENCE_NUMBER"}))
    ShardIteratorType.add_member(:after_sequence_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AFTER_SEQUENCE_NUMBER", traits: {"smithy.api#enumValue" => "AFTER_SEQUENCE_NUMBER"}))
    Stream.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamArn, name: "streamArn", traits: {"smithy.api#required" => {}}))
    Stream.add_member(:keyspace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyspaceName, name: "keyspaceName", traits: {"smithy.api#required" => {}}))
    Stream.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TableName, name: "tableName", traits: {"smithy.api#required" => {}}))
    Stream.add_member(:stream_label, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "streamLabel", traits: {"smithy.api#required" => {}}))
    Stream.type = Types::Stream
    StreamList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Stream, name: "member"))
    StreamStatus.add_member(:enabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLING", traits: {"smithy.api#enumValue" => "ENABLING"}))
    StreamStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    StreamStatus.add_member(:disabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLING", traits: {"smithy.api#enumValue" => "DISABLING"}))
    StreamStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    StreamViewType.add_member(:new_image, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NEW_IMAGE", traits: {"smithy.api#enumValue" => "NEW_IMAGE"}))
    StreamViewType.add_member(:old_image, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OLD_IMAGE", traits: {"smithy.api#enumValue" => "OLD_IMAGE"}))
    StreamViewType.add_member(:new_and_old_images, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NEW_AND_OLD_IMAGES", traits: {"smithy.api#enumValue" => "NEW_AND_OLD_IMAGES"}))
    StreamViewType.add_member(:keys_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KEYS_ONLY", traits: {"smithy.api#enumValue" => "KEYS_ONLY"}))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ThrottlingException.type = Types::ThrottlingException
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ValidationException.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionType, name: "errorCode"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionType.add_member(:invalid_format, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvalidFormat", traits: {"smithy.api#enumValue" => "InvalidFormat"}))
    ValidationExceptionType.add_member(:trimmed_data_access, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TrimmedDataAccess", traits: {"smithy.api#enumValue" => "TrimmedDataAccess"}))
    ValidationExceptionType.add_member(:expired_iterator, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ExpiredIterator", traits: {"smithy.api#enumValue" => "ExpiredIterator"}))
    ValidationExceptionType.add_member(:expired_next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ExpiredNextToken", traits: {"smithy.api#enumValue" => "ExpiredNextToken"}))

    KeyspacesStreams = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.keyspacesstreams#KeyspacesStreams"
      service.name = "KeyspacesStreams"
      service.version = "2024-09-09"
      service.traits = {"aws.api#service" => {"sdkId" => "KeyspacesStreams", "arnNamespace" => "cassandra", "cloudTrailEventSource" => "cassandra-streams.amazonaws.com", "endpointPrefix" => "cassandra-streams"}, "aws.auth#sigv4" => {"name" => "cassandra"}, "aws.endpoints#dualStackOnlyEndpoints" => {}, "aws.endpoints#standardRegionalEndpoints" => {}, "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "Amazon Keyspaces Streams"}
      service.add_operation(:get_records, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.keyspacesstreams#GetRecords"
        operation.name = "GetRecords"
        operation.input = GetRecordsInput
        operation.output = GetRecordsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:get_shard_iterator, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.keyspacesstreams#GetShardIterator"
        operation.name = "GetShardIterator"
        operation.input = GetShardIteratorInput
        operation.output = GetShardIteratorOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:get_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.keyspacesstreams#GetStream"
        operation.name = "GetStream"
        operation.input = GetStreamInput
        operation.output = GetStreamOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::GetStream.new
      end)
      service.add_operation(:list_streams, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.keyspacesstreams#ListStreams"
        operation.name = "ListStreams"
        operation.input = ListStreamsInput
        operation.output = ListStreamsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "ListStreamsSuccess", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListStreams.new
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
