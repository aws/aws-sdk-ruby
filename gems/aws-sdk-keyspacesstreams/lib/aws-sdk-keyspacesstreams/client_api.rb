# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::KeyspacesStreams
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    Blob = Shapes::BlobShape.new(name: 'Blob')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    Date = Shapes::TimestampShape.new(name: 'Date')
    GetRecordsInput = Shapes::StructureShape.new(name: 'GetRecordsInput')
    GetRecordsInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'GetRecordsInputMaxResultsInteger')
    GetRecordsOutput = Shapes::StructureShape.new(name: 'GetRecordsOutput')
    GetShardIteratorInput = Shapes::StructureShape.new(name: 'GetShardIteratorInput')
    GetShardIteratorOutput = Shapes::StructureShape.new(name: 'GetShardIteratorOutput')
    GetStreamInput = Shapes::StructureShape.new(name: 'GetStreamInput')
    GetStreamInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'GetStreamInputMaxResultsInteger')
    GetStreamOutput = Shapes::StructureShape.new(name: 'GetStreamOutput')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    KeyspaceName = Shapes::StringShape.new(name: 'KeyspaceName')
    KeyspacesCell = Shapes::StructureShape.new(name: 'KeyspacesCell')
    KeyspacesCellList = Shapes::ListShape.new(name: 'KeyspacesCellList')
    KeyspacesCellMap = Shapes::ListShape.new(name: 'KeyspacesCellMap')
    KeyspacesCellMapDefinition = Shapes::StructureShape.new(name: 'KeyspacesCellMapDefinition')
    KeyspacesCellValue = Shapes::UnionShape.new(name: 'KeyspacesCellValue')
    KeyspacesCells = Shapes::MapShape.new(name: 'KeyspacesCells')
    KeyspacesKeysMap = Shapes::MapShape.new(name: 'KeyspacesKeysMap')
    KeyspacesMetadata = Shapes::StructureShape.new(name: 'KeyspacesMetadata')
    KeyspacesRow = Shapes::StructureShape.new(name: 'KeyspacesRow')
    KeyspacesUdtMap = Shapes::MapShape.new(name: 'KeyspacesUdtMap')
    ListStreamsInput = Shapes::StructureShape.new(name: 'ListStreamsInput')
    ListStreamsInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListStreamsInputMaxResultsInteger')
    ListStreamsOutput = Shapes::StructureShape.new(name: 'ListStreamsOutput')
    OriginType = Shapes::StringShape.new(name: 'OriginType')
    Record = Shapes::StructureShape.new(name: 'Record')
    RecordList = Shapes::ListShape.new(name: 'RecordList')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    SequenceNumber = Shapes::StringShape.new(name: 'SequenceNumber')
    SequenceNumberRange = Shapes::StructureShape.new(name: 'SequenceNumberRange')
    Shard = Shapes::StructureShape.new(name: 'Shard')
    ShardDescriptionList = Shapes::ListShape.new(name: 'ShardDescriptionList')
    ShardFilter = Shapes::StructureShape.new(name: 'ShardFilter')
    ShardFilterType = Shapes::StringShape.new(name: 'ShardFilterType')
    ShardId = Shapes::StringShape.new(name: 'ShardId')
    ShardIdList = Shapes::ListShape.new(name: 'ShardIdList')
    ShardIdToken = Shapes::StringShape.new(name: 'ShardIdToken')
    ShardIterator = Shapes::StringShape.new(name: 'ShardIterator')
    ShardIteratorType = Shapes::StringShape.new(name: 'ShardIteratorType')
    Stream = Shapes::StructureShape.new(name: 'Stream')
    StreamArn = Shapes::StringShape.new(name: 'StreamArn')
    StreamArnToken = Shapes::StringShape.new(name: 'StreamArnToken')
    StreamList = Shapes::ListShape.new(name: 'StreamList')
    StreamStatus = Shapes::StringShape.new(name: 'StreamStatus')
    StreamViewType = Shapes::StringShape.new(name: 'StreamViewType')
    String = Shapes::StringShape.new(name: 'String')
    TableName = Shapes::StringShape.new(name: 'TableName')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionType = Shapes::StringShape.new(name: 'ValidationExceptionType')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    GetRecordsInput.add_member(:shard_iterator, Shapes::ShapeRef.new(shape: ShardIterator, required: true, location_name: "shardIterator"))
    GetRecordsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: GetRecordsInputMaxResultsInteger, location_name: "maxResults"))
    GetRecordsInput.struct_class = Types::GetRecordsInput

    GetRecordsOutput.add_member(:change_records, Shapes::ShapeRef.new(shape: RecordList, location_name: "changeRecords"))
    GetRecordsOutput.add_member(:next_shard_iterator, Shapes::ShapeRef.new(shape: ShardIterator, location_name: "nextShardIterator"))
    GetRecordsOutput.struct_class = Types::GetRecordsOutput

    GetShardIteratorInput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: StreamArn, required: true, location_name: "streamArn"))
    GetShardIteratorInput.add_member(:shard_id, Shapes::ShapeRef.new(shape: ShardId, required: true, location_name: "shardId"))
    GetShardIteratorInput.add_member(:shard_iterator_type, Shapes::ShapeRef.new(shape: ShardIteratorType, required: true, location_name: "shardIteratorType"))
    GetShardIteratorInput.add_member(:sequence_number, Shapes::ShapeRef.new(shape: SequenceNumber, location_name: "sequenceNumber"))
    GetShardIteratorInput.struct_class = Types::GetShardIteratorInput

    GetShardIteratorOutput.add_member(:shard_iterator, Shapes::ShapeRef.new(shape: ShardIterator, location_name: "shardIterator"))
    GetShardIteratorOutput.struct_class = Types::GetShardIteratorOutput

    GetStreamInput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: StreamArn, required: true, location_name: "streamArn"))
    GetStreamInput.add_member(:max_results, Shapes::ShapeRef.new(shape: GetStreamInputMaxResultsInteger, location_name: "maxResults"))
    GetStreamInput.add_member(:shard_filter, Shapes::ShapeRef.new(shape: ShardFilter, location_name: "shardFilter"))
    GetStreamInput.add_member(:next_token, Shapes::ShapeRef.new(shape: ShardIdToken, location_name: "nextToken"))
    GetStreamInput.struct_class = Types::GetStreamInput

    GetStreamOutput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: StreamArn, required: true, location_name: "streamArn"))
    GetStreamOutput.add_member(:stream_label, Shapes::ShapeRef.new(shape: String, required: true, location_name: "streamLabel"))
    GetStreamOutput.add_member(:stream_status, Shapes::ShapeRef.new(shape: StreamStatus, required: true, location_name: "streamStatus"))
    GetStreamOutput.add_member(:stream_view_type, Shapes::ShapeRef.new(shape: StreamViewType, required: true, location_name: "streamViewType"))
    GetStreamOutput.add_member(:creation_request_date_time, Shapes::ShapeRef.new(shape: Date, required: true, location_name: "creationRequestDateTime"))
    GetStreamOutput.add_member(:keyspace_name, Shapes::ShapeRef.new(shape: KeyspaceName, required: true, location_name: "keyspaceName"))
    GetStreamOutput.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "tableName"))
    GetStreamOutput.add_member(:shards, Shapes::ShapeRef.new(shape: ShardDescriptionList, location_name: "shards"))
    GetStreamOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: ShardIdToken, location_name: "nextToken"))
    GetStreamOutput.struct_class = Types::GetStreamOutput

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    KeyspacesCell.add_member(:value, Shapes::ShapeRef.new(shape: KeyspacesCellValue, location_name: "value"))
    KeyspacesCell.add_member(:metadata, Shapes::ShapeRef.new(shape: KeyspacesMetadata, location_name: "metadata"))
    KeyspacesCell.struct_class = Types::KeyspacesCell

    KeyspacesCellList.member = Shapes::ShapeRef.new(shape: KeyspacesCell)

    KeyspacesCellMap.member = Shapes::ShapeRef.new(shape: KeyspacesCellMapDefinition)

    KeyspacesCellMapDefinition.add_member(:key, Shapes::ShapeRef.new(shape: KeyspacesCellValue, location_name: "key"))
    KeyspacesCellMapDefinition.add_member(:value, Shapes::ShapeRef.new(shape: KeyspacesCellValue, location_name: "value"))
    KeyspacesCellMapDefinition.add_member(:metadata, Shapes::ShapeRef.new(shape: KeyspacesMetadata, location_name: "metadata"))
    KeyspacesCellMapDefinition.struct_class = Types::KeyspacesCellMapDefinition

    KeyspacesCellValue.add_member(:ascii_t, Shapes::ShapeRef.new(shape: String, location_name: "asciiT"))
    KeyspacesCellValue.add_member(:bigint_t, Shapes::ShapeRef.new(shape: String, location_name: "bigintT"))
    KeyspacesCellValue.add_member(:blob_t, Shapes::ShapeRef.new(shape: Blob, location_name: "blobT"))
    KeyspacesCellValue.add_member(:bool_t, Shapes::ShapeRef.new(shape: Boolean, location_name: "boolT"))
    KeyspacesCellValue.add_member(:counter_t, Shapes::ShapeRef.new(shape: String, location_name: "counterT"))
    KeyspacesCellValue.add_member(:date_t, Shapes::ShapeRef.new(shape: String, location_name: "dateT"))
    KeyspacesCellValue.add_member(:decimal_t, Shapes::ShapeRef.new(shape: String, location_name: "decimalT"))
    KeyspacesCellValue.add_member(:double_t, Shapes::ShapeRef.new(shape: String, location_name: "doubleT"))
    KeyspacesCellValue.add_member(:float_t, Shapes::ShapeRef.new(shape: String, location_name: "floatT"))
    KeyspacesCellValue.add_member(:inet_t, Shapes::ShapeRef.new(shape: String, location_name: "inetT"))
    KeyspacesCellValue.add_member(:int_t, Shapes::ShapeRef.new(shape: String, location_name: "intT"))
    KeyspacesCellValue.add_member(:list_t, Shapes::ShapeRef.new(shape: KeyspacesCellList, location_name: "listT"))
    KeyspacesCellValue.add_member(:map_t, Shapes::ShapeRef.new(shape: KeyspacesCellMap, location_name: "mapT"))
    KeyspacesCellValue.add_member(:set_t, Shapes::ShapeRef.new(shape: KeyspacesCellList, location_name: "setT"))
    KeyspacesCellValue.add_member(:smallint_t, Shapes::ShapeRef.new(shape: String, location_name: "smallintT"))
    KeyspacesCellValue.add_member(:text_t, Shapes::ShapeRef.new(shape: String, location_name: "textT"))
    KeyspacesCellValue.add_member(:time_t, Shapes::ShapeRef.new(shape: String, location_name: "timeT"))
    KeyspacesCellValue.add_member(:timestamp_t, Shapes::ShapeRef.new(shape: String, location_name: "timestampT"))
    KeyspacesCellValue.add_member(:timeuuid_t, Shapes::ShapeRef.new(shape: String, location_name: "timeuuidT"))
    KeyspacesCellValue.add_member(:tinyint_t, Shapes::ShapeRef.new(shape: String, location_name: "tinyintT"))
    KeyspacesCellValue.add_member(:tuple_t, Shapes::ShapeRef.new(shape: KeyspacesCellList, location_name: "tupleT"))
    KeyspacesCellValue.add_member(:uuid_t, Shapes::ShapeRef.new(shape: String, location_name: "uuidT"))
    KeyspacesCellValue.add_member(:varchar_t, Shapes::ShapeRef.new(shape: String, location_name: "varcharT"))
    KeyspacesCellValue.add_member(:varint_t, Shapes::ShapeRef.new(shape: String, location_name: "varintT"))
    KeyspacesCellValue.add_member(:udt_t, Shapes::ShapeRef.new(shape: KeyspacesUdtMap, location_name: "udtT"))
    KeyspacesCellValue.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    KeyspacesCellValue.add_member_subclass(:ascii_t, Types::KeyspacesCellValue::AsciiT)
    KeyspacesCellValue.add_member_subclass(:bigint_t, Types::KeyspacesCellValue::BigintT)
    KeyspacesCellValue.add_member_subclass(:blob_t, Types::KeyspacesCellValue::BlobT)
    KeyspacesCellValue.add_member_subclass(:bool_t, Types::KeyspacesCellValue::BoolT)
    KeyspacesCellValue.add_member_subclass(:counter_t, Types::KeyspacesCellValue::CounterT)
    KeyspacesCellValue.add_member_subclass(:date_t, Types::KeyspacesCellValue::DateT)
    KeyspacesCellValue.add_member_subclass(:decimal_t, Types::KeyspacesCellValue::DecimalT)
    KeyspacesCellValue.add_member_subclass(:double_t, Types::KeyspacesCellValue::DoubleT)
    KeyspacesCellValue.add_member_subclass(:float_t, Types::KeyspacesCellValue::FloatT)
    KeyspacesCellValue.add_member_subclass(:inet_t, Types::KeyspacesCellValue::InetT)
    KeyspacesCellValue.add_member_subclass(:int_t, Types::KeyspacesCellValue::IntT)
    KeyspacesCellValue.add_member_subclass(:list_t, Types::KeyspacesCellValue::ListT)
    KeyspacesCellValue.add_member_subclass(:map_t, Types::KeyspacesCellValue::MapT)
    KeyspacesCellValue.add_member_subclass(:set_t, Types::KeyspacesCellValue::SetT)
    KeyspacesCellValue.add_member_subclass(:smallint_t, Types::KeyspacesCellValue::SmallintT)
    KeyspacesCellValue.add_member_subclass(:text_t, Types::KeyspacesCellValue::TextT)
    KeyspacesCellValue.add_member_subclass(:time_t, Types::KeyspacesCellValue::TimeT)
    KeyspacesCellValue.add_member_subclass(:timestamp_t, Types::KeyspacesCellValue::TimestampT)
    KeyspacesCellValue.add_member_subclass(:timeuuid_t, Types::KeyspacesCellValue::TimeuuidT)
    KeyspacesCellValue.add_member_subclass(:tinyint_t, Types::KeyspacesCellValue::TinyintT)
    KeyspacesCellValue.add_member_subclass(:tuple_t, Types::KeyspacesCellValue::TupleT)
    KeyspacesCellValue.add_member_subclass(:uuid_t, Types::KeyspacesCellValue::UuidT)
    KeyspacesCellValue.add_member_subclass(:varchar_t, Types::KeyspacesCellValue::VarcharT)
    KeyspacesCellValue.add_member_subclass(:varint_t, Types::KeyspacesCellValue::VarintT)
    KeyspacesCellValue.add_member_subclass(:udt_t, Types::KeyspacesCellValue::UdtT)
    KeyspacesCellValue.add_member_subclass(:unknown, Types::KeyspacesCellValue::Unknown)
    KeyspacesCellValue.struct_class = Types::KeyspacesCellValue

    KeyspacesCells.key = Shapes::ShapeRef.new(shape: String)
    KeyspacesCells.value = Shapes::ShapeRef.new(shape: KeyspacesCell)

    KeyspacesKeysMap.key = Shapes::ShapeRef.new(shape: String)
    KeyspacesKeysMap.value = Shapes::ShapeRef.new(shape: KeyspacesCellValue)

    KeyspacesMetadata.add_member(:expiration_time, Shapes::ShapeRef.new(shape: String, location_name: "expirationTime"))
    KeyspacesMetadata.add_member(:write_time, Shapes::ShapeRef.new(shape: String, location_name: "writeTime"))
    KeyspacesMetadata.struct_class = Types::KeyspacesMetadata

    KeyspacesRow.add_member(:value_cells, Shapes::ShapeRef.new(shape: KeyspacesCells, location_name: "valueCells"))
    KeyspacesRow.add_member(:static_cells, Shapes::ShapeRef.new(shape: KeyspacesCells, location_name: "staticCells"))
    KeyspacesRow.add_member(:row_metadata, Shapes::ShapeRef.new(shape: KeyspacesMetadata, location_name: "rowMetadata"))
    KeyspacesRow.struct_class = Types::KeyspacesRow

    KeyspacesUdtMap.key = Shapes::ShapeRef.new(shape: String)
    KeyspacesUdtMap.value = Shapes::ShapeRef.new(shape: KeyspacesCell)

    ListStreamsInput.add_member(:keyspace_name, Shapes::ShapeRef.new(shape: KeyspaceName, location_name: "keyspaceName"))
    ListStreamsInput.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, location_name: "tableName"))
    ListStreamsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListStreamsInputMaxResultsInteger, location_name: "maxResults"))
    ListStreamsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: StreamArnToken, location_name: "nextToken"))
    ListStreamsInput.struct_class = Types::ListStreamsInput

    ListStreamsOutput.add_member(:streams, Shapes::ShapeRef.new(shape: StreamList, location_name: "streams"))
    ListStreamsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: StreamArnToken, location_name: "nextToken"))
    ListStreamsOutput.struct_class = Types::ListStreamsOutput

    Record.add_member(:event_version, Shapes::ShapeRef.new(shape: String, location_name: "eventVersion"))
    Record.add_member(:created_at, Shapes::ShapeRef.new(shape: Date, location_name: "createdAt"))
    Record.add_member(:origin, Shapes::ShapeRef.new(shape: OriginType, location_name: "origin"))
    Record.add_member(:partition_keys, Shapes::ShapeRef.new(shape: KeyspacesKeysMap, location_name: "partitionKeys"))
    Record.add_member(:clustering_keys, Shapes::ShapeRef.new(shape: KeyspacesKeysMap, location_name: "clusteringKeys"))
    Record.add_member(:new_image, Shapes::ShapeRef.new(shape: KeyspacesRow, location_name: "newImage"))
    Record.add_member(:old_image, Shapes::ShapeRef.new(shape: KeyspacesRow, location_name: "oldImage"))
    Record.add_member(:sequence_number, Shapes::ShapeRef.new(shape: SequenceNumber, location_name: "sequenceNumber"))
    Record.struct_class = Types::Record

    RecordList.member = Shapes::ShapeRef.new(shape: Record)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    SequenceNumberRange.add_member(:starting_sequence_number, Shapes::ShapeRef.new(shape: SequenceNumber, location_name: "startingSequenceNumber"))
    SequenceNumberRange.add_member(:ending_sequence_number, Shapes::ShapeRef.new(shape: SequenceNumber, location_name: "endingSequenceNumber"))
    SequenceNumberRange.struct_class = Types::SequenceNumberRange

    Shard.add_member(:shard_id, Shapes::ShapeRef.new(shape: ShardId, location_name: "shardId"))
    Shard.add_member(:sequence_number_range, Shapes::ShapeRef.new(shape: SequenceNumberRange, location_name: "sequenceNumberRange"))
    Shard.add_member(:parent_shard_ids, Shapes::ShapeRef.new(shape: ShardIdList, location_name: "parentShardIds"))
    Shard.struct_class = Types::Shard

    ShardDescriptionList.member = Shapes::ShapeRef.new(shape: Shard)

    ShardFilter.add_member(:type, Shapes::ShapeRef.new(shape: ShardFilterType, location_name: "type"))
    ShardFilter.add_member(:shard_id, Shapes::ShapeRef.new(shape: ShardId, location_name: "shardId"))
    ShardFilter.struct_class = Types::ShardFilter

    ShardIdList.member = Shapes::ShapeRef.new(shape: ShardId)

    Stream.add_member(:stream_arn, Shapes::ShapeRef.new(shape: StreamArn, required: true, location_name: "streamArn"))
    Stream.add_member(:keyspace_name, Shapes::ShapeRef.new(shape: KeyspaceName, required: true, location_name: "keyspaceName"))
    Stream.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, required: true, location_name: "tableName"))
    Stream.add_member(:stream_label, Shapes::ShapeRef.new(shape: String, required: true, location_name: "streamLabel"))
    Stream.struct_class = Types::Stream

    StreamList.member = Shapes::ShapeRef.new(shape: Stream)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ValidationException.add_member(:error_code, Shapes::ShapeRef.new(shape: ValidationExceptionType, location_name: "errorCode"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2024-09-09"

      api.metadata = {
        "apiVersion" => "2024-09-09",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "cassandra-streams",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "protocols" => ["json"],
        "serviceFullName" => "Amazon Keyspaces Streams",
        "serviceId" => "KeyspacesStreams",
        "signatureVersion" => "v4",
        "signingName" => "cassandra",
        "targetPrefix" => "KeyspacesStreams",
        "uid" => "keyspacesstreams-2024-09-09",
      }

      api.add_operation(:get_records, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRecords"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetRecordsInput)
        o.output = Shapes::ShapeRef.new(shape: GetRecordsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_shard_iterator, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetShardIterator"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetShardIteratorInput)
        o.output = Shapes::ShapeRef.new(shape: GetShardIteratorOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetStream"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetStreamInput)
        o.output = Shapes::ShapeRef.new(shape: GetStreamOutput)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)
    end

  end
end
