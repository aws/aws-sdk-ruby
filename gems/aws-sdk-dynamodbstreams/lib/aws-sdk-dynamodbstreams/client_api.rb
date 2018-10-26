# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::DynamoDBStreams
  # @api private
  module ClientApi

    include Seahorse::Model

    AttributeMap = Shapes::MapShape.new(name: 'AttributeMap')
    AttributeName = Shapes::StringShape.new(name: 'AttributeName')
    AttributeValue = Shapes::StructureShape.new(name: 'AttributeValue')
    BinaryAttributeValue = Shapes::BlobShape.new(name: 'BinaryAttributeValue')
    BinarySetAttributeValue = Shapes::ListShape.new(name: 'BinarySetAttributeValue')
    BooleanAttributeValue = Shapes::BooleanShape.new(name: 'BooleanAttributeValue')
    Date = Shapes::TimestampShape.new(name: 'Date')
    DescribeStreamInput = Shapes::StructureShape.new(name: 'DescribeStreamInput')
    DescribeStreamOutput = Shapes::StructureShape.new(name: 'DescribeStreamOutput')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ExpiredIteratorException = Shapes::StructureShape.new(name: 'ExpiredIteratorException')
    GetRecordsInput = Shapes::StructureShape.new(name: 'GetRecordsInput')
    GetRecordsOutput = Shapes::StructureShape.new(name: 'GetRecordsOutput')
    GetShardIteratorInput = Shapes::StructureShape.new(name: 'GetShardIteratorInput')
    GetShardIteratorOutput = Shapes::StructureShape.new(name: 'GetShardIteratorOutput')
    Identity = Shapes::StructureShape.new(name: 'Identity')
    InternalServerError = Shapes::StructureShape.new(name: 'InternalServerError')
    KeySchema = Shapes::ListShape.new(name: 'KeySchema')
    KeySchemaAttributeName = Shapes::StringShape.new(name: 'KeySchemaAttributeName')
    KeySchemaElement = Shapes::StructureShape.new(name: 'KeySchemaElement')
    KeyType = Shapes::StringShape.new(name: 'KeyType')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListAttributeValue = Shapes::ListShape.new(name: 'ListAttributeValue')
    ListStreamsInput = Shapes::StructureShape.new(name: 'ListStreamsInput')
    ListStreamsOutput = Shapes::StructureShape.new(name: 'ListStreamsOutput')
    MapAttributeValue = Shapes::MapShape.new(name: 'MapAttributeValue')
    NullAttributeValue = Shapes::BooleanShape.new(name: 'NullAttributeValue')
    NumberAttributeValue = Shapes::StringShape.new(name: 'NumberAttributeValue')
    NumberSetAttributeValue = Shapes::ListShape.new(name: 'NumberSetAttributeValue')
    OperationType = Shapes::StringShape.new(name: 'OperationType')
    PositiveIntegerObject = Shapes::IntegerShape.new(name: 'PositiveIntegerObject')
    PositiveLongObject = Shapes::IntegerShape.new(name: 'PositiveLongObject')
    Record = Shapes::StructureShape.new(name: 'Record')
    RecordList = Shapes::ListShape.new(name: 'RecordList')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    SequenceNumber = Shapes::StringShape.new(name: 'SequenceNumber')
    SequenceNumberRange = Shapes::StructureShape.new(name: 'SequenceNumberRange')
    Shard = Shapes::StructureShape.new(name: 'Shard')
    ShardDescriptionList = Shapes::ListShape.new(name: 'ShardDescriptionList')
    ShardId = Shapes::StringShape.new(name: 'ShardId')
    ShardIterator = Shapes::StringShape.new(name: 'ShardIterator')
    ShardIteratorType = Shapes::StringShape.new(name: 'ShardIteratorType')
    Stream = Shapes::StructureShape.new(name: 'Stream')
    StreamArn = Shapes::StringShape.new(name: 'StreamArn')
    StreamDescription = Shapes::StructureShape.new(name: 'StreamDescription')
    StreamList = Shapes::ListShape.new(name: 'StreamList')
    StreamRecord = Shapes::StructureShape.new(name: 'StreamRecord')
    StreamStatus = Shapes::StringShape.new(name: 'StreamStatus')
    StreamViewType = Shapes::StringShape.new(name: 'StreamViewType')
    String = Shapes::StringShape.new(name: 'String')
    StringAttributeValue = Shapes::StringShape.new(name: 'StringAttributeValue')
    StringSetAttributeValue = Shapes::ListShape.new(name: 'StringSetAttributeValue')
    TableName = Shapes::StringShape.new(name: 'TableName')
    TrimmedDataAccessException = Shapes::StructureShape.new(name: 'TrimmedDataAccessException')

    AttributeMap.key = Shapes::ShapeRef.new(shape: AttributeName)
    AttributeMap.value = Shapes::ShapeRef.new(shape: AttributeValue)

    AttributeValue.add_member(:s, Shapes::ShapeRef.new(shape: StringAttributeValue, location_name: "S"))
    AttributeValue.add_member(:n, Shapes::ShapeRef.new(shape: NumberAttributeValue, location_name: "N"))
    AttributeValue.add_member(:b, Shapes::ShapeRef.new(shape: BinaryAttributeValue, location_name: "B"))
    AttributeValue.add_member(:ss, Shapes::ShapeRef.new(shape: StringSetAttributeValue, location_name: "SS"))
    AttributeValue.add_member(:ns, Shapes::ShapeRef.new(shape: NumberSetAttributeValue, location_name: "NS"))
    AttributeValue.add_member(:bs, Shapes::ShapeRef.new(shape: BinarySetAttributeValue, location_name: "BS"))
    AttributeValue.add_member(:m, Shapes::ShapeRef.new(shape: MapAttributeValue, location_name: "M"))
    AttributeValue.add_member(:l, Shapes::ShapeRef.new(shape: ListAttributeValue, location_name: "L"))
    AttributeValue.add_member(:null, Shapes::ShapeRef.new(shape: NullAttributeValue, location_name: "NULL"))
    AttributeValue.add_member(:bool, Shapes::ShapeRef.new(shape: BooleanAttributeValue, location_name: "BOOL"))
    AttributeValue.struct_class = Types::AttributeValue

    BinarySetAttributeValue.member = Shapes::ShapeRef.new(shape: BinaryAttributeValue)

    DescribeStreamInput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: StreamArn, required: true, location_name: "StreamArn"))
    DescribeStreamInput.add_member(:limit, Shapes::ShapeRef.new(shape: PositiveIntegerObject, location_name: "Limit"))
    DescribeStreamInput.add_member(:exclusive_start_shard_id, Shapes::ShapeRef.new(shape: ShardId, location_name: "ExclusiveStartShardId"))
    DescribeStreamInput.struct_class = Types::DescribeStreamInput

    DescribeStreamOutput.add_member(:stream_description, Shapes::ShapeRef.new(shape: StreamDescription, location_name: "StreamDescription"))
    DescribeStreamOutput.struct_class = Types::DescribeStreamOutput

    GetRecordsInput.add_member(:shard_iterator, Shapes::ShapeRef.new(shape: ShardIterator, required: true, location_name: "ShardIterator"))
    GetRecordsInput.add_member(:limit, Shapes::ShapeRef.new(shape: PositiveIntegerObject, location_name: "Limit"))
    GetRecordsInput.struct_class = Types::GetRecordsInput

    GetRecordsOutput.add_member(:records, Shapes::ShapeRef.new(shape: RecordList, location_name: "Records"))
    GetRecordsOutput.add_member(:next_shard_iterator, Shapes::ShapeRef.new(shape: ShardIterator, location_name: "NextShardIterator"))
    GetRecordsOutput.struct_class = Types::GetRecordsOutput

    GetShardIteratorInput.add_member(:stream_arn, Shapes::ShapeRef.new(shape: StreamArn, required: true, location_name: "StreamArn"))
    GetShardIteratorInput.add_member(:shard_id, Shapes::ShapeRef.new(shape: ShardId, required: true, location_name: "ShardId"))
    GetShardIteratorInput.add_member(:shard_iterator_type, Shapes::ShapeRef.new(shape: ShardIteratorType, required: true, location_name: "ShardIteratorType"))
    GetShardIteratorInput.add_member(:sequence_number, Shapes::ShapeRef.new(shape: SequenceNumber, location_name: "SequenceNumber"))
    GetShardIteratorInput.struct_class = Types::GetShardIteratorInput

    GetShardIteratorOutput.add_member(:shard_iterator, Shapes::ShapeRef.new(shape: ShardIterator, location_name: "ShardIterator"))
    GetShardIteratorOutput.struct_class = Types::GetShardIteratorOutput

    Identity.add_member(:principal_id, Shapes::ShapeRef.new(shape: String, location_name: "PrincipalId"))
    Identity.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    Identity.struct_class = Types::Identity

    KeySchema.member = Shapes::ShapeRef.new(shape: KeySchemaElement)

    KeySchemaElement.add_member(:attribute_name, Shapes::ShapeRef.new(shape: KeySchemaAttributeName, required: true, location_name: "AttributeName"))
    KeySchemaElement.add_member(:key_type, Shapes::ShapeRef.new(shape: KeyType, required: true, location_name: "KeyType"))
    KeySchemaElement.struct_class = Types::KeySchemaElement

    ListAttributeValue.member = Shapes::ShapeRef.new(shape: AttributeValue)

    ListStreamsInput.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, location_name: "TableName"))
    ListStreamsInput.add_member(:limit, Shapes::ShapeRef.new(shape: PositiveIntegerObject, location_name: "Limit"))
    ListStreamsInput.add_member(:exclusive_start_stream_arn, Shapes::ShapeRef.new(shape: StreamArn, location_name: "ExclusiveStartStreamArn"))
    ListStreamsInput.struct_class = Types::ListStreamsInput

    ListStreamsOutput.add_member(:streams, Shapes::ShapeRef.new(shape: StreamList, location_name: "Streams"))
    ListStreamsOutput.add_member(:last_evaluated_stream_arn, Shapes::ShapeRef.new(shape: StreamArn, location_name: "LastEvaluatedStreamArn"))
    ListStreamsOutput.struct_class = Types::ListStreamsOutput

    MapAttributeValue.key = Shapes::ShapeRef.new(shape: AttributeName)
    MapAttributeValue.value = Shapes::ShapeRef.new(shape: AttributeValue)

    NumberSetAttributeValue.member = Shapes::ShapeRef.new(shape: NumberAttributeValue)

    Record.add_member(:event_id, Shapes::ShapeRef.new(shape: String, location_name: "eventID"))
    Record.add_member(:event_name, Shapes::ShapeRef.new(shape: OperationType, location_name: "eventName"))
    Record.add_member(:event_version, Shapes::ShapeRef.new(shape: String, location_name: "eventVersion"))
    Record.add_member(:event_source, Shapes::ShapeRef.new(shape: String, location_name: "eventSource"))
    Record.add_member(:aws_region, Shapes::ShapeRef.new(shape: String, location_name: "awsRegion"))
    Record.add_member(:dynamodb, Shapes::ShapeRef.new(shape: StreamRecord, location_name: "dynamodb"))
    Record.add_member(:user_identity, Shapes::ShapeRef.new(shape: Identity, location_name: "userIdentity"))
    Record.struct_class = Types::Record

    RecordList.member = Shapes::ShapeRef.new(shape: Record)

    SequenceNumberRange.add_member(:starting_sequence_number, Shapes::ShapeRef.new(shape: SequenceNumber, location_name: "StartingSequenceNumber"))
    SequenceNumberRange.add_member(:ending_sequence_number, Shapes::ShapeRef.new(shape: SequenceNumber, location_name: "EndingSequenceNumber"))
    SequenceNumberRange.struct_class = Types::SequenceNumberRange

    Shard.add_member(:shard_id, Shapes::ShapeRef.new(shape: ShardId, location_name: "ShardId"))
    Shard.add_member(:sequence_number_range, Shapes::ShapeRef.new(shape: SequenceNumberRange, location_name: "SequenceNumberRange"))
    Shard.add_member(:parent_shard_id, Shapes::ShapeRef.new(shape: ShardId, location_name: "ParentShardId"))
    Shard.struct_class = Types::Shard

    ShardDescriptionList.member = Shapes::ShapeRef.new(shape: Shard)

    Stream.add_member(:stream_arn, Shapes::ShapeRef.new(shape: StreamArn, location_name: "StreamArn"))
    Stream.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, location_name: "TableName"))
    Stream.add_member(:stream_label, Shapes::ShapeRef.new(shape: String, location_name: "StreamLabel"))
    Stream.struct_class = Types::Stream

    StreamDescription.add_member(:stream_arn, Shapes::ShapeRef.new(shape: StreamArn, location_name: "StreamArn"))
    StreamDescription.add_member(:stream_label, Shapes::ShapeRef.new(shape: String, location_name: "StreamLabel"))
    StreamDescription.add_member(:stream_status, Shapes::ShapeRef.new(shape: StreamStatus, location_name: "StreamStatus"))
    StreamDescription.add_member(:stream_view_type, Shapes::ShapeRef.new(shape: StreamViewType, location_name: "StreamViewType"))
    StreamDescription.add_member(:creation_request_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "CreationRequestDateTime"))
    StreamDescription.add_member(:table_name, Shapes::ShapeRef.new(shape: TableName, location_name: "TableName"))
    StreamDescription.add_member(:key_schema, Shapes::ShapeRef.new(shape: KeySchema, location_name: "KeySchema"))
    StreamDescription.add_member(:shards, Shapes::ShapeRef.new(shape: ShardDescriptionList, location_name: "Shards"))
    StreamDescription.add_member(:last_evaluated_shard_id, Shapes::ShapeRef.new(shape: ShardId, location_name: "LastEvaluatedShardId"))
    StreamDescription.struct_class = Types::StreamDescription

    StreamList.member = Shapes::ShapeRef.new(shape: Stream)

    StreamRecord.add_member(:approximate_creation_date_time, Shapes::ShapeRef.new(shape: Date, location_name: "ApproximateCreationDateTime"))
    StreamRecord.add_member(:keys, Shapes::ShapeRef.new(shape: AttributeMap, location_name: "Keys"))
    StreamRecord.add_member(:new_image, Shapes::ShapeRef.new(shape: AttributeMap, location_name: "NewImage"))
    StreamRecord.add_member(:old_image, Shapes::ShapeRef.new(shape: AttributeMap, location_name: "OldImage"))
    StreamRecord.add_member(:sequence_number, Shapes::ShapeRef.new(shape: SequenceNumber, location_name: "SequenceNumber"))
    StreamRecord.add_member(:size_bytes, Shapes::ShapeRef.new(shape: PositiveLongObject, location_name: "SizeBytes"))
    StreamRecord.add_member(:stream_view_type, Shapes::ShapeRef.new(shape: StreamViewType, location_name: "StreamViewType"))
    StreamRecord.struct_class = Types::StreamRecord

    StringSetAttributeValue.member = Shapes::ShapeRef.new(shape: StringAttributeValue)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2012-08-10"

      api.metadata = {
        "apiVersion" => "2012-08-10",
        "endpointPrefix" => "streams.dynamodb",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "serviceFullName" => "Amazon DynamoDB Streams",
        "signatureVersion" => "v4",
        "signingName" => "dynamodb",
        "targetPrefix" => "DynamoDBStreams_20120810",
        "uid" => "streams-dynamodb-2012-08-10",
      }

      api.add_operation(:describe_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeStream"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeStreamInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeStreamOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:get_records, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRecords"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetRecordsInput)
        o.output = Shapes::ShapeRef.new(shape: GetRecordsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ExpiredIteratorException)
        o.errors << Shapes::ShapeRef.new(shape: TrimmedDataAccessException)
      end)

      api.add_operation(:get_shard_iterator, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetShardIterator"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetShardIteratorInput)
        o.output = Shapes::ShapeRef.new(shape: GetShardIteratorOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: TrimmedDataAccessException)
      end)

      api.add_operation(:list_streams, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListStreams"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListStreamsInput)
        o.output = Shapes::ShapeRef.new(shape: ListStreamsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)
    end

  end
end
